lbl_8056E3C8:
/* 8056E3C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056E3CC  7C 08 02 A6 */	mflr r0
/* 8056E3D0  3C A0 80 65 */	lis r5, lit_634@ha /* 0x80649890@ha */
/* 8056E3D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056E3D8  C0 05 98 90 */	lfs f0, lit_634@l(r5)  /* 0x80649890@l */
/* 8056E3DC  C0 43 00 2C */	lfs f2, 0x2c(r3)
/* 8056E3E0  C0 23 09 A4 */	lfs f1, 0x9a4(r3)
/* 8056E3E4  EC 22 08 28 */	fsubs f1, f2, f1
/* 8056E3E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8056E3EC  40 80 00 0C */	bge lbl_8056E3F8
/* 8056E3F0  38 A0 00 02 */	li r5, 2
/* 8056E3F4  48 00 08 DD */	bl aPMAN_setupAction
lbl_8056E3F8:
/* 8056E3F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056E3FC  7C 08 03 A6 */	mtlr r0
/* 8056E400  38 21 00 10 */	addi r1, r1, 0x10
/* 8056E404  4E 80 00 20 */	blr 
