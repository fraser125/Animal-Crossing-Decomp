lbl_80539A5C:
/* 80539A5C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80539A60  7C 08 02 A6 */	mflr r0
/* 80539A64  90 01 00 64 */	stw r0, 0x64(r1)
/* 80539A68  39 61 00 60 */	addi r11, r1, 0x60
/* 80539A6C  4B B6 14 49 */	bl func_8009AEB4
/* 80539A70  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 80539A74  83 A1 00 68 */	lwz r29, 0x68(r1)
/* 80539A78  2C 00 00 0E */	cmpwi r0, 0xe
/* 80539A7C  7C 96 23 78 */	mr r22, r4
/* 80539A80  7C 75 1B 78 */	mr r21, r3
/* 80539A84  7C B7 2B 78 */	mr r23, r5
/* 80539A88  7C D8 33 78 */	mr r24, r6
/* 80539A8C  7C F9 3B 78 */	mr r25, r7
/* 80539A90  7D 1A 43 78 */	mr r26, r8
/* 80539A94  7D 3B 4B 78 */	mr r27, r9
/* 80539A98  7D 5C 53 78 */	mr r28, r10
/* 80539A9C  54 9F 04 3E */	clrlwi r31, r4, 0x10
/* 80539AA0  3B C0 00 71 */	li r30, 0x71
/* 80539AA4  41 82 01 04 */	beq lbl_80539BA8
/* 80539AA8  40 80 01 04 */	bge lbl_80539BAC
/* 80539AAC  2C 00 00 0D */	cmpwi r0, 0xd
/* 80539AB0  40 80 00 08 */	bge lbl_80539AB8
/* 80539AB4  48 00 00 F8 */	b lbl_80539BAC
lbl_80539AB8:
/* 80539AB8  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000D008@ha */
/* 80539ABC  38 04 D0 08 */	addi r0, r4, 0xD008 /* 0x0000D008@l */
/* 80539AC0  7C 1F 00 00 */	cmpw r31, r0
/* 80539AC4  40 80 00 14 */	bge lbl_80539AD8
/* 80539AC8  38 04 D0 03 */	addi r0, r4, -12285
/* 80539ACC  7C 1F 00 00 */	cmpw r31, r0
/* 80539AD0  41 82 00 18 */	beq lbl_80539AE8
/* 80539AD4  48 00 00 B8 */	b lbl_80539B8C
lbl_80539AD8:
/* 80539AD8  38 04 D0 0C */	addi r0, r4, -12276
/* 80539ADC  7C 1F 00 00 */	cmpw r31, r0
/* 80539AE0  40 80 00 AC */	bge lbl_80539B8C
/* 80539AE4  48 00 00 24 */	b lbl_80539B08
lbl_80539AE8:
/* 80539AE8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80539AEC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80539AF0  3C 63 00 03 */	addis r3, r3, 3
/* 80539AF4  88 03 88 6B */	lbz r0, -0x7795(r3)
/* 80539AF8  28 00 00 01 */	cmplwi r0, 1
/* 80539AFC  40 82 00 90 */	bne lbl_80539B8C
/* 80539B00  3A C4 D0 12 */	addi r22, r4, -12270
/* 80539B04  48 00 00 88 */	b lbl_80539B8C
lbl_80539B08:
/* 80539B08  4B E6 11 2D */	bl mEv_CheckFirstJob
/* 80539B0C  2C 03 00 01 */	cmpwi r3, 1
/* 80539B10  40 82 00 10 */	bne lbl_80539B20
/* 80539B14  38 1F 00 11 */	addi r0, r31, 0x11
/* 80539B18  54 16 04 3E */	clrlwi r22, r0, 0x10
/* 80539B1C  48 00 00 70 */	b lbl_80539B8C
lbl_80539B20:
/* 80539B20  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80539B24  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80539B28  3C 63 00 03 */	addis r3, r3, 3
/* 80539B2C  80 03 88 9C */	lwz r0, -0x7764(r3)
/* 80539B30  2C 00 00 03 */	cmpwi r0, 3
/* 80539B34  40 82 00 58 */	bne lbl_80539B8C
/* 80539B38  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D00A@ha */
/* 80539B3C  38 03 D0 0A */	addi r0, r3, 0xD00A /* 0x0000D00A@l */
/* 80539B40  7C 1F 00 00 */	cmpw r31, r0
/* 80539B44  41 82 00 30 */	beq lbl_80539B74
/* 80539B48  40 80 00 14 */	bge lbl_80539B5C
/* 80539B4C  38 03 D0 09 */	addi r0, r3, -12279
/* 80539B50  7C 1F 00 00 */	cmpw r31, r0
/* 80539B54  40 80 00 18 */	bge lbl_80539B6C
/* 80539B58  48 00 00 2C */	b lbl_80539B84
lbl_80539B5C:
/* 80539B5C  38 03 D0 0C */	addi r0, r3, -12276
/* 80539B60  7C 1F 00 00 */	cmpw r31, r0
/* 80539B64  40 80 00 20 */	bge lbl_80539B84
/* 80539B68  48 00 00 14 */	b lbl_80539B7C
lbl_80539B6C:
/* 80539B6C  3A C3 D0 3A */	addi r22, r3, -12230
/* 80539B70  48 00 00 1C */	b lbl_80539B8C
lbl_80539B74:
/* 80539B74  3A C3 D0 3B */	addi r22, r3, -12229
/* 80539B78  48 00 00 14 */	b lbl_80539B8C
lbl_80539B7C:
/* 80539B7C  3A C3 D0 3C */	addi r22, r3, -12228
/* 80539B80  48 00 00 0C */	b lbl_80539B8C
lbl_80539B84:
/* 80539B84  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D01E@ha */
/* 80539B88  3A C3 D0 1E */	addi r22, r3, 0xD01E /* 0x0000D01E@l */
lbl_80539B8C:
/* 80539B8C  3C 60 80 6A */	lis r3, event_npc_profile_table@ha /* 0x806A2A18@ha */
/* 80539B90  56 C0 0B FC */	rlwinm r0, r22, 1, 0xf, 0x1e
/* 80539B94  38 63 2A 18 */	addi r3, r3, event_npc_profile_table@l /* 0x806A2A18@l */
/* 80539B98  3C 63 FF FE */	addis r3, r3, 0xfffe
/* 80539B9C  7C 63 02 14 */	add r3, r3, r0
/* 80539BA0  AB C3 60 00 */	lha r30, 0x6000(r3)
/* 80539BA4  48 00 00 08 */	b lbl_80539BAC
lbl_80539BA8:
/* 80539BA8  3B C0 00 71 */	li r30, 0x71
lbl_80539BAC:
/* 80539BAC  7F 45 D3 78 */	mr r5, r26
/* 80539BB0  7F 66 DB 78 */	mr r6, r27
/* 80539BB4  38 61 00 0C */	addi r3, r1, 0xc
/* 80539BB8  38 81 00 08 */	addi r4, r1, 8
/* 80539BBC  4B E6 BF BD */	bl mFI_BkNum2WposXZ
/* 80539BC0  3C 60 80 6A */	lis r3, pos_table@ha /* 0x806A2B38@ha */
/* 80539BC4  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80539BC8  57 84 10 3A */	slwi r4, r28, 2
/* 80539BCC  57 A5 10 3A */	slwi r5, r29, 2
/* 80539BD0  38 C3 2B 38 */	addi r6, r3, pos_table@l /* 0x806A2B38@l */
/* 80539BD4  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 80539BD8  7C 46 24 2E */	lfsx f2, r6, r4
/* 80539BDC  3C 60 80 65 */	lis r3, data_80649274@ha /* 0x80649274@ha */
/* 80539BE0  C0 21 00 08 */	lfs f1, 8(r1)
/* 80539BE4  38 83 92 74 */	addi r4, r3, data_80649274@l /* 0x80649274@l */
/* 80539BE8  7C 06 2C 2E */	lfsx f0, r6, r5
/* 80539BEC  EC 43 10 2A */	fadds f2, f3, f2
/* 80539BF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80539BF4  38 61 00 10 */	addi r3, r1, 0x10
/* 80539BF8  EC 01 00 2A */	fadds f0, f1, f0
/* 80539BFC  C0 24 00 00 */	lfs f1, 0(r4)
/* 80539C00  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80539C04  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80539C08  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 80539C0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80539C10  90 81 00 10 */	stw r4, 0x10(r1)
/* 80539C14  90 01 00 18 */	stw r0, 0x18(r1)
/* 80539C18  4B E5 5C 09 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 80539C1C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80539C20  7E A3 AB 78 */	mr r3, r21
/* 80539C24  7E E4 BB 78 */	mr r4, r23
/* 80539C28  7E C5 B3 78 */	mr r5, r22
/* 80539C2C  7F C6 F3 78 */	mr r6, r30
/* 80539C30  7F 29 CB 78 */	mr r9, r25
/* 80539C34  38 E1 00 1C */	addi r7, r1, 0x1c
/* 80539C38  7F 08 07 34 */	extsh r8, r24
/* 80539C3C  4B FF FD 69 */	bl aNPC_setupActor_sub
/* 80539C40  39 61 00 60 */	addi r11, r1, 0x60
/* 80539C44  4B B6 12 BD */	bl func_8009AF00
/* 80539C48  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80539C4C  7C 08 03 A6 */	mtlr r0
/* 80539C50  38 21 00 60 */	addi r1, r1, 0x60
/* 80539C54  4E 80 00 20 */	blr 
