lbl_80627A30:
/* 80627A30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80627A34  7C 08 02 A6 */	mflr r0
/* 80627A38  90 01 00 24 */	stw r0, 0x24(r1)
/* 80627A3C  39 61 00 20 */	addi r11, r1, 0x20
/* 80627A40  4B A7 34 89 */	bl func_8009AEC8
/* 80627A44  7C 7B 1B 78 */	mr r27, r3
/* 80627A48  7C 9C 23 78 */	mr r28, r4
/* 80627A4C  A8 63 00 00 */	lha r3, 0(r3)
/* 80627A50  38 00 00 03 */	li r0, 3
/* 80627A54  83 E4 00 00 */	lwz r31, 0(r4)
/* 80627A58  20 63 00 14 */	subfic r3, r3, 0x14
/* 80627A5C  7C 7E 0E 70 */	srawi r30, r3, 1
/* 80627A60  7F E3 FB 78 */	mr r3, r31
/* 80627A64  7F BE 03 D6 */	divw r29, r30, r0
/* 80627A68  4B DB D6 F1 */	bl _texture_z_light_fog_prim_xlu
/* 80627A6C  2C 1D 00 03 */	cmpwi r29, 3
/* 80627A70  40 80 00 98 */	bge lbl_80627B08
/* 80627A74  C0 3B 00 10 */	lfs f1, 0x10(r27)
/* 80627A78  38 60 00 00 */	li r3, 0
/* 80627A7C  C0 5B 00 14 */	lfs f2, 0x14(r27)
/* 80627A80  C0 7B 00 18 */	lfs f3, 0x18(r27)
/* 80627A84  4B DE 48 7D */	bl Matrix_translate
/* 80627A88  C0 3B 00 40 */	lfs f1, 0x40(r27)
/* 80627A8C  38 60 00 01 */	li r3, 1
/* 80627A90  FC 40 08 90 */	fmr f2, f1
/* 80627A94  FC 60 08 90 */	fmr f3, f1
/* 80627A98  4B DE 49 55 */	bl Matrix_scale
/* 80627A9C  83 5F 02 E0 */	lwz r26, 0x2e0(r31)
/* 80627AA0  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80627AA4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80627AA8  38 7A 00 08 */	addi r3, r26, 8
/* 80627AAC  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80627AB0  90 1A 00 00 */	stw r0, 0(r26)
/* 80627AB4  80 7C 00 00 */	lwz r3, 0(r28)
/* 80627AB8  4B DE 59 1D */	bl _Matrix_to_Mtx_new
/* 80627ABC  90 7A 00 04 */	stw r3, 4(r26)
/* 80627AC0  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA000080@ha */
/* 80627AC4  3C 60 80 6D */	lis r3, data_806D3BA8@ha /* 0x806D3BA8@ha */
/* 80627AC8  38 A0 FF FF */	li r5, -1
/* 80627ACC  81 1F 02 E0 */	lwz r8, 0x2e0(r31)
/* 80627AD0  38 C4 00 80 */	addi r6, r4, 0x0080 /* 0xFA000080@l */
/* 80627AD4  3C 80 DE 00 */	lis r4, 0xde00
/* 80627AD8  57 A0 10 3A */	slwi r0, r29, 2
/* 80627ADC  38 E8 00 08 */	addi r7, r8, 8
/* 80627AE0  38 63 3B A8 */	addi r3, r3, data_806D3BA8@l /* 0x806D3BA8@l */
/* 80627AE4  90 FF 02 E0 */	stw r7, 0x2e0(r31)
/* 80627AE8  90 C8 00 00 */	stw r6, 0(r8)
/* 80627AEC  90 A8 00 04 */	stw r5, 4(r8)
/* 80627AF0  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 80627AF4  38 A6 00 08 */	addi r5, r6, 8
/* 80627AF8  90 BF 02 E0 */	stw r5, 0x2e0(r31)
/* 80627AFC  90 86 00 00 */	stw r4, 0(r6)
/* 80627B00  7C 03 00 2E */	lwzx r0, r3, r0
/* 80627B04  90 06 00 04 */	stw r0, 4(r6)
lbl_80627B08:
/* 80627B08  2C 1E 00 03 */	cmpwi r30, 3
/* 80627B0C  41 82 00 14 */	beq lbl_80627B20
/* 80627B10  2C 1E 00 06 */	cmpwi r30, 6
/* 80627B14  41 82 00 0C */	beq lbl_80627B20
/* 80627B18  2C 1E 00 09 */	cmpwi r30, 9
/* 80627B1C  40 82 00 9C */	bne lbl_80627BB8
lbl_80627B20:
/* 80627B20  C0 3B 00 10 */	lfs f1, 0x10(r27)
/* 80627B24  38 60 00 00 */	li r3, 0
/* 80627B28  C0 5B 00 14 */	lfs f2, 0x14(r27)
/* 80627B2C  C0 7B 00 18 */	lfs f3, 0x18(r27)
/* 80627B30  4B DE 47 D1 */	bl Matrix_translate
/* 80627B34  C0 3B 00 40 */	lfs f1, 0x40(r27)
/* 80627B38  38 60 00 01 */	li r3, 1
/* 80627B3C  FC 40 08 90 */	fmr f2, f1
/* 80627B40  FC 60 08 90 */	fmr f3, f1
/* 80627B44  4B DE 48 A9 */	bl Matrix_scale
/* 80627B48  83 7F 02 E0 */	lwz r27, 0x2e0(r31)
/* 80627B4C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80627B50  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80627B54  38 7B 00 08 */	addi r3, r27, 8
/* 80627B58  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80627B5C  90 1B 00 00 */	stw r0, 0(r27)
/* 80627B60  80 7C 00 00 */	lwz r3, 0(r28)
/* 80627B64  4B DE 58 71 */	bl _Matrix_to_Mtx_new
/* 80627B68  90 7B 00 04 */	stw r3, 4(r27)
/* 80627B6C  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA000080@ha */
/* 80627B70  3C 60 80 6D */	lis r3, data_806D3BA8@ha /* 0x806D3BA8@ha */
/* 80627B74  38 A0 FF 78 */	li r5, -136
/* 80627B78  81 1F 02 E0 */	lwz r8, 0x2e0(r31)
/* 80627B7C  38 C4 00 80 */	addi r6, r4, 0x0080 /* 0xFA000080@l */
/* 80627B80  3C 80 DE 00 */	lis r4, 0xde00
/* 80627B84  38 63 3B A8 */	addi r3, r3, data_806D3BA8@l /* 0x806D3BA8@l */
/* 80627B88  38 E8 00 08 */	addi r7, r8, 8
/* 80627B8C  57 A0 10 3A */	slwi r0, r29, 2
/* 80627B90  90 FF 02 E0 */	stw r7, 0x2e0(r31)
/* 80627B94  7C 63 02 14 */	add r3, r3, r0
/* 80627B98  90 C8 00 00 */	stw r6, 0(r8)
/* 80627B9C  90 A8 00 04 */	stw r5, 4(r8)
/* 80627BA0  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 80627BA4  38 05 00 08 */	addi r0, r5, 8
/* 80627BA8  90 1F 02 E0 */	stw r0, 0x2e0(r31)
/* 80627BAC  90 85 00 00 */	stw r4, 0(r5)
/* 80627BB0  80 03 FF FC */	lwz r0, -4(r3)
/* 80627BB4  90 05 00 04 */	stw r0, 4(r5)
lbl_80627BB8:
/* 80627BB8  39 61 00 20 */	addi r11, r1, 0x20
/* 80627BBC  4B A7 33 59 */	bl func_8009AF14
/* 80627BC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80627BC4  7C 08 03 A6 */	mtlr r0
/* 80627BC8  38 21 00 20 */	addi r1, r1, 0x20
/* 80627BCC  4E 80 00 20 */	blr 
