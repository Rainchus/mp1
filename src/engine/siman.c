#include "common.h"
#include "PR/os.h"
#include "engine/process.h"
#include "engine/siman.h"

void func_80063F40_64B40(void) {
    D_800E40D0_E4160 = NULL;
    D_800E40D4_E4164 = NULL;
    osCreateMesgQueue(&D_800EE960_EE9F0, &D_800E3620_E36B0, 32);
    osSetEventMesg(OS_EVENT_SI, &D_800EE960_EE9F0, (OSMesg)32);
    osCreateMesgQueue(&D_800F3370_F3400, &D_800E36A0_E3730, 32);
    osCreateThread(&D_800E3720_E37B0, 0x14, func_80064234_64E34, NULL, &D_800E40D0_E4160, HOS_PRIORITY_SIMGR);
    osStartThread(&D_800E3720_E37B0);
}

functionListEntry ** func_80063FE4_64BE4(functionListEntry * entry) {
    switch (entry->type) {
    case 0:
        return &D_800E40D0_E4160;
    case 1:
        return &D_800E40D4_E4164;
    default:
        return NULL;
    }
}

/* Function Linked List Insertion */
s32 func_8006401C_64C1C(functionListEntry* node) {
    functionListEntry* pYoungest;
    functionListEntry* child;

    // Add node as youngest child of a linked list
    pYoungest = (functionListEntry*) func_80063FE4_64BE4(node);
    child = pYoungest->child;
    if (child != NULL) {
        pYoungest = child;
        if (pYoungest->child != NULL) {
            do {
                pYoungest = pYoungest->child;
            } while (pYoungest->child != NULL);
        }
    }
    pYoungest->child = node;
    node->child = NULL;
    return 0;
}

void func_8006407C_64C7C(functionListEntry * entry, s16 type, void * func) {
    OSMesg msgBuffer;
    OSMesgQueue mq;
    unkMesg msgOut;

    msgOut.func = (HuSiFunc)&func_8006401C_64C1C;
    msgOut.arg = entry;
    msgOut.recvQueue = &mq;
    entry->func = func;
    entry->type = type;

    osCreateMesgQueue(&mq, &msgBuffer, OS_MESG_BLOCK);
    osSendMesg(&D_800F3370_F3400, &msgOut, OS_MESG_BLOCK);
    osRecvMesg(&mq, NULL, 1);
}

/* Function Linked List Deletion */
s32 func_800640EC_64CEC(functionListEntry* arg0) {
    functionListEntry* var_v0;
    functionListEntry* var_v1;
    functionListEntry** root;

    root = func_80063FE4_64BE4(arg0);
    var_v0 = *root;
    var_v1 = NULL;
    // Search until the end of the list
    while (var_v0 != NULL) {
        // Check if the node is the one we're looking for
        if (var_v0 == arg0) {
            // If this wasn't at the start of the list (previous node is nonnull), remove it from the list
            if (var_v1 != NULL) {
                var_v1->child = arg0->child;
            } else {
                // Otherwise set the root of the list to the next node
                *root = arg0->child;
            }
            return 0;
        }
        var_v1 = var_v0;        
        var_v0 = var_v0->child;
    }
    return 0;
}

void func_80064158_64D58(void *entry) {
    OSMesg msgBuffer;
    OSMesgQueue mq;
    unkMesg msgOut;

    msgOut.func = (HuSiFunc)&func_800640EC_64CEC;
    msgOut.arg = entry;
    msgOut.recvQueue = &mq;
    
    osCreateMesgQueue(&mq, &msgBuffer, 1);
    osSendMesg(&D_800F3370_F3400, &msgOut, OS_MESG_BLOCK);
    osRecvMesg(&mq, NULL, OS_MESG_BLOCK);
}

/* Do all functions in functionList of type "type" */
void func_800641C0_64DC0(s16 type) {
    functionListEntry* funcList;

    funcList = NULL;
    switch (type) {
    case 0:
        funcList = D_800E40D0_E4160;
        break;
    case 1:
        funcList = D_800E40D4_E4164;
        break;
    }
    if (funcList != NULL) {
        do {
            funcList->func();
            funcList = funcList->child;
        } while (funcList != 0);
    }
}

/* Wait for message to do all functions in a global function list
 * or to run custom functions?
 */
void func_80064234_64E34(void* arg0) {
    unkMesgWrapper msgWrapper;

    func_800639F8_645F8(&msgWrapper, &D_800F3370_F3400, 3);

    while (TRUE) {
        osRecvMesg(&D_800F3370_F3400, (OSMesg*) &msgWrapper.unkMsg, OS_MESG_BLOCK);       
        switch ((s32) msgWrapper.unkMsg) {
            case 1:
                func_800641C0_64DC0((s16) 0);
                break;
            case 2:
                func_800641C0_64DC0((s16) 1);
                break;
            default:
            {
                unkMesg* recvdMsg;
                recvdMsg = msgWrapper.unkMsg;
                recvdMsg->ret = recvdMsg->func(recvdMsg->arg);
                if (recvdMsg->recvQueue != NULL) {
                    osSendMesg(recvdMsg->recvQueue, NULL, OS_MESG_BLOCK);
                }
            }
        }
    }
}

s32 func_800642FC_64EFC(unkMesg * siMessg, HuSiFunc func, void * arg, s32 type) 
{
    OSMesgQueue msgQueue;
    OSMesg tmpMsg;

    siMessg->func = func;
    siMessg->arg = arg;
    siMessg->recvQueue = &msgQueue;
    osCreateMesgQueue(&msgQueue, &tmpMsg, 1);
    osSendMesg(&D_800F3370_F3400, siMessg, OS_MESG_BLOCK);
    switch (type) {
    case 0:
        siMessg->ret = 0;
        break;
    case 1:
        osRecvMesg(&msgQueue, NULL, OS_MESG_BLOCK);
        break;
    case 2:
        while (osRecvMesg(&msgQueue, NULL, OS_MESG_NOBLOCK)) {
            HuPrcVSleep();
        }
        break;
    }
    return siMessg->ret;
}
