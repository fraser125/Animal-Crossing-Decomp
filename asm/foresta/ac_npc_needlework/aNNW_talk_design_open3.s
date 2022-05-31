lbl_805629B0:
/* 805629B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805629B4  7C 08 02 A6 */	mflr r0
/* 805629B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805629BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805629C0  7C 9F 23 78 */	mr r31, r4
/* 805629C4  93 C1 00 08 */	stw r30, 8(r1)
/* 805629C8  7C 7E 1B 78 */	mr r30, r3
/* 805629CC  4B E5 CC DD */	bl func_803BF6A8
/* 805629D0  4B E5 CD 71 */	bl mMsg_Check_main_wait
/* 805629D4  2C 03 00 01 */	cmpwi r3, 1
/* 805629D8  40 82 00 28 */	bne lbl_80562A00
/* 805629DC  38 7F 1D EC */	addi r3, r31, 0x1dec
/* 805629E0  38 FE 09 9C */	addi r7, r30, 0x99c
/* 805629E4  38 80 00 04 */	li r4, 4
/* 805629E8  38 A0 00 05 */	li r5, 5
/* 805629EC  38 C0 00 00 */	li r6, 0
/* 805629F0  4B E8 CD 15 */	bl mSM_open_submenu_new
/* 805629F4  7F C3 F3 78 */	mr r3, r30
/* 805629F8  38 80 00 14 */	li r4, 0x14
/* 805629FC  48 00 1A 8D */	bl aNNW_change_talk_proc
lbl_80562A00:
/* 80562A00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80562A04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80562A08  83 C1 00 08 */	lwz r30, 8(r1)
/* 80562A0C  7C 08 03 A6 */	mtlr r0
/* 80562A10  38 21 00 10 */	addi r1, r1, 0x10
/* 80562A14  4E 80 00 20 */	blr 
