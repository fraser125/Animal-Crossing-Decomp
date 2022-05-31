lbl_80428A54:
/* 80428A54  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80428A58  7C 08 02 A6 */	mflr r0
/* 80428A5C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80428A60  39 61 00 30 */	addi r11, r1, 0x30
/* 80428A64  4B C7 24 65 */	bl func_8009AEC8
/* 80428A68  7C 7B 1B 78 */	mr r27, r3
/* 80428A6C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80428A70  8B 5B 02 83 */	lbz r26, 0x283(r27)
/* 80428A74  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 80428A78  83 DB 01 EC */	lwz r30, 0x1ec(r27)
/* 80428A7C  7C 9C 23 78 */	mr r28, r4
/* 80428A80  1C 7A 26 B0 */	mulli r3, r26, 0x26b0
/* 80428A84  7C BD 2B 78 */	mr r29, r5
/* 80428A88  7C 60 1A 14 */	add r3, r0, r3
/* 80428A8C  3C 63 00 01 */	addis r3, r3, 1
/* 80428A90  38 63 9C E8 */	addi r3, r3, -25368
/* 80428A94  4B FB 75 B1 */	bl mPr_NullCheckPersonalID
/* 80428A98  7C 7F 1B 78 */	mr r31, r3
/* 80428A9C  7F 43 D3 78 */	mr r3, r26
/* 80428AA0  4B F8 AB 39 */	bl mHS_get_pl_no
/* 80428AA4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80428AA8  3C 80 80 68 */	lis r4, process@ha /* 0x80683D44@ha */
/* 80428AAC  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80428AB0  57 A0 10 3A */	slwi r0, r29, 2
/* 80428AB4  3C A5 00 02 */	addis r5, r5, 2
/* 80428AB8  38 84 3D 44 */	addi r4, r4, process@l /* 0x80683D44@l */
/* 80428ABC  88 A5 60 03 */	lbz r5, 0x6003(r5)
/* 80428AC0  2C 1D 00 02 */	cmpwi r29, 2
/* 80428AC4  93 BB 02 0C */	stw r29, 0x20c(r27)
/* 80428AC8  7C 65 18 50 */	subf r3, r5, r3
/* 80428ACC  7C 63 00 34 */	cntlzw r3, r3
/* 80428AD0  7C 04 00 2E */	lwzx r0, r4, r0
/* 80428AD4  54 63 D9 7E */	srwi r3, r3, 5
/* 80428AD8  90 1B 02 74 */	stw r0, 0x274(r27)
/* 80428ADC  41 80 00 14 */	blt lbl_80428AF0
/* 80428AE0  3C 60 80 64 */	lis r3, lit_819@ha /* 0x80643FE8@ha */
/* 80428AE4  C0 03 3F E8 */	lfs f0, lit_819@l(r3)  /* 0x80643FE8@l */
/* 80428AE8  D0 1B 02 78 */	stfs f0, 0x278(r27)
/* 80428AEC  48 00 00 74 */	b lbl_80428B60
lbl_80428AF0:
/* 80428AF0  2C 1F 00 00 */	cmpwi r31, 0
/* 80428AF4  41 82 00 28 */	beq lbl_80428B1C
/* 80428AF8  3C 60 80 64 */	lis r3, lit_748@ha /* 0x80643FE0@ha */
/* 80428AFC  C0 1B 02 78 */	lfs f0, 0x278(r27)
/* 80428B00  C0 23 3F E0 */	lfs f1, lit_748@l(r3)  /* 0x80643FE0@l */
/* 80428B04  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80428B08  41 82 00 58 */	beq lbl_80428B60
/* 80428B0C  3C 60 80 64 */	lis r3, lit_820@ha /* 0x80643FEC@ha */
/* 80428B10  C0 03 3F EC */	lfs f0, lit_820@l(r3)  /* 0x80643FEC@l */
/* 80428B14  D0 1B 02 78 */	stfs f0, 0x278(r27)
/* 80428B18  48 00 00 48 */	b lbl_80428B60
lbl_80428B1C:
/* 80428B1C  2C 03 00 00 */	cmpwi r3, 0
/* 80428B20  41 82 00 34 */	beq lbl_80428B54
/* 80428B24  2C 1D 00 00 */	cmpwi r29, 0
/* 80428B28  41 82 00 0C */	beq lbl_80428B34
/* 80428B2C  2C 1D 00 10 */	cmpwi r29, 0x10
/* 80428B30  40 82 00 14 */	bne lbl_80428B44
lbl_80428B34:
/* 80428B34  3C 60 80 64 */	lis r3, lit_819@ha /* 0x80643FE8@ha */
/* 80428B38  C0 03 3F E8 */	lfs f0, lit_819@l(r3)  /* 0x80643FE8@l */
/* 80428B3C  D0 1B 02 78 */	stfs f0, 0x278(r27)
/* 80428B40  48 00 00 20 */	b lbl_80428B60
lbl_80428B44:
/* 80428B44  3C 60 80 64 */	lis r3, lit_821@ha /* 0x80643FF0@ha */
/* 80428B48  C0 03 3F F0 */	lfs f0, lit_821@l(r3)  /* 0x80643FF0@l */
/* 80428B4C  D0 1B 02 78 */	stfs f0, 0x278(r27)
/* 80428B50  48 00 00 10 */	b lbl_80428B60
lbl_80428B54:
/* 80428B54  3C 60 80 64 */	lis r3, lit_822@ha /* 0x80643FF4@ha */
/* 80428B58  C0 03 3F F4 */	lfs f0, lit_822@l(r3)  /* 0x80643FF4@l */
/* 80428B5C  D0 1B 02 78 */	stfs f0, 0x278(r27)
lbl_80428B60:
/* 80428B60  2C 1E 00 02 */	cmpwi r30, 2
/* 80428B64  40 82 00 60 */	bne lbl_80428BC4
/* 80428B68  3C 60 80 64 */	lis r3, lit_823@ha /* 0x80643FF8@ha */
/* 80428B6C  3C 80 80 64 */	lis r4, lit_824@ha /* 0x80643FFC@ha */
/* 80428B70  38 A3 3F F8 */	addi r5, r3, lit_823@l /* 0x80643FF8@l */
/* 80428B74  C0 9B 02 78 */	lfs f4, 0x278(r27)
/* 80428B78  C0 25 00 00 */	lfs f1, 0(r5)
/* 80428B7C  38 C4 3F FC */	addi r6, r4, lit_824@l /* 0x80643FFC@l */
/* 80428B80  3C 60 80 64 */	lis r3, lit_748@ha /* 0x80643FE0@ha */
/* 80428B84  C0 46 00 00 */	lfs f2, 0(r6)
/* 80428B88  38 E3 3F E0 */	addi r7, r3, lit_748@l /* 0x80643FE0@l */
/* 80428B8C  FC 60 08 90 */	fmr f3, f1
/* 80428B90  3C 60 80 8A */	lis r3, cKF_ba_r_hnw_move@ha /* 0x8089B148@ha */
/* 80428B94  C0 A7 00 00 */	lfs f5, 0(r7)
/* 80428B98  38 A3 B1 48 */	addi r5, r3, cKF_ba_r_hnw_move@l /* 0x8089B148@l */
/* 80428B9C  80 9B 01 94 */	lwz r4, 0x194(r27)
/* 80428BA0  38 7B 01 7C */	addi r3, r27, 0x17c
/* 80428BA4  38 C0 00 01 */	li r6, 1
/* 80428BA8  38 E0 00 00 */	li r7, 0
/* 80428BAC  4B F4 81 29 */	bl cKF_SkeletonInfo_R_init
/* 80428BB0  C0 1B 01 8C */	lfs f0, 0x18c(r27)
/* 80428BB4  FC 00 00 1E */	fctiwz f0, f0
/* 80428BB8  D8 01 00 08 */	stfd f0, 8(r1)
/* 80428BBC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80428BC0  90 1B 01 74 */	stw r0, 0x174(r27)
lbl_80428BC4:
/* 80428BC4  38 00 00 00 */	li r0, 0
/* 80428BC8  7F 63 DB 78 */	mr r3, r27
/* 80428BCC  90 1B 01 EC */	stw r0, 0x1ec(r27)
/* 80428BD0  7F 84 E3 78 */	mr r4, r28
/* 80428BD4  7F A5 EB 78 */	mr r5, r29
/* 80428BD8  4B FF FE 49 */	bl aHNW_init_proc
/* 80428BDC  2C 1F 00 00 */	cmpwi r31, 0
/* 80428BE0  41 82 00 18 */	beq lbl_80428BF8
/* 80428BE4  2C 1D 00 02 */	cmpwi r29, 2
/* 80428BE8  40 80 00 10 */	bge lbl_80428BF8
/* 80428BEC  38 00 00 00 */	li r0, 0
/* 80428BF0  90 1B 01 90 */	stw r0, 0x190(r27)
/* 80428BF4  48 00 00 0C */	b lbl_80428C00
lbl_80428BF8:
/* 80428BF8  38 00 00 01 */	li r0, 1
/* 80428BFC  90 1B 01 90 */	stw r0, 0x190(r27)
lbl_80428C00:
/* 80428C00  39 61 00 30 */	addi r11, r1, 0x30
/* 80428C04  4B C7 23 11 */	bl func_8009AF14
/* 80428C08  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80428C0C  7C 08 03 A6 */	mtlr r0
/* 80428C10  38 21 00 30 */	addi r1, r1, 0x30
/* 80428C14  4E 80 00 20 */	blr 
