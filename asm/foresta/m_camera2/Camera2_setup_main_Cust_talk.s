lbl_80382030:
/* 80382030  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80382034  7C 08 02 A6 */	mflr r0
/* 80382038  3C 80 80 64 */	lis r4, lit_474@ha /* 0x80641354@ha */
/* 8038203C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80382040  C0 04 13 54 */	lfs f0, lit_474@l(r4)  /* 0x80641354@l */
/* 80382044  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80382048  7C 7F 1B 78 */	mr r31, r3
/* 8038204C  80 03 1C 50 */	lwz r0, 0x1c50(r3)
/* 80382050  90 03 1C 00 */	stw r0, 0x1c00(r3)
/* 80382054  80 03 1C 54 */	lwz r0, 0x1c54(r3)
/* 80382058  90 03 1C 04 */	stw r0, 0x1c04(r3)
/* 8038205C  C0 23 1C 58 */	lfs f1, 0x1c58(r3)
/* 80382060  D0 23 1C 08 */	stfs f1, 0x1c08(r3)
/* 80382064  A8 03 1C 5C */	lha r0, 0x1c5c(r3)
/* 80382068  B0 03 1C 10 */	sth r0, 0x1c10(r3)
/* 8038206C  A8 03 1C 5E */	lha r0, 0x1c5e(r3)
/* 80382070  B0 03 1C 12 */	sth r0, 0x1c12(r3)
/* 80382074  C0 23 1C 60 */	lfs f1, 0x1c60(r3)
/* 80382078  D0 23 1C 14 */	stfs f1, 0x1c14(r3)
/* 8038207C  D0 03 1C 0C */	stfs f0, 0x1c0c(r3)
/* 80382080  4B FF CA 15 */	bl Camera2_setup_main_Base
/* 80382084  38 00 00 00 */	li r0, 0
/* 80382088  90 1F 1B F4 */	stw r0, 0x1bf4(r31)
/* 8038208C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80382090  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80382094  7C 08 03 A6 */	mtlr r0
/* 80382098  38 21 00 10 */	addi r1, r1, 0x10
/* 8038209C  4E 80 00 20 */	blr 