#include "mtx_extensions.h"

inline void guMtxXFM1F_dol(
    Mtx mtx,
    f32 x, f32 y, f32 z,
    f32* ox, f32* oy, f32* oz
) {
    *ox = mtx[0][3] + mtx[0][2] * z + mtx[0][0] * x + mtx[0][1] * y;
    *oy = mtx[1][3] + mtx[1][2] * z + mtx[1][0] * x + mtx[1][1] * y;
    *oz = mtx[2][3] + mtx[2][2] * z + mtx[2][0] * x + mtx[2][1] * y;
}

inline void guMtxXFM1F_dol2(
    Mtx44 mtx, /* Matrix */
    GXProjectionType type, /* Projection type */
    f32 x, f32 y, f32 z, /* In vector components */
    f32* ox, f32* oy, f32* oz /* Out transformed vector components */
) {
    if (type == GX_PERSPECTIVE) {
        f32 n = -1.0f / z;
        *ox = n * mtx[0][0] * x - mtx[0][2];
        *oy = n * mtx[1][1] * y - mtx[1][2];
        *oz = n * mtx[2][3] - mtx[2][2];
    }
    else {
        /* GX_ORTHOGRAPHIC */
        *ox = mtx[0][3] + mtx[0][0] * x;
        *oy = mtx[1][3] + mtx[1][1] * y;
        *oz = mtx[2][3] + mtx[2][2] * z;
    }
}

inline void guMtxXFM1F_dol2w(
    Mtx44 mtx, /* 4x4 matrix */
    GXProjectionType type, /* Projection type */
    f32 x, f32 y, f32 z, /* In x, y, & z values */
    f32* ox, f32* oy, f32* oz, f32* ow /* Out x, y, z & w values */
) {
    if (type == GX_PERSPECTIVE) {
        *ox = mtx[0][0] * x + mtx[0][2] * z;
        *oy = mtx[1][1] * y + mtx[1][2] * z;
        *oz = mtx[2][3] + mtx[2][2] * z;
        *ow = -z;
    }
    else {
        /* GX_ORTHOGRAPHIC */
        *ox = mtx[0][3] + mtx[0][0] * x;
        *oy = mtx[1][3] + mtx[1][1] * y;
        *oz = mtx[2][3] + mtx[2][2] * z;
        *ow = -1.0f;
    }
}

inline f32 guMtxXFM1F_dol3(Mtx44 mtx, GXProjectionType type, f32 z) {
    if (type == GX_PERSPECTIVE) {
        return -mtx[2][3] / (z + mtx[2][2]);
    }
    return (z - mtx[2][3]) / mtx[2][2];
}

inline void guMtxXFM1F_dol6w(
    Mtx44 mtx,
    GXProjectionType type,
    f32 x, f32 y, f32 z, f32 w,
    f32* ox, f32* oy, f32* oz, f32* ow
) {
    if (type == GX_PERSPECTIVE) {
        f32 t0 = mtx[1][1] * mtx[2][3];
        f32 t1 = mtx[0][0] * t0;
        *ox = (t0 * (x + mtx[0][2] * w)) / t1;
        *oy = (mtx[0][0] * mtx[2][3] * (y + mtx[1][2] * w)) / t1;
        *oz = -w;
        *ow = (mtx[0][0] * mtx[1][1] * (z + mtx[2][2] * w)) / t1;
    }
    else {
        /* GX_ORTHOGRAPHIC */
        f32 t0 = 1.0f / (mtx[2][2] * mtx[0][0] * mtx[1][1]);
        *ox = t0 * mtx[1][1] * mtx[2][2] * (x - mtx[0][3]);
        *oy = t0 * mtx[2][2] * mtx[0][0] * (y - mtx[1][1]);
        *oz = t0 * mtx[0][0] * mtx[1][1] * (z - mtx[2][3]);
        *ow = 1.0f;
    }
}

inline void guMtxXFM1F_dol6w1(
    Mtx44 mtx, /* 4x4 matrix */
    GXProjectionType type, /* Projection type */
    f32 x, f32 y, f32 z, f32 w, /* In x, y, z, & w values */
    f32* ox, f32* oy, f32* oz /* Out x, y, & z values */
) {
    if (type == GX_PERSPECTIVE) {
        f32 n = 1.0f / (mtx[0][0] * mtx[1][1] * (z + mtx[2][2] * w));
        *ox = n * mtx[1][1] * mtx[2][3] * (x + mtx[0][2] * w);
        *oy = n * mtx[0][0] * mtx[2][3] * (y + mtx[1][2] * w);
        *oz = n * -w * mtx[0][0] * mtx[1][1] * mtx[2][3];
    }
    else {
        *ox = (x - mtx[0][3]) / mtx[0][0];
        *oy = (y - mtx[1][3]) / mtx[1][1];
        *oz = (z - mtx[2][3]) / mtx[2][2];
    }
}

inline void guMtxXFM1F_dol7(
    Mtx mtx,
    f32 x, f32 y, f32 z,
    f32* ox, f32* oy, f32* oz
) {
    Mtx inv;
    MTXInverse(mtx, inv);
    *ox = inv[0][3] + inv[0][2] * z + inv[0][0] * x + inv[0][1] * y;
    *oy = inv[1][3] + inv[1][2] * z + inv[1][0] * x + inv[1][1] * y;
    *oz = inv[2][3] + inv[2][2] * z + inv[2][0] * x + inv[2][1] * y;
}
