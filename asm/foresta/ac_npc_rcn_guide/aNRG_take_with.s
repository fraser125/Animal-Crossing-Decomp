lbl_8056F69C:
/* 8056F69C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056F6A0  7C 08 02 A6 */	mflr r0
/* 8056F6A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056F6A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056F6AC  93 C1 00 08 */	stw r30, 8(r1)
/* 8056F6B0  7C 7E 1B 78 */	mr r30, r3
/* 8056F6B4  88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 8056F6B8  28 00 00 FF */	cmplwi r0, 0xff
/* 8056F6BC  40 82 00 4C */	bne lbl_8056F708
/* 8056F6C0  88 1E 07 F5 */	lbz r0, 0x7f5(r30)
/* 8056F6C4  28 00 00 02 */	cmplwi r0, 2
/* 8056F6C8  40 82 00 40 */	bne lbl_8056F708
/* 8056F6CC  8B FE 09 A9 */	lbz r31, 0x9a9(r30)
/* 8056F6D0  2C 1F 00 01 */	cmpwi r31, 1
/* 8056F6D4  41 80 00 10 */	blt lbl_8056F6E4
/* 8056F6D8  38 A0 00 05 */	li r5, 5
/* 8056F6DC  48 00 06 9D */	bl aNRG_setup_think_proc
/* 8056F6E0  48 00 00 24 */	b lbl_8056F704
lbl_8056F6E4:
/* 8056F6E4  38 80 00 04 */	li r4, 4
/* 8056F6E8  38 A0 00 02 */	li r5, 2
/* 8056F6EC  38 C0 00 03 */	li r6, 3
/* 8056F6F0  38 E0 00 00 */	li r7, 0
/* 8056F6F4  39 00 08 C0 */	li r8, 0x8c0
/* 8056F6F8  39 20 05 DC */	li r9, 0x5dc
/* 8056F6FC  4B FF F8 ED */	bl func_8056EFE8
/* 8056F700  3B FF 00 01 */	addi r31, r31, 1
lbl_8056F704:
/* 8056F704  9B FE 09 A9 */	stb r31, 0x9a9(r30)
lbl_8056F708:
/* 8056F708  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056F70C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056F710  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056F714  7C 08 03 A6 */	mtlr r0
/* 8056F718  38 21 00 10 */	addi r1, r1, 0x10
/* 8056F71C  4E 80 00 20 */	blr 
