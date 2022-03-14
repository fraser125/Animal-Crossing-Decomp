#include "texture.h"
#include "texture_cache.h"

static f32 PsendoArcSinConvert(f32 a) {
    f32 t = (a - 0.5f) * 2.0f; /* Map [0, 1] -> [-1, 1] */
    return (t * 0.5377f + t * t * 0.4623f * t) * 0.5 + 0.5; /* Do conversion while mappng back to [0, 1] */
}

static void TextureLinearConvert1(Texture* orig, Texture* conv) {
    for (int y = 0; y < conv->height; y++) {
        for (int x = 0; x < conv->width; x++) {
            f32 a_y = (f32)y / ((f32)conv->height - 1);
            f32 a_x = (f32)x / ((f32)conv->width - 1);

            f32 res_x = PsendoArcSinConvert(a_x);
            f32 res_y = PsendoArcSinConvert(a_y);

            u32 texel = orig->getTexel((int)(res_x * (orig->width - 1)), (int)(res_y * (orig->height - 1)));
            conv->putTexel(x, y, texel);
        }
    }
}

static void* TextureLinearConvert(void* img_p, u32 width, u32 height, u32 fmt, u32 bpp) {
    texture_cache_t* texture_cache = texture_cache_select(nullptr);
    void* conv_p = texture_cache->funcs->alloc(texture_cache, 0x1000);

    Texture orig(img_p, width, height, fmt, bpp);
    Texture conv(conv_p, width, height, fmt, bpp);

    TextureLinearConvert1(&orig, &conv);

    /* TODO: Do we need to define dtor? I think it's added by the compiler automatically. */

    return conv_p;
}

Texture::Texture(void* img_p, u16 width, u16 height, u8 fmt, u8 bpp) {
    this->img_p = img_p;
    this->width = width;
    this->height = height;
    this->n64_fmt = fmt;
    this->n64_bpp = bpp;
    this->blockX_size = 4;
    this->blockY_size = 4;
}

int Texture::getOffset(int blockX, int blockY) {
    return (blockY & 7) * 8 + ((blockX / 8) + (blockY / 8) * width / 8) * 64 + (blockX & 7);
}

u32 Texture::getTexel(int x, int y) {
    int blockX = x & ((1 << this->blockX_size) - 1u);
    int blockY = y & ((1 << this->blockY_size) - 1u);

    int offset = this->getOffset(blockX, blockY);
    if (this->n64_bpp == G_IM_SIZ_8b) {
        return ((u8*)this->img_p)[offset];
    }
    else if (this->n64_bpp == G_IM_SIZ_4b) {
        if ((blockX & 1) == 0) {
            return ((u8*)this->img_p)[offset / 2] >> 4; /* Upper nibble */
        }
        else {
            return ((u8*)this->img_p)[offset / 2] & 0xF; /* Lower nibble */
        }
    }
    else if (this->n64_bpp == G_IM_SIZ_16b) {
        return ((u16*)this->img_p)[offset];
    }

    /* this->n64_bpp == G_IM_SIZ32b */
    return ((u32*)this->img_p)[offset];
}

void Texture::putTexel(int x, int y, u32 texel) {
    int blockX = x & ((1 << this->blockX_size) - 1u);
    int blockY = y & ((1 << this->blockY_size) - 1u);

    int offset = this->getOffset(blockX, blockY);
    if (this->n64_bpp > G_IM_SIZ_32b) return;

    if (this->n64_bpp == G_IM_SIZ_4b) {
        if ((blockX & 1) == 0) {
            /* Upper nibble */
            ((u8*)this->img_p)[offset / 2] &= 0xF;
            ((u8*)this->img_p)[offset / 2] |= (u8)(texel << 4);
        }
        else {
            /* Lower nibble */
            ((u8*)this->img_p)[offset / 2] &= 0xF0;
            ((u8*)this->img_p)[offset / 2] |= (u8)(texel & 0xF);
        }
    }
    else if (this->n64_bpp == G_IM_SIZ_8b) {
        ((u8*)this->img_p)[offset] = (u8)texel;
    }
    else if( this->n64_bpp == G_IM_SIZ_16b) {
        ((u16*)this->img_p)[offset] = (u16)texel;
    }
    else { /* this->n64_bpp == G_IM_SIZ32b */
        ((u32*)this->img_p)[offset] = texel;
    }
}
