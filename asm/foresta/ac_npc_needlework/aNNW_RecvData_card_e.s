lbl_80561658:
/* 80561658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056165C  7C 08 02 A6 */	mflr r0
/* 80561660  90 01 00 14 */	stw r0, 0x14(r1)
/* 80561664  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80561668  7C 7F 1B 78 */	mr r31, r3
/* 8056166C  88 03 00 00 */	lbz r0, 0(r3)
/* 80561670  28 00 00 00 */	cmplwi r0, 0
/* 80561674  40 82 00 10 */	bne lbl_80561684
/* 80561678  4B AE 81 45 */	bl mGcgba_InitVar
/* 8056167C  38 00 00 01 */	li r0, 1
/* 80561680  98 1F 00 00 */	stb r0, 0(r31)
lbl_80561684:
/* 80561684  3C 60 81 1F */	lis r3, data_811EC218@ha /* 0x811EC218@ha */
/* 80561688  38 80 02 20 */	li r4, 0x220
/* 8056168C  38 63 C2 18 */	addi r3, r3, data_811EC218@l /* 0x811EC218@l */
/* 80561690  38 A0 00 00 */	li r5, 0
/* 80561694  4B AE 8D 1D */	bl mGcgba_Read
/* 80561698  2C 03 00 09 */	cmpwi r3, 9
/* 8056169C  41 82 00 0C */	beq lbl_805616A8
/* 805616A0  38 00 00 00 */	li r0, 0
/* 805616A4  98 1F 00 00 */	stb r0, 0(r31)
lbl_805616A8:
/* 805616A8  2C 03 00 01 */	cmpwi r3, 1
/* 805616AC  40 82 00 0C */	bne lbl_805616B8
/* 805616B0  38 60 00 01 */	li r3, 1
/* 805616B4  48 00 00 10 */	b lbl_805616C4
lbl_805616B8:
/* 805616B8  38 03 FF F7 */	addi r0, r3, -9
/* 805616BC  20 00 00 00 */	subfic r0, r0, 0
/* 805616C0  7C 60 01 10 */	subfe r3, r0, r0
lbl_805616C4:
/* 805616C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805616C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805616CC  7C 08 03 A6 */	mtlr r0
/* 805616D0  38 21 00 10 */	addi r1, r1, 0x10
/* 805616D4  4E 80 00 20 */	blr 
