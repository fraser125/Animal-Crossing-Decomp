#include <algorithm.h>
#include "linklist.h"

namespace JSystem::JGadget {

TNodeLinkList::iterator TNodeLinkList::Insert(iterator pIt, TLinkListNode* p) {
    p->pNext = pIt.p;
    p->pPrev = pIt->pPrev;
    pIt->pPrev->pNext = p;
    pIt->pPrev = p;
    this->listSize++;
    return iterator(p);
}

TNodeLinkList::iterator TNodeLinkList::Erase(TLinkListNode* p) {
    TLinkListNode* pNext = p->pNext;
    TLinkListNode* pPrev = p->pPrev;
    pNext->pPrev = pPrev;
    pPrev->pNext = pNext;
    this->listSize--;
    p->clear_();
    return iterator(pNext);
}

void TNodeLinkList::splice(iterator begin, TNodeLinkList& other, iterator end) {
    iterator t(end);
    ++t;

    if (begin == end) return;
    if (begin == t) return;

    other.Erase(*end);
    this->Insert(begin, *end);
}

template<class T>
inline void TNodeLinkList::Remove_if(TPRIsEqual_pointer_<T> p, TNodeLinkList& list) {
    iterator begin = this->begin();
    iterator c = iterator(begin);

    while (true) {
        begin = c;
        if (this->Iterator_isEnd_(const_iterator(begin))) break;
        if (p(*c) == false) {
            ++c;
        }
        else {
            iterator t(c);
            ++c;
            list.splice(list.end(), this, t);
        }
    }
}

inline TNodeLinkList::iterator TNodeLinkList::Find(const TLinkListNode* node) {
    return std::find_if(this->begin(), this->end(), TPRIsEqual_pointer_(node));
}

void TNodeLinkList::Remove(TLinkListNode* pNode) {
    this->remove_if(TPRIsEqual_pointer_<TLinkListNode>(const_cast<TLinkListNode*>(pNode)));
}

} // namespace JSystem::JGadget
