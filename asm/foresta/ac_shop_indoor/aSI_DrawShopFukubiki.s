lbl_8049EC84:
/* 8049EC84  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8049EC88  7C 08 02 A6 */	mflr r0
/* 8049EC8C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8049EC90  39 61 00 30 */	addi r11, r1, 0x30
/* 8049EC94  4B BF C2 39 */	bl func_8009AECC
/* 8049EC98  AB 83 01 90 */	lha r28, 0x190(r3)
/* 8049EC9C  3C 60 80 69 */	lis r3, data_8068E358@ha /* 0x8068E358@ha */
/* 8049ECA0  38 03 E3 58 */	addi r0, r3, data_8068E358@l /* 0x8068E358@l */
/* 8049ECA4  7C 9D 23 78 */	mr r29, r4
/* 8049ECA8  1F DC 00 18 */	mulli r30, r28, 0x18
/* 8049ECAC  7F E0 F2 14 */	add r31, r0, r30
/* 8049ECB0  84 1F 00 10 */	lwzu r0, 0x10(r31)
/* 8049ECB4  28 00 00 00 */	cmplwi r0, 0
/* 8049ECB8  41 82 00 C0 */	beq lbl_8049ED78
/* 8049ECBC  80 7D 00 00 */	lwz r3, 0(r29)
/* 8049ECC0  4B F4 64 49 */	bl _texture_z_light_fog_prim
/* 8049ECC4  2C 1C 00 01 */	cmpwi r28, 1
/* 8049ECC8  40 82 00 30 */	bne lbl_8049ECF8
/* 8049ECCC  3C 60 80 64 */	lis r3, lit_587@ha /* 0x80645BCC@ha */
/* 8049ECD0  7F A4 EB 78 */	mr r4, r29
/* 8049ECD4  38 E3 5B CC */	addi r7, r3, lit_587@l /* 0x80645BCC@l */
/* 8049ECD8  38 61 00 08 */	addi r3, r1, 8
/* 8049ECDC  80 C7 00 00 */	lwz r6, 0(r7)
/* 8049ECE0  80 A7 00 04 */	lwz r5, 4(r7)
/* 8049ECE4  80 07 00 08 */	lwz r0, 8(r7)
/* 8049ECE8  90 C1 00 08 */	stw r6, 8(r1)
/* 8049ECEC  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8049ECF0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8049ECF4  4B ED 72 89 */	bl Setpos_HiliteReflect_init
lbl_8049ECF8:
/* 8049ECF8  3C 60 80 64 */	lis r3, data_80645BC4@ha /* 0x80645BC4@ha */
/* 8049ECFC  83 7D 00 00 */	lwz r27, 0(r29)
/* 8049ED00  38 83 5B C4 */	addi r4, r3, data_80645BC4@l /* 0x80645BC4@l */
/* 8049ED04  38 60 00 00 */	li r3, 0
/* 8049ED08  C0 24 00 00 */	lfs f1, 0(r4)
/* 8049ED0C  FC 40 08 90 */	fmr f2, f1
/* 8049ED10  FC 60 08 90 */	fmr f3, f1
/* 8049ED14  4B F6 D5 ED */	bl Matrix_translate
/* 8049ED18  3C 80 80 64 */	lis r4, lit_579@ha /* 0x80645BC8@ha */
/* 8049ED1C  38 60 00 01 */	li r3, 1
/* 8049ED20  C0 24 5B C8 */	lfs f1, lit_579@l(r4)  /* 0x80645BC8@l */
/* 8049ED24  FC 40 08 90 */	fmr f2, f1
/* 8049ED28  FC 60 08 90 */	fmr f3, f1
/* 8049ED2C  4B F6 D6 C1 */	bl Matrix_scale
/* 8049ED30  83 9B 02 D0 */	lwz r28, 0x2d0(r27)
/* 8049ED34  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8049ED38  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8049ED3C  38 7C 00 08 */	addi r3, r28, 8
/* 8049ED40  90 7B 02 D0 */	stw r3, 0x2d0(r27)
/* 8049ED44  90 1C 00 00 */	stw r0, 0(r28)
/* 8049ED48  80 7D 00 00 */	lwz r3, 0(r29)
/* 8049ED4C  4B F6 E6 89 */	bl _Matrix_to_Mtx_new
/* 8049ED50  90 7C 00 04 */	stw r3, 4(r28)
/* 8049ED54  7F A3 EB 78 */	mr r3, r29
/* 8049ED58  4B F1 99 C1 */	bl Global_kankyo_set_room_prim
/* 8049ED5C  80 9B 02 D0 */	lwz r4, 0x2d0(r27)
/* 8049ED60  3C 00 DE 00 */	lis r0, 0xde00
/* 8049ED64  38 64 00 08 */	addi r3, r4, 8
/* 8049ED68  90 7B 02 D0 */	stw r3, 0x2d0(r27)
/* 8049ED6C  90 04 00 00 */	stw r0, 0(r4)
/* 8049ED70  80 1F 00 00 */	lwz r0, 0(r31)
/* 8049ED74  90 04 00 04 */	stw r0, 4(r4)
lbl_8049ED78:
/* 8049ED78  3C 60 80 69 */	lis r3, data_8068E358@ha /* 0x8068E358@ha */
/* 8049ED7C  38 03 E3 58 */	addi r0, r3, data_8068E358@l /* 0x8068E358@l */
/* 8049ED80  7F 80 F2 14 */	add r28, r0, r30
/* 8049ED84  84 1C 00 14 */	lwzu r0, 0x14(r28)
/* 8049ED88  28 00 00 00 */	cmplwi r0, 0
/* 8049ED8C  41 82 00 84 */	beq lbl_8049EE10
/* 8049ED90  80 7D 00 00 */	lwz r3, 0(r29)
/* 8049ED94  4B F4 63 C5 */	bl _texture_z_light_fog_prim_xlu
/* 8049ED98  3C 60 80 64 */	lis r3, data_80645BC4@ha /* 0x80645BC4@ha */
/* 8049ED9C  83 7D 00 00 */	lwz r27, 0(r29)
/* 8049EDA0  38 83 5B C4 */	addi r4, r3, data_80645BC4@l /* 0x80645BC4@l */
/* 8049EDA4  38 60 00 00 */	li r3, 0
/* 8049EDA8  C0 24 00 00 */	lfs f1, 0(r4)
/* 8049EDAC  FC 40 08 90 */	fmr f2, f1
/* 8049EDB0  FC 60 08 90 */	fmr f3, f1
/* 8049EDB4  4B F6 D5 4D */	bl Matrix_translate
/* 8049EDB8  3C 80 80 64 */	lis r4, lit_579@ha /* 0x80645BC8@ha */
/* 8049EDBC  38 60 00 01 */	li r3, 1
/* 8049EDC0  C0 24 5B C8 */	lfs f1, lit_579@l(r4)  /* 0x80645BC8@l */
/* 8049EDC4  FC 40 08 90 */	fmr f2, f1
/* 8049EDC8  FC 60 08 90 */	fmr f3, f1
/* 8049EDCC  4B F6 D6 21 */	bl Matrix_scale
/* 8049EDD0  83 DB 02 E0 */	lwz r30, 0x2e0(r27)
/* 8049EDD4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8049EDD8  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8049EDDC  38 7E 00 08 */	addi r3, r30, 8
/* 8049EDE0  90 7B 02 E0 */	stw r3, 0x2e0(r27)
/* 8049EDE4  90 1E 00 00 */	stw r0, 0(r30)
/* 8049EDE8  80 7D 00 00 */	lwz r3, 0(r29)
/* 8049EDEC  4B F6 E5 E9 */	bl _Matrix_to_Mtx_new
/* 8049EDF0  90 7E 00 04 */	stw r3, 4(r30)
/* 8049EDF4  3C 00 DE 00 */	lis r0, 0xde00
/* 8049EDF8  80 9B 02 E0 */	lwz r4, 0x2e0(r27)
/* 8049EDFC  38 64 00 08 */	addi r3, r4, 8
/* 8049EE00  90 7B 02 E0 */	stw r3, 0x2e0(r27)
/* 8049EE04  90 04 00 00 */	stw r0, 0(r4)
/* 8049EE08  80 1C 00 00 */	lwz r0, 0(r28)
/* 8049EE0C  90 04 00 04 */	stw r0, 4(r4)
lbl_8049EE10:
/* 8049EE10  39 61 00 30 */	addi r11, r1, 0x30
/* 8049EE14  4B BF C1 05 */	bl func_8009AF18
/* 8049EE18  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8049EE1C  7C 08 03 A6 */	mtlr r0
/* 8049EE20  38 21 00 30 */	addi r1, r1, 0x30
/* 8049EE24  4E 80 00 20 */	blr 
