#include "JUTConsole.hpp"
#include "JKernel.hpp"

namespace JSystem::JUtility {

JUTConsoleManager::JUTConsoleManager() {
    JGadget::TLinkList<JUTConsole>(soLink_);
    this->activeConsole = nullptr;
    this->directConsole = nullptr;
}

JUTConsoleManager* JUTConsoleManager::createManager(JKernel::JKRHeap* heap) {
    if (heap == nullptr) {
        heap = JKernel::JKRGetCurrentHeap();
    }

    JUTConsoleManager* manager = new(heap, 0) JUTConsoleManager;
    JUtility::sManager = manager;
    return manager;
}

void JUTConsoleManager::appendConsole(JUTConsole* console) {
    this->soLink_.Push_back(console);
    if (this->activeConsole == nullptr) {
        this->activeConsole = console;
    }
}

void JUTConsoleManager::removeConsole(JUTConsole* console) {
    if (this->activeConsole == console) {
        if (this->soLink_.node.size() < 2) {
            this->activeConsole = nullptr;
        }
        else {
            JUTConsole* c = this->soLink_.back();
            if (console == c) {
                c = this->soLink_.front();
            }
            else {
                c = JGadget::TLinkList<JUTConsole>::Element_toValue(console->node.getNext());
            }

            this->activeConsole = c;
        }
    }

    if (JUtility::JUTGetWarningConsole() == console) {
        JUtility::JUTSetWarningConsole(nullptr);
    }

    if (JUtility::JUTGetReportConsole() == console) {
        JUtility::JUTSetReportConsole(nullptr);
    }

    this->soLink_.Remove(console);
}

void JUTConsoleManager::draw() {
    JGadget::TLinkList<JUTConsole>::const_iterator it(this->soLink_.begin());
    JGadget::TLinkList<JUTConsole>::const_iterator end(this->soLink_.end());

    for (it; it != end; ++it) {
        if (*it != this->activeConsole) {
            it->doDraw(JUTConsole::EConsoleType::Inactive);
        }
    }

    if (this->activeConsole != nullptr) {
        this->activeConsole->doDraw(JUTConsole::EConsoleType::Active);
    }
}

void JUTConsoleManager::drawDirect(bool wait_vi_retrace) {
    if (this->directConsole != nullptr) {
        if (wait_vi_retrace) {
            /*
            u32 save = OSEnableInterrupts();
            int retrace = VIGetRetraceCount();
            int retraceNow;
            do {
                retraceNow = VIGetRetraceCount();
            } while (retrace == retraceNow);
            OSRestoreInterrupts(save);
            */
        }

        this->directConsole->doDraw(JUTConsole::EConsoleType::Direct);
    }
}

void JUTConsoleManager::setDirectConsole(JUTConsole* console) {
    if (this->directConsole != nullptr) {
        this->appendConsole(this->directConsole);
    }
    if (console != nullptr) {
        this->removeConsole(console);
    }
    this->directConsole = console;
}

void JUTConsoleManager::setActiveConsole(JUTConsole* console) {
    if (this->activeConsole != nullptr) {
        this->appendConsole(this->activeConsole);
    }
    if (console != nullptr) {
        this->removeConsole(console);
    }
    this->activeConsole = console;
}

} // namespace JSystem::JUtility
