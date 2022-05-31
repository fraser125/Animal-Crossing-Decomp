lbl_805B08E4:
/* 805B08E4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805B08E8  7C 08 02 A6 */	mflr r0
/* 805B08EC  90 01 00 74 */	stw r0, 0x74(r1)
/* 805B08F0  39 61 00 70 */	addi r11, r1, 0x70
/* 805B08F4  4B AE A5 C1 */	bl func_8009AEB4
/* 805B08F8  2C 05 00 07 */	cmpwi r5, 7
/* 805B08FC  83 83 00 00 */	lwz r28, 0(r3)
/* 805B0900  7D 15 43 78 */	mr r21, r8
/* 805B0904  40 82 04 58 */	bne lbl_805B0D5C
/* 805B0908  7F 83 E3 78 */	mr r3, r28
/* 805B090C  4B E5 CA C9 */	bl _Matrix_to_Mtx_new
/* 805B0910  7C 7E 1B 79 */	or. r30, r3, r3
/* 805B0914  41 82 04 48 */	beq lbl_805B0D5C
/* 805B0918  3C 60 80 65 */	lis r3, data_8064A78C@ha /* 0x8064A78C@ha */
/* 805B091C  C0 55 02 CC */	lfs f2, 0x2cc(r21)
/* 805B0920  C0 03 A7 8C */	lfs f0, data_8064A78C@l(r3)  /* 0x8064A78C@l */
/* 805B0924  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805B0928  40 81 00 38 */	ble lbl_805B0960
/* 805B092C  3C 60 80 65 */	lis r3, lit_878@ha /* 0x8064A7B4@ha */
/* 805B0930  3C 80 80 65 */	lis r4, lit_710@ha /* 0x8064A7A4@ha */
/* 805B0934  C0 03 A7 B4 */	lfs f0, lit_878@l(r3)  /* 0x8064A7B4@l */
/* 805B0938  3B 00 00 FF */	li r24, 0xff
/* 805B093C  C0 24 A7 A4 */	lfs f1, lit_710@l(r4)  /* 0x8064A7A4@l */
/* 805B0940  3B A0 00 FF */	li r29, 0xff
/* 805B0944  EC 00 00 B2 */	fmuls f0, f0, f2
/* 805B0948  3A E0 00 96 */	li r23, 0x96
/* 805B094C  EC 01 00 2A */	fadds f0, f1, f0
/* 805B0950  FC 00 00 1E */	fctiwz f0, f0
/* 805B0954  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 805B0958  83 21 00 3C */	lwz r25, 0x3c(r1)
/* 805B095C  48 00 00 14 */	b lbl_805B0970
lbl_805B0960:
/* 805B0960  3B 20 00 00 */	li r25, 0
/* 805B0964  3B 00 00 00 */	li r24, 0
/* 805B0968  3B A0 00 00 */	li r29, 0
/* 805B096C  3A E0 00 00 */	li r23, 0
lbl_805B0970:
/* 805B0970  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B0974  80 15 02 AC */	lwz r0, 0x2ac(r21)
/* 805B0978  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805B097C  3C 83 00 02 */	addis r4, r3, 2
/* 805B0980  7C 03 07 34 */	extsh r3, r0
/* 805B0984  80 84 60 98 */	lwz r4, 0x6098(r4)
/* 805B0988  81 84 00 A4 */	lwz r12, 0xa4(r4)
/* 805B098C  7D 89 03 A6 */	mtctr r12
/* 805B0990  4E 80 04 21 */	bctrl 
/* 805B0994  80 15 02 D8 */	lwz r0, 0x2d8(r21)
/* 805B0998  7C 7F 1B 78 */	mr r31, r3
/* 805B099C  83 55 02 A8 */	lwz r26, 0x2a8(r21)
/* 805B09A0  7F 83 E3 78 */	mr r3, r28
/* 805B09A4  20 00 00 03 */	subfic r0, r0, 3
/* 805B09A8  7C 00 00 34 */	cntlzw r0, r0
/* 805B09AC  54 1B D9 7E */	srwi r27, r0, 5
/* 805B09B0  4B E3 47 81 */	bl _texture_z_light_fog_prim_shadow
/* 805B09B4  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 805B09B8  82 DC 03 00 */	lwz r22, 0x300(r28)
/* 805B09BC  38 63 00 20 */	addi r3, r3, 0x0020 /* 0xDB060020@l */
/* 805B09C0  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 805B09C4  90 76 00 00 */	stw r3, 0(r22)
/* 805B09C8  57 BD 82 1E */	rlwinm r29, r29, 0x10, 8, 0xf
/* 805B09CC  53 1D C0 0E */	rlwimi r29, r24, 0x18, 0, 7
/* 805B09D0  64 04 FA 00 */	oris r4, r0, 0xfa00
/* 805B09D4  93 F6 00 04 */	stw r31, 4(r22)
/* 805B09D8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805B09DC  52 FD 44 2E */	rlwimi r29, r23, 8, 0x10, 0x17
/* 805B09E0  28 15 00 00 */	cmplwi r21, 0
/* 805B09E4  90 96 00 08 */	stw r4, 8(r22)
/* 805B09E8  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805B09EC  93 B6 00 0C */	stw r29, 0xc(r22)
/* 805B09F0  90 16 00 10 */	stw r0, 0x10(r22)
/* 805B09F4  93 D6 00 14 */	stw r30, 0x14(r22)
/* 805B09F8  3A D6 00 18 */	addi r22, r22, 0x18
/* 805B09FC  41 82 03 5C */	beq lbl_805B0D58
/* 805B0A00  3C 80 80 6C */	lis r4, window_light_offset_table@ha /* 0x806C54D4@ha */
/* 805B0A04  3C 60 80 65 */	lis r3, data_8064A78C@ha /* 0x8064A78C@ha */
/* 805B0A08  38 C4 54 D4 */	addi r6, r4, window_light_offset_table@l /* 0x806C54D4@l */
/* 805B0A0C  C0 35 00 28 */	lfs f1, 0x28(r21)
/* 805B0A10  C0 06 00 00 */	lfs f0, 0(r6)
/* 805B0A14  38 A3 A7 8C */	addi r5, r3, data_8064A78C@l /* 0x8064A78C@l */
/* 805B0A18  C0 75 00 2C */	lfs f3, 0x2c(r21)
/* 805B0A1C  38 81 00 14 */	addi r4, r1, 0x14
/* 805B0A20  C0 46 00 04 */	lfs f2, 4(r6)
/* 805B0A24  EC 81 00 2A */	fadds f4, f1, f0
/* 805B0A28  C0 35 00 30 */	lfs f1, 0x30(r21)
/* 805B0A2C  38 60 00 00 */	li r3, 0
/* 805B0A30  C0 06 00 08 */	lfs f0, 8(r6)
/* 805B0A34  EC 43 10 2A */	fadds f2, f3, f2
/* 805B0A38  D0 81 00 20 */	stfs f4, 0x20(r1)
/* 805B0A3C  EC 01 00 2A */	fadds f0, f1, f0
/* 805B0A40  C0 25 00 00 */	lfs f1, 0(r5)
/* 805B0A44  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 805B0A48  80 C1 00 20 */	lwz r6, 0x20(r1)
/* 805B0A4C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805B0A50  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 805B0A54  80 01 00 28 */	lwz r0, 0x28(r1)
/* 805B0A58  90 C1 00 14 */	stw r6, 0x14(r1)
/* 805B0A5C  90 A1 00 18 */	stw r5, 0x18(r1)
/* 805B0A60  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805B0A64  4B DD EC 55 */	bl func_8038F6B8
/* 805B0A68  3C 80 80 6C */	lis r4, window_light_offset_table@ha /* 0x806C54D4@ha */
/* 805B0A6C  3C 60 80 65 */	lis r3, data_8064A78C@ha /* 0x8064A78C@ha */
/* 805B0A70  38 C4 54 D4 */	addi r6, r4, window_light_offset_table@l /* 0x806C54D4@l */
/* 805B0A74  C0 35 00 28 */	lfs f1, 0x28(r21)
/* 805B0A78  C0 06 00 0C */	lfs f0, 0xc(r6)
/* 805B0A7C  38 A3 A7 8C */	addi r5, r3, data_8064A78C@l /* 0x8064A78C@l */
/* 805B0A80  C0 75 00 2C */	lfs f3, 0x2c(r21)
/* 805B0A84  38 81 00 08 */	addi r4, r1, 8
/* 805B0A88  C0 46 00 10 */	lfs f2, 0x10(r6)
/* 805B0A8C  EC 81 00 2A */	fadds f4, f1, f0
/* 805B0A90  C0 35 00 30 */	lfs f1, 0x30(r21)
/* 805B0A94  38 60 00 00 */	li r3, 0
/* 805B0A98  C0 06 00 14 */	lfs f0, 0x14(r6)
/* 805B0A9C  EC 43 10 2A */	fadds f2, f3, f2
/* 805B0AA0  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 805B0AA4  EC 01 00 2A */	fadds f0, f1, f0
/* 805B0AA8  C0 25 00 00 */	lfs f1, 0(r5)
/* 805B0AAC  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 805B0AB0  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 805B0AB4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805B0AB8  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 805B0ABC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805B0AC0  90 C1 00 08 */	stw r6, 8(r1)
/* 805B0AC4  90 A1 00 0C */	stw r5, 0xc(r1)
/* 805B0AC8  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B0ACC  4B DD EB ED */	bl func_8038F6B8
/* 805B0AD0  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 805B0AD4  3C 80 00 21 */	lis r4, 0x0021 /* 0x00210455@ha */
/* 805B0AD8  38 C3 61 38 */	addi r6, r3, debug_mode@l /* 0x81166138@l */
/* 805B0ADC  3C A0 D9 00 */	lis r5, 0xd900
/* 805B0AE0  80 66 00 00 */	lwz r3, 0(r6)
/* 805B0AE4  38 04 04 55 */	addi r0, r4, 0x0455 /* 0x00210455@l */
/* 805B0AE8  A8 63 11 68 */	lha r3, 0x1168(r3)
/* 805B0AEC  7C 63 CA 14 */	add r3, r3, r25
/* 805B0AF0  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 805B0AF4  64 63 FA 00 */	oris r3, r3, 0xfa00
/* 805B0AF8  90 76 00 00 */	stw r3, 0(r22)
/* 805B0AFC  93 B6 00 04 */	stw r29, 4(r22)
/* 805B0B00  90 B6 00 08 */	stw r5, 8(r22)
/* 805B0B04  90 16 00 0C */	stw r0, 0xc(r22)
/* 805B0B08  3A D6 00 10 */	addi r22, r22, 0x10
/* 805B0B0C  80 66 00 00 */	lwz r3, 0(r6)
/* 805B0B10  A8 63 11 6E */	lha r3, 0x116e(r3)
/* 805B0B14  2C 03 00 05 */	cmpwi r3, 5
/* 805B0B18  40 82 00 18 */	bne lbl_805B0B30
/* 805B0B1C  90 B6 00 00 */	stw r5, 0(r22)
/* 805B0B20  38 04 04 05 */	addi r0, r4, 0x405
/* 805B0B24  90 16 00 04 */	stw r0, 4(r22)
/* 805B0B28  3A D6 00 08 */	addi r22, r22, 8
/* 805B0B2C  48 00 00 6C */	b lbl_805B0B98
lbl_805B0B30:
/* 805B0B30  2C 03 00 01 */	cmpwi r3, 1
/* 805B0B34  40 82 00 18 */	bne lbl_805B0B4C
/* 805B0B38  90 B6 00 00 */	stw r5, 0(r22)
/* 805B0B3C  38 04 04 15 */	addi r0, r4, 0x415
/* 805B0B40  90 16 00 04 */	stw r0, 4(r22)
/* 805B0B44  3A D6 00 08 */	addi r22, r22, 8
/* 805B0B48  48 00 00 50 */	b lbl_805B0B98
lbl_805B0B4C:
/* 805B0B4C  2C 03 00 02 */	cmpwi r3, 2
/* 805B0B50  40 82 00 18 */	bne lbl_805B0B68
/* 805B0B54  90 B6 00 00 */	stw r5, 0(r22)
/* 805B0B58  38 04 04 05 */	addi r0, r4, 0x405
/* 805B0B5C  90 16 00 04 */	stw r0, 4(r22)
/* 805B0B60  3A D6 00 08 */	addi r22, r22, 8
/* 805B0B64  48 00 00 34 */	b lbl_805B0B98
lbl_805B0B68:
/* 805B0B68  2C 03 00 03 */	cmpwi r3, 3
/* 805B0B6C  40 82 00 14 */	bne lbl_805B0B80
/* 805B0B70  90 B6 00 00 */	stw r5, 0(r22)
/* 805B0B74  90 16 00 04 */	stw r0, 4(r22)
/* 805B0B78  3A D6 00 08 */	addi r22, r22, 8
/* 805B0B7C  48 00 00 1C */	b lbl_805B0B98
lbl_805B0B80:
/* 805B0B80  2C 03 00 04 */	cmpwi r3, 4
/* 805B0B84  40 82 00 14 */	bne lbl_805B0B98
/* 805B0B88  90 B6 00 00 */	stw r5, 0(r22)
/* 805B0B8C  38 04 04 45 */	addi r0, r4, 0x445
/* 805B0B90  90 16 00 04 */	stw r0, 4(r22)
/* 805B0B94  3A D6 00 08 */	addi r22, r22, 8
lbl_805B0B98:
/* 805B0B98  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 805B0B9C  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 805B0BA0  80 63 00 00 */	lwz r3, 0(r3)
/* 805B0BA4  A8 03 11 6E */	lha r0, 0x116e(r3)
/* 805B0BA8  2C 00 00 00 */	cmpwi r0, 0
/* 805B0BAC  41 80 00 5C */	blt lbl_805B0C08
/* 805B0BB0  3C 60 80 6C */	lis r3, window_model_table@ha /* 0x806C5484@ha */
/* 805B0BB4  57 46 20 36 */	slwi r6, r26, 4
/* 805B0BB8  38 03 54 84 */	addi r0, r3, window_model_table@l /* 0x806C5484@l */
/* 805B0BBC  57 65 18 38 */	slwi r5, r27, 3
/* 805B0BC0  7C 00 32 14 */	add r0, r0, r6
/* 805B0BC4  7C 60 2A 14 */	add r3, r0, r5
/* 805B0BC8  84 03 00 04 */	lwzu r0, 4(r3)
/* 805B0BCC  28 00 00 00 */	cmplwi r0, 0
/* 805B0BD0  41 82 00 18 */	beq lbl_805B0BE8
/* 805B0BD4  3C 00 DE 00 */	lis r0, 0xde00
/* 805B0BD8  90 16 00 00 */	stw r0, 0(r22)
/* 805B0BDC  80 03 00 00 */	lwz r0, 0(r3)
/* 805B0BE0  90 16 00 04 */	stw r0, 4(r22)
/* 805B0BE4  3A D6 00 08 */	addi r22, r22, 8
lbl_805B0BE8:
/* 805B0BE8  3C 80 DE 00 */	lis r4, 0xde00
/* 805B0BEC  3C 60 80 6C */	lis r3, window_model_table@ha /* 0x806C5484@ha */
/* 805B0BF0  38 03 54 84 */	addi r0, r3, window_model_table@l /* 0x806C5484@l */
/* 805B0BF4  90 96 00 00 */	stw r4, 0(r22)
/* 805B0BF8  7C 60 32 14 */	add r3, r0, r6
/* 805B0BFC  7C 03 28 2E */	lwzx r0, r3, r5
/* 805B0C00  90 16 00 04 */	stw r0, 4(r22)
/* 805B0C04  3A D6 00 08 */	addi r22, r22, 8
lbl_805B0C08:
/* 805B0C08  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 805B0C0C  3C 80 00 21 */	lis r4, 0x0021 /* 0x00210445@ha */
/* 805B0C10  38 C3 61 38 */	addi r6, r3, debug_mode@l /* 0x81166138@l */
/* 805B0C14  3C A0 D9 00 */	lis r5, 0xd900
/* 805B0C18  80 66 00 00 */	lwz r3, 0(r6)
/* 805B0C1C  38 04 04 45 */	addi r0, r4, 0x0445 /* 0x00210445@l */
/* 805B0C20  A8 63 11 6A */	lha r3, 0x116a(r3)
/* 805B0C24  7C 63 CA 14 */	add r3, r3, r25
/* 805B0C28  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 805B0C2C  64 63 FA 00 */	oris r3, r3, 0xfa00
/* 805B0C30  90 76 00 00 */	stw r3, 0(r22)
/* 805B0C34  93 B6 00 04 */	stw r29, 4(r22)
/* 805B0C38  90 B6 00 08 */	stw r5, 8(r22)
/* 805B0C3C  90 16 00 0C */	stw r0, 0xc(r22)
/* 805B0C40  3A D6 00 10 */	addi r22, r22, 0x10
/* 805B0C44  80 66 00 00 */	lwz r3, 0(r6)
/* 805B0C48  A8 63 11 72 */	lha r3, 0x1172(r3)
/* 805B0C4C  2C 03 00 05 */	cmpwi r3, 5
/* 805B0C50  40 82 00 18 */	bne lbl_805B0C68
/* 805B0C54  90 B6 00 00 */	stw r5, 0(r22)
/* 805B0C58  38 04 04 05 */	addi r0, r4, 0x405
/* 805B0C5C  90 16 00 04 */	stw r0, 4(r22)
/* 805B0C60  3A D6 00 08 */	addi r22, r22, 8
/* 805B0C64  48 00 00 6C */	b lbl_805B0CD0
lbl_805B0C68:
/* 805B0C68  2C 03 00 01 */	cmpwi r3, 1
/* 805B0C6C  40 82 00 18 */	bne lbl_805B0C84
/* 805B0C70  90 B6 00 00 */	stw r5, 0(r22)
/* 805B0C74  38 04 04 15 */	addi r0, r4, 0x415
/* 805B0C78  90 16 00 04 */	stw r0, 4(r22)
/* 805B0C7C  3A D6 00 08 */	addi r22, r22, 8
/* 805B0C80  48 00 00 50 */	b lbl_805B0CD0
lbl_805B0C84:
/* 805B0C84  2C 03 00 02 */	cmpwi r3, 2
/* 805B0C88  40 82 00 18 */	bne lbl_805B0CA0
/* 805B0C8C  90 B6 00 00 */	stw r5, 0(r22)
/* 805B0C90  38 04 04 05 */	addi r0, r4, 0x405
/* 805B0C94  90 16 00 04 */	stw r0, 4(r22)
/* 805B0C98  3A D6 00 08 */	addi r22, r22, 8
/* 805B0C9C  48 00 00 34 */	b lbl_805B0CD0
lbl_805B0CA0:
/* 805B0CA0  2C 03 00 03 */	cmpwi r3, 3
/* 805B0CA4  40 82 00 18 */	bne lbl_805B0CBC
/* 805B0CA8  90 B6 00 00 */	stw r5, 0(r22)
/* 805B0CAC  38 04 04 55 */	addi r0, r4, 0x455
/* 805B0CB0  90 16 00 04 */	stw r0, 4(r22)
/* 805B0CB4  3A D6 00 08 */	addi r22, r22, 8
/* 805B0CB8  48 00 00 18 */	b lbl_805B0CD0
lbl_805B0CBC:
/* 805B0CBC  2C 03 00 04 */	cmpwi r3, 4
/* 805B0CC0  40 82 00 10 */	bne lbl_805B0CD0
/* 805B0CC4  90 B6 00 00 */	stw r5, 0(r22)
/* 805B0CC8  90 16 00 04 */	stw r0, 4(r22)
/* 805B0CCC  3A D6 00 08 */	addi r22, r22, 8
lbl_805B0CD0:
/* 805B0CD0  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 805B0CD4  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 805B0CD8  80 63 00 00 */	lwz r3, 0(r3)
/* 805B0CDC  A8 03 11 72 */	lha r0, 0x1172(r3)
/* 805B0CE0  2C 00 00 00 */	cmpwi r0, 0
/* 805B0CE4  41 80 00 5C */	blt lbl_805B0D40
/* 805B0CE8  3C 60 80 6C */	lis r3, window_model_table@ha /* 0x806C5484@ha */
/* 805B0CEC  57 46 20 36 */	slwi r6, r26, 4
/* 805B0CF0  38 03 54 84 */	addi r0, r3, window_model_table@l /* 0x806C5484@l */
/* 805B0CF4  57 65 18 38 */	slwi r5, r27, 3
/* 805B0CF8  7C 00 32 14 */	add r0, r0, r6
/* 805B0CFC  7C 60 2A 14 */	add r3, r0, r5
/* 805B0D00  84 03 00 04 */	lwzu r0, 4(r3)
/* 805B0D04  28 00 00 00 */	cmplwi r0, 0
/* 805B0D08  41 82 00 18 */	beq lbl_805B0D20
/* 805B0D0C  3C 00 DE 00 */	lis r0, 0xde00
/* 805B0D10  90 16 00 00 */	stw r0, 0(r22)
/* 805B0D14  80 03 00 00 */	lwz r0, 0(r3)
/* 805B0D18  90 16 00 04 */	stw r0, 4(r22)
/* 805B0D1C  3A D6 00 08 */	addi r22, r22, 8
lbl_805B0D20:
/* 805B0D20  3C 80 DE 00 */	lis r4, 0xde00
/* 805B0D24  3C 60 80 6C */	lis r3, window_model_table@ha /* 0x806C5484@ha */
/* 805B0D28  38 03 54 84 */	addi r0, r3, window_model_table@l /* 0x806C5484@l */
/* 805B0D2C  90 96 00 00 */	stw r4, 0(r22)
/* 805B0D30  7C 60 32 14 */	add r3, r0, r6
/* 805B0D34  7C 03 28 2E */	lwzx r0, r3, r5
/* 805B0D38  90 16 00 04 */	stw r0, 4(r22)
/* 805B0D3C  3A D6 00 08 */	addi r22, r22, 8
lbl_805B0D40:
/* 805B0D40  3C 60 DA 00 */	lis r3, 0xDA00 /* 0xD9FFFFAF@ha */
/* 805B0D44  38 00 00 00 */	li r0, 0
/* 805B0D48  38 63 FF AF */	addi r3, r3, 0xFFAF /* 0xD9FFFFAF@l */
/* 805B0D4C  90 76 00 00 */	stw r3, 0(r22)
/* 805B0D50  90 16 00 04 */	stw r0, 4(r22)
/* 805B0D54  3A D6 00 08 */	addi r22, r22, 8
lbl_805B0D58:
/* 805B0D58  92 DC 03 00 */	stw r22, 0x300(r28)
lbl_805B0D5C:
/* 805B0D5C  38 60 00 01 */	li r3, 1
/* 805B0D60  39 61 00 70 */	addi r11, r1, 0x70
/* 805B0D64  4B AE A1 9D */	bl func_8009AF00
/* 805B0D68  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805B0D6C  7C 08 03 A6 */	mtlr r0
/* 805B0D70  38 21 00 70 */	addi r1, r1, 0x70
/* 805B0D74  4E 80 00 20 */	blr 
