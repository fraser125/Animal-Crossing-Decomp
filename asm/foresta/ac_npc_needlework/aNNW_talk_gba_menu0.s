lbl_80563FA4:
/* 80563FA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80563FA8  7C 08 02 A6 */	mflr r0
/* 80563FAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80563FB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80563FB4  7C 9F 23 78 */	mr r31, r4
/* 80563FB8  93 C1 00 08 */	stw r30, 8(r1)
/* 80563FBC  7C 7E 1B 78 */	mr r30, r3
/* 80563FC0  4B E5 B6 E9 */	bl func_803BF6A8
/* 80563FC4  3B FF 1D EC */	addi r31, r31, 0x1dec
/* 80563FC8  4B E5 B7 79 */	bl mMsg_Check_main_wait
/* 80563FCC  2C 03 00 01 */	cmpwi r3, 1
/* 80563FD0  40 82 00 20 */	bne lbl_80563FF0
/* 80563FD4  7F E3 FB 78 */	mr r3, r31
/* 80563FD8  4B FF D2 51 */	bl aNNW_gba_open_submenu
/* 80563FDC  88 9E 09 B2 */	lbz r4, 0x9b2(r30)
/* 80563FE0  7F C3 F3 78 */	mr r3, r30
/* 80563FE4  38 04 00 01 */	addi r0, r4, 1
/* 80563FE8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80563FEC  48 00 04 9D */	bl aNNW_change_talk_proc
lbl_80563FF0:
/* 80563FF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80563FF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80563FF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80563FFC  7C 08 03 A6 */	mtlr r0
/* 80564000  38 21 00 10 */	addi r1, r1, 0x10
/* 80564004  4E 80 00 20 */	blr 
