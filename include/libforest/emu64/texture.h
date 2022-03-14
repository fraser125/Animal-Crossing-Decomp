#ifndef __TEXTURE_H__
#define __TEXTURE_H__

#include "common.h"

static void* TextureLinearConvert(void* img_p, u32 width, u32 height, u32 fmt, u32 bpp);

class Texture {
public:
    Texture(void* img_p, u16 w, u16 h, u8 fmt, u8 bpp);

    /* Member functions */
    u32 getTexel(int x, int y);
    void putTexel(int x, int y, u32 texel);
    int getOffset(int blockX, int blockY);

    /* Member variables */
    void* img_p;
    u16 width;
    u16 height;
    u8 blockX_size;
    u8 blockY_size;
    u8 n64_fmt;
    u8 n64_bpp;
};

#endif /* __TEXTURE_H__ */
