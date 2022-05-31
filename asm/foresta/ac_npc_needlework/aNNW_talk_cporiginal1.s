lbl_80563EA8:
/* 80563EA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80563EAC  7C 08 02 A6 */	mflr r0
/* 80563EB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80563EB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80563EB8  7C 9F 23 78 */	mr r31, r4
/* 80563EBC  93 C1 00 08 */	stw r30, 8(r1)
/* 80563EC0  7C 7E 1B 78 */	mr r30, r3
/* 80563EC4  4B E5 B7 E5 */	bl func_803BF6A8
/* 80563EC8  3B FF 1D EC */	addi r31, r31, 0x1dec
/* 80563ECC  4B E5 B8 75 */	bl mMsg_Check_main_wait
/* 80563ED0  2C 03 00 01 */	cmpwi r3, 1
/* 80563ED4  40 82 00 2C */	bne lbl_80563F00
/* 80563ED8  7F E3 FB 78 */	mr r3, r31
/* 80563EDC  38 80 00 17 */	li r4, 0x17
/* 80563EE0  38 A0 00 02 */	li r5, 2
/* 80563EE4  38 C0 00 00 */	li r6, 0
/* 80563EE8  4B E8 B7 F5 */	bl mSM_open_submenu
/* 80563EEC  88 9E 09 B2 */	lbz r4, 0x9b2(r30)
/* 80563EF0  7F C3 F3 78 */	mr r3, r30
/* 80563EF4  38 04 00 01 */	addi r0, r4, 1
/* 80563EF8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80563EFC  48 00 05 8D */	bl aNNW_change_talk_proc
lbl_80563F00:
/* 80563F00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80563F04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80563F08  83 C1 00 08 */	lwz r30, 8(r1)
/* 80563F0C  7C 08 03 A6 */	mtlr r0
/* 80563F10  38 21 00 10 */	addi r1, r1, 0x10
/* 80563F14  4E 80 00 20 */	blr 
