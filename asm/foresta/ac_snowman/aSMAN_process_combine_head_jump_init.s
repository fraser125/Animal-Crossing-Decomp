lbl_804A69AC:
/* 804A69AC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804A69B0  7C 08 02 A6 */	mflr r0
/* 804A69B4  90 01 00 54 */	stw r0, 0x54(r1)
/* 804A69B8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 804A69BC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 804A69C0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804A69C4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 804A69C8  83 E3 01 94 */	lwz r31, 0x194(r3)
/* 804A69CC  7C 7E 1B 78 */	mr r30, r3
/* 804A69D0  3C 60 80 64 */	lis r3, lit_644@ha /* 0x80645CC4@ha */
/* 804A69D4  80 FF 00 28 */	lwz r7, 0x28(r31)
/* 804A69D8  38 A3 5C C4 */	addi r5, r3, lit_644@l /* 0x80645CC4@l */
/* 804A69DC  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804A69E0  3C 60 80 64 */	lis r3, lit_469@ha /* 0x80645C90@ha */
/* 804A69E4  38 C3 5C 90 */	addi r6, r3, lit_469@l /* 0x80645C90@l */
/* 804A69E8  C0 45 00 00 */	lfs f2, 0(r5)
/* 804A69EC  90 E1 00 2C */	stw r7, 0x2c(r1)
/* 804A69F0  7C 83 23 78 */	mr r3, r4
/* 804A69F4  C0 66 00 00 */	lfs f3, 0(r6)
/* 804A69F8  7F C5 F3 78 */	mr r5, r30
/* 804A69FC  90 01 00 30 */	stw r0, 0x30(r1)
/* 804A6A00  38 80 00 00 */	li r4, 0
/* 804A6A04  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804A6A08  90 01 00 34 */	stw r0, 0x34(r1)
/* 804A6A0C  C0 3E 01 D0 */	lfs f1, 0x1d0(r30)
/* 804A6A10  C0 1F 01 D0 */	lfs f0, 0x1d0(r31)
/* 804A6A14  EC 22 00 72 */	fmuls f1, f2, f1
/* 804A6A18  EC 02 00 32 */	fmuls f0, f2, f0
/* 804A6A1C  EC 23 08 2A */	fadds f1, f3, f1
/* 804A6A20  EC 03 00 2A */	fadds f0, f3, f0
/* 804A6A24  EF E1 00 2A */	fadds f31, f1, f0
/* 804A6A28  4B F3 43 5D */	bl mPlib_request_main_demo_wait_type1
/* 804A6A2C  A8 9E 01 F8 */	lha r4, 0x1f8(r30)
/* 804A6A30  3C 60 80 64 */	lis r3, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A6A34  C0 03 5C 8C */	lfs f0, data_80645C8C@l(r3)  /* 0x80645C8C@l */
/* 804A6A38  38 00 00 00 */	li r0, 0
/* 804A6A3C  60 84 00 20 */	ori r4, r4, 0x20
/* 804A6A40  38 61 00 20 */	addi r3, r1, 0x20
/* 804A6A44  B0 9E 01 F8 */	sth r4, 0x1f8(r30)
/* 804A6A48  38 81 00 14 */	addi r4, r1, 0x14
/* 804A6A4C  A8 BE 01 F8 */	lha r5, 0x1f8(r30)
/* 804A6A50  60 A5 00 01 */	ori r5, r5, 1
/* 804A6A54  B0 BE 01 F8 */	sth r5, 0x1f8(r30)
/* 804A6A58  B0 1E 01 FA */	sth r0, 0x1fa(r30)
/* 804A6A5C  93 FE 01 4C */	stw r31, 0x14c(r30)
/* 804A6A60  D0 1E 01 CC */	stfs f0, 0x1cc(r30)
/* 804A6A64  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 804A6A68  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 804A6A6C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804A6A70  90 C1 00 14 */	stw r6, 0x14(r1)
/* 804A6A74  90 A1 00 18 */	stw r5, 0x18(r1)
/* 804A6A78  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804A6A7C  4B EF EA C1 */	bl mFI_Wpos2UtCenterWpos
/* 804A6A80  3C 60 80 64 */	lis r3, lit_1431@ha /* 0x80645DA8@ha */
/* 804A6A84  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804A6A88  C0 43 5D A8 */	lfs f2, lit_1431@l(r3)  /* 0x80645DA8@l */
/* 804A6A8C  38 7E 00 28 */	addi r3, r30, 0x28
/* 804A6A90  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 804A6A94  38 81 00 2C */	addi r4, r1, 0x2c
/* 804A6A98  EC 42 07 F2 */	fmuls f2, f2, f31
/* 804A6A9C  C0 61 00 30 */	lfs f3, 0x30(r1)
/* 804A6AA0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804A6AA4  38 BE 01 98 */	addi r5, r30, 0x198
/* 804A6AA8  EC 03 10 2A */	fadds f0, f3, f2
/* 804A6AAC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 804A6AB0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804A6AB4  4B F1 44 C5 */	bl xyz_t_sub
/* 804A6AB8  3C 80 80 64 */	lis r4, lit_1432@ha /* 0x80645DAC@ha */
/* 804A6ABC  38 7E 01 98 */	addi r3, r30, 0x198
/* 804A6AC0  C0 24 5D AC */	lfs f1, lit_1432@l(r4)  /* 0x80645DAC@l */
/* 804A6AC4  4B F1 44 E9 */	bl xyz_t_mult_v
/* 804A6AC8  38 00 00 00 */	li r0, 0
/* 804A6ACC  98 1E 01 08 */	stb r0, 0x108(r30)
/* 804A6AD0  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 804A6AD4  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 804A6AD8  4B FF FE 0D */	bl aSMAN_decide_scale_result
/* 804A6ADC  90 7E 01 E0 */	stw r3, 0x1e0(r30)
/* 804A6AE0  4B FF FE 91 */	bl aSMAN_get_snowman_indx
/* 804A6AE4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804A6AE8  80 1E 01 E0 */	lwz r0, 0x1e0(r30)
/* 804A6AEC  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 804A6AF0  38 80 00 03 */	li r4, 3
/* 804A6AF4  3C A5 00 03 */	addis r5, r5, 3
/* 804A6AF8  80 A5 85 28 */	lwz r5, -0x7ad8(r5)
/* 804A6AFC  1C 00 00 03 */	mulli r0, r0, 3
/* 804A6B00  7C A5 1A 14 */	add r5, r5, r3
/* 804A6B04  7C 65 23 D6 */	divw r3, r5, r4
/* 804A6B08  7C 63 21 D6 */	mullw r3, r3, r4
/* 804A6B0C  7C 63 28 50 */	subf r3, r3, r5
/* 804A6B10  7C 63 02 14 */	add r3, r3, r0
/* 804A6B14  38 03 08 A1 */	addi r0, r3, 0x8a1
/* 804A6B18  90 1E 01 E4 */	stw r0, 0x1e4(r30)
/* 804A6B1C  C0 1F 01 D0 */	lfs f0, 0x1d0(r31)
/* 804A6B20  D0 1E 01 D4 */	stfs f0, 0x1d4(r30)
/* 804A6B24  80 1E 01 E0 */	lwz r0, 0x1e0(r30)
/* 804A6B28  2C 00 00 00 */	cmpwi r0, 0
/* 804A6B2C  40 82 00 08 */	bne lbl_804A6B34
/* 804A6B30  4B FF CC 8D */	bl aSMAN_SendPresentMail
lbl_804A6B34:
/* 804A6B34  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804A6B38  38 E0 00 64 */	li r7, 0x64
/* 804A6B3C  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 804A6B40  3D 24 00 02 */	addis r9, r4, 2
/* 804A6B44  38 61 00 08 */	addi r3, r1, 8
/* 804A6B48  A1 09 61 26 */	lhz r8, 0x6126(r9)
/* 804A6B4C  88 09 61 22 */	lbz r0, 0x6122(r9)
/* 804A6B50  7C C8 3B D6 */	divw r6, r8, r7
/* 804A6B54  88 A9 61 25 */	lbz r5, 0x6125(r9)
/* 804A6B58  98 09 13 92 */	stb r0, 0x1392(r9)
/* 804A6B5C  88 89 61 23 */	lbz r4, 0x6123(r9)
/* 804A6B60  98 A9 13 90 */	stb r5, 0x1390(r9)
/* 804A6B64  98 89 13 91 */	stb r4, 0x1391(r9)
/* 804A6B68  7C 06 39 D6 */	mullw r0, r6, r7
/* 804A6B6C  7C 00 40 50 */	subf r0, r0, r8
/* 804A6B70  98 09 13 8F */	stb r0, 0x138f(r9)
/* 804A6B74  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 804A6B78  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 804A6B7C  90 81 00 08 */	stw r4, 8(r1)
/* 804A6B80  90 01 00 0C */	stw r0, 0xc(r1)
/* 804A6B84  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 804A6B88  90 01 00 10 */	stw r0, 0x10(r1)
/* 804A6B8C  4B F3 DA D9 */	bl mQst_NextSnowman
/* 804A6B90  38 9E 00 28 */	addi r4, r30, 0x28
/* 804A6B94  38 60 01 04 */	li r3, 0x104
/* 804A6B98  48 18 74 11 */	bl sAdo_OngenTrgStart
/* 804A6B9C  3C 60 80 4A */	lis r3, aSMAN_process_combine_head_jump@ha /* 0x804A6BC8@ha */
/* 804A6BA0  38 03 6B C8 */	addi r0, r3, aSMAN_process_combine_head_jump@l /* 0x804A6BC8@l */
/* 804A6BA4  90 1E 01 90 */	stw r0, 0x190(r30)
/* 804A6BA8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 804A6BAC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804A6BB0  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 804A6BB4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804A6BB8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 804A6BBC  7C 08 03 A6 */	mtlr r0
/* 804A6BC0  38 21 00 50 */	addi r1, r1, 0x50
/* 804A6BC4  4E 80 00 20 */	blr 
