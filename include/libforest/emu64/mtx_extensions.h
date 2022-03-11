#ifndef __MTX_EXTENSIONS_H__
#define __MTX_EXTENSIONS_H__

#include "common.h"
#include <mtx.h>

/**
 * Works similarly to the N64 standard function guMtxXFMF.
 * Multiplies a 3D vector's components by a standard GC matrix.
 */
inline void guMtxXFM1F_dol(
    Mtx mtx, /* Matrix */
    f32 x, f32 y, f32 z, /* In vector components */
    f32* ox, f32* oy, f32* oz /* Out transformed vector components */
);

inline void guMtxXFM1F_dol2(
    Mtx44 mtx, /* Matrix */
    GXProjectionType type, /* Projection type */
    f32 x, f32 y, f32 z, /* In vector components */
    f32* ox, f32* oy, f32* oz /* Out transformed vector components */
);

inline void guMtxXFM1F_dol2w(
    Mtx44 mtx, /* 4x4 matrix */
    GXProjectionType type, /* Projection type */
    f32 x, f32 y, f32 z, /* In x, y, & z values */
    f32* ox, f32* oy, f32* oz, f32* ow /* Out x, y, z & w values */
);

/**
 * Works similarly to the N64 standard function guMtxXFMF.
 * Multiplies a 4D vector's components by a GC 4x4 matrix (the projection matrix).
 */
inline void guMtxXFM1F_dol6w(
    Mtx44 mtx, /* 4x4 matrix */
    GXProjectionType type, /* Projection type */
    f32 x, f32 y, f32 z, f32 w, /* In x, y, z, & w values */
    f32* ox, f32* oy, f32* oz, f32* ow /* Out x, y, z & w values */
);

inline void guMtxXFM1F_dol6w1(
    Mtx44 mtx, /* 4x4 matrix */
    GXProjectionType type, /* Projection type */
    f32 x, f32 y, f32 z, f32 w, /* In x, y, z, & w values */
    f32* ox, f32* oy, f32* oz /* Out x, y, & z values */
);

inline void guMtxXFM1F_dol7(
    Mtx mtx,
    f32 x, f32 y, f32 z,
    f32* ox, f32* oy, f32* oz
);

#endif /* __MTX_EXTENSIONS_H__ */
