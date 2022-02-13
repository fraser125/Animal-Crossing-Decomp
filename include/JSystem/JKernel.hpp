#pragma once

#include "JKernel/JKRHeap.hpp"

namespace JSystem::JKernel {

static inline JKRHeap* JKRGetCurrentHeap() { return JKRHeap::getCurrentHeap(); }

} // namespace JSystem::JKernel
