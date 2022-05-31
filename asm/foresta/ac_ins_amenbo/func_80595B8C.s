lbl_80595B8C:
/* 80595B8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80595B90  7C 08 02 A6 */	mflr r0
/* 80595B94  90 01 00 24 */	stw r0, 0x24(r1)
/* 80595B98  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80595B9C  7C 7F 1B 78 */	mr r31, r3
/* 80595BA0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80595BA4  7C 9E 23 78 */	mr r30, r4
/* 80595BA8  A8 03 00 24 */	lha r0, 0x24(r3)
/* 80595BAC  2C 00 00 00 */	cmpwi r0, 0
/* 80595BB0  40 82 00 4C */	bne lbl_80595BFC
/* 80595BB4  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 80595BB8  3C 60 80 65 */	lis r3, data_80649D84@ha /* 0x80649D84@ha */
/* 80595BBC  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 80595BC0  C0 23 9D 84 */	lfs f1, data_80649D84@l(r3)  /* 0x80649D84@l */
/* 80595BC4  38 61 00 08 */	addi r3, r1, 8
/* 80595BC8  90 81 00 08 */	stw r4, 8(r1)
/* 80595BCC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80595BD0  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80595BD4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80595BD8  4B DF 9C 49 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 80595BDC  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 80595BE0  38 7F 00 0C */	addi r3, r31, 0xc
/* 80595BE4  38 9F 00 28 */	addi r4, r31, 0x28
/* 80595BE8  4B E2 52 D5 */	bl xyz_t_move
/* 80595BEC  38 00 00 02 */	li r0, 2
/* 80595BF0  38 80 00 02 */	li r4, 2
/* 80595BF4  90 1F 02 18 */	stw r0, 0x218(r31)
/* 80595BF8  48 00 00 08 */	b lbl_80595C00
lbl_80595BFC:
/* 80595BFC  38 80 00 01 */	li r4, 1
lbl_80595C00:
/* 80595C00  3C 60 80 65 */	lis r3, lit_391@ha /* 0x80649D88@ha */
/* 80595C04  3C A0 80 65 */	lis r5, data_80649D84@ha /* 0x80649D84@ha */
/* 80595C08  38 C3 9D 88 */	addi r6, r3, lit_391@l /* 0x80649D88@l */
/* 80595C0C  C0 05 9D 84 */	lfs f0, data_80649D84@l(r5)  /* 0x80649D84@l */
/* 80595C10  C0 26 00 00 */	lfs f1, 0(r6)
/* 80595C14  3C 60 80 59 */	lis r3, aIAB_actor_move@ha /* 0x80596204@ha */
/* 80595C18  38 03 62 04 */	addi r0, r3, aIAB_actor_move@l /* 0x80596204@l */
/* 80595C1C  38 C0 2D 22 */	li r6, 0x2d22
/* 80595C20  D0 3F 02 10 */	stfs f1, 0x210(r31)
/* 80595C24  7F E3 FB 78 */	mr r3, r31
/* 80595C28  7F C5 F3 78 */	mr r5, r30
/* 80595C2C  D0 1F 02 14 */	stfs f0, 0x214(r31)
/* 80595C30  B0 DF 02 1C */	sth r6, 0x21c(r31)
/* 80595C34  90 1F 01 64 */	stw r0, 0x164(r31)
/* 80595C38  48 00 05 81 */	bl aIAB_setupAction
/* 80595C3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80595C40  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80595C44  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80595C48  7C 08 03 A6 */	mtlr r0
/* 80595C4C  38 21 00 20 */	addi r1, r1, 0x20
/* 80595C50  4E 80 00 20 */	blr 
