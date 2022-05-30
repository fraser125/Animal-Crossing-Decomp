#include "sub_sys.h"
#include "audiowork.h"

static void Nap_Process1Command(AudioPort* port) {
    u8 cmd = port->cmd;

    if (AUDIOPORT_CMD_GROUP(cmd) < 0xE0) {
        u32 groupId = port->group;
        if (groupId < AG.numGroups) {
            group* group = AG.groups[groupId];

            if ((cmd & 0x80) == 0) {
                if ((cmd & 0x40) == 0) {
                    u32 subtrackId = port->subtrack;
                    if (subtrackId < AG_SUBTRACK_COUNT) {
                        
                    }
                }
            }
        }
    }
}

