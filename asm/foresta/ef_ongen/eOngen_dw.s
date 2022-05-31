lbl_80619BA8:
/* 80619BA8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80619BAC  7C 08 02 A6 */	mflr r0
/* 80619BB0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80619BB4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80619BB8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80619BBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80619BC0  4B A8 13 11 */	bl func_8009AED0
/* 80619BC4  7C 9C 23 78 */	mr r28, r4
/* 80619BC8  7C 7E 1B 78 */	mr r30, r3
/* 80619BCC  83 E4 00 00 */	lwz r31, 0(r4)
/* 80619BD0  38 7E 00 06 */	addi r3, r30, 6
/* 80619BD4  4B FF FF A9 */	bl eOngen_TidyArgData
/* 80619BD8  A8 1E 00 06 */	lha r0, 6(r30)
/* 80619BDC  3C 60 80 6D */	lis r3, scale_table@ha /* 0x806D3278@ha */
/* 80619BE0  38 83 32 78 */	addi r4, r3, scale_table@l /* 0x806D3278@l */
/* 80619BE4  80 7C 00 00 */	lwz r3, 0(r28)
/* 80619BE8  54 00 10 3A */	slwi r0, r0, 2
/* 80619BEC  7F E4 04 2E */	lfsx f31, r4, r0
/* 80619BF0  4B DC B5 69 */	bl _texture_z_light_fog_prim_xlu
/* 80619BF4  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80619BF8  38 60 00 00 */	li r3, 0
/* 80619BFC  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 80619C00  C0 7E 00 18 */	lfs f3, 0x18(r30)
/* 80619C04  4B DF 26 FD */	bl Matrix_translate
/* 80619C08  38 7C 20 4C */	addi r3, r28, 0x204c
/* 80619C0C  38 80 00 01 */	li r4, 1
/* 80619C10  4B DF 26 89 */	bl Matrix_mult
/* 80619C14  FC 20 F8 90 */	fmr f1, f31
/* 80619C18  38 60 00 01 */	li r3, 1
/* 80619C1C  FC 40 F8 90 */	fmr f2, f31
/* 80619C20  FC 60 F8 90 */	fmr f3, f31
/* 80619C24  4B DF 27 C9 */	bl Matrix_scale
/* 80619C28  83 BF 02 E0 */	lwz r29, 0x2e0(r31)
/* 80619C2C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80619C30  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80619C34  38 7D 00 08 */	addi r3, r29, 8
/* 80619C38  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80619C3C  90 1D 00 00 */	stw r0, 0(r29)
/* 80619C40  80 7C 00 00 */	lwz r3, 0(r28)
/* 80619C44  4B DF 37 91 */	bl _Matrix_to_Mtx_new
/* 80619C48  90 7D 00 04 */	stw r3, 4(r29)
/* 80619C4C  3C A0 FA 00 */	lis r5, 0xFA00 /* 0xFA000080@ha */
/* 80619C50  3C 60 80 6D */	lis r3, disp_table@ha /* 0x806D3284@ha */
/* 80619C54  38 80 FF BE */	li r4, -66
/* 80619C58  80 FF 02 E0 */	lwz r7, 0x2e0(r31)
/* 80619C5C  38 A5 00 80 */	addi r5, r5, 0x0080 /* 0xFA000080@l */
/* 80619C60  3C 00 DE 00 */	lis r0, 0xde00
/* 80619C64  38 63 32 84 */	addi r3, r3, disp_table@l /* 0x806D3284@l */
/* 80619C68  38 C7 00 08 */	addi r6, r7, 8
/* 80619C6C  90 DF 02 E0 */	stw r6, 0x2e0(r31)
/* 80619C70  90 A7 00 00 */	stw r5, 0(r7)
/* 80619C74  90 87 00 04 */	stw r4, 4(r7)
/* 80619C78  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 80619C7C  38 85 00 08 */	addi r4, r5, 8
/* 80619C80  90 9F 02 E0 */	stw r4, 0x2e0(r31)
/* 80619C84  90 05 00 00 */	stw r0, 0(r5)
/* 80619C88  A8 1E 00 06 */	lha r0, 6(r30)
/* 80619C8C  54 00 10 3A */	slwi r0, r0, 2
/* 80619C90  7C 03 00 2E */	lwzx r0, r3, r0
/* 80619C94  90 05 00 04 */	stw r0, 4(r5)
/* 80619C98  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80619C9C  39 61 00 20 */	addi r11, r1, 0x20
/* 80619CA0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80619CA4  4B A8 12 79 */	bl func_8009AF1C
/* 80619CA8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80619CAC  7C 08 03 A6 */	mtlr r0
/* 80619CB0  38 21 00 30 */	addi r1, r1, 0x30
/* 80619CB4  4E 80 00 20 */	blr 
