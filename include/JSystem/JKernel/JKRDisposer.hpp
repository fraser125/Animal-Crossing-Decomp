#pragma once

#include "JSUList.hpp"
#include "JKRHeap.hpp"

namespace JSystem::JKernel {

class JKRHeap;

class JKRDisposer {
public:
    JKRDisposer();
    virtual ~JKRDisposer();

private:
    JKRHeap* heap;
    JSupport::JSUPtrLink link;
};

} // namespace JSystem::JKernel
