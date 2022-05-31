lbl_80595E08:
/* 80595E08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80595E0C  7C 08 02 A6 */	mflr r0
/* 80595E10  90 01 00 24 */	stw r0, 0x24(r1)
/* 80595E14  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80595E18  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80595E1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80595E20  93 C1 00 08 */	stw r30, 8(r1)
/* 80595E24  7C 7F 1B 78 */	mr r31, r3
/* 80595E28  3C A0 80 65 */	lis r5, lit_440@ha /* 0x80649D9C@ha */
/* 80595E2C  3C 60 80 65 */	lis r3, lit_441@ha /* 0x80649DA0@ha */
/* 80595E30  C3 FF 02 44 */	lfs f31, 0x244(r31)
/* 80595E34  C0 43 9D A0 */	lfs f2, lit_441@l(r3)  /* 0x80649DA0@l */
/* 80595E38  7C 9E 23 78 */	mr r30, r4
/* 80595E3C  C0 25 9D 9C */	lfs f1, lit_440@l(r5)  /* 0x80649D9C@l */
/* 80595E40  38 7F 02 48 */	addi r3, r31, 0x248
/* 80595E44  4B E2 4E 25 */	bl chase_f
/* 80595E48  C0 1F 02 48 */	lfs f0, 0x248(r31)
/* 80595E4C  3C 60 80 65 */	lis r3, lit_442@ha /* 0x80649DA4@ha */
/* 80595E50  EF FF 00 2A */	fadds f31, f31, f0
/* 80595E54  C0 03 9D A4 */	lfs f0, lit_442@l(r3)  /* 0x80649DA4@l */
/* 80595E58  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80595E5C  40 80 00 08 */	bge lbl_80595E64
/* 80595E60  FF E0 00 90 */	fmr f31, f0
lbl_80595E64:
/* 80595E64  3C 60 80 65 */	lis r3, lit_443@ha /* 0x80649DA8@ha */
/* 80595E68  D3 FF 02 44 */	stfs f31, 0x244(r31)
/* 80595E6C  38 83 9D A8 */	addi r4, r3, lit_443@l /* 0x80649DA8@l */
/* 80595E70  7F E3 FB 78 */	mr r3, r31
/* 80595E74  C0 04 00 00 */	lfs f0, 0(r4)
/* 80595E78  EC 20 F8 2A */	fadds f1, f0, f31
/* 80595E7C  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80595E80  D0 3F 00 5C */	stfs f1, 0x5c(r31)
/* 80595E84  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 80595E88  4B FF FE 05 */	bl aIAB_BGcheck
/* 80595E8C  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80595E90  3C 60 80 65 */	lis r3, lit_444@ha /* 0x80649DAC@ha */
/* 80595E94  FC 20 02 10 */	fabs f1, f0
/* 80595E98  C0 03 9D AC */	lfs f0, lit_444@l(r3)  /* 0x80649DAC@l */
/* 80595E9C  FC 20 08 18 */	frsp f1, f1
/* 80595EA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80595EA4  41 80 00 10 */	blt lbl_80595EB4
/* 80595EA8  80 1F 02 40 */	lwz r0, 0x240(r31)
/* 80595EAC  2C 00 00 01 */	cmpwi r0, 1
/* 80595EB0  40 82 00 14 */	bne lbl_80595EC4
lbl_80595EB4:
/* 80595EB4  7F E3 FB 78 */	mr r3, r31
/* 80595EB8  7F C5 F3 78 */	mr r5, r30
/* 80595EBC  38 80 00 03 */	li r4, 3
/* 80595EC0  48 00 02 F9 */	bl aIAB_setupAction
lbl_80595EC4:
/* 80595EC4  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80595EC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80595ECC  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80595ED0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80595ED4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80595ED8  7C 08 03 A6 */	mtlr r0
/* 80595EDC  38 21 00 20 */	addi r1, r1, 0x20
/* 80595EE0  4E 80 00 20 */	blr 
