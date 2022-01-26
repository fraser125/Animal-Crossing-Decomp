#include "JKRDisposer.hpp"

namespace JSystem::JKernel {

JKRDisposer::JKRDisposer() : link(this) {
    JKRHeap* heap = JKRHeap::findFromRoot(this);
    this->heap = heap;
    if (heap != nullptr) {
        this->heap->member_list.append(&this->link);
    }
}

JKRDisposer::~JKRDisposer() {
    if (this->heap != nullptr) {
        this->heap->member_list.remove(&this->link);
    }
}

} // namespace JSystem::JKernel
