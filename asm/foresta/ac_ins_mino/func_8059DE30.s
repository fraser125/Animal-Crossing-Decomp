lbl_8059DE30:
/* 8059DE30  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8059DE34  7C 08 02 A6 */	mflr r0
/* 8059DE38  3C A0 80 65 */	lis r5, data_8064A184@ha /* 0x8064A184@ha */
/* 8059DE3C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8059DE40  C0 05 A1 84 */	lfs f0, data_8064A184@l(r5)  /* 0x8064A184@l */
/* 8059DE44  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8059DE48  7C 7F 1B 78 */	mr r31, r3
/* 8059DE4C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8059DE50  7C 9E 23 78 */	mr r30, r4
/* 8059DE54  D0 1F 02 10 */	stfs f0, 0x210(r31)
/* 8059DE58  80 1F 01 D0 */	lwz r0, 0x1d0(r31)
/* 8059DE5C  2C 00 00 24 */	cmpwi r0, 0x24
/* 8059DE60  41 82 00 34 */	beq lbl_8059DE94
/* 8059DE64  40 80 00 10 */	bge lbl_8059DE74
/* 8059DE68  2C 00 00 23 */	cmpwi r0, 0x23
/* 8059DE6C  40 80 00 14 */	bge lbl_8059DE80
/* 8059DE70  48 00 00 24 */	b lbl_8059DE94
lbl_8059DE74:
/* 8059DE74  2C 00 00 26 */	cmpwi r0, 0x26
/* 8059DE78  40 80 00 1C */	bge lbl_8059DE94
/* 8059DE7C  48 00 00 10 */	b lbl_8059DE8C
lbl_8059DE80:
/* 8059DE80  38 00 2D 23 */	li r0, 0x2d23
/* 8059DE84  B0 1F 02 1C */	sth r0, 0x21c(r31)
/* 8059DE88  48 00 00 0C */	b lbl_8059DE94
lbl_8059DE8C:
/* 8059DE8C  38 00 2D 25 */	li r0, 0x2d25
/* 8059DE90  B0 1F 02 1C */	sth r0, 0x21c(r31)
lbl_8059DE94:
/* 8059DE94  3C 80 80 5A */	lis r4, aIMN_actor_move@ha /* 0x8059F038@ha */
/* 8059DE98  38 60 00 00 */	li r3, 0
/* 8059DE9C  38 04 F0 38 */	addi r0, r4, aIMN_actor_move@l /* 0x8059F038@l */
/* 8059DEA0  90 1F 01 64 */	stw r0, 0x164(r31)
/* 8059DEA4  88 1F 02 1E */	lbz r0, 0x21e(r31)
/* 8059DEA8  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8059DEAC  98 1F 02 1E */	stb r0, 0x21e(r31)
/* 8059DEB0  A8 1F 00 24 */	lha r0, 0x24(r31)
/* 8059DEB4  2C 00 00 00 */	cmpwi r0, 0
/* 8059DEB8  40 82 00 B4 */	bne lbl_8059DF6C
/* 8059DEBC  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8059DEC0  3C 60 80 65 */	lis r3, lit_446@ha /* 0x8064A18C@ha */
/* 8059DEC4  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8059DEC8  C0 23 A1 8C */	lfs f1, lit_446@l(r3)  /* 0x8064A18C@l */
/* 8059DECC  38 61 00 14 */	addi r3, r1, 0x14
/* 8059DED0  90 81 00 14 */	stw r4, 0x14(r1)
/* 8059DED4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8059DED8  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8059DEDC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8059DEE0  4B DF 1A B9 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 8059DEE4  3C 60 80 65 */	lis r3, lit_445@ha /* 0x8064A188@ha */
/* 8059DEE8  38 A0 22 00 */	li r5, 0x2200
/* 8059DEEC  C0 03 A1 88 */	lfs f0, lit_445@l(r3)  /* 0x8064A188@l */
/* 8059DEF0  38 00 80 00 */	li r0, -32768
/* 8059DEF4  38 7F 00 0C */	addi r3, r31, 0xc
/* 8059DEF8  38 9F 00 28 */	addi r4, r31, 0x28
/* 8059DEFC  EC 00 08 2A */	fadds f0, f0, f1
/* 8059DF00  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8059DF04  B0 BF 00 DC */	sth r5, 0xdc(r31)
/* 8059DF08  B0 1F 00 DE */	sth r0, 0xde(r31)
/* 8059DF0C  B0 BF 00 34 */	sth r5, 0x34(r31)
/* 8059DF10  4B E1 CF AD */	bl xyz_t_move
/* 8059DF14  80 DF 00 28 */	lwz r6, 0x28(r31)
/* 8059DF18  38 7F 02 38 */	addi r3, r31, 0x238
/* 8059DF1C  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8059DF20  38 9F 02 3C */	addi r4, r31, 0x23c
/* 8059DF24  38 A1 00 08 */	addi r5, r1, 8
/* 8059DF28  90 C1 00 08 */	stw r6, 8(r1)
/* 8059DF2C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8059DF30  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8059DF34  90 01 00 10 */	stw r0, 0x10(r1)
/* 8059DF38  4B E0 74 31 */	bl mFI_Wpos2UtNum
/* 8059DF3C  3C 80 80 65 */	lis r4, lit_447@ha /* 0x8064A190@ha */
/* 8059DF40  3C 60 80 5A */	lis r3, aIMN_position_move@ha /* 0x8059DFE8@ha */
/* 8059DF44  C0 24 A1 90 */	lfs f1, lit_447@l(r4)  /* 0x8064A190@l */
/* 8059DF48  38 63 DF E8 */	addi r3, r3, aIMN_position_move@l /* 0x8059DFE8@l */
/* 8059DF4C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8059DF50  38 00 00 00 */	li r0, 0
/* 8059DF54  38 80 00 02 */	li r4, 2
/* 8059DF58  EC 01 00 2A */	fadds f0, f1, f0
/* 8059DF5C  D0 1F 02 50 */	stfs f0, 0x250(r31)
/* 8059DF60  90 7F 01 D4 */	stw r3, 0x1d4(r31)
/* 8059DF64  98 1F 01 08 */	stb r0, 0x108(r31)
/* 8059DF68  48 00 00 10 */	b lbl_8059DF78
lbl_8059DF6C:
/* 8059DF6C  38 00 00 01 */	li r0, 1
/* 8059DF70  38 80 00 01 */	li r4, 1
/* 8059DF74  98 1F 00 B5 */	stb r0, 0xb5(r31)
lbl_8059DF78:
/* 8059DF78  7F E3 FB 78 */	mr r3, r31
/* 8059DF7C  7F C5 F3 78 */	mr r5, r30
/* 8059DF80  48 00 10 6D */	bl aIMN_setupAction
/* 8059DF84  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8059DF88  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8059DF8C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8059DF90  7C 08 03 A6 */	mtlr r0
/* 8059DF94  38 21 00 30 */	addi r1, r1, 0x30
/* 8059DF98  4E 80 00 20 */	blr 
