lbl_805E2D84:
/* 805E2D84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E2D88  7C 08 02 A6 */	mflr r0
/* 805E2D8C  28 04 00 00 */	cmplwi r4, 0
/* 805E2D90  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E2D94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E2D98  93 C1 00 08 */	stw r30, 8(r1)
/* 805E2D9C  41 82 00 A0 */	beq lbl_805E2E3C
/* 805E2DA0  3C C0 80 65 */	lis r6, lit_1248@ha /* 0x8064B488@ha */
/* 805E2DA4  3C A0 80 65 */	lis r5, lit_741@ha /* 0x8064B3F4@ha */
/* 805E2DA8  C0 66 B4 88 */	lfs f3, lit_1248@l(r6)  /* 0x8064B488@l */
/* 805E2DAC  C0 24 00 EC */	lfs f1, 0xec(r4)
/* 805E2DB0  C0 04 00 F0 */	lfs f0, 0xf0(r4)
/* 805E2DB4  EC 23 00 72 */	fmuls f1, f3, f1
/* 805E2DB8  83 E3 00 00 */	lwz r31, 0(r3)
/* 805E2DBC  EC 63 00 32 */	fmuls f3, f3, f0
/* 805E2DC0  C0 45 B3 F4 */	lfs f2, lit_741@l(r5)  /* 0x8064B3F4@l */
/* 805E2DC4  38 60 00 00 */	li r3, 0
/* 805E2DC8  4B E2 96 25 */	bl Matrix_scale
/* 805E2DCC  7F E3 FB 78 */	mr r3, r31
/* 805E2DD0  4B E0 23 39 */	bl _texture_z_light_fog_prim
/* 805E2DD4  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 805E2DD8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805E2DDC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805E2DE0  7F E3 FB 78 */	mr r3, r31
/* 805E2DE4  38 9E 00 08 */	addi r4, r30, 8
/* 805E2DE8  90 9F 02 D0 */	stw r4, 0x2d0(r31)
/* 805E2DEC  90 1E 00 00 */	stw r0, 0(r30)
/* 805E2DF0  4B E2 A5 E5 */	bl _Matrix_to_Mtx_new
/* 805E2DF4  90 7E 00 04 */	stw r3, 4(r30)
/* 805E2DF8  3C A0 FA 00 */	lis r5, 0xFA00 /* 0xFA0000FF@ha */
/* 805E2DFC  3C 80 0A 00 */	lis r4, 0x0A00 /* 0x0A002896@ha */
/* 805E2E00  3C 60 80 EE */	lis r3, ef_shadow_in_modelT@ha /* 0x80EDA7B8@ha */
/* 805E2E04  81 1F 02 D0 */	lwz r8, 0x2d0(r31)
/* 805E2E08  38 C5 00 FF */	addi r6, r5, 0x00FF /* 0xFA0000FF@l */
/* 805E2E0C  38 A4 28 96 */	addi r5, r4, 0x2896 /* 0x0A002896@l */
/* 805E2E10  3C 80 DE 00 */	lis r4, 0xde00
/* 805E2E14  38 E8 00 08 */	addi r7, r8, 8
/* 805E2E18  38 03 A7 B8 */	addi r0, r3, ef_shadow_in_modelT@l /* 0x80EDA7B8@l */
/* 805E2E1C  90 FF 02 D0 */	stw r7, 0x2d0(r31)
/* 805E2E20  90 C8 00 00 */	stw r6, 0(r8)
/* 805E2E24  90 A8 00 04 */	stw r5, 4(r8)
/* 805E2E28  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 805E2E2C  38 65 00 08 */	addi r3, r5, 8
/* 805E2E30  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 805E2E34  90 85 00 00 */	stw r4, 0(r5)
/* 805E2E38  90 05 00 04 */	stw r0, 4(r5)
lbl_805E2E3C:
/* 805E2E3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E2E40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E2E44  83 C1 00 08 */	lwz r30, 8(r1)
/* 805E2E48  7C 08 03 A6 */	mtlr r0
/* 805E2E4C  38 21 00 10 */	addi r1, r1, 0x10
/* 805E2E50  4E 80 00 20 */	blr 
