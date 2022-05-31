lbl_805B48FC:
/* 805B48FC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805B4900  7C 08 02 A6 */	mflr r0
/* 805B4904  90 01 00 34 */	stw r0, 0x34(r1)
/* 805B4908  39 61 00 30 */	addi r11, r1, 0x30
/* 805B490C  4B AE 65 BD */	bl func_8009AEC8
/* 805B4910  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805B4914  7C 9C 23 78 */	mr r28, r4
/* 805B4918  38 85 85 38 */	addi r4, r5, common_data@l /* 0x81138538@l */
/* 805B491C  7C 7B 1B 78 */	mr r27, r3
/* 805B4920  3C 64 00 02 */	addis r3, r4, 2
/* 805B4924  83 DC 00 00 */	lwz r30, 0(r28)
/* 805B4928  80 83 60 98 */	lwz r4, 0x6098(r3)
/* 805B492C  38 60 00 5B */	li r3, 0x5b
/* 805B4930  81 84 00 A4 */	lwz r12, 0xa4(r4)
/* 805B4934  7D 89 03 A6 */	mtctr r12
/* 805B4938  4E 80 04 21 */	bctrl 
/* 805B493C  80 1B 02 D8 */	lwz r0, 0x2d8(r27)
/* 805B4940  3C 80 80 6C */	lis r4, disp_info@ha /* 0x806C5CB4@ha */
/* 805B4944  7C 7F 1B 78 */	mr r31, r3
/* 805B4948  7F C3 F3 78 */	mr r3, r30
/* 805B494C  20 00 00 03 */	subfic r0, r0, 3
/* 805B4950  38 84 5C B4 */	addi r4, r4, disp_info@l /* 0x806C5CB4@l */
/* 805B4954  7C 00 00 34 */	cntlzw r0, r0
/* 805B4958  54 00 E8 FA */	rlwinm r0, r0, 0x1d, 3, 0x1d
/* 805B495C  7F A4 00 2E */	lwzx r29, r4, r0
/* 805B4960  4B E3 07 F9 */	bl _texture_z_light_fog_prim_xlu
/* 805B4964  7F C3 F3 78 */	mr r3, r30
/* 805B4968  4B E3 08 41 */	bl _texture_z_light_fog_prim_npc
/* 805B496C  7F C3 F3 78 */	mr r3, r30
/* 805B4970  4B E3 07 C1 */	bl _texture_z_light_fog_prim_shadow
/* 805B4974  83 5E 02 D0 */	lwz r26, 0x2d0(r30)
/* 805B4978  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805B497C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805B4980  7F C3 F3 78 */	mr r3, r30
/* 805B4984  38 9A 00 08 */	addi r4, r26, 8
/* 805B4988  90 9E 02 D0 */	stw r4, 0x2d0(r30)
/* 805B498C  90 1A 00 00 */	stw r0, 0(r26)
/* 805B4990  4B E5 8A 45 */	bl _Matrix_to_Mtx_new
/* 805B4994  90 7A 00 04 */	stw r3, 4(r26)
/* 805B4998  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805B499C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805B49A0  7F C3 F3 78 */	mr r3, r30
/* 805B49A4  83 5E 02 E0 */	lwz r26, 0x2e0(r30)
/* 805B49A8  38 9A 00 08 */	addi r4, r26, 8
/* 805B49AC  90 9E 02 E0 */	stw r4, 0x2e0(r30)
/* 805B49B0  90 1A 00 00 */	stw r0, 0(r26)
/* 805B49B4  4B E5 8A 21 */	bl _Matrix_to_Mtx_new
/* 805B49B8  90 7A 00 04 */	stw r3, 4(r26)
/* 805B49BC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805B49C0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805B49C4  7F C3 F3 78 */	mr r3, r30
/* 805B49C8  83 5E 03 00 */	lwz r26, 0x300(r30)
/* 805B49CC  38 9A 00 08 */	addi r4, r26, 8
/* 805B49D0  90 9E 03 00 */	stw r4, 0x300(r30)
/* 805B49D4  90 1A 00 00 */	stw r0, 0(r26)
/* 805B49D8  4B E5 89 FD */	bl _Matrix_to_Mtx_new
/* 805B49DC  90 7A 00 04 */	stw r3, 4(r26)
/* 805B49E0  3C E0 DB 06 */	lis r7, 0xDB06 /* 0xDB060020@ha */
/* 805B49E4  3C 80 80 65 */	lis r4, lit_586@ha /* 0x8064A958@ha */
/* 805B49E8  3C 60 80 65 */	lis r3, lit_587@ha /* 0x8064A95C@ha */
/* 805B49EC  81 1E 02 D0 */	lwz r8, 0x2d0(r30)
/* 805B49F0  38 C4 A9 58 */	addi r6, r4, lit_586@l /* 0x8064A958@l */
/* 805B49F4  38 A3 A9 5C */	addi r5, r3, lit_587@l /* 0x8064A95C@l */
/* 805B49F8  C0 46 00 00 */	lfs f2, 0(r6)
/* 805B49FC  38 08 00 08 */	addi r0, r8, 8
/* 805B4A00  C0 25 00 00 */	lfs f1, 0(r5)
/* 805B4A04  90 1E 02 D0 */	stw r0, 0x2d0(r30)
/* 805B4A08  39 27 00 20 */	addi r9, r7, 0x0020 /* 0xDB060020@l */
/* 805B4A0C  3C 80 80 65 */	lis r4, lit_585@ha /* 0x8064A954@ha */
/* 805B4A10  3C 60 80 65 */	lis r3, lit_437@ha /* 0x8064A920@ha */
/* 805B4A14  91 28 00 00 */	stw r9, 0(r8)
/* 805B4A18  38 E4 A9 54 */	addi r7, r4, lit_585@l /* 0x8064A954@l */
/* 805B4A1C  38 83 A9 20 */	addi r4, r3, lit_437@l /* 0x8064A920@l */
/* 805B4A20  C0 67 00 00 */	lfs f3, 0(r7)
/* 805B4A24  93 E8 00 04 */	stw r31, 4(r8)
/* 805B4A28  3C 60 E7 00 */	lis r3, 0xe700
/* 805B4A2C  C0 04 00 00 */	lfs f0, 0(r4)
/* 805B4A30  38 00 00 00 */	li r0, 0
/* 805B4A34  81 1E 02 E0 */	lwz r8, 0x2e0(r30)
/* 805B4A38  3C A0 FA 00 */	lis r5, 0xfa00
/* 805B4A3C  3C C0 DE 00 */	lis r6, 0xde00
/* 805B4A40  38 E8 00 08 */	addi r7, r8, 8
/* 805B4A44  90 FE 02 E0 */	stw r7, 0x2e0(r30)
/* 805B4A48  91 28 00 00 */	stw r9, 0(r8)
/* 805B4A4C  93 E8 00 04 */	stw r31, 4(r8)
/* 805B4A50  80 FE 03 00 */	lwz r7, 0x300(r30)
/* 805B4A54  38 87 00 08 */	addi r4, r7, 8
/* 805B4A58  90 9E 03 00 */	stw r4, 0x300(r30)
/* 805B4A5C  91 27 00 00 */	stw r9, 0(r7)
/* 805B4A60  93 E7 00 04 */	stw r31, 4(r7)
/* 805B4A64  80 FE 02 D0 */	lwz r7, 0x2d0(r30)
/* 805B4A68  38 87 00 08 */	addi r4, r7, 8
/* 805B4A6C  90 9E 02 D0 */	stw r4, 0x2d0(r30)
/* 805B4A70  90 67 00 00 */	stw r3, 0(r7)
/* 805B4A74  90 07 00 04 */	stw r0, 4(r7)
/* 805B4A78  C0 9B 02 C8 */	lfs f4, 0x2c8(r27)
/* 805B4A7C  81 1E 02 D0 */	lwz r8, 0x2d0(r30)
/* 805B4A80  EC 21 01 32 */	fmuls f1, f1, f4
/* 805B4A84  EC 42 01 32 */	fmuls f2, f2, f4
/* 805B4A88  38 88 00 08 */	addi r4, r8, 8
/* 805B4A8C  90 9E 02 D0 */	stw r4, 0x2d0(r30)
/* 805B4A90  EC 23 08 2A */	fadds f1, f3, f1
/* 805B4A94  EC 43 10 2A */	fadds f2, f3, f2
/* 805B4A98  90 A8 00 00 */	stw r5, 0(r8)
/* 805B4A9C  FC 20 08 1E */	fctiwz f1, f1
/* 805B4AA0  FC 40 10 1E */	fctiwz f2, f2
/* 805B4AA4  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 805B4AA8  D8 41 00 08 */	stfd f2, 8(r1)
/* 805B4AAC  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 805B4AB0  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 805B4AB4  54 A4 82 1E */	rlwinm r4, r5, 0x10, 8, 0xf
/* 805B4AB8  50 A4 C0 0E */	rlwimi r4, r5, 0x18, 0, 7
/* 805B4ABC  50 E4 44 2E */	rlwimi r4, r7, 8, 0x10, 0x17
/* 805B4AC0  60 84 00 FF */	ori r4, r4, 0xff
/* 805B4AC4  90 88 00 04 */	stw r4, 4(r8)
/* 805B4AC8  80 BE 02 D0 */	lwz r5, 0x2d0(r30)
/* 805B4ACC  38 85 00 08 */	addi r4, r5, 8
/* 805B4AD0  90 9E 02 D0 */	stw r4, 0x2d0(r30)
/* 805B4AD4  90 C5 00 00 */	stw r6, 0(r5)
/* 805B4AD8  80 9D 00 00 */	lwz r4, 0(r29)
/* 805B4ADC  90 85 00 04 */	stw r4, 4(r5)
/* 805B4AE0  80 BE 02 D0 */	lwz r5, 0x2d0(r30)
/* 805B4AE4  38 85 00 08 */	addi r4, r5, 8
/* 805B4AE8  90 9E 02 D0 */	stw r4, 0x2d0(r30)
/* 805B4AEC  90 C5 00 00 */	stw r6, 0(r5)
/* 805B4AF0  80 9D 00 04 */	lwz r4, 4(r29)
/* 805B4AF4  90 85 00 04 */	stw r4, 4(r5)
/* 805B4AF8  80 BE 02 D0 */	lwz r5, 0x2d0(r30)
/* 805B4AFC  38 85 00 08 */	addi r4, r5, 8
/* 805B4B00  90 9E 02 D0 */	stw r4, 0x2d0(r30)
/* 805B4B04  90 C5 00 00 */	stw r6, 0(r5)
/* 805B4B08  80 9D 00 08 */	lwz r4, 8(r29)
/* 805B4B0C  90 85 00 04 */	stw r4, 4(r5)
/* 805B4B10  80 BE 02 D0 */	lwz r5, 0x2d0(r30)
/* 805B4B14  38 85 00 08 */	addi r4, r5, 8
/* 805B4B18  90 9E 02 D0 */	stw r4, 0x2d0(r30)
/* 805B4B1C  90 C5 00 00 */	stw r6, 0(r5)
/* 805B4B20  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 805B4B24  90 85 00 04 */	stw r4, 4(r5)
/* 805B4B28  80 BE 02 E0 */	lwz r5, 0x2e0(r30)
/* 805B4B2C  38 85 00 08 */	addi r4, r5, 8
/* 805B4B30  90 9E 02 E0 */	stw r4, 0x2e0(r30)
/* 805B4B34  90 65 00 00 */	stw r3, 0(r5)
/* 805B4B38  90 05 00 04 */	stw r0, 4(r5)
/* 805B4B3C  C0 3B 02 C8 */	lfs f1, 0x2c8(r27)
/* 805B4B40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B4B44  40 81 00 30 */	ble lbl_805B4B74
/* 805B4B48  3C 60 80 65 */	lis r3, lit_474@ha /* 0x8064A944@ha */
/* 805B4B4C  39 00 00 FF */	li r8, 0xff
/* 805B4B50  C0 03 A9 44 */	lfs f0, lit_474@l(r3)  /* 0x8064A944@l */
/* 805B4B54  38 80 00 FF */	li r4, 0xff
/* 805B4B58  39 20 00 96 */	li r9, 0x96
/* 805B4B5C  EC 00 00 72 */	fmuls f0, f0, f1
/* 805B4B60  EC 03 00 2A */	fadds f0, f3, f0
/* 805B4B64  FC 00 00 1E */	fctiwz f0, f0
/* 805B4B68  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805B4B6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B4B70  48 00 00 14 */	b lbl_805B4B84
lbl_805B4B74:
/* 805B4B74  38 00 00 00 */	li r0, 0
/* 805B4B78  39 00 00 00 */	li r8, 0
/* 805B4B7C  38 80 00 00 */	li r4, 0
/* 805B4B80  39 20 00 00 */	li r9, 0
lbl_805B4B84:
/* 805B4B84  80 FE 02 E0 */	lwz r7, 0x2e0(r30)
/* 805B4B88  54 85 82 1E */	rlwinm r5, r4, 0x10, 8, 0xf
/* 805B4B8C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 805B4B90  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B4B94  38 C7 00 08 */	addi r6, r7, 8
/* 805B4B98  51 05 C0 0E */	rlwimi r5, r8, 0x18, 0, 7
/* 805B4B9C  90 DE 02 E0 */	stw r6, 0x2e0(r30)
/* 805B4BA0  64 00 FA 00 */	oris r0, r0, 0xfa00
/* 805B4BA4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805B4BA8  3C 80 80 6C */	lis r4, aMsm_shadow_data@ha /* 0x806C5BCC@ha */
/* 805B4BAC  90 07 00 00 */	stw r0, 0(r7)
/* 805B4BB0  51 25 44 2E */	rlwimi r5, r9, 8, 0x10, 0x17
/* 805B4BB4  3C C3 00 02 */	addis r6, r3, 2
/* 805B4BB8  3C 00 DE 00 */	lis r0, 0xde00
/* 805B4BBC  90 A7 00 04 */	stw r5, 4(r7)
/* 805B4BC0  38 84 5B CC */	addi r4, r4, aMsm_shadow_data@l /* 0x806C5BCC@l */
/* 805B4BC4  7F 83 E3 78 */	mr r3, r28
/* 805B4BC8  80 FE 02 E0 */	lwz r7, 0x2e0(r30)
/* 805B4BCC  38 A7 00 08 */	addi r5, r7, 8
/* 805B4BD0  90 BE 02 E0 */	stw r5, 0x2e0(r30)
/* 805B4BD4  38 A0 00 01 */	li r5, 1
/* 805B4BD8  90 07 00 00 */	stw r0, 0(r7)
/* 805B4BDC  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 805B4BE0  90 07 00 04 */	stw r0, 4(r7)
/* 805B4BE4  80 C6 60 80 */	lwz r6, 0x6080(r6)
/* 805B4BE8  81 86 00 04 */	lwz r12, 4(r6)
/* 805B4BEC  7D 89 03 A6 */	mtctr r12
/* 805B4BF0  4E 80 04 21 */	bctrl 
/* 805B4BF4  39 61 00 30 */	addi r11, r1, 0x30
/* 805B4BF8  4B AE 63 1D */	bl func_8009AF14
/* 805B4BFC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805B4C00  7C 08 03 A6 */	mtlr r0
/* 805B4C04  38 21 00 30 */	addi r1, r1, 0x30
/* 805B4C08  4E 80 00 20 */	blr 
