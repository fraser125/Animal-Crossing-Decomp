lbl_80563A28:
/* 80563A28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80563A2C  7C 08 02 A6 */	mflr r0
/* 80563A30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80563A34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80563A38  93 C1 00 08 */	stw r30, 8(r1)
/* 80563A3C  7C 7E 1B 78 */	mr r30, r3
/* 80563A40  4B E5 BC 69 */	bl func_803BF6A8
/* 80563A44  7C 60 1B 78 */	mr r0, r3
/* 80563A48  38 7E 09 BC */	addi r3, r30, 0x9bc
/* 80563A4C  7C 1F 03 78 */	mr r31, r0
/* 80563A50  4B FF DB B5 */	bl aNNW_Send_card_e
/* 80563A54  2C 03 00 00 */	cmpwi r3, 0
/* 80563A58  41 82 00 14 */	beq lbl_80563A6C
/* 80563A5C  41 80 00 6C */	blt lbl_80563AC8
/* 80563A60  2C 03 00 03 */	cmpwi r3, 3
/* 80563A64  40 80 00 64 */	bge lbl_80563AC8
/* 80563A68  48 00 00 34 */	b lbl_80563A9C
lbl_80563A6C:
/* 80563A6C  38 60 00 47 */	li r3, 0x47
/* 80563A70  48 0C A4 B5 */	bl sAdo_SysLevStop
/* 80563A74  7F E3 FB 78 */	mr r3, r31
/* 80563A78  4B E5 D2 D5 */	bl mMsg_Unset_LockContinue
/* 80563A7C  7F E3 FB 78 */	mr r3, r31
/* 80563A80  38 80 30 10 */	li r4, 0x3010
/* 80563A84  4B E5 C5 41 */	bl mMsg_Set_continue_msg_num
/* 80563A88  7F C3 F3 78 */	mr r3, r30
/* 80563A8C  38 80 00 4C */	li r4, 0x4c
/* 80563A90  48 00 09 F9 */	bl aNNW_change_talk_proc
/* 80563A94  4B AE 5D 59 */	bl mGcgba_EndComm
/* 80563A98  48 00 00 30 */	b lbl_80563AC8
lbl_80563A9C:
/* 80563A9C  38 60 00 47 */	li r3, 0x47
/* 80563AA0  48 0C A4 85 */	bl sAdo_SysLevStop
/* 80563AA4  7F E3 FB 78 */	mr r3, r31
/* 80563AA8  4B E5 D2 A5 */	bl mMsg_Unset_LockContinue
/* 80563AAC  7F E3 FB 78 */	mr r3, r31
/* 80563AB0  38 80 30 03 */	li r4, 0x3003
/* 80563AB4  4B E5 C5 11 */	bl mMsg_Set_continue_msg_num
/* 80563AB8  7F C3 F3 78 */	mr r3, r30
/* 80563ABC  38 80 00 01 */	li r4, 1
/* 80563AC0  48 00 09 C9 */	bl aNNW_change_talk_proc
/* 80563AC4  4B AE 5D 29 */	bl mGcgba_EndComm
lbl_80563AC8:
/* 80563AC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80563ACC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80563AD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80563AD4  7C 08 03 A6 */	mtlr r0
/* 80563AD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80563ADC  4E 80 00 20 */	blr 
