lbl_803F3A8C:
/* 803F3A8C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803F3A90  7C 08 02 A6 */	mflr r0
/* 803F3A94  90 01 00 44 */	stw r0, 0x44(r1)
/* 803F3A98  39 61 00 40 */	addi r11, r1, 0x40
/* 803F3A9C  4B CA 74 35 */	bl func_8009AED0
/* 803F3AA0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F3AA4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F3AA8  3F E3 00 02 */	addis r31, r3, 2
/* 803F3AAC  8B DF 61 23 */	lbz r30, 0x6123(r31)
/* 803F3AB0  4B FF FD 01 */	bl mTM_TimestepControl
/* 803F3AB4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F3AB8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F3ABC  3C 63 00 02 */	addis r3, r3, 2
/* 803F3AC0  80 03 61 30 */	lwz r0, 0x6130(r3)
/* 803F3AC4  2C 00 00 01 */	cmpwi r0, 1
/* 803F3AC8  40 82 00 74 */	bne lbl_803F3B3C
/* 803F3ACC  88 03 61 2F */	lbz r0, 0x612f(r3)
/* 803F3AD0  28 00 00 00 */	cmplwi r0, 0
/* 803F3AD4  40 82 00 68 */	bne lbl_803F3B3C
/* 803F3AD8  38 63 61 20 */	addi r3, r3, 0x6120
/* 803F3ADC  48 01 2C 41 */	bl lbRTC_GetTime
/* 803F3AE0  3C 60 81 1D */	lis r3, data_811CB7A8@ha /* 0x811CB7A8@ha */
/* 803F3AE4  80 03 B7 A8 */	lwz r0, data_811CB7A8@l(r3)  /* 0x811CB7A8@l */
/* 803F3AE8  2C 00 00 00 */	cmpwi r0, 0
/* 803F3AEC  41 82 00 34 */	beq lbl_803F3B20
/* 803F3AF0  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803F3AF4  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803F3AF8  80 63 00 00 */	lwz r3, 0(r3)
/* 803F3AFC  A0 03 00 38 */	lhz r0, 0x38(r3)
/* 803F3B00  54 03 04 20 */	rlwinm r3, r0, 0, 0x10, 0x10
/* 803F3B04  3C 03 00 00 */	addis r0, r3, 0
/* 803F3B08  28 00 80 00 */	cmplwi r0, 0x8000
/* 803F3B0C  40 82 00 14 */	bne lbl_803F3B20
/* 803F3B10  3C 60 81 17 */	lis r3, data_81171548@ha /* 0x81171548@ha */
/* 803F3B14  84 03 15 48 */	lwzu r0, data_81171548@l(r3)  /* 0x81171548@l */
/* 803F3B18  68 00 00 01 */	xori r0, r0, 1
/* 803F3B1C  90 03 00 00 */	stw r0, 0(r3)
lbl_803F3B20:
/* 803F3B20  3C 60 81 17 */	lis r3, data_81171548@ha /* 0x81171548@ha */
/* 803F3B24  80 03 15 48 */	lwz r0, data_81171548@l(r3)  /* 0x81171548@l */
/* 803F3B28  2C 00 00 01 */	cmpwi r0, 1
/* 803F3B2C  40 82 00 E8 */	bne lbl_803F3C14
/* 803F3B30  38 60 00 00 */	li r3, 0
/* 803F3B34  4B FF FA 1D */	bl mTM_disp_time
/* 803F3B38  48 00 00 DC */	b lbl_803F3C14
lbl_803F3B3C:
/* 803F3B3C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F3B40  38 00 00 3C */	li r0, 0x3c
/* 803F3B44  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F3B48  38 80 00 00 */	li r4, 0
/* 803F3B4C  3F 83 00 02 */	addis r28, r3, 2
/* 803F3B50  8B BC 61 2D */	lbz r29, 0x612d(r28)
/* 803F3B54  80 7C 61 34 */	lwz r3, 0x6134(r28)
/* 803F3B58  7F BD 1A 14 */	add r29, r29, r3
/* 803F3B5C  7C 1D 03 96 */	divwu r0, r29, r0
/* 803F3B60  7C 09 03 A6 */	mtctr r0
/* 803F3B64  2C 1D 00 3C */	cmpwi r29, 0x3c
/* 803F3B68  41 80 00 10 */	blt lbl_803F3B78
lbl_803F3B6C:
/* 803F3B6C  3B BD FF C4 */	addi r29, r29, -60
/* 803F3B70  38 84 00 01 */	addi r4, r4, 1
/* 803F3B74  42 00 FF F8 */	bdnz lbl_803F3B6C
lbl_803F3B78:
/* 803F3B78  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F3B7C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F3B80  3C 63 00 02 */	addis r3, r3, 2
/* 803F3B84  38 63 61 20 */	addi r3, r3, 0x6120
/* 803F3B88  48 01 32 C5 */	bl lbRTC_Add_ss
/* 803F3B8C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F3B90  88 BF 61 23 */	lbz r5, 0x6123(r31)
/* 803F3B94  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F3B98  3C 83 00 02 */	addis r4, r3, 2
/* 803F3B9C  A0 64 61 26 */	lhz r3, 0x6126(r4)
/* 803F3BA0  88 84 61 25 */	lbz r4, 0x6125(r4)
/* 803F3BA4  48 01 36 25 */	bl lbRTC_Week
/* 803F3BA8  3C 80 81 1D */	lis r4, data_811CB7A8@ha /* 0x811CB7A8@ha */
/* 803F3BAC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803F3BB0  80 04 B7 A8 */	lwz r0, data_811CB7A8@l(r4)  /* 0x811CB7A8@l */
/* 803F3BB4  38 85 85 38 */	addi r4, r5, common_data@l /* 0x81138538@l */
/* 803F3BB8  3C 84 00 02 */	addis r4, r4, 2
/* 803F3BBC  9B BC 61 2D */	stb r29, 0x612d(r28)
/* 803F3BC0  2C 00 00 00 */	cmpwi r0, 0
/* 803F3BC4  98 64 61 24 */	stb r3, 0x6124(r4)
/* 803F3BC8  41 82 00 34 */	beq lbl_803F3BFC
/* 803F3BCC  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803F3BD0  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803F3BD4  80 63 00 00 */	lwz r3, 0(r3)
/* 803F3BD8  A0 03 00 38 */	lhz r0, 0x38(r3)
/* 803F3BDC  54 03 04 20 */	rlwinm r3, r0, 0, 0x10, 0x10
/* 803F3BE0  3C 03 00 00 */	addis r0, r3, 0
/* 803F3BE4  28 00 80 00 */	cmplwi r0, 0x8000
/* 803F3BE8  40 82 00 14 */	bne lbl_803F3BFC
/* 803F3BEC  3C 60 81 17 */	lis r3, data_81171548@ha /* 0x81171548@ha */
/* 803F3BF0  84 03 15 48 */	lwzu r0, data_81171548@l(r3)  /* 0x81171548@l */
/* 803F3BF4  68 00 00 01 */	xori r0, r0, 1
/* 803F3BF8  90 03 00 00 */	stw r0, 0(r3)
lbl_803F3BFC:
/* 803F3BFC  3C 60 81 17 */	lis r3, data_81171548@ha /* 0x81171548@ha */
/* 803F3C00  80 03 15 48 */	lwz r0, data_81171548@l(r3)  /* 0x81171548@l */
/* 803F3C04  2C 00 00 01 */	cmpwi r0, 1
/* 803F3C08  40 82 00 0C */	bne lbl_803F3C14
/* 803F3C0C  7F A3 EB 78 */	mr r3, r29
/* 803F3C10  4B FF F9 41 */	bl mTM_disp_time
lbl_803F3C14:
/* 803F3C14  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F3C18  88 1F 61 23 */	lbz r0, 0x6123(r31)
/* 803F3C1C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F3C20  3F 83 00 02 */	addis r28, r3, 2
/* 803F3C24  7C 00 F0 40 */	cmplw r0, r30
/* 803F3C28  88 7C 61 21 */	lbz r3, 0x6121(r28)
/* 803F3C2C  88 1C 61 22 */	lbz r0, 0x6122(r28)
/* 803F3C30  1C 63 00 3C */	mulli r3, r3, 0x3c
/* 803F3C34  88 9C 61 20 */	lbz r4, 0x6120(r28)
/* 803F3C38  1C 00 0E 10 */	mulli r0, r0, 0xe10
/* 803F3C3C  7C 03 02 14 */	add r0, r3, r0
/* 803F3C40  7C 04 02 14 */	add r0, r4, r0
/* 803F3C44  90 1C 61 1C */	stw r0, 0x611c(r28)
/* 803F3C48  41 82 00 08 */	beq lbl_803F3C50
/* 803F3C4C  4B FC 24 85 */	bl Kabu_manager
lbl_803F3C50:
/* 803F3C50  88 9C 61 21 */	lbz r4, 0x6121(r28)
/* 803F3C54  3C A0 43 30 */	lis r5, 0x4330 /* 0x43300000@ha */
/* 803F3C58  88 1C 61 22 */	lbz r0, 0x6122(r28)
/* 803F3C5C  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806432E4@ha */
/* 803F3C60  1C C4 00 3C */	mulli r6, r4, 0x3c
/* 803F3C64  88 FC 61 20 */	lbz r7, 0x6120(r28)
/* 803F3C68  C8 83 32 E4 */	lfd f4, lit_505@l(r3)  /* 0x806432E4@l */
/* 803F3C6C  3C 80 80 64 */	lis r4, lit_502@ha /* 0x806432DC@ha */
/* 803F3C70  C0 44 32 DC */	lfs f2, lit_502@l(r4)  /* 0x806432DC@l */
/* 803F3C74  3C 60 80 64 */	lis r3, lit_503@ha /* 0x806432E0@ha */
/* 803F3C78  7C E7 32 14 */	add r7, r7, r6
/* 803F3C7C  90 A1 00 08 */	stw r5, 8(r1)
/* 803F3C80  1C 00 0E 10 */	mulli r0, r0, 0xe10
/* 803F3C84  3C 80 80 64 */	lis r4, lit_501@ha /* 0x806432D8@ha */
/* 803F3C88  6C E6 80 00 */	xoris r6, r7, 0x8000
/* 803F3C8C  90 A1 00 18 */	stw r5, 0x18(r1)
/* 803F3C90  38 A4 32 D8 */	addi r5, r4, lit_501@l /* 0x806432D8@l */
/* 803F3C94  7C 07 02 14 */	add r0, r7, r0
/* 803F3C98  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803F3C9C  90 C1 00 0C */	stw r6, 0xc(r1)
/* 803F3CA0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803F3CA4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 803F3CA8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803F3CAC  C8 01 00 08 */	lfd f0, 8(r1)
/* 803F3CB0  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 803F3CB4  EC 60 20 28 */	fsubs f3, f0, f4
/* 803F3CB8  C0 03 32 E0 */	lfs f0, lit_503@l(r3)  /* 0x806432E0@l */
/* 803F3CBC  EC 21 20 28 */	fsubs f1, f1, f4
/* 803F3CC0  C0 85 00 00 */	lfs f4, 0x0000(r5)  /* 0x43300000@l */
/* 803F3CC4  3C 64 00 02 */	addis r3, r4, 2
/* 803F3CC8  EC 43 10 24 */	fdivs f2, f3, f2
/* 803F3CCC  EC 01 00 24 */	fdivs f0, f1, f0
/* 803F3CD0  EC 24 00 B2 */	fmuls f1, f4, f2
/* 803F3CD4  EC 04 00 32 */	fmuls f0, f4, f0
/* 803F3CD8  FC 20 08 1E */	fctiwz f1, f1
/* 803F3CDC  FC 00 00 1E */	fctiwz f0, f0
/* 803F3CE0  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 803F3CE4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 803F3CE8  80 81 00 14 */	lwz r4, 0x14(r1)
/* 803F3CEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F3CF0  B0 83 61 28 */	sth r4, 0x6128(r3)
/* 803F3CF4  B0 03 61 2A */	sth r0, 0x612a(r3)
/* 803F3CF8  4B FF F7 ED */	bl mTM_renewal_renew_time
/* 803F3CFC  39 61 00 40 */	addi r11, r1, 0x40
/* 803F3D00  4B CA 72 1D */	bl func_8009AF1C
/* 803F3D04  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803F3D08  7C 08 03 A6 */	mtlr r0
/* 803F3D0C  38 21 00 40 */	addi r1, r1, 0x40
/* 803F3D10  4E 80 00 20 */	blr 
