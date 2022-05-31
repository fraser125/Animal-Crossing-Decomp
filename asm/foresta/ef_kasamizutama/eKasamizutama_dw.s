lbl_80612A6C:
/* 80612A6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80612A70  7C 08 02 A6 */	mflr r0
/* 80612A74  3C A0 80 65 */	lis r5, lit_417@ha /* 0x8064C4BC@ha */
/* 80612A78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80612A7C  C0 25 C4 BC */	lfs f1, lit_417@l(r5)  /* 0x8064C4BC@l */
/* 80612A80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80612A84  7C 9F 23 78 */	mr r31, r4
/* 80612A88  93 C1 00 08 */	stw r30, 8(r1)
/* 80612A8C  7C 7E 1B 78 */	mr r30, r3
/* 80612A90  A8 03 00 00 */	lha r0, 0(r3)
/* 80612A94  3C 60 80 6D */	lis r3, data_806D2D08@ha /* 0x806D2D08@ha */
/* 80612A98  38 63 2D 08 */	addi r3, r3, data_806D2D08@l /* 0x806D2D08@l */
/* 80612A9C  20 00 00 14 */	subfic r0, r0, 0x14
/* 80612AA0  7C 00 07 34 */	extsh r0, r0
/* 80612AA4  7C 00 0E 70 */	srawi r0, r0, 1
/* 80612AA8  7C 00 07 34 */	extsh r0, r0
/* 80612AAC  54 00 10 3A */	slwi r0, r0, 2
/* 80612AB0  7C 03 04 2E */	lfsx f0, r3, r0
/* 80612AB4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80612AB8  D0 1E 00 3C */	stfs f0, 0x3c(r30)
/* 80612ABC  D0 1E 00 38 */	stfs f0, 0x38(r30)
/* 80612AC0  D0 1E 00 34 */	stfs f0, 0x34(r30)
/* 80612AC4  80 64 00 00 */	lwz r3, 0(r4)
/* 80612AC8  4B DD 26 91 */	bl _texture_z_light_fog_prim_xlu
/* 80612ACC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80612AD0  7F E3 FB 78 */	mr r3, r31
/* 80612AD4  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80612AD8  38 9E 00 10 */	addi r4, r30, 0x10
/* 80612ADC  3C C5 00 02 */	addis r6, r5, 2
/* 80612AE0  38 BE 00 34 */	addi r5, r30, 0x34
/* 80612AE4  80 C6 60 9C */	lwz r6, 0x609c(r6)
/* 80612AE8  83 FF 00 00 */	lwz r31, 0(r31)
/* 80612AEC  81 86 00 18 */	lwz r12, 0x18(r6)
/* 80612AF0  7D 89 03 A6 */	mtctr r12
/* 80612AF4  4E 80 04 21 */	bctrl 
/* 80612AF8  80 FF 02 E0 */	lwz r7, 0x2e0(r31)
/* 80612AFC  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 80612B00  3C 80 80 CC */	lis r4, data_80CB8A20@ha /* 0x80CB8A20@ha */
/* 80612B04  3C 60 80 CC */	lis r3, ef_koke_suiteki01_00_modelT@ha /* 0x80CB8C60@ha */
/* 80612B08  38 07 00 08 */	addi r0, r7, 8
/* 80612B0C  38 C5 00 20 */	addi r6, r5, 0x0020 /* 0xDB060020@l */
/* 80612B10  90 1F 02 E0 */	stw r0, 0x2e0(r31)
/* 80612B14  38 A4 8A 20 */	addi r5, r4, data_80CB8A20@l /* 0x80CB8A20@l */
/* 80612B18  3C 80 DE 00 */	lis r4, 0xde00
/* 80612B1C  38 03 8C 60 */	addi r0, r3, ef_koke_suiteki01_00_modelT@l /* 0x80CB8C60@l */
/* 80612B20  90 C7 00 00 */	stw r6, 0(r7)
/* 80612B24  90 A7 00 04 */	stw r5, 4(r7)
/* 80612B28  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 80612B2C  38 65 00 08 */	addi r3, r5, 8
/* 80612B30  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80612B34  90 85 00 00 */	stw r4, 0(r5)
/* 80612B38  90 05 00 04 */	stw r0, 4(r5)
/* 80612B3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80612B40  83 C1 00 08 */	lwz r30, 8(r1)
/* 80612B44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80612B48  7C 08 03 A6 */	mtlr r0
/* 80612B4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80612B50  4E 80 00 20 */	blr 
