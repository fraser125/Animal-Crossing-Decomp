lbl_8052B578:
/* 8052B578  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052B57C  7C 08 02 A6 */	mflr r0
/* 8052B580  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052B584  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8052B588  7C 7F 1B 78 */	mr r31, r3
/* 8052B58C  88 03 07 F5 */	lbz r0, 0x7f5(r3)
/* 8052B590  28 00 00 02 */	cmplwi r0, 2
/* 8052B594  40 82 00 20 */	bne lbl_8052B5B4
/* 8052B598  88 BF 09 A2 */	lbz r5, 0x9a2(r31)
/* 8052B59C  38 A5 00 01 */	addi r5, r5, 1
/* 8052B5A0  98 BF 09 A2 */	stb r5, 0x9a2(r31)
/* 8052B5A4  48 00 04 A5 */	bl aHN0_setup_think_proc
/* 8052B5A8  38 00 00 FF */	li r0, 0xff
/* 8052B5AC  98 1F 00 D6 */	stb r0, 0xd6(r31)
/* 8052B5B0  48 00 00 5C */	b lbl_8052B60C
lbl_8052B5B4:
/* 8052B5B4  C0 1F 09 04 */	lfs f0, 0x904(r31)
/* 8052B5B8  A8 1F 09 9E */	lha r0, 0x99e(r31)
/* 8052B5BC  FC 00 00 1E */	fctiwz f0, f0
/* 8052B5C0  D8 01 00 08 */	stfd f0, 8(r1)
/* 8052B5C4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8052B5C8  7C 63 07 34 */	extsh r3, r3
/* 8052B5CC  7C 03 00 00 */	cmpw r3, r0
/* 8052B5D0  40 82 00 24 */	bne lbl_8052B5F4
/* 8052B5D4  C0 1F 09 08 */	lfs f0, 0x908(r31)
/* 8052B5D8  A8 1F 09 A0 */	lha r0, 0x9a0(r31)
/* 8052B5DC  FC 00 00 1E */	fctiwz f0, f0
/* 8052B5E0  D8 01 00 08 */	stfd f0, 8(r1)
/* 8052B5E4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8052B5E8  7C 63 07 34 */	extsh r3, r3
/* 8052B5EC  7C 03 00 00 */	cmpw r3, r0
/* 8052B5F0  41 82 00 1C */	beq lbl_8052B60C
lbl_8052B5F4:
/* 8052B5F4  88 DF 09 A2 */	lbz r6, 0x9a2(r31)
/* 8052B5F8  7F E3 FB 78 */	mr r3, r31
/* 8052B5FC  38 A0 00 21 */	li r5, 0x21
/* 8052B600  38 06 FF FF */	addi r0, r6, -1
/* 8052B604  98 1F 09 A4 */	stb r0, 0x9a4(r31)
/* 8052B608  48 00 04 41 */	bl aHN0_setup_think_proc
lbl_8052B60C:
/* 8052B60C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052B610  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8052B614  7C 08 03 A6 */	mtlr r0
/* 8052B618  38 21 00 20 */	addi r1, r1, 0x20
/* 8052B61C  4E 80 00 20 */	blr 
