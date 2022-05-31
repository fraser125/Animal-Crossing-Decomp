lbl_804A9A18:
/* 804A9A18  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804A9A1C  7C 08 02 A6 */	mflr r0
/* 804A9A20  90 01 00 34 */	stw r0, 0x34(r1)
/* 804A9A24  39 61 00 30 */	addi r11, r1, 0x30
/* 804A9A28  4B BF 14 A9 */	bl func_8009AED0
/* 804A9A2C  7C 7C 1B 78 */	mr r28, r3
/* 804A9A30  83 E3 01 C8 */	lwz r31, 0x1c8(r3)
/* 804A9A34  80 A3 01 4C */	lwz r5, 0x14c(r3)
/* 804A9A38  2C 1F 00 00 */	cmpwi r31, 0
/* 804A9A3C  40 81 01 88 */	ble lbl_804A9BC4
/* 804A9A40  80 1C 01 B8 */	lwz r0, 0x1b8(r28)
/* 804A9A44  2C 00 00 01 */	cmpwi r0, 1
/* 804A9A48  40 82 01 7C */	bne lbl_804A9BC4
/* 804A9A4C  80 7C 01 74 */	lwz r3, 0x174(r28)
/* 804A9A50  83 A4 00 00 */	lwz r29, 0(r4)
/* 804A9A54  3B C3 FF D0 */	addi r30, r3, -48
/* 804A9A58  2C 1E 00 02 */	cmpwi r30, 2
/* 804A9A5C  40 80 00 10 */	bge lbl_804A9A6C
/* 804A9A60  2C 1E 00 00 */	cmpwi r30, 0
/* 804A9A64  40 80 00 14 */	bge lbl_804A9A78
/* 804A9A68  48 00 01 5C */	b lbl_804A9BC4
lbl_804A9A6C:
/* 804A9A6C  2C 1E 00 04 */	cmpwi r30, 4
/* 804A9A70  40 80 01 54 */	bge lbl_804A9BC4
/* 804A9A74  48 00 00 28 */	b lbl_804A9A9C
lbl_804A9A78:
/* 804A9A78  38 7C 01 78 */	addi r3, r28, 0x178
/* 804A9A7C  4B F6 27 DD */	bl Matrix_put
/* 804A9A80  3C 80 80 64 */	lis r4, data_80645E14@ha /* 0x80645E14@ha */
/* 804A9A84  38 60 00 01 */	li r3, 1
/* 804A9A88  C0 24 5E 14 */	lfs f1, data_80645E14@l(r4)  /* 0x80645E14@l */
/* 804A9A8C  FC 40 08 90 */	fmr f2, f1
/* 804A9A90  FC 60 08 90 */	fmr f3, f1
/* 804A9A94  4B F6 29 59 */	bl Matrix_scale
/* 804A9A98  48 00 00 A8 */	b lbl_804A9B40
lbl_804A9A9C:
/* 804A9A9C  A8 65 00 DE */	lha r3, 0xde(r5)
/* 804A9AA0  38 80 00 00 */	li r4, 0
/* 804A9AA4  38 03 C0 00 */	addi r0, r3, -16384
/* 804A9AA8  7C 03 07 34 */	extsh r3, r0
/* 804A9AAC  4B F6 2B B1 */	bl Matrix_RotateY
/* 804A9AB0  3C 60 80 64 */	lis r3, lit_473@ha /* 0x80645E1C@ha */
/* 804A9AB4  3C A0 80 64 */	lis r5, lit_472@ha /* 0x80645E18@ha */
/* 804A9AB8  38 83 5E 1C */	addi r4, r3, lit_473@l /* 0x80645E1C@l */
/* 804A9ABC  C0 25 5E 18 */	lfs f1, lit_472@l(r5)  /* 0x80645E18@l */
/* 804A9AC0  C0 44 00 00 */	lfs f2, 0(r4)
/* 804A9AC4  38 60 00 01 */	li r3, 1
/* 804A9AC8  FC 60 10 90 */	fmr f3, f2
/* 804A9ACC  4B F6 28 35 */	bl Matrix_translate
/* 804A9AD0  38 61 00 14 */	addi r3, r1, 0x14
/* 804A9AD4  4B F6 39 E9 */	bl Matrix_Position_Zero
/* 804A9AD8  38 7C 01 78 */	addi r3, r28, 0x178
/* 804A9ADC  4B F6 27 7D */	bl Matrix_put
/* 804A9AE0  38 61 00 08 */	addi r3, r1, 8
/* 804A9AE4  4B F6 39 D9 */	bl Matrix_Position_Zero
/* 804A9AE8  C0 21 00 08 */	lfs f1, 8(r1)
/* 804A9AEC  38 60 00 00 */	li r3, 0
/* 804A9AF0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804A9AF4  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 804A9AF8  EC 21 00 2A */	fadds f1, f1, f0
/* 804A9AFC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804A9B00  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 804A9B04  EC 42 00 2A */	fadds f2, f2, f0
/* 804A9B08  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804A9B0C  D0 21 00 08 */	stfs f1, 8(r1)
/* 804A9B10  EC 63 00 2A */	fadds f3, f3, f0
/* 804A9B14  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 804A9B18  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 804A9B1C  4B F6 27 E5 */	bl Matrix_translate
/* 804A9B20  3C 80 80 64 */	lis r4, lit_474@ha /* 0x80645E20@ha */
/* 804A9B24  38 60 00 01 */	li r3, 1
/* 804A9B28  C0 24 5E 20 */	lfs f1, lit_474@l(r4)  /* 0x80645E20@l */
/* 804A9B2C  FC 40 08 90 */	fmr f2, f1
/* 804A9B30  FC 60 08 90 */	fmr f3, f1
/* 804A9B34  4B F6 28 B9 */	bl Matrix_scale
/* 804A9B38  48 00 00 08 */	b lbl_804A9B40
/* 804A9B3C  48 00 00 88 */	b lbl_804A9BC4
lbl_804A9B40:
/* 804A9B40  38 00 00 00 */	li r0, 0
/* 804A9B44  7F A3 EB 78 */	mr r3, r29
/* 804A9B48  90 1C 01 B8 */	stw r0, 0x1b8(r28)
/* 804A9B4C  4B F3 B6 5D */	bl _texture_z_light_fog_prim_npc
/* 804A9B50  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804A9B54  83 9D 02 D0 */	lwz r28, 0x2d0(r29)
/* 804A9B58  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804A9B5C  7F A3 EB 78 */	mr r3, r29
/* 804A9B60  90 1C 00 00 */	stw r0, 0(r28)
/* 804A9B64  4B F6 38 71 */	bl _Matrix_to_Mtx_new
/* 804A9B68  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 804A9B6C  90 7C 00 04 */	stw r3, 4(r28)
/* 804A9B70  38 84 00 20 */	addi r4, r4, 0x0020 /* 0xDB060020@l */
/* 804A9B74  3C 60 80 69 */	lis r3, texture@ha /* 0x8068EEAC@ha */
/* 804A9B78  38 1F FF FF */	addi r0, r31, -1
/* 804A9B7C  90 9C 00 08 */	stw r4, 8(r28)
/* 804A9B80  1C BE 00 0C */	mulli r5, r30, 0xc
/* 804A9B84  38 83 EE AC */	addi r4, r3, texture@l /* 0x8068EEAC@l */
/* 804A9B88  54 00 10 3A */	slwi r0, r0, 2
/* 804A9B8C  3C 60 80 69 */	lis r3, displayList@ha /* 0x8068EE9C@ha */
/* 804A9B90  7C A4 2A 14 */	add r5, r4, r5
/* 804A9B94  3C 80 DE 00 */	lis r4, 0xde00
/* 804A9B98  7C A5 00 2E */	lwzx r5, r5, r0
/* 804A9B9C  57 C0 10 3A */	slwi r0, r30, 2
/* 804A9BA0  38 63 EE 9C */	addi r3, r3, displayList@l /* 0x8068EE9C@l */
/* 804A9BA4  90 BC 00 0C */	stw r5, 0xc(r28)
/* 804A9BA8  3B 9C 00 10 */	addi r28, r28, 0x10
/* 804A9BAC  7F 85 E3 78 */	mr r5, r28
/* 804A9BB0  90 9C 00 00 */	stw r4, 0(r28)
/* 804A9BB4  3B 9C 00 08 */	addi r28, r28, 8
/* 804A9BB8  7C 03 00 2E */	lwzx r0, r3, r0
/* 804A9BBC  90 05 00 04 */	stw r0, 4(r5)
/* 804A9BC0  93 9D 02 D0 */	stw r28, 0x2d0(r29)
lbl_804A9BC4:
/* 804A9BC4  39 61 00 30 */	addi r11, r1, 0x30
/* 804A9BC8  4B BF 13 55 */	bl func_8009AF1C
/* 804A9BCC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804A9BD0  7C 08 03 A6 */	mtlr r0
/* 804A9BD4  38 21 00 30 */	addi r1, r1, 0x30
/* 804A9BD8  4E 80 00 20 */	blr 
