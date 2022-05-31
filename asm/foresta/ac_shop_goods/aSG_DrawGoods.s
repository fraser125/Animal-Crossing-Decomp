lbl_8049E1A8:
/* 8049E1A8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8049E1AC  7C 08 02 A6 */	mflr r0
/* 8049E1B0  90 01 00 64 */	stw r0, 0x64(r1)
/* 8049E1B4  39 61 00 60 */	addi r11, r1, 0x60
/* 8049E1B8  4B BF CD 01 */	bl func_8009AEB8
/* 8049E1BC  A8 05 01 88 */	lha r0, 0x188(r5)
/* 8049E1C0  7C 97 23 78 */	mr r23, r4
/* 8049E1C4  7D 5A 53 78 */	mr r26, r10
/* 8049E1C8  7C 76 1B 78 */	mr r22, r3
/* 8049E1CC  54 00 10 3A */	slwi r0, r0, 2
/* 8049E1D0  7D 39 4B 78 */	mr r25, r9
/* 8049E1D4  7C 7A 02 14 */	add r3, r26, r0
/* 8049E1D8  7C E5 3B 78 */	mr r5, r7
/* 8049E1DC  7D 18 43 78 */	mr r24, r8
/* 8049E1E0  83 61 00 68 */	lwz r27, 0x68(r1)
/* 8049E1E4  7C C4 33 78 */	mr r4, r6
/* 8049E1E8  83 E3 00 04 */	lwz r31, 4(r3)
/* 8049E1EC  83 C3 00 0C */	lwz r30, 0xc(r3)
/* 8049E1F0  7F 06 C3 78 */	mr r6, r24
/* 8049E1F4  83 A3 00 14 */	lwz r29, 0x14(r3)
/* 8049E1F8  7F 27 CB 78 */	mr r7, r25
/* 8049E1FC  83 83 00 1C */	lwz r28, 0x1c(r3)
/* 8049E200  38 61 00 20 */	addi r3, r1, 0x20
/* 8049E204  4B F0 7A F1 */	bl mFI_BkandUtNum2CenterWpos
/* 8049E208  2C 1B 00 00 */	cmpwi r27, 0
/* 8049E20C  40 82 00 38 */	bne lbl_8049E244
/* 8049E210  80 C1 00 20 */	lwz r6, 0x20(r1)
/* 8049E214  3C 60 80 64 */	lis r3, lit_531@ha /* 0x80645B74@ha */
/* 8049E218  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 8049E21C  38 83 5B 74 */	addi r4, r3, lit_531@l /* 0x80645B74@l */
/* 8049E220  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8049E224  38 61 00 14 */	addi r3, r1, 0x14
/* 8049E228  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8049E22C  C0 24 00 00 */	lfs f1, 0(r4)
/* 8049E230  90 A1 00 18 */	stw r5, 0x18(r1)
/* 8049E234  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8049E238  4B EF 17 61 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 8049E23C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8049E240  48 00 00 38 */	b lbl_8049E278
lbl_8049E244:
/* 8049E244  80 E1 00 20 */	lwz r7, 0x20(r1)
/* 8049E248  3C 60 80 64 */	lis r3, lit_531@ha /* 0x80645B74@ha */
/* 8049E24C  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 8049E250  38 A3 5B 74 */	addi r5, r3, lit_531@l /* 0x80645B74@l */
/* 8049E254  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8049E258  38 81 00 08 */	addi r4, r1, 8
/* 8049E25C  90 E1 00 08 */	stw r7, 8(r1)
/* 8049E260  38 60 00 00 */	li r3, 0
/* 8049E264  C0 25 00 00 */	lfs f1, 0(r5)
/* 8049E268  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8049E26C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8049E270  4B EF 14 49 */	bl func_8038F6B8
/* 8049E274  D0 21 00 24 */	stfs f1, 0x24(r1)
lbl_8049E278:
/* 8049E278  7E E3 BB 78 */	mr r3, r23
/* 8049E27C  7E C4 B3 78 */	mr r4, r22
/* 8049E280  4B F1 DE BD */	bl Global_light_read
/* 8049E284  80 97 00 00 */	lwz r4, 0(r23)
/* 8049E288  7C 77 1B 78 */	mr r23, r3
/* 8049E28C  38 A1 00 20 */	addi r5, r1, 0x20
/* 8049E290  4B F1 DC A1 */	bl LightsN_list_check
/* 8049E294  7E E3 BB 78 */	mr r3, r23
/* 8049E298  7E C4 B3 78 */	mr r4, r22
/* 8049E29C  4B F1 D7 5D */	bl LightsN_disp
/* 8049E2A0  28 1F 00 00 */	cmplwi r31, 0
/* 8049E2A4  40 82 00 0C */	bne lbl_8049E2B0
/* 8049E2A8  28 1D 00 00 */	cmplwi r29, 0
/* 8049E2AC  41 82 01 34 */	beq lbl_8049E3E0
lbl_8049E2B0:
/* 8049E2B0  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8049E2B4  38 60 00 00 */	li r3, 0
/* 8049E2B8  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 8049E2BC  C0 61 00 28 */	lfs f3, 0x28(r1)
/* 8049E2C0  4B F6 E0 41 */	bl Matrix_translate
/* 8049E2C4  80 1A 00 24 */	lwz r0, 0x24(r26)
/* 8049E2C8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8049E2CC  41 82 00 2C */	beq lbl_8049E2F8
/* 8049E2D0  2C 1B 00 01 */	cmpwi r27, 1
/* 8049E2D4  40 82 00 24 */	bne lbl_8049E2F8
/* 8049E2D8  3C 60 81 1D */	lis r3, data_811CF3A8@ha /* 0x811CF3A8@ha */
/* 8049E2DC  57 24 28 34 */	slwi r4, r25, 5
/* 8049E2E0  38 63 F3 A8 */	addi r3, r3, data_811CF3A8@l /* 0x811CF3A8@l */
/* 8049E2E4  57 00 08 3C */	slwi r0, r24, 1
/* 8049E2E8  7C 63 22 14 */	add r3, r3, r4
/* 8049E2EC  38 80 00 01 */	li r4, 1
/* 8049E2F0  7C 63 02 AE */	lhax r3, r3, r0
/* 8049E2F4  4B F6 E3 69 */	bl Matrix_RotateY
lbl_8049E2F8:
/* 8049E2F8  3C 80 80 64 */	lis r4, lit_703@ha /* 0x80645BB4@ha */
/* 8049E2FC  38 60 00 01 */	li r3, 1
/* 8049E300  C0 24 5B B4 */	lfs f1, lit_703@l(r4)  /* 0x80645BB4@l */
/* 8049E304  FC 40 08 90 */	fmr f2, f1
/* 8049E308  FC 60 08 90 */	fmr f3, f1
/* 8049E30C  4B F6 E0 E1 */	bl Matrix_scale
/* 8049E310  28 1F 00 00 */	cmplwi r31, 0
/* 8049E314  41 82 00 64 */	beq lbl_8049E378
/* 8049E318  7E C3 B3 78 */	mr r3, r22
/* 8049E31C  4B F4 6D ED */	bl _texture_z_light_fog_prim
/* 8049E320  82 F6 02 D0 */	lwz r23, 0x2d0(r22)
/* 8049E324  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8049E328  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8049E32C  7E C3 B3 78 */	mr r3, r22
/* 8049E330  38 97 00 08 */	addi r4, r23, 8
/* 8049E334  90 96 02 D0 */	stw r4, 0x2d0(r22)
/* 8049E338  90 17 00 00 */	stw r0, 0(r23)
/* 8049E33C  4B F6 F0 99 */	bl _Matrix_to_Mtx_new
/* 8049E340  90 77 00 04 */	stw r3, 4(r23)
/* 8049E344  3C 80 DE 00 */	lis r4, 0xde00
/* 8049E348  28 1E 00 00 */	cmplwi r30, 0
/* 8049E34C  80 76 02 D0 */	lwz r3, 0x2d0(r22)
/* 8049E350  38 03 00 08 */	addi r0, r3, 8
/* 8049E354  90 16 02 D0 */	stw r0, 0x2d0(r22)
/* 8049E358  90 83 00 00 */	stw r4, 0(r3)
/* 8049E35C  93 E3 00 04 */	stw r31, 4(r3)
/* 8049E360  41 82 00 18 */	beq lbl_8049E378
/* 8049E364  80 76 02 D0 */	lwz r3, 0x2d0(r22)
/* 8049E368  38 03 00 08 */	addi r0, r3, 8
/* 8049E36C  90 16 02 D0 */	stw r0, 0x2d0(r22)
/* 8049E370  90 83 00 00 */	stw r4, 0(r3)
/* 8049E374  93 C3 00 04 */	stw r30, 4(r3)
lbl_8049E378:
/* 8049E378  28 1D 00 00 */	cmplwi r29, 0
/* 8049E37C  41 82 00 64 */	beq lbl_8049E3E0
/* 8049E380  7E C3 B3 78 */	mr r3, r22
/* 8049E384  4B F4 6D D5 */	bl _texture_z_light_fog_prim_xlu
/* 8049E388  82 F6 02 E0 */	lwz r23, 0x2e0(r22)
/* 8049E38C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8049E390  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8049E394  7E C3 B3 78 */	mr r3, r22
/* 8049E398  38 97 00 08 */	addi r4, r23, 8
/* 8049E39C  90 96 02 E0 */	stw r4, 0x2e0(r22)
/* 8049E3A0  90 17 00 00 */	stw r0, 0(r23)
/* 8049E3A4  4B F6 F0 31 */	bl _Matrix_to_Mtx_new
/* 8049E3A8  90 77 00 04 */	stw r3, 4(r23)
/* 8049E3AC  3C 80 DE 00 */	lis r4, 0xde00
/* 8049E3B0  28 1C 00 00 */	cmplwi r28, 0
/* 8049E3B4  80 76 02 E0 */	lwz r3, 0x2e0(r22)
/* 8049E3B8  38 03 00 08 */	addi r0, r3, 8
/* 8049E3BC  90 16 02 E0 */	stw r0, 0x2e0(r22)
/* 8049E3C0  90 83 00 00 */	stw r4, 0(r3)
/* 8049E3C4  93 A3 00 04 */	stw r29, 4(r3)
/* 8049E3C8  41 82 00 18 */	beq lbl_8049E3E0
/* 8049E3CC  80 76 02 E0 */	lwz r3, 0x2e0(r22)
/* 8049E3D0  38 03 00 08 */	addi r0, r3, 8
/* 8049E3D4  90 16 02 E0 */	stw r0, 0x2e0(r22)
/* 8049E3D8  90 83 00 00 */	stw r4, 0(r3)
/* 8049E3DC  93 83 00 04 */	stw r28, 4(r3)
lbl_8049E3E0:
/* 8049E3E0  39 61 00 60 */	addi r11, r1, 0x60
/* 8049E3E4  4B BF CB 21 */	bl func_8009AF04
/* 8049E3E8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8049E3EC  7C 08 03 A6 */	mtlr r0
/* 8049E3F0  38 21 00 60 */	addi r1, r1, 0x60
/* 8049E3F4  4E 80 00 20 */	blr 
