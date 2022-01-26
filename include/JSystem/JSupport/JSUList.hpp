#pragma once

namespace JSystem::JSupport {

class JSUPtrLink {
public:
    JSUPtrLink(void* data_p);
    ~JSUPtrLink();

    void* data_p;
    JSUPtrList* list;
    JSUPtrLink* prev;
    JSUPtrLink* next;
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

    JSUPtrLink* first;
    JSUPtrLink* last;
    int count;
};

} // namespace JSystem::JSupport