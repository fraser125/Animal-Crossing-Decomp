lbl_805C7994:
/* 805C7994  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C7998  7C 08 02 A6 */	mflr r0
/* 805C799C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C79A0  39 61 00 20 */	addi r11, r1, 0x20
/* 805C79A4  4B AD 35 2D */	bl func_8009AED0
/* 805C79A8  7C 9E 23 78 */	mr r30, r4
/* 805C79AC  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805C79B0  7C 7D 1B 78 */	mr r29, r3
/* 805C79B4  83 E4 09 EC */	lwz r31, 0x9ec(r4)
/* 805C79B8  80 C4 09 28 */	lwz r6, 0x928(r4)
/* 805C79BC  88 9F 10 56 */	lbz r4, 0x1056(r31)
/* 805C79C0  88 BF 10 57 */	lbz r5, 0x1057(r31)
/* 805C79C4  54 C0 04 63 */	rlwinm. r0, r6, 0, 0x11, 0x11
/* 805C79C8  1C 84 00 73 */	mulli r4, r4, 0x73
/* 805C79CC  7C FF 22 14 */	add r7, r31, r4
/* 805C79D0  7C 07 28 AE */	lbzx r0, r7, r5
/* 805C79D4  54 04 06 FE */	clrlwi r4, r0, 0x1b
/* 805C79D8  41 82 00 30 */	beq lbl_805C7A08
/* 805C79DC  38 00 00 04 */	li r0, 4
/* 805C79E0  38 60 10 03 */	li r3, 0x1003
/* 805C79E4  98 1F 10 55 */	stb r0, 0x1055(r31)
/* 805C79E8  48 06 63 1D */	bl sAdo_SysTrgStart
/* 805C79EC  3C 80 80 65 */	lis r4, lit_538@ha /* 0x8064AE40@ha */
/* 805C79F0  3C 60 80 65 */	lis r3, lit_805@ha /* 0x8064AE50@ha */
/* 805C79F4  C0 24 AE 40 */	lfs f1, lit_538@l(r4)  /* 0x8064AE40@l */
/* 805C79F8  C0 03 AE 50 */	lfs f0, lit_805@l(r3)  /* 0x8064AE50@l */
/* 805C79FC  D0 3F 10 30 */	stfs f1, 0x1030(r31)
/* 805C7A00  D0 1F 10 2C */	stfs f0, 0x102c(r31)
/* 805C7A04  48 00 01 F0 */	b lbl_805C7BF4
lbl_805C7A08:
/* 805C7A08  54 C0 04 21 */	rlwinm. r0, r6, 0, 0x10, 0x10
/* 805C7A0C  41 82 00 A8 */	beq lbl_805C7AB4
/* 805C7A10  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805C7A14  80 DE 00 3C */	lwz r6, 0x3c(r30)
/* 805C7A18  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805C7A1C  3B 80 FF FF */	li r28, -1
/* 805C7A20  3C 85 00 02 */	addis r4, r5, 2
/* 805C7A24  88 04 60 03 */	lbz r0, 0x6003(r4)
/* 805C7A28  7C 06 00 00 */	cmpw r6, r0
/* 805C7A2C  40 82 00 14 */	bne lbl_805C7A40
/* 805C7A30  38 00 00 06 */	li r0, 6
/* 805C7A34  3B 80 00 00 */	li r28, 0
/* 805C7A38  98 1F 10 55 */	stb r0, 0x1055(r31)
/* 805C7A3C  48 00 00 40 */	b lbl_805C7A7C
lbl_805C7A40:
/* 805C7A40  1C 06 24 40 */	mulli r0, r6, 0x2440
/* 805C7A44  7C 85 02 14 */	add r4, r5, r0
/* 805C7A48  88 04 23 CE */	lbz r0, 0x23ce(r4)
/* 805C7A4C  28 00 00 00 */	cmplwi r0, 0
/* 805C7A50  41 82 00 20 */	beq lbl_805C7A70
/* 805C7A54  38 80 00 10 */	li r4, 0x10
/* 805C7A58  38 A0 00 17 */	li r5, 0x17
/* 805C7A5C  38 C0 00 00 */	li r6, 0
/* 805C7A60  4B E2 7C 7D */	bl mSM_open_submenu
/* 805C7A64  38 00 00 02 */	li r0, 2
/* 805C7A68  90 1E 00 04 */	stw r0, 4(r30)
/* 805C7A6C  48 00 00 10 */	b lbl_805C7A7C
lbl_805C7A70:
/* 805C7A70  38 00 00 06 */	li r0, 6
/* 805C7A74  3B 80 00 01 */	li r28, 1
/* 805C7A78  98 1F 10 55 */	stb r0, 0x1055(r31)
lbl_805C7A7C:
/* 805C7A7C  2C 1C FF FF */	cmpwi r28, -1
/* 805C7A80  41 82 01 74 */	beq lbl_805C7BF4
/* 805C7A84  89 3F 10 56 */	lbz r9, 0x1056(r31)
/* 805C7A88  39 00 00 0C */	li r8, 0xc
/* 805C7A8C  80 DE 00 3C */	lwz r6, 0x3c(r30)
/* 805C7A90  7F A3 EB 78 */	mr r3, r29
/* 805C7A94  7C 09 43 D6 */	divw r0, r9, r8
/* 805C7A98  7F 85 E3 78 */	mr r5, r28
/* 805C7A9C  38 80 00 1B */	li r4, 0x1b
/* 805C7AA0  38 E0 00 00 */	li r7, 0
/* 805C7AA4  7C 00 41 D6 */	mullw r0, r0, r8
/* 805C7AA8  7D 00 48 50 */	subf r8, r0, r9
/* 805C7AAC  4B E2 7C 7D */	bl mSM_open_submenu_new2
/* 805C7AB0  48 00 01 44 */	b lbl_805C7BF4
lbl_805C7AB4:
/* 805C7AB4  54 C0 07 BD */	rlwinm. r0, r6, 0, 0x1e, 0x1e
/* 805C7AB8  41 82 00 28 */	beq lbl_805C7AE0
/* 805C7ABC  2C 04 00 01 */	cmpwi r4, 1
/* 805C7AC0  40 81 00 20 */	ble lbl_805C7AE0
/* 805C7AC4  38 05 FF FF */	addi r0, r5, -1
/* 805C7AC8  7F E3 FB 78 */	mr r3, r31
/* 805C7ACC  98 1F 10 57 */	stb r0, 0x1057(r31)
/* 805C7AD0  4B FF EF FD */	bl mDC_set_disp_table
/* 805C7AD4  38 60 00 01 */	li r3, 1
/* 805C7AD8  48 06 62 2D */	bl sAdo_SysTrgStart
/* 805C7ADC  48 00 01 18 */	b lbl_805C7BF4
lbl_805C7AE0:
/* 805C7AE0  54 C0 07 FF */	clrlwi. r0, r6, 0x1f
/* 805C7AE4  41 82 00 3C */	beq lbl_805C7B20
/* 805C7AE8  28 05 00 24 */	cmplwi r5, 0x24
/* 805C7AEC  40 80 01 08 */	bge lbl_805C7BF4
/* 805C7AF0  7C 67 2A 14 */	add r3, r7, r5
/* 805C7AF4  88 03 00 01 */	lbz r0, 1(r3)
/* 805C7AF8  54 00 06 FF */	clrlwi. r0, r0, 0x1b
/* 805C7AFC  40 81 00 F8 */	ble lbl_805C7BF4
/* 805C7B00  88 9F 10 57 */	lbz r4, 0x1057(r31)
/* 805C7B04  7F E3 FB 78 */	mr r3, r31
/* 805C7B08  38 04 00 01 */	addi r0, r4, 1
/* 805C7B0C  98 1F 10 57 */	stb r0, 0x1057(r31)
/* 805C7B10  4B FF EF BD */	bl mDC_set_disp_table
/* 805C7B14  38 60 00 01 */	li r3, 1
/* 805C7B18  48 06 61 ED */	bl sAdo_SysTrgStart
/* 805C7B1C  48 00 00 D8 */	b lbl_805C7BF4
lbl_805C7B20:
/* 805C7B20  54 C0 07 39 */	rlwinm. r0, r6, 0, 0x1c, 0x1c
/* 805C7B24  41 82 00 60 */	beq lbl_805C7B84
/* 805C7B28  88 1F 10 43 */	lbz r0, 0x1043(r31)
/* 805C7B2C  28 00 00 01 */	cmplwi r0, 1
/* 805C7B30  40 81 00 2C */	ble lbl_805C7B5C
/* 805C7B34  88 7F 10 42 */	lbz r3, 0x1042(r31)
/* 805C7B38  28 03 00 00 */	cmplwi r3, 0
/* 805C7B3C  41 82 00 20 */	beq lbl_805C7B5C
/* 805C7B40  38 03 FF FF */	addi r0, r3, -1
/* 805C7B44  7F E3 FB 78 */	mr r3, r31
/* 805C7B48  98 1F 10 42 */	stb r0, 0x1042(r31)
/* 805C7B4C  4B FF EE A9 */	bl mDC_set_string
/* 805C7B50  38 60 00 01 */	li r3, 1
/* 805C7B54  48 06 61 B1 */	bl sAdo_SysTrgStart
/* 805C7B58  48 00 00 9C */	b lbl_805C7BF4
lbl_805C7B5C:
/* 805C7B5C  2C 04 00 07 */	cmpwi r4, 7
/* 805C7B60  40 81 00 94 */	ble lbl_805C7BF4
/* 805C7B64  88 9F 10 57 */	lbz r4, 0x1057(r31)
/* 805C7B68  7F E3 FB 78 */	mr r3, r31
/* 805C7B6C  38 04 FF F9 */	addi r0, r4, -7
/* 805C7B70  98 1F 10 57 */	stb r0, 0x1057(r31)
/* 805C7B74  4B FF EF 59 */	bl mDC_set_disp_table
/* 805C7B78  38 60 00 01 */	li r3, 1
/* 805C7B7C  48 06 61 89 */	bl sAdo_SysTrgStart
/* 805C7B80  48 00 00 74 */	b lbl_805C7BF4
lbl_805C7B84:
/* 805C7B84  54 C0 07 7B */	rlwinm. r0, r6, 0, 0x1d, 0x1d
/* 805C7B88  41 82 00 6C */	beq lbl_805C7BF4
/* 805C7B8C  88 9F 10 43 */	lbz r4, 0x1043(r31)
/* 805C7B90  28 04 00 01 */	cmplwi r4, 1
/* 805C7B94  40 81 00 2C */	ble lbl_805C7BC0
/* 805C7B98  88 7F 10 42 */	lbz r3, 0x1042(r31)
/* 805C7B9C  38 03 00 01 */	addi r0, r3, 1
/* 805C7BA0  7C 00 20 00 */	cmpw r0, r4
/* 805C7BA4  40 80 00 1C */	bge lbl_805C7BC0
/* 805C7BA8  98 1F 10 42 */	stb r0, 0x1042(r31)
/* 805C7BAC  7F E3 FB 78 */	mr r3, r31
/* 805C7BB0  4B FF EE 45 */	bl mDC_set_string
/* 805C7BB4  38 60 00 01 */	li r3, 1
/* 805C7BB8  48 06 61 4D */	bl sAdo_SysTrgStart
/* 805C7BBC  48 00 00 38 */	b lbl_805C7BF4
lbl_805C7BC0:
/* 805C7BC0  28 05 00 1E */	cmplwi r5, 0x1e
/* 805C7BC4  40 80 00 30 */	bge lbl_805C7BF4
/* 805C7BC8  7C 67 2A 14 */	add r3, r7, r5
/* 805C7BCC  88 03 00 07 */	lbz r0, 7(r3)
/* 805C7BD0  54 00 06 FF */	clrlwi. r0, r0, 0x1b
/* 805C7BD4  40 81 00 20 */	ble lbl_805C7BF4
/* 805C7BD8  88 9F 10 57 */	lbz r4, 0x1057(r31)
/* 805C7BDC  7F E3 FB 78 */	mr r3, r31
/* 805C7BE0  38 04 00 07 */	addi r0, r4, 7
/* 805C7BE4  98 1F 10 57 */	stb r0, 0x1057(r31)
/* 805C7BE8  4B FF EE E5 */	bl mDC_set_disp_table
/* 805C7BEC  38 60 00 01 */	li r3, 1
/* 805C7BF0  48 06 61 15 */	bl sAdo_SysTrgStart
lbl_805C7BF4:
/* 805C7BF4  3C 80 80 65 */	lis r4, lit_928@ha /* 0x8064AE64@ha */
/* 805C7BF8  3C 60 80 65 */	lis r3, lit_929@ha /* 0x8064AE68@ha */
/* 805C7BFC  C0 5F 10 38 */	lfs f2, 0x1038(r31)
/* 805C7C00  C0 24 AE 64 */	lfs f1, lit_928@l(r4)  /* 0x8064AE64@l */
/* 805C7C04  C0 03 AE 68 */	lfs f0, lit_929@l(r3)  /* 0x8064AE68@l */
/* 805C7C08  EC 22 08 2A */	fadds f1, f2, f1
/* 805C7C0C  D0 3F 10 38 */	stfs f1, 0x1038(r31)
/* 805C7C10  C0 3F 10 38 */	lfs f1, 0x1038(r31)
/* 805C7C14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C7C18  4C 41 13 82 */	cror 2, 1, 2
/* 805C7C1C  40 82 00 10 */	bne lbl_805C7C2C
/* 805C7C20  3C 60 80 65 */	lis r3, lit_538@ha /* 0x8064AE40@ha */
/* 805C7C24  C0 03 AE 40 */	lfs f0, lit_538@l(r3)  /* 0x8064AE40@l */
/* 805C7C28  D0 1F 10 38 */	stfs f0, 0x1038(r31)
lbl_805C7C2C:
/* 805C7C2C  3C 80 80 65 */	lis r4, lit_930@ha /* 0x8064AE6C@ha */
/* 805C7C30  3C 60 80 65 */	lis r3, lit_538@ha /* 0x8064AE40@ha */
/* 805C7C34  C0 3F 10 38 */	lfs f1, 0x1038(r31)
/* 805C7C38  C0 44 AE 6C */	lfs f2, lit_930@l(r4)  /* 0x8064AE6C@l */
/* 805C7C3C  C0 03 AE 40 */	lfs f0, lit_538@l(r3)  /* 0x8064AE40@l */
/* 805C7C40  EC 21 10 28 */	fsubs f1, f1, f2
/* 805C7C44  EC 21 10 24 */	fdivs f1, f1, f2
/* 805C7C48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C7C4C  4C 40 13 82 */	cror 2, 0, 2
/* 805C7C50  40 82 00 14 */	bne lbl_805C7C64
/* 805C7C54  3C 60 80 65 */	lis r3, lit_928@ha /* 0x8064AE64@ha */
/* 805C7C58  C0 03 AE 64 */	lfs f0, lit_928@l(r3)  /* 0x8064AE64@l */
/* 805C7C5C  EC 20 08 2A */	fadds f1, f0, f1
/* 805C7C60  48 00 00 10 */	b lbl_805C7C70
lbl_805C7C64:
/* 805C7C64  3C 60 80 65 */	lis r3, lit_928@ha /* 0x8064AE64@ha */
/* 805C7C68  C0 03 AE 64 */	lfs f0, lit_928@l(r3)  /* 0x8064AE64@l */
/* 805C7C6C  EC 20 08 28 */	fsubs f1, f0, f1
lbl_805C7C70:
/* 805C7C70  3C 60 80 65 */	lis r3, lit_538@ha /* 0x8064AE40@ha */
/* 805C7C74  C0 03 AE 40 */	lfs f0, lit_538@l(r3)  /* 0x8064AE40@l */
/* 805C7C78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C7C7C  40 80 00 0C */	bge lbl_805C7C88
/* 805C7C80  FC 20 00 90 */	fmr f1, f0
/* 805C7C84  48 00 00 18 */	b lbl_805C7C9C
lbl_805C7C88:
/* 805C7C88  3C 60 80 65 */	lis r3, lit_928@ha /* 0x8064AE64@ha */
/* 805C7C8C  C0 03 AE 64 */	lfs f0, lit_928@l(r3)  /* 0x8064AE64@l */
/* 805C7C90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C7C94  40 81 00 08 */	ble lbl_805C7C9C
/* 805C7C98  FC 20 00 90 */	fmr f1, f0
lbl_805C7C9C:
/* 805C7C9C  3C 60 80 65 */	lis r3, lit_931@ha /* 0x8064AE70@ha */
/* 805C7CA0  39 61 00 20 */	addi r11, r1, 0x20
/* 805C7CA4  C0 03 AE 70 */	lfs f0, lit_931@l(r3)  /* 0x8064AE70@l */
/* 805C7CA8  EC 00 00 72 */	fmuls f0, f0, f1
/* 805C7CAC  FC 00 00 1E */	fctiwz f0, f0
/* 805C7CB0  D8 01 00 08 */	stfd f0, 8(r1)
/* 805C7CB4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805C7CB8  98 1F 10 54 */	stb r0, 0x1054(r31)
/* 805C7CBC  4B AD 32 61 */	bl func_8009AF1C
/* 805C7CC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C7CC4  7C 08 03 A6 */	mtlr r0
/* 805C7CC8  38 21 00 20 */	addi r1, r1, 0x20
/* 805C7CCC  4E 80 00 20 */	blr 
