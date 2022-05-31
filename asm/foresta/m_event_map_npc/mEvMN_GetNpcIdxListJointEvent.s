lbl_8039FF50:
/* 8039FF50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039FF54  7C 08 02 A6 */	mflr r0
/* 8039FF58  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039FF5C  39 61 00 20 */	addi r11, r1, 0x20
/* 8039FF60  4B CF AF 6D */	bl func_8009AECC
/* 8039FF64  7C 7B 1B 78 */	mr r27, r3
/* 8039FF68  38 00 00 00 */	li r0, 0
/* 8039FF6C  90 03 00 00 */	stw r0, 0(r3)
/* 8039FF70  7C 9C 23 78 */	mr r28, r4
/* 8039FF74  3B A0 00 00 */	li r29, 0
/* 8039FF78  90 04 00 00 */	stw r0, 0(r4)
/* 8039FF7C  4B FF F5 31 */	bl mEvMN_GetEventTypeMap
/* 8039FF80  7C 7F 1B 78 */	mr r31, r3
/* 8039FF84  2C 1F FF FF */	cmpwi r31, -1
/* 8039FF88  41 82 00 3C */	beq lbl_8039FFC4
/* 8039FF8C  4B FF F4 DD */	bl mEvMN_GetMapIdx
/* 8039FF90  7C 7E 1B 78 */	mr r30, r3
/* 8039FF94  2C 1E FF FF */	cmpwi r30, -1
/* 8039FF98  41 82 00 2C */	beq lbl_8039FFC4
/* 8039FF9C  7F E3 FB 78 */	mr r3, r31
/* 8039FFA0  38 80 00 0F */	li r4, 0xf
/* 8039FFA4  4B FF DE 29 */	bl mEv_get_save_area
/* 8039FFA8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8039FFAC  41 82 00 18 */	beq lbl_8039FFC4
/* 8039FFB0  7F C3 F3 78 */	mr r3, r30
/* 8039FFB4  4B FF F5 DD */	bl mEvMN_GetJointNpcMax
/* 8039FFB8  90 7C 00 00 */	stw r3, 0(r28)
/* 8039FFBC  3B A0 00 01 */	li r29, 1
/* 8039FFC0  93 FB 00 00 */	stw r31, 0(r27)
lbl_8039FFC4:
/* 8039FFC4  7F A3 EB 78 */	mr r3, r29
/* 8039FFC8  39 61 00 20 */	addi r11, r1, 0x20
/* 8039FFCC  4B CF AF 4D */	bl func_8009AF18
/* 8039FFD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039FFD4  7C 08 03 A6 */	mtlr r0
/* 8039FFD8  38 21 00 20 */	addi r1, r1, 0x20
/* 8039FFDC  4E 80 00 20 */	blr 
