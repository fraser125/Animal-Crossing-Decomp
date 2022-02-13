#pragma once

namespace JSystem::JSupport {

class JSUPtrList;

class JSUPtrLink {
public:
    JSUPtrLink(void* data_p);
    ~JSUPtrLink();

    void* getObjectPtr() const { return data_p; }
    JSUPtrList* getList() const { return list; }
    JSUPtrLink* getPrev() const { return prev; }
    JSUPtrLink* getNext() const { return next; }

    void* data_p;
    JSUPtrList* list;
    JSUPtrLink* prev;
    JSUPtrLink* next;
};

template <typename T>
class JSULink : public JSUPtrLink {
public:
    JSULink(T* data_p) : JSUPtrLink(static_cast<void*>(data_p)) { }

    T* getObject() { return static_cast<T*>(this->data_p); }
    JSUList<T> getSupervisor() { return dynamic_cast<JSUList<T>>(this->list); }
    JSULink<T> getPrev() { return dynamic_cast<JSULink<T>>(this->JSUPtrLink::getPrev()); }
    JSULink<T> getNext() { return dynamic_cast<JSULink<T>>(this->JSUPtrLink::getNext()); }
};

class JSUPtrList {
public:
    JSUPtrList() { this->initiate(); }
    JSUPtrList(bool initiate);
    ~JSUPtrList();

    void initiate();
    void setFirst(JSUPtrLink* first);
    bool append(JSUPtrLink* link);
    bool prepend(JSUPtrLink* link);
    bool insert(JSUPtrLink* pre_link, JSUPtrLink* new_link);
    bool remove(JSUPtrLink* link);
    
    JSUPtrLink* getFirstLink() const { return first; }
    JSUPtrLink* getLastLink() const { return last; }
    JSUPtrLink* getNthLink(u32 n) const {
        if (n < this->count) {
            JSUPtrLink* link = this->first;
            for (u32 i; i < n; i++) {
                link = link->next;
            }
            return link;
        }
        return nullptr;
    }
    int getNumLinks() const { return count; }

    JSUPtrLink* first;
    JSUPtrLink* last;
    int count;
};

template <typename T>
class JSUList : public JSUPtrList {
public:
    JSUList() : JSUPtrList() { }
    JSUList(bool initiate) : JSUPtrLink(initiate) { }
    ~JSUList() { }

    bool append(JSULink<T>* link) { return this->JSUPtrList::append(dynamic_cast<JSUPtrLink*>(link)); }
    bool prepend(JSULink<T>* link) { return this->JSUPtrList::prepend(dynamic_cast<JSUPtrLink*>(link)); }
    bool insert(JSULink<T> before, JSULink<T>* link) {
        return this->JSUPtrList::insert(dynamic_cast<JSUPtrLink*>(before), dynamic_cast<JSUPtrLink*>(link));
    }
    bool remove(JSULink<T>* link) { return this->JSUPtrList::remove(dynamic_cast<JSUPtrLink*>(link)); }

    JSULink<T>* getFirst() const { return dynamic_cast<JSULink<T>*>(this->JSUPtrList::getFirstLink()); }
    JSULink<T>* getLast() const { return dynamic_cast<JSULink<T>*>(this->JSUPtrList::getLastLink()); }
    JSULink<T>* getEnd() const { return nullptr; }
    int getNumLinks() const { return this->JSUPtrList::getNumLinks(); }
};

template <typename T>
class JSUListIterator {
public:
    JSUListIterator() : link(nullptr) { }
    JSUListIterator(JSULink<T>* link) : link(link) {}
    JSUListIterator(JSUList<T>* list) : link(list->getFirst()) {}

    JSUListIterator<T>& operator=(JSULink<T>* link) {
        this->link = link;
        return *this;
    }

    T* getObject() { return this->link->getObject(); }

    bool operator==(JSULink<T> const* other) const { return this->link == other; }
    bool operator!=(JSULink<T> const* other) const { return this->link != other; }
    bool operator==(JSUListIterator<T> const& other) const { return this->link == other.link; }
    bool operator!=(JSUListIterator<T> const& other) const { return this->link != other.link; }

    JSUListIterator<T> operator++(int) {
        JSUListIterator<T> prev = *this;
        this->link = this->link->getNext();
        return prev;
    }

    JSUListIterator<T>& operator++() {
        this->link = this->link->getNext();
        return *this;
    }

    JSUListIterator<T> operator--(int) {
        JSUListIterator<T> prev = *this;
        this->link = this->link->getPrev();
        return prev;
    }

    JSUListIterator<T>& operator--() {
        this->link = this->link->getPrev();
        return *this;
    }

    T& operator*() { return *this->getObject(); }
    T* operator->() { return this->getObject(); }

private:
    JSULink<T>* link;
};

template <typename T>
class JSUTree : public JSUList<T>, public JSULink<T> {
public:
    JSUTree(T* owner) : JSUList<T>(), JSULink<T>(owner) {}
    ~JSUTree() {}

    bool appendChild(JSUTree<T>* child) { return this->append(child); }

    bool removeChild(JSUTree<T>* child) { return this->remove(child); }

    bool insertChild(JSUTree<T>* before, JSUTree<T>* child) { return this->insert(before, child); }

    JSUTree<T>* getEndChild() const { return nullptr; }

    JSUTree<T>* getFirstChild() const { return (JSUTree<T>*)this->getFirst(); }

    JSUTree<T>* getLastChild() const { return (JSUTree<T>*)this->getLast(); }

    JSUTree<T>* getNextChild() const { return (JSUTree<T>*)this->getNext(); }

    JSUTree<T>* getPrevChild() const { return (JSUTree<T>*)this->getPrev(); }

    u32 getNumChildren() const { return this->getNumLinks(); }

    T* getObject() const { return (T*)this->getObjectPtr(); }

    JSUTree<T>* getParent() const { return (JSUTree<T>*)this->getList(); }
};

template <typename T>
class JSUTreeIterator {
public:
    JSUTreeIterator() : mTree(nullptr) {}
    JSUTreeIterator(JSUTree<T>* tree) : mTree(tree) {}

    JSUTreeIterator<T>& operator=(JSUTree<T>* tree) {
        this->mTree = tree;
        return *this;
    }

    T* getObject() { return this->mTree->getObject(); }

    bool operator==(JSUTree<T>* other) { return this->mTree == other; }

    bool operator!=(JSUTree<T>* other) { return this->mTree != other; }

    JSUTreeIterator<T> operator++(int) {
        JSUTreeIterator<T> prev = *this;
        this->mTree = this->mTree->getNextChild();
        return prev;
    }

    JSUTreeIterator<T>& operator++() {
        this->mTree = this->mTree->getNextChild();
        return *this;
    }

    T& operator*() { return *this->getObject(); }

    T* operator->() { return this->getObject(); }

private:
    JSUTree<T>* mTree;
};

} // namespace JSystem::JSupport
