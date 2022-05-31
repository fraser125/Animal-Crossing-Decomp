lbl_80474EDC:
/* 80474EDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80474EE0  7C 08 02 A6 */	mflr r0
/* 80474EE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80474EE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80474EEC  3B E4 1D EC */	addi r31, r4, 0x1dec
/* 80474EF0  93 C1 00 08 */	stw r30, 8(r1)
/* 80474EF4  7C 7E 1B 78 */	mr r30, r3
/* 80474EF8  4B F2 54 41 */	bl mDemo_CheckDemo
/* 80474EFC  2C 03 00 00 */	cmpwi r3, 0
/* 80474F00  40 82 00 28 */	bne lbl_80474F28
/* 80474F04  7F E3 FB 78 */	mr r3, r31
/* 80474F08  38 80 00 01 */	li r4, 1
/* 80474F0C  38 A0 00 09 */	li r5, 9
/* 80474F10  38 C0 00 00 */	li r6, 0
/* 80474F14  4B F7 A7 C9 */	bl mSM_open_submenu
/* 80474F18  4B F0 E6 29 */	bl func_80383540
/* 80474F1C  4B F0 EC 59 */	bl mChoice_Clear_ChoseNum
/* 80474F20  38 00 00 16 */	li r0, 0x16
/* 80474F24  B0 1E 03 EE */	sth r0, 0x3ee(r30)
lbl_80474F28:
/* 80474F28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80474F2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80474F30  83 C1 00 08 */	lwz r30, 8(r1)
/* 80474F34  7C 08 03 A6 */	mtlr r0
/* 80474F38  38 21 00 10 */	addi r1, r1, 0x10
/* 80474F3C  4E 80 00 20 */	blr 
