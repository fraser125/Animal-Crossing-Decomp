/**
 * @file linklist.h
 * @brief JSystem LinkedList implementation
 * 
 * Basic reimplementation of Nintendo's JSystem::JGadget linked list implementatin.
 * Some methods may be missing. Both Animal Crossing and Twilight Princess were used to
 * reverse engineer this file.
 */

#pragma once

#include "JKRDisposer.hpp"

namespace JSystem::JGadget {

template <class T>
class TPRIsEqual_pointer_ {
public:
    T* p;

    inline TPRIsEqual_pointer_(const T* p) {
        this->p = p;
    }

    inline bool operator()(const T& p) const {
        return !(reinterpret_cast<int>(this) - reinterpret_cast<int>(p));
    }
};

class TLinkListNode {
public:
    TLinkListNode* pNext;
    TLinkListNode* pPrev;

    TLinkListNode() {
        this->pNext = nullptr;
        this->pPrev = nullptr;
    }

    TLinkListNode* getNext() const { return this->pNext; }
    TLinkListNode* getPrev() const { return this->pPrev; }
    void clear_() {
        this->pNext = nullptr;
        this->pPrev = nullptr;
    }
};

class TNodeLinkList {
public:
    class iterator {
    public:
        TLinkListNode* p;

        iterator(const iterator& other) {
            this->p = other.p;
        }

        iterator(TLinkListNode* node) {
            this->p = node;
        }

        iterator() {
            this->p = nullptr;
        }

        iterator* operator++() {
            this->p = this->p->getNext();
            return this;
        }

        iterator* operator--() {
            this->p = this->p->getPrev();
            return this;
        }

        TLinkListNode* operator->() const {
            return this->p;
        }

        TLinkListNode* operator*() const {
            return this->p;
        }
    };

    class const_iterator {
    public:
        TLinkListNode* p;

        const_iterator(iterator pIt) {
            this->p = pIt.p;
        }

        const_iterator(const_iterator& const pIt) {
            this->p = pIt.p;
        }

        const_iterator(TLinkListNode* const node) {
            this->p = node;
        }

        const_iterator* operator++() {
            this->p = this->p->getNext();
            return this;
        }

        const_iterator* operator--() {
            this->p = this->p->getPrev();
            return this;
        }

        TLinkListNode* operator->() {
            return this->p;
        }
    };

    iterator begin() {
        return iterator(this->oNode.getNext());
    }

    const_iterator begin() const {
        return const_iterator(this->oNode.getNext());
    }

    iterator end() {
        return iterator(&this->oNode);
    }

    const_iterator end() const {
        return const_iterator(const_cast<TLinkListNode*>(&this->oNode));
    }

    TNodeLinkList();
    ~TNodeLinkList();

    void Initialize_() {
        this->listSize = 0;
        this->oNode.pNext = &this->oNode;
        this->oNode.pPrev = &this->oNode;
    }

    bool empty() const {
        return !this->listSize;
    }

    TLinkListNode* erase(iterator to, iterator from) {
        TLinkListNode* p1 = from->pNext;
        TLinkListNode* p0 = to->pNext;
        while (p0 != p1) {
            TLinkListNode* temp = p0->pNext;
            this->Erase(p0);
            p0 = temp;
        }
        return from->pNext;
    }

    void erase(iterator it) {
        iterator next(it);
        ++next;
        this->erase(it, next);
    }

    void clear() {
        this->erase(this->begin(), this->end());
    }

    bool Iterator_isEnd_(const_iterator it) const {
        return !(reinterpret_cast<int>(this) + (sizeof(this->listSize) - reinterpret_cast<int>(it->pNext)));
    }

    void pop_back() {
        iterator it = this->end();
        --it;
        this->erase(it);
    }

    void pop_front() {
        this->erase(this->begin());
    }

    template<class T>
    void remove_if(TPRIsEqual_pointer_<T> p) {
        TNodeLinkList list();
        this->Remove_If(p, list);
        list.~TNodeLinkList();
    }

    template<class T>
    inline void Remove_if(TPRIsEqual_pointer_<T> p, TNodeLinkList& list);
    void Remove(TLinkListNode* node);
    iterator Erase(TLinkListNode* p);
    iterator Insert(iterator pIt, TLinkListNode* p);
    void splice(iterator thisIt, TNodeLinkList& other, iterator otherIt);
    iterator Find(const TLinkListNode* node);

protected:
    int listSize;
    TLinkListNode oNode;
};

/* TODO: No idea how this template is actually implemented */
template<class T>
class TLinkList {
public:
    class iterator : TNodeLinkList::iterator {
        iterator() : TNodeLinkList::iterator() { }
        iterator(TNodeLinkList::iterator it) : TNodeLinkList::iterator(it) { }

        T* operator->() const { return Element_toValue(TNodeLinkList::iterator::operator->(this)); }
        T* operator*() const { return this->operator->(); }
        iterator operator--() { return TNodeLinkList::iterator::operator--(this); }
    };

    class const_iterator : TNodeLinkList::const_iterator {
        const_iterator() : TNodeLinkList::const_iterator() { }
        const_iterator(const TNodeLinkList::const_iterator& it) : TNodeLinkList::const_iterator(it) { }

        T* operator->() const { return Element_toValue(TNodeLinkList::const_iterator::operator->(this)); }
        T* operator*() const { return this->operator->(); }
        const_iterator operator++() { return TNodeLinkList::const_iterator::operator++(this); }
    };

    TNodeLinkList node;

    TLinkList() : node() { }

    iterator Insert(iterator it, T* p) { return iterator(this->node.Insert(it, this->Element_toNode(T))); }
    iterator begin() { return iterator(this->node.begin()); }
    iterator begin() const { return const_iterator(this->begin()); }
    iterator end() { return iterator(this->node.end()); }
    iterator end() const { return const_iterator(this->end()); }
    T* front() { return *this->begin(); }
    T* back() { return *--this->end(); } /* oNode is the final node, so we use the -- operator to get the real last node */
    void Push_back(T* p) { this->Insert(this->end, p); }
    void Remove(T* p) { this->node.Remove(this->ElementToNode(p)); }

    /* Is this right? */
    static TLinkListNode* Element_toNode(T* p) { return reinterpret_cast<TLinkListNode*>(static_cast<u8*>(p) + sizeof(JKernel::JKRDisposer)); }
    static TLinkListNode* Element_toNode(T* p) const { return reinterpret_cast<TLinkListNode*>(static_cast<u8*>(p) + sizeof(JKernel::JKRDisposer)); }
    static T* Element_toValue(TLinkListNode* p) { return reinterpret_cast<T*>(static_cast<u8*>(p) - sizeof(JKernel::JKRDisposer)); }
    static T* Element_toValue(TLinkListNode* p) const { return reinterpret_cast<T*>(static_cast<u8*>(p) - sizeof(JKernel::JKRDisposer)); }
};

static bool operator==(TNodeLinkList::iterator it0, TNodeLinkList::iterator it1) {
    return !(reinterpret_cast<int>(&it1.p) - reinterpret_cast<int>(&it0.p));
}

static bool operator!=(TNodeLinkList::iterator it0, TNodeLinkList::iterator it1) {
    return !(it0 == it1);
}

} // namespace JSystem::JGadget
