#pragma once

#include "dolphin/types.h"
#include "dolphin/gx/GXStruct.h"

namespace JSystem::JUtility {

typedef union TColor {
    u32 raw;
    GXColor color;

    TColor(u8 r, u8 g, u8 b, u8 a) { this->set(r, g, b, a); }
    TColor(GXColor color) { this->set(color); }
    TColor(u32 _raw) { this->set(_raw); }
    TColor(const TColor& other) { this->raw = other.raw; }
    TColor() { this->set(0xFFFFFFFFul); }

    u32 toUInt32() const { return raw; }
    void set(u8 r, u8 g, u8 b, u8 a) {
        this->color.r = r;
        this->color.g = g;
        this->color.b = b;
        this->color.a = a;
    }
    void set(GXColor color) { this->color = color; }
    void set(u32 color) { this->raw = color; }

    operator u32() const { return this->toUInt32(); }
} TColor;

} // namespace JSystem::JUtility
