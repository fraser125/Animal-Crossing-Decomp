lbl_80537F00:
/* 80537F00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80537F04  7C 08 02 A6 */	mflr r0
/* 80537F08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80537F0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80537F10  7C 9F 23 78 */	mr r31, r4
/* 80537F14  38 80 00 00 */	li r4, 0
/* 80537F18  93 C1 00 08 */	stw r30, 8(r1)
/* 80537F1C  7C 7E 1B 78 */	mr r30, r3
/* 80537F20  4B FF FD C1 */	bl aNPC_set_hide_flg
/* 80537F24  7F C3 F3 78 */	mr r3, r30
/* 80537F28  7F E4 FB 78 */	mr r4, r31
/* 80537F2C  38 A0 00 01 */	li r5, 1
/* 80537F30  4B FF E9 0D */	bl aNPC_think_init_proc
/* 80537F34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80537F38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80537F3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80537F40  7C 08 03 A6 */	mtlr r0
/* 80537F44  38 21 00 10 */	addi r1, r1, 0x10
/* 80537F48  4E 80 00 20 */	blr 
