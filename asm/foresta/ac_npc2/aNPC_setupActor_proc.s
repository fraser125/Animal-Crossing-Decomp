lbl_80544CE4:
/* 80544CE4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80544CE8  7C 08 02 A6 */	mflr r0
/* 80544CEC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80544CF0  39 61 00 60 */	addi r11, r1, 0x60
/* 80544CF4  4B B5 61 C1 */	bl func_8009AEB4
/* 80544CF8  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 80544CFC  83 A1 00 68 */	lwz r29, 0x68(r1)
/* 80544D00  2C 00 00 0E */	cmpwi r0, 0xe
/* 80544D04  7C 96 23 78 */	mr r22, r4
/* 80544D08  7C 75 1B 78 */	mr r21, r3
/* 80544D0C  7C B7 2B 78 */	mr r23, r5
/* 80544D10  7C D8 33 78 */	mr r24, r6
/* 80544D14  7C F9 3B 78 */	mr r25, r7
/* 80544D18  7D 1A 43 78 */	mr r26, r8
/* 80544D1C  7D 3B 4B 78 */	mr r27, r9
/* 80544D20  7D 5C 53 78 */	mr r28, r10
/* 80544D24  54 9F 04 3E */	clrlwi r31, r4, 0x10
/* 80544D28  3B C0 00 71 */	li r30, 0x71
/* 80544D2C  41 82 01 04 */	beq lbl_80544E30
/* 80544D30  40 80 01 04 */	bge lbl_80544E34
/* 80544D34  2C 00 00 0D */	cmpwi r0, 0xd
/* 80544D38  40 80 00 08 */	bge lbl_80544D40
/* 80544D3C  48 00 00 F8 */	b lbl_80544E34
lbl_80544D40:
/* 80544D40  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000D008@ha */
/* 80544D44  38 04 D0 08 */	addi r0, r4, 0xD008 /* 0x0000D008@l */
/* 80544D48  7C 1F 00 00 */	cmpw r31, r0
/* 80544D4C  40 80 00 14 */	bge lbl_80544D60
/* 80544D50  38 04 D0 03 */	addi r0, r4, -12285
/* 80544D54  7C 1F 00 00 */	cmpw r31, r0
/* 80544D58  41 82 00 18 */	beq lbl_80544D70
/* 80544D5C  48 00 00 B8 */	b lbl_80544E14
lbl_80544D60:
/* 80544D60  38 04 D0 0C */	addi r0, r4, -12276
/* 80544D64  7C 1F 00 00 */	cmpw r31, r0
/* 80544D68  40 80 00 AC */	bge lbl_80544E14
/* 80544D6C  48 00 00 24 */	b lbl_80544D90
lbl_80544D70:
/* 80544D70  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80544D74  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80544D78  3C 63 00 03 */	addis r3, r3, 3
/* 80544D7C  88 03 88 6B */	lbz r0, -0x7795(r3)
/* 80544D80  28 00 00 01 */	cmplwi r0, 1
/* 80544D84  40 82 00 90 */	bne lbl_80544E14
/* 80544D88  3A C4 D0 12 */	addi r22, r4, -12270
/* 80544D8C  48 00 00 88 */	b lbl_80544E14
lbl_80544D90:
/* 80544D90  4B E5 5E A5 */	bl mEv_CheckFirstJob
/* 80544D94  2C 03 00 01 */	cmpwi r3, 1
/* 80544D98  40 82 00 10 */	bne lbl_80544DA8
/* 80544D9C  38 1F 00 11 */	addi r0, r31, 0x11
/* 80544DA0  54 16 04 3E */	clrlwi r22, r0, 0x10
/* 80544DA4  48 00 00 70 */	b lbl_80544E14
lbl_80544DA8:
/* 80544DA8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80544DAC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80544DB0  3C 63 00 03 */	addis r3, r3, 3
/* 80544DB4  80 03 88 9C */	lwz r0, -0x7764(r3)
/* 80544DB8  2C 00 00 03 */	cmpwi r0, 3
/* 80544DBC  40 82 00 58 */	bne lbl_80544E14
/* 80544DC0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D00A@ha */
/* 80544DC4  38 03 D0 0A */	addi r0, r3, 0xD00A /* 0x0000D00A@l */
/* 80544DC8  7C 1F 00 00 */	cmpw r31, r0
/* 80544DCC  41 82 00 30 */	beq lbl_80544DFC
/* 80544DD0  40 80 00 14 */	bge lbl_80544DE4
/* 80544DD4  38 03 D0 09 */	addi r0, r3, -12279
/* 80544DD8  7C 1F 00 00 */	cmpw r31, r0
/* 80544DDC  40 80 00 18 */	bge lbl_80544DF4
/* 80544DE0  48 00 00 2C */	b lbl_80544E0C
lbl_80544DE4:
/* 80544DE4  38 03 D0 0C */	addi r0, r3, -12276
/* 80544DE8  7C 1F 00 00 */	cmpw r31, r0
/* 80544DEC  40 80 00 20 */	bge lbl_80544E0C
/* 80544DF0  48 00 00 14 */	b lbl_80544E04
lbl_80544DF4:
/* 80544DF4  3A C3 D0 3A */	addi r22, r3, -12230
/* 80544DF8  48 00 00 1C */	b lbl_80544E14
lbl_80544DFC:
/* 80544DFC  3A C3 D0 3B */	addi r22, r3, -12229
/* 80544E00  48 00 00 14 */	b lbl_80544E14
lbl_80544E04:
/* 80544E04  3A C3 D0 3C */	addi r22, r3, -12228
/* 80544E08  48 00 00 0C */	b lbl_80544E14
lbl_80544E0C:
/* 80544E0C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D01E@ha */
/* 80544E10  3A C3 D0 1E */	addi r22, r3, 0xD01E /* 0x0000D01E@l */
lbl_80544E14:
/* 80544E14  3C 60 80 6A */	lis r3, event_npc_profile_table@ha /* 0x806A4070@ha */
/* 80544E18  56 C0 0B FC */	rlwinm r0, r22, 1, 0xf, 0x1e
/* 80544E1C  38 63 40 70 */	addi r3, r3, event_npc_profile_table@l /* 0x806A4070@l */
/* 80544E20  3C 63 FF FE */	addis r3, r3, 0xfffe
/* 80544E24  7C 63 02 14 */	add r3, r3, r0
/* 80544E28  AB C3 60 00 */	lha r30, 0x6000(r3)
/* 80544E2C  48 00 00 08 */	b lbl_80544E34
lbl_80544E30:
/* 80544E30  3B C0 00 71 */	li r30, 0x71
lbl_80544E34:
/* 80544E34  7F 45 D3 78 */	mr r5, r26
/* 80544E38  7F 66 DB 78 */	mr r6, r27
/* 80544E3C  38 61 00 0C */	addi r3, r1, 0xc
/* 80544E40  38 81 00 08 */	addi r4, r1, 8
/* 80544E44  4B E6 0D 35 */	bl mFI_BkNum2WposXZ
/* 80544E48  3C 60 80 6A */	lis r3, pos_table@ha /* 0x806A4190@ha */
/* 80544E4C  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80544E50  57 84 10 3A */	slwi r4, r28, 2
/* 80544E54  57 A5 10 3A */	slwi r5, r29, 2
/* 80544E58  38 C3 41 90 */	addi r6, r3, pos_table@l /* 0x806A4190@l */
/* 80544E5C  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 80544E60  7C 46 24 2E */	lfsx f2, r6, r4
/* 80544E64  3C 60 80 65 */	lis r3, data_80649374@ha /* 0x80649374@ha */
/* 80544E68  C0 21 00 08 */	lfs f1, 8(r1)
/* 80544E6C  38 83 93 74 */	addi r4, r3, data_80649374@l /* 0x80649374@l */
/* 80544E70  7C 06 2C 2E */	lfsx f0, r6, r5
/* 80544E74  EC 43 10 2A */	fadds f2, f3, f2
/* 80544E78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80544E7C  38 61 00 10 */	addi r3, r1, 0x10
/* 80544E80  EC 01 00 2A */	fadds f0, f1, f0
/* 80544E84  C0 24 00 00 */	lfs f1, 0(r4)
/* 80544E88  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80544E8C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80544E90  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 80544E94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80544E98  90 81 00 10 */	stw r4, 0x10(r1)
/* 80544E9C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80544EA0  4B E4 A9 81 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 80544EA4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80544EA8  7E A3 AB 78 */	mr r3, r21
/* 80544EAC  7E E4 BB 78 */	mr r4, r23
/* 80544EB0  7E C5 B3 78 */	mr r5, r22
/* 80544EB4  7F C6 F3 78 */	mr r6, r30
/* 80544EB8  7F 29 CB 78 */	mr r9, r25
/* 80544EBC  38 E1 00 1C */	addi r7, r1, 0x1c
/* 80544EC0  7F 08 07 34 */	extsh r8, r24
/* 80544EC4  4B FF FD 69 */	bl aNPC_setupActor_sub
/* 80544EC8  39 61 00 60 */	addi r11, r1, 0x60
/* 80544ECC  4B B5 60 35 */	bl func_8009AF00
/* 80544ED0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80544ED4  7C 08 03 A6 */	mtlr r0
/* 80544ED8  38 21 00 60 */	addi r1, r1, 0x60
/* 80544EDC  4E 80 00 20 */	blr 
