#include "JSUList.hpp"

namespace JSystem::JSupport {

JSUPtrLink::JSUPtrLink(void* data_p) {
    this->list = nullptr;
    this->data_p = data_p;
    this->prev = nullptr;
    this->next = nullptr;
}

JSUPtrLink::~JSUPtrLink() {
    if (this != nullptr && this->list != nullptr) {
        this->list->remove(this);
    }
}

JSUPtrList::JSUPtrList(bool initiate) {
    if (initiate != false) {
        this->initiate();
    }
}

JSUPtrList::~JSUPtrList() {
    if (this != nullptr) {
        JSUPtrLink* link = this->last;
        int cleaned = 0;
        for (int cleaned = 0; cleaned < this->count; cleaned++) {
            link->list = nullptr;
            link = link->next;
        }
    }
}

void JSUPtrList::initiate() {
    this->last = nullptr;
    this->first = nullptr;
    this->count = 0;
}

void JSUPtrList::setFirst(JSUPtrLink* first) {
    first->list = this;
    first->prev = nullptr;
    first->next = nullptr;
    this->first = first;
    this->last = first;
    this->count = 1;
}

bool JSUPtrList::append(JSUPtrLink* link) {
    /* Uses cntlzw and checks for top bit not being set, likely a ! operator */
    if (link->list != nullptr && !link->list->remove(link)) return false;
    if (this->count == 0) {
        this->setFirst(link);
    }
    else {
        link->list = this;
        link->prev = this->last;
        link->next = nullptr;

        this->last->next = link;
        this->last = link;
        this->count++;
    }
    return true;
}

bool JSUPtrList::prepend(JSUPtrLink* link) {
    /* Uses cntlzw and checks for top bit not being set, likely a ! operator */
    if (link->list != nullptr && !link->list->remove(link)) return false;
    if (this->count == 0) {
        this->setFirst(link);
    }
    else {
        link->list = this;
        link->prev = nullptr;
        link->next = this->first;

        this->first->prev = link;
        this->first = link;
        this->count++;
    }
    return true;
}

bool JSUPtrList::insert(JSUPtrLink* pre_link, JSUPtrLink* new_link) {
    if (pre_link == this->first) {
        return this->prepend(new_link);
    }
    else if (pre_link == nullptr) {
        return this->append(new_link);
    }
    else if (pre_link->list == this) {
        /* Uses cntlzw and checks for top bit not being set, likely a ! operator */
        if (new_link->list != nullptr && !new_link->list->remove(new_link)) return false;
        JSUPtrLink* temp = pre_link->prev;
        new_link->list = this;
        new_link->prev = temp;
        new_link->next = pre_link;
        
        temp->next = new_link;
        pre_link->prev = new_link;
        this->count++;

        return true;
    }
    return false;
}

bool JSUPtrList::remove(JSUPtrLink* link) {
    /* Uses cntlzw and checks for top bit not being set, likely a ! operator */
    if (this == link->list) {
        if (this->count == 1) {
            this->first = nullptr;
            this->last = nullptr;
        }
        else if (link == this->first) {
            link->next->prev = nullptr;
            this->first = link->next;
        }
        else if (link == this->last) {
            link->prev->next = nullptr;
            this->last = link->prev;
        }
        else {
            link->prev->next = link->next;
            link->next->prev = link->prev;
        }

        link->list = nullptr;
        this->count--;
        return true;
    }
    return false;
}

} // namespace JSystem::JSupport