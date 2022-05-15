#ifndef __FAULT_H__
#define __FAULT_H__

#ifdef _LANGUAGE_C_PLUS_PLUS
extern "C" {
#endif

#include "common.h"

#define FAULT_MIN_PRIORITY 0 /* Minimum priority value */

/* Fault exception pre/post stage ids */
#define FAULT_STAGE_POST 0
#define FAULT_STAGE_PRE 1

/* Fault callback flags */
#define FAULT_FLAG_POSTEXCEPTION (1 << FAULT_STAGE_POST) /* Flag for callbacks that are executed after the exception */
#define FAULT_FLAG_PREEXCEPTION (1 << FAULT_STAGE_PRE) /* Flag for callbacks that are executed before the exception */
#define FAULT_FLAG_DRAW_SEPARATOR (1 << 2) /* Flag to draw a separator line for a given callback */
#define FAULT_FLAG_DRAW_CALLBACK_INFO (1 << 3) /* Flag to draw info about a given callback */


/* Fault callback method definition */
typedef void (*FaultCallback)(const char* msg, u32 param);

/* Fault class */
typedef struct {
    u8 _0, _1, _2, _3;
    u8 num_clients;
    fault_client* first_client;
} fault;

/* Fault client class */
typedef struct {
    fault_client* next; /* Pointer to next fault client */
    FaultCallback callback; /* Reference to callback for this client */
    const char* msg; /* Fault message */
    u32 param; /* Fault callback param */
    u8 priority; /* Fault priority. Influences client list insertion index. */
    u8 flags;
} fault_client;

extern void fault_AddClientEx(
    fault_client* client,
    FaultCallback callback,
    const char* msg,
    u32 param,
    u8 priority,
    u8 flags
);

extern void fault_AddClient(
    fault_client* client,
    FaultCallback callback,
    const char* msg,
    u32 param
);

extern void fault_Printf(
    const char* msg,
    ...
);

extern void fault_DrawUpdate();

extern void fault_WaitTime(u32 waitTime);

extern int fault_ReadPad(
    u32* param_1,
    u32* param_2
);

extern void fault_CallBackFunc(int stage);

static void my_PreExceptionCallback();
static void my_PostExceptionCallback();

extern void fault_Init();

#ifdef _LANGUAGE_C_PLUS_PLUS
}
#endif

#endif /* __FAULT_H__ */
