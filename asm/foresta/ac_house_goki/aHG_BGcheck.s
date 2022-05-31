lbl_8050B6F8:
/* 8050B6F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050B6FC  7C 08 02 A6 */	mflr r0
/* 8050B700  3C A0 80 65 */	lis r5, lit_523@ha /* 0x80648E18@ha */
/* 8050B704  3C 80 80 65 */	lis r4, lit_438@ha /* 0x80648DF8@ha */
/* 8050B708  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050B70C  38 C0 00 00 */	li r6, 0
/* 8050B710  C0 25 8E 18 */	lfs f1, lit_523@l(r5)  /* 0x80648E18@l */
/* 8050B714  38 A0 00 00 */	li r5, 0
/* 8050B718  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050B71C  7C 7F 1B 78 */	mr r31, r3
/* 8050B720  C0 44 8D F8 */	lfs f2, lit_438@l(r4)  /* 0x80648DF8@l */
/* 8050B724  7F E4 FB 78 */	mr r4, r31
/* 8050B728  38 60 00 00 */	li r3, 0
/* 8050B72C  4B E7 E6 9D */	bl mCoBG_WallCheckOnly
/* 8050B730  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8050B734  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8050B738  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8050B73C  40 80 00 08 */	bge lbl_8050B744
/* 8050B740  D0 3F 00 2C */	stfs f1, 0x2c(r31)
lbl_8050B744:
/* 8050B744  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050B748  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050B74C  7C 08 03 A6 */	mtlr r0
/* 8050B750  38 21 00 10 */	addi r1, r1, 0x10
/* 8050B754  4E 80 00 20 */	blr 
