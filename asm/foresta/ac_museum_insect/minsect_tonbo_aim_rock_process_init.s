lbl_8045FAFC:
/* 8045FAFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045FB00  7C 08 02 A6 */	mflr r0
/* 8045FB04  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045FB08  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8045FB0C  7C 7F 1B 78 */	mr r31, r3
/* 8045FB10  4B BF D1 E5 */	bl fqrand
/* 8045FB14  3C 60 80 64 */	lis r3, lit_1264@ha /* 0x80644738@ha */
/* 8045FB18  C0 03 47 38 */	lfs f0, lit_1264@l(r3)  /* 0x80644738@l */
/* 8045FB1C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045FB20  FC 00 00 1E */	fctiwz f0, f0
/* 8045FB24  D8 01 00 08 */	stfd f0, 8(r1)
/* 8045FB28  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8045FB2C  B0 1F 00 74 */	sth r0, 0x74(r31)
/* 8045FB30  A8 1F 00 74 */	lha r0, 0x74(r31)
/* 8045FB34  2C 00 00 06 */	cmpwi r0, 6
/* 8045FB38  41 80 00 0C */	blt lbl_8045FB44
/* 8045FB3C  38 00 00 06 */	li r0, 6
/* 8045FB40  B0 1F 00 74 */	sth r0, 0x74(r31)
lbl_8045FB44:
/* 8045FB44  3C 60 81 1D */	lis r3, data_811CDFD0@ha /* 0x811CDFD0@ha */
/* 8045FB48  38 E0 00 00 */	li r7, 0
/* 8045FB4C  38 C3 DF D0 */	addi r6, r3, data_811CDFD0@l /* 0x811CDFD0@l */
/* 8045FB50  38 60 00 01 */	li r3, 1
/* 8045FB54  48 00 00 20 */	b lbl_8045FB74
lbl_8045FB58:
/* 8045FB58  2C 08 00 06 */	cmpwi r8, 6
/* 8045FB5C  40 80 00 14 */	bge lbl_8045FB70
/* 8045FB60  A8 9F 00 74 */	lha r4, 0x74(r31)
/* 8045FB64  38 04 00 01 */	addi r0, r4, 1
/* 8045FB68  B0 1F 00 74 */	sth r0, 0x74(r31)
/* 8045FB6C  48 00 00 08 */	b lbl_8045FB74
lbl_8045FB70:
/* 8045FB70  B0 FF 00 74 */	sth r7, 0x74(r31)
lbl_8045FB74:
/* 8045FB74  80 A6 00 00 */	lwz r5, 0(r6)
/* 8045FB78  A9 1F 00 74 */	lha r8, 0x74(r31)
/* 8045FB7C  A8 85 2F A0 */	lha r4, 0x2fa0(r5)
/* 8045FB80  7C 69 40 30 */	slw r9, r3, r8
/* 8045FB84  7C 80 48 39 */	and. r0, r4, r9
/* 8045FB88  40 82 FF D0 */	bne lbl_8045FB58
/* 8045FB8C  7C 80 4B 78 */	or r0, r4, r9
/* 8045FB90  B0 05 2F A0 */	sth r0, 0x2fa0(r5)
/* 8045FB94  80 1F 00 00 */	lwz r0, 0(r31)
/* 8045FB98  2C 00 00 0C */	cmpwi r0, 0xc
/* 8045FB9C  40 82 00 30 */	bne lbl_8045FBCC
/* 8045FBA0  4B BF D1 55 */	bl fqrand
/* 8045FBA4  3C 80 80 64 */	lis r4, lit_1086@ha /* 0x80644708@ha */
/* 8045FBA8  3C 60 80 64 */	lis r3, lit_1068@ha /* 0x80644704@ha */
/* 8045FBAC  C0 44 47 08 */	lfs f2, lit_1086@l(r4)  /* 0x80644708@l */
/* 8045FBB0  38 00 00 00 */	li r0, 0
/* 8045FBB4  C0 03 47 04 */	lfs f0, lit_1068@l(r3)  /* 0x80644704@l */
/* 8045FBB8  EC 22 08 2A */	fadds f1, f2, f1
/* 8045FBBC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045FBC0  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 8045FBC4  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 8045FBC8  48 00 00 20 */	b lbl_8045FBE8
lbl_8045FBCC:
/* 8045FBCC  4B BF D1 29 */	bl fqrand
/* 8045FBD0  3C 60 80 64 */	lis r3, lit_1086@ha /* 0x80644708@ha */
/* 8045FBD4  38 00 00 00 */	li r0, 0
/* 8045FBD8  C0 03 47 08 */	lfs f0, lit_1086@l(r3)  /* 0x80644708@l */
/* 8045FBDC  EC 00 08 2A */	fadds f0, f0, f1
/* 8045FBE0  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 8045FBE4  B0 1F 00 6E */	sth r0, 0x6e(r31)
lbl_8045FBE8:
/* 8045FBE8  3C 80 80 64 */	lis r4, lit_459@ha /* 0x806445BC@ha */
/* 8045FBEC  3C 60 80 46 */	lis r3, minsect_tonbo_aim_rock_process@ha /* 0x8045FC20@ha */
/* 8045FBF0  38 A4 45 BC */	addi r5, r4, lit_459@l /* 0x806445BC@l */
/* 8045FBF4  38 80 00 00 */	li r4, 0
/* 8045FBF8  C0 05 00 00 */	lfs f0, 0(r5)
/* 8045FBFC  38 03 FC 20 */	addi r0, r3, minsect_tonbo_aim_rock_process@l /* 0x8045FC20@l */
/* 8045FC00  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 8045FC04  B0 9F 00 78 */	sth r4, 0x78(r31)
/* 8045FC08  90 1F 00 04 */	stw r0, 4(r31)
/* 8045FC0C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8045FC10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045FC14  7C 08 03 A6 */	mtlr r0
/* 8045FC18  38 21 00 20 */	addi r1, r1, 0x20
/* 8045FC1C  4E 80 00 20 */	blr 
