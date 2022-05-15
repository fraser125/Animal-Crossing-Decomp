#include "fault.h"
// TODO: Include JSystem C wrapper here
#include <os.h> /* OSDisableInterrupts, OSRestoreInterrupts, OSReport */
#include <ultra.h> /* bzero */

static fault fault_class;
static fault* this;

extern void fault_AddClientEx(
    fault_client* client,
    FaultCallback callback,
    const char* msg,
    u32 param,
    u8 priority,
    u8 flags
) {
    BOOL client_exists = FALSE;

    if (client != NULL && callback != NULL) {
        BOOL enable = OSDisableInterrupts();

        /* Search for insertion point */
        fault_client* next_client = NULL;
        for (fault_client* t = this->first_client; t != NULL; t = t->next) {
            if (t == client) {
                client_exists = TRUE;
                break;
            }

            if (priority <= t->priority) {
                next_client = t;
            }
        }

        /* Setup client */
        if (!client_exists) {
            client->callback = callback;
            client->msg = msg;
            client->param = param;
            client->priority = priority;
            client->flags = flags;

            /* Insert client into client list */
            if (next_client == NULL) {
                client->next = this->first_client;
                this->first_client = client;
            }
            else {
                client->next = next_client->next;
                next_client->next = client;
            }

            this->num_clients++;
        }

        OSRestoreInterrupts(enable);

        if (client_exists) {
            /* Translation: mfault_AddClient: %08x is already in the list\n */
            OSReport("\x1B[41;37mfault_AddClient: %08x は既にリスト中にある\n\x1B[m");
        }
    }
}

extern void fault_AddClient(
    fault_client* client,
    FaultCallback callback,
    const char* msg,
    u32 param
) {
    fault_AddClientEx(client, callback, msg, param, FAULT_MIN_PRIORITY, FAULT_FLAG_PREEXCEPTION);
}

extern void fault_Printf(
    const char* msg,
    ...
) {
    va_list v;
    va_start(v, msg);

    // Requires more work inside of JSystem
    /*
    JUTConsole* console = JC_JUTException_getConsole();
    if (console != NULL) {
        JC_JUTConsole_print_f_va(console, msg, v);
    }
    */
    
    va_end(v);
}

extern void fault_DrawUpdate() {
    // Requires more work inside of JSystem
    /*
    JUTConsoleManager* manager = JC_JUTConsoleManager_getManager();
    if (manager != NULL) {
        JC_JUTConsoleManager_drawDirect(manager, TRUE);
    }
    */
}

extern void fault_WaitTime(u32 waitTime) {
    fault_DrawUpdate();

    // Requires more work inside of JSystem
    //JC_JUTException_waitTime(waitTime);
}

extern int fault_ReadPad(
    u32* param_1,
    u32* param_2
) {
    fault_DrawUpdate();

    // Requires more work inside of JSystem
    /*
    JUTException* exception = JC_JUTException_getManager();
    if (exception == NULL) {
        return -1;
    }
    
    JC_JUTException_readPad(exception, param_1, param_2);
    */

    return 0;
}

extern void fault_CallBackFunc(int stage) {
    int i = 0;

    for (fault_client* client = this->first_client; client != NULL; client = client->next) {
        if (client->callback != NULL) {
            if ((client->flags & (1 << stage)) != 0) {
                if ((client->flags & FAULT_FLAG_DRAW_SEPARATOR) != 0) {
                    fault_Printf("---------------------------------------------\n");
                    fault_DrawUpdate();
                }

                if ((client->flags & FAULT_FLAG_DRAW_CALLBACK_INFO) != 0) {
                    fault_Printf("CallBack (%d/%d) %08x %08x %08x\n", i, this->num_clients, client, client->msg, client->param);
                    fault_DrawUpdate();
                    i++;
                }

                client->callback(client->msg, client->param);
                fault_DrawUpdate();
            }
        }
    }

    fault_DrawUpdate();
}

static void my_PreExceptionCallback() {
    // Requires more work inside of JSystem
    /*
    if (JC_JUTException_getConsole() != NULL && JC_JUTConsoleManager_getManager() != NULL && JC_JUTException_getManager() != NULL) {
        fault_CallBackFunc(FAULT_STAGE_PRE);
    }
    */
}

static void my_PostExceptionCallback() {
    // Requires more work inside of JSystem
    /*
    if (JC_JUTException_getConsole() != NULL && JC_JUTConsoleManager_getManager() != NULL && JC_JUTException_getManager() != NULL) {
        fault_CallBackFunc(FAULT_STAGE_POST);
    }
    */
}

extern void fault_Init() {
    this = &fault_class;
    bzero(&fault_class, sizeof(fault_class));
    this->_0 = 0;
    this->_1 = 0;
    this->_2 = 0;
    this->first_client = NULL;
    this->_3 = 0;
    
    fault_class._2 = 1;

    // Requires more work inside of JSystem
    /*
    JC_JUTException_setPreUserCallback(my_PreExceptionCallback);
    JC_JUTException_setPostUserCallback(my_PostExceptionCallback);
    */
}
