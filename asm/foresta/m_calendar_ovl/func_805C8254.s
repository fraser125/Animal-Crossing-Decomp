lbl_805C8254:
/* 805C8254  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 805C8258  7C 08 02 A6 */	mflr r0
/* 805C825C  90 01 00 94 */	stw r0, 0x94(r1)
/* 805C8260  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 805C8264  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 805C8268  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 805C826C  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 805C8270  39 61 00 70 */	addi r11, r1, 0x70
/* 805C8274  4B AD 2C 25 */	bl __save_gpr
/* 805C8278  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805C827C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805C8280  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805C8284  3C E0 80 6D */	lis r7, data_806C8780@ha /* 0x806C8780@ha */
/* 805C8288  82 66 09 EC */	lwz r19, 0x9ec(r6)
/* 805C828C  FF C0 08 90 */	fmr f30, f1
/* 805C8290  FF E0 10 90 */	fmr f31, f2
/* 805C8294  82 84 00 00 */	lwz r20, 0(r4)
/* 805C8298  88 13 10 55 */	lbz r0, 0x1055(r19)
/* 805C829C  7C B6 2B 78 */	mr r22, r5
/* 805C82A0  3B 27 87 80 */	addi r25, r7, data_806C8780@l /* 0x806C8780@l */
/* 805C82A4  28 00 00 05 */	cmplwi r0, 5
/* 805C82A8  3E A3 00 02 */	addis r21, r3, 2
/* 805C82AC  3A 40 00 25 */	li r18, 0x25
/* 805C82B0  41 80 00 08 */	blt lbl_805C82B8
/* 805C82B4  8A 53 10 57 */	lbz r18, 0x1057(r19)
lbl_805C82B8:
/* 805C82B8  2C 16 00 00 */	cmpwi r22, 0
/* 805C82BC  41 80 0A 60 */	blt lbl_805C8D1C
/* 805C82C0  2C 16 00 24 */	cmpwi r22, 0x24
/* 805C82C4  41 80 00 08 */	blt lbl_805C82CC
/* 805C82C8  48 00 0A 54 */	b lbl_805C8D1C
lbl_805C82CC:
/* 805C82CC  38 00 00 0C */	li r0, 0xc
/* 805C82D0  3C 80 80 65 */	lis r4, lit_1174@ha /* 0x8064AE78@ha */
/* 805C82D4  7D F6 03 D6 */	divw r15, r22, r0
/* 805C82D8  C0 24 AE 78 */	lfs f1, lit_1174@l(r4)  /* 0x8064AE78@l */
/* 805C82DC  3C 60 80 65 */	lis r3, lit_928@ha /* 0x8064AE64@ha */
/* 805C82E0  C0 63 AE 64 */	lfs f3, lit_928@l(r3)  /* 0x8064AE64@l */
/* 805C82E4  FC 40 08 90 */	fmr f2, f1
/* 805C82E8  38 60 00 00 */	li r3, 0
/* 805C82EC  4B E4 41 01 */	bl Matrix_scale
/* 805C82F0  3C 60 80 65 */	lis r3, lit_1175@ha /* 0x8064AE7C@ha */
/* 805C82F4  FC 20 F0 90 */	fmr f1, f30
/* 805C82F8  C0 63 AE 7C */	lfs f3, lit_1175@l(r3)  /* 0x8064AE7C@l */
/* 805C82FC  FC 40 F8 90 */	fmr f2, f31
/* 805C8300  38 60 00 01 */	li r3, 1
/* 805C8304  4B E4 3F FD */	bl Matrix_translate
/* 805C8308  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805C830C  82 14 02 D0 */	lwz r16, 0x2d0(r20)
/* 805C8310  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805C8314  7E 83 A3 78 */	mr r3, r20
/* 805C8318  90 10 00 00 */	stw r0, 0(r16)
/* 805C831C  4B E4 50 B9 */	bl _Matrix_to_Mtx_new
/* 805C8320  38 C0 00 0C */	li r6, 0xc
/* 805C8324  3D 20 D2 F1 */	lis r9, 0xD2F1 /* 0xD2F0F500@ha */
/* 805C8328  7C B6 33 D6 */	divw r5, r22, r6
/* 805C832C  90 70 00 04 */	stw r3, 4(r16)
/* 805C8330  3C 00 DE 00 */	lis r0, 0xde00
/* 805C8334  3D 00 80 B1 */	lis r8, needlework_before_model@ha /* 0x80B0F400@ha */
/* 805C8338  90 10 00 08 */	stw r0, 8(r16)
/* 805C833C  3C E0 F0 8F */	lis r7, 0xF08F /* 0xF08F4010@ha */
/* 805C8340  7C 65 31 D6 */	mullw r3, r5, r6
/* 805C8344  38 A8 F4 00 */	addi r5, r8, needlework_before_model@l /* 0x80B0F400@l */
/* 805C8348  90 B0 00 0C */	stw r5, 0xc(r16)
/* 805C834C  3D 00 80 A3 */	lis r8, cal_win_tuki_model@ha /* 0x80A2F360@ha */
/* 805C8350  38 A7 40 10 */	addi r5, r7, 0x4010 /* 0xF08F4010@l */
/* 805C8354  3C E0 80 A3 */	lis r7, cal_win_shita_model@ha /* 0x80A2F420@ha */
/* 805C8358  7C 63 B0 50 */	subf r3, r3, r22
/* 805C835C  90 B0 00 10 */	stw r5, 0x10(r16)
/* 805C8360  54 6E 10 3A */	slwi r14, r3, 2
/* 805C8364  3C C0 80 A3 */	lis r6, cal_win_futi_model@ha /* 0x80A2F458@ha */
/* 805C8368  38 79 00 8C */	addi r3, r25, 0x8c
/* 805C836C  3C 80 FD 44 */	lis r4, 0xFD44 /* 0xFD441C1F@ha */
/* 805C8370  7C A3 70 2E */	lwzx r5, r3, r14
/* 805C8374  38 64 1C 1F */	addi r3, r4, 0x1C1F /* 0xFD441C1F@l */
/* 805C8378  3C 80 80 A3 */	lis r4, cal_win_doyouT_model@ha /* 0x80A2F660@ha */
/* 805C837C  39 59 00 BC */	addi r10, r25, 0xbc
/* 805C8380  90 B0 00 14 */	stw r5, 0x14(r16)
/* 805C8384  3C A0 80 A3 */	lis r5, cal_win_nitiyouT_model@ha /* 0x80A2F6B0@ha */
/* 805C8388  39 29 F5 00 */	addi r9, r9, 0xF500 /* 0xD2F0F500@l */
/* 805C838C  39 08 F3 60 */	addi r8, r8, cal_win_tuki_model@l /* 0x80A2F360@l */
/* 805C8390  90 70 00 18 */	stw r3, 0x18(r16)
/* 805C8394  3C 60 80 A3 */	lis r3, cal_win_hijituT_model@ha /* 0x80A2F5C0@ha */
/* 805C8398  38 E7 F4 20 */	addi r7, r7, cal_win_shita_model@l /* 0x80A2F420@l */
/* 805C839C  38 C6 F4 58 */	addi r6, r6, cal_win_futi_model@l /* 0x80A2F458@l */
/* 805C83A0  7D 4A 70 2E */	lwzx r10, r10, r14
/* 805C83A4  38 A5 F6 B0 */	addi r5, r5, cal_win_nitiyouT_model@l /* 0x80A2F6B0@l */
/* 805C83A8  38 84 F6 60 */	addi r4, r4, cal_win_doyouT_model@l /* 0x80A2F660@l */
/* 805C83AC  38 63 F5 C0 */	addi r3, r3, cal_win_hijituT_model@l /* 0x80A2F5C0@l */
/* 805C83B0  91 50 00 1C */	stw r10, 0x1c(r16)
/* 805C83B4  91 30 00 20 */	stw r9, 0x20(r16)
/* 805C83B8  90 10 00 28 */	stw r0, 0x28(r16)
/* 805C83BC  91 10 00 2C */	stw r8, 0x2c(r16)
/* 805C83C0  90 10 00 30 */	stw r0, 0x30(r16)
/* 805C83C4  90 F0 00 34 */	stw r7, 0x34(r16)
/* 805C83C8  90 10 00 38 */	stw r0, 0x38(r16)
/* 805C83CC  90 D0 00 3C */	stw r6, 0x3c(r16)
/* 805C83D0  90 10 00 40 */	stw r0, 0x40(r16)
/* 805C83D4  90 B0 00 44 */	stw r5, 0x44(r16)
/* 805C83D8  90 10 00 48 */	stw r0, 0x48(r16)
/* 805C83DC  90 90 00 4C */	stw r4, 0x4c(r16)
/* 805C83E0  90 10 00 50 */	stw r0, 0x50(r16)
/* 805C83E4  90 70 00 54 */	stw r3, 0x54(r16)
/* 805C83E8  3A 10 00 58 */	addi r16, r16, 0x58
/* 805C83EC  88 13 10 55 */	lbz r0, 0x1055(r19)
/* 805C83F0  28 00 00 05 */	cmplwi r0, 5
/* 805C83F4  40 82 00 18 */	bne lbl_805C840C
/* 805C83F8  88 13 10 43 */	lbz r0, 0x1043(r19)
/* 805C83FC  28 00 00 00 */	cmplwi r0, 0
/* 805C8400  41 82 00 0C */	beq lbl_805C840C
/* 805C8404  3A 20 00 01 */	li r17, 1
/* 805C8408  48 00 00 08 */	b lbl_805C8410
lbl_805C840C:
/* 805C840C  3A 20 00 00 */	li r17, 0
lbl_805C8410:
/* 805C8410  2C 11 00 00 */	cmpwi r17, 0
/* 805C8414  40 82 00 68 */	bne lbl_805C847C
/* 805C8418  3C 60 FD 6C */	lis r3, 0xFD6C /* 0xFD6C1C3F@ha */
/* 805C841C  3C E0 D2 F0 */	lis r7, 0xD2F0 /* 0xD2F00A00@ha */
/* 805C8420  38 03 1C 3F */	addi r0, r3, 0x1C3F /* 0xFD6C1C3F@l */
/* 805C8424  3C C0 FA 00 */	lis r6, 0xFA00 /* 0xFA0000FF@ha */
/* 805C8428  90 10 00 00 */	stw r0, 0(r16)
/* 805C842C  3C A0 78 78 */	lis r5, 0x7878 /* 0x78785FFF@ha */
/* 805C8430  3C 80 46 46 */	lis r4, 0x4646 /* 0x464628FF@ha */
/* 805C8434  3C 60 80 A3 */	lis r3, cal_win_eventT_model@ha /* 0x80A2F560@ha */
/* 805C8438  81 39 01 1C */	lwz r9, 0x11c(r25)
/* 805C843C  38 07 0A 00 */	addi r0, r7, 0x0A00 /* 0xD2F00A00@l */
/* 805C8440  39 06 00 FF */	addi r8, r6, 0x00FF /* 0xFA0000FF@l */
/* 805C8444  38 E5 5F FF */	addi r7, r5, 0x5FFF /* 0x78785FFF@l */
/* 805C8448  91 30 00 04 */	stw r9, 4(r16)
/* 805C844C  3C C0 FB 00 */	lis r6, 0xfb00
/* 805C8450  38 A4 28 FF */	addi r5, r4, 0x28FF /* 0x464628FF@l */
/* 805C8454  3C 80 DE 00 */	lis r4, 0xde00
/* 805C8458  90 10 00 08 */	stw r0, 8(r16)
/* 805C845C  38 03 F5 60 */	addi r0, r3, cal_win_eventT_model@l /* 0x80A2F560@l */
/* 805C8460  91 10 00 10 */	stw r8, 0x10(r16)
/* 805C8464  90 F0 00 14 */	stw r7, 0x14(r16)
/* 805C8468  90 D0 00 18 */	stw r6, 0x18(r16)
/* 805C846C  90 B0 00 1C */	stw r5, 0x1c(r16)
/* 805C8470  90 90 00 20 */	stw r4, 0x20(r16)
/* 805C8474  90 10 00 24 */	stw r0, 0x24(r16)
/* 805C8478  3A 10 00 28 */	addi r16, r16, 0x28
lbl_805C847C:
/* 805C847C  3C 00 DE 00 */	lis r0, 0xde00
/* 805C8480  3C 60 80 A2 */	lis r3, cal_win_nen_before@ha /* 0x80A1F180@ha */
/* 805C8484  90 10 00 00 */	stw r0, 0(r16)
/* 805C8488  38 63 F1 80 */	addi r3, r3, cal_win_nen_before@l /* 0x80A1F180@l */
/* 805C848C  3C A0 FD 84 */	lis r5, 0xFD84 /* 0xFD840C0F@ha */
/* 805C8490  3C 80 D2 F1 */	lis r4, 0xD2F1 /* 0xD2F0FA00@ha */
/* 805C8494  90 70 00 04 */	stw r3, 4(r16)
/* 805C8498  39 25 0C 0F */	addi r9, r5, 0x0C0F /* 0xFD840C0F@l */
/* 805C849C  38 C4 FA 00 */	addi r6, r4, 0xFA00 /* 0xD2F0FA00@l */
/* 805C84A0  38 60 00 04 */	li r3, 4
/* 805C84A4  A1 15 61 26 */	lhz r8, 0x6126(r21)
/* 805C84A8  38 F9 01 F8 */	addi r7, r25, 0x1f8
/* 805C84AC  38 B9 01 E8 */	addi r5, r25, 0x1e8
/* 805C84B0  38 80 00 00 */	li r4, 0
/* 805C84B4  7D 48 7A 14 */	add r10, r8, r15
/* 805C84B8  39 00 00 0A */	li r8, 0xa
/* 805C84BC  7C 69 03 A6 */	mtctr r3
/* 805C84C0  3A 10 00 08 */	addi r16, r16, 8
/* 805C84C4  39 4A FF FF */	addi r10, r10, -1
lbl_805C84C8:
/* 805C84C8  7C 6A 43 D6 */	divw r3, r10, r8
/* 805C84CC  91 30 00 00 */	stw r9, 0(r16)
/* 805C84D0  7C 63 41 D6 */	mullw r3, r3, r8
/* 805C84D4  7C 63 50 50 */	subf r3, r3, r10
/* 805C84D8  7D 4A 43 D6 */	divw r10, r10, r8
/* 805C84DC  54 63 10 3A */	slwi r3, r3, 2
/* 805C84E0  7C 67 18 2E */	lwzx r3, r7, r3
/* 805C84E4  90 70 00 04 */	stw r3, 4(r16)
/* 805C84E8  90 D0 00 08 */	stw r6, 8(r16)
/* 805C84EC  90 10 00 10 */	stw r0, 0x10(r16)
/* 805C84F0  7C 65 20 2E */	lwzx r3, r5, r4
/* 805C84F4  38 84 00 04 */	addi r4, r4, 4
/* 805C84F8  90 70 00 14 */	stw r3, 0x14(r16)
/* 805C84FC  3A 10 00 18 */	addi r16, r16, 0x18
/* 805C8500  42 00 FF C8 */	bdnz lbl_805C84C8
/* 805C8504  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805C8508  7E 83 A3 78 */	mr r3, r20
/* 805C850C  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805C8510  90 10 00 00 */	stw r0, 0(r16)
/* 805C8514  4B E4 4E C1 */	bl _Matrix_to_Mtx_new
/* 805C8518  3D 40 FD 6C */	lis r10, 0xFD6C /* 0xFD6C1C7F@ha */
/* 805C851C  90 70 00 04 */	stw r3, 4(r16)
/* 805C8520  38 0A 1C 7F */	addi r0, r10, 0x1C7F /* 0xFD6C1C7F@l */
/* 805C8524  3C 80 D2 F0 */	lis r4, 0xD2F0 /* 0xD2F00A00@ha */
/* 805C8528  90 10 00 08 */	stw r0, 8(r16)
/* 805C852C  1C 16 00 73 */	mulli r0, r22, 0x73
/* 805C8530  38 79 00 EC */	addi r3, r25, 0xec
/* 805C8534  7C A3 70 2E */	lwzx r5, r3, r14
/* 805C8538  39 24 0A 00 */	addi r9, r4, 0x0A00 /* 0xD2F00A00@l */
/* 805C853C  7F 13 02 14 */	add r24, r19, r0
/* 805C8540  3C C0 80 A3 */	lis r6, cal_win_boxT_model@ha /* 0x80A2F590@ha */
/* 805C8544  90 B0 00 0C */	stw r5, 0xc(r16)
/* 805C8548  3C 60 80 65 */	lis r3, lit_1179@ha /* 0x8064AE8C@ha */
/* 805C854C  38 A3 AE 8C */	addi r5, r3, lit_1179@l /* 0x8064AE8C@l */
/* 805C8550  3C 80 80 65 */	lis r4, lit_538@ha /* 0x8064AE40@ha */
/* 805C8554  91 30 00 10 */	stw r9, 0x10(r16)
/* 805C8558  3C 60 DE 00 */	lis r3, 0xde00
/* 805C855C  3D 00 80 A3 */	lis r8, cal_win_monthT_model@ha /* 0x80A2F700@ha */
/* 805C8560  3C E0 80 A3 */	lis r7, cal_win_box_tex_rgb_ia8@ha /* 0x80A2E520@ha */
/* 805C8564  90 70 00 18 */	stw r3, 0x18(r16)
/* 805C8568  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805C856C  CB E5 00 00 */	lfd f31, 0(r5)
/* 805C8570  7F 0F C3 78 */	mr r15, r24
/* 805C8574  90 01 00 18 */	stw r0, 0x18(r1)
/* 805C8578  38 08 F7 00 */	addi r0, r8, cal_win_monthT_model@l /* 0x80A2F700@l */
/* 805C857C  39 0A 1C 1F */	addi r8, r10, 0x1c1f
/* 805C8580  3B 46 F5 90 */	addi r26, r6, cal_win_boxT_model@l /* 0x80A2F590@l */
/* 805C8584  90 10 00 1C */	stw r0, 0x1c(r16)
/* 805C8588  38 07 E5 20 */	addi r0, r7, cal_win_box_tex_rgb_ia8@l /* 0x80A2E520@l */
/* 805C858C  3A C4 AE 40 */	addi r22, r4, lit_538@l /* 0x8064AE40@l */
/* 805C8590  3A A3 00 03 */	addi r21, r3, 0x0003 /* 0xDA380003@l */
/* 805C8594  91 10 00 20 */	stw r8, 0x20(r16)
/* 805C8598  3B 80 00 00 */	li r28, 0
/* 805C859C  3B A0 00 00 */	li r29, 0
/* 805C85A0  3F E0 43 30 */	lis r31, 0x4330
/* 805C85A4  90 10 00 24 */	stw r0, 0x24(r16)
/* 805C85A8  91 30 00 28 */	stw r9, 0x28(r16)
/* 805C85AC  3A 10 00 30 */	addi r16, r16, 0x30
/* 805C85B0  48 00 01 18 */	b lbl_805C86C8
lbl_805C85B4:
/* 805C85B4  7C 1C 00 D0 */	neg r0, r28
/* 805C85B8  3B 60 00 00 */	li r27, 0
/* 805C85BC  1C 00 00 14 */	mulli r0, r0, 0x14
/* 805C85C0  39 C0 00 00 */	li r14, 0
/* 805C85C4  6C 17 80 00 */	xoris r23, r0, 0x8000
/* 805C85C8  48 00 00 EC */	b lbl_805C86B4
lbl_805C85CC:
/* 805C85CC  4B E4 3C 09 */	bl Matrix_push
/* 805C85D0  6D C0 80 00 */	xoris r0, r14, 0x8000
/* 805C85D4  93 E1 00 08 */	stw r31, 8(r1)
/* 805C85D8  C0 76 00 00 */	lfs f3, 0(r22)
/* 805C85DC  38 60 00 01 */	li r3, 1
/* 805C85E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805C85E4  C8 01 00 08 */	lfd f0, 8(r1)
/* 805C85E8  92 E1 00 14 */	stw r23, 0x14(r1)
/* 805C85EC  EC 20 F8 28 */	fsubs f1, f0, f31
/* 805C85F0  93 E1 00 10 */	stw r31, 0x10(r1)
/* 805C85F4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805C85F8  EC 40 F8 28 */	fsubs f2, f0, f31
/* 805C85FC  4B E4 3D 05 */	bl Matrix_translate
/* 805C8600  92 B0 00 00 */	stw r21, 0(r16)
/* 805C8604  7E 1E 83 78 */	mr r30, r16
/* 805C8608  7E 83 A3 78 */	mr r3, r20
/* 805C860C  3A 10 00 08 */	addi r16, r16, 8
/* 805C8610  4B E4 4D C5 */	bl _Matrix_to_Mtx_new
/* 805C8614  7C 12 E8 00 */	cmpw r18, r29
/* 805C8618  90 7E 00 04 */	stw r3, 4(r30)
/* 805C861C  41 82 00 84 */	beq lbl_805C86A0
/* 805C8620  88 8F 00 00 */	lbz r4, 0(r15)
/* 805C8624  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA0000FF@ha */
/* 805C8628  38 03 00 FF */	addi r0, r3, 0x00FF /* 0xFA0000FF@l */
/* 805C862C  3C A0 FB 00 */	lis r5, 0xfb00
/* 805C8630  54 84 DF 7E */	rlwinm r4, r4, 0x1b, 0x1d, 0x1f
/* 805C8634  90 10 00 00 */	stw r0, 0(r16)
/* 805C8638  1C E4 00 03 */	mulli r7, r4, 3
/* 805C863C  38 79 01 24 */	addi r3, r25, 0x124
/* 805C8640  38 99 01 34 */	addi r4, r25, 0x134
/* 805C8644  3C 00 DE 00 */	lis r0, 0xde00
/* 805C8648  7C 63 3A 14 */	add r3, r3, r7
/* 805C864C  88 C3 00 01 */	lbz r6, 1(r3)
/* 805C8650  7C 84 3A 14 */	add r4, r4, r7
/* 805C8654  88 E3 00 00 */	lbz r7, 0(r3)
/* 805C8658  54 C6 82 1E */	rlwinm r6, r6, 0x10, 8, 0xf
/* 805C865C  88 63 00 02 */	lbz r3, 2(r3)
/* 805C8660  50 E6 C0 0E */	rlwimi r6, r7, 0x18, 0, 7
/* 805C8664  50 66 44 2E */	rlwimi r6, r3, 8, 0x10, 0x17
/* 805C8668  60 C3 00 FF */	ori r3, r6, 0xff
/* 805C866C  90 70 00 04 */	stw r3, 4(r16)
/* 805C8670  90 B0 00 08 */	stw r5, 8(r16)
/* 805C8674  88 64 00 01 */	lbz r3, 1(r4)
/* 805C8678  88 A4 00 00 */	lbz r5, 0(r4)
/* 805C867C  54 63 82 1E */	rlwinm r3, r3, 0x10, 8, 0xf
/* 805C8680  88 84 00 02 */	lbz r4, 2(r4)
/* 805C8684  50 A3 C0 0E */	rlwimi r3, r5, 0x18, 0, 7
/* 805C8688  50 83 44 2E */	rlwimi r3, r4, 8, 0x10, 0x17
/* 805C868C  60 63 00 FF */	ori r3, r3, 0xff
/* 805C8690  90 70 00 0C */	stw r3, 0xc(r16)
/* 805C8694  90 10 00 10 */	stw r0, 0x10(r16)
/* 805C8698  93 50 00 14 */	stw r26, 0x14(r16)
/* 805C869C  3A 10 00 18 */	addi r16, r16, 0x18
lbl_805C86A0:
/* 805C86A0  4B E4 3B 75 */	bl Matrix_pull
/* 805C86A4  3B 7B 00 01 */	addi r27, r27, 1
/* 805C86A8  39 CE 00 20 */	addi r14, r14, 0x20
/* 805C86AC  3B BD 00 01 */	addi r29, r29, 1
/* 805C86B0  39 EF 00 01 */	addi r15, r15, 1
lbl_805C86B4:
/* 805C86B4  2C 1B 00 07 */	cmpwi r27, 7
/* 805C86B8  40 80 00 0C */	bge lbl_805C86C4
/* 805C86BC  2C 1D 00 25 */	cmpwi r29, 0x25
/* 805C86C0  41 80 FF 0C */	blt lbl_805C85CC
lbl_805C86C4:
/* 805C86C4  3B 9C 00 01 */	addi r28, r28, 1
lbl_805C86C8:
/* 805C86C8  2C 1D 00 25 */	cmpwi r29, 0x25
/* 805C86CC  41 80 FE E8 */	blt lbl_805C85B4
/* 805C86D0  3C 60 80 65 */	lis r3, lit_1179@ha /* 0x8064AE8C@ha */
/* 805C86D4  3A E0 00 00 */	li r23, 0
/* 805C86D8  38 A3 AE 8C */	addi r5, r3, lit_1179@l /* 0x8064AE8C@l */
/* 805C86DC  3C E0 80 A3 */	lis r7, cal_win_suuji_model@ha /* 0x80A2F530@ha */
/* 805C86E0  3C C0 80 A2 */	lis r6, cal_icon_mark_model@ha /* 0x80A1E980@ha */
/* 805C86E4  3C 80 80 65 */	lis r4, lit_538@ha /* 0x8064AE40@ha */
/* 805C86E8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805C86EC  CB E5 00 00 */	lfd f31, 0(r5)
/* 805C86F0  7E F6 BB 78 */	mr r22, r23
/* 805C86F4  3B 67 F5 30 */	addi r27, r7, cal_win_suuji_model@l /* 0x80A2F530@l */
/* 805C86F8  3B 86 E9 80 */	addi r28, r6, cal_icon_mark_model@l /* 0x80A1E980@l */
/* 805C86FC  3B C4 AE 40 */	addi r30, r4, lit_538@l /* 0x8064AE40@l */
/* 805C8700  39 C3 00 03 */	addi r14, r3, 0x0003 /* 0xDA380003@l */
/* 805C8704  48 00 01 78 */	b lbl_805C887C
lbl_805C8708:
/* 805C8708  7C 17 00 D0 */	neg r0, r23
/* 805C870C  3A A0 00 00 */	li r21, 0
/* 805C8710  1C 00 00 14 */	mulli r0, r0, 0x14
/* 805C8714  3B E0 00 00 */	li r31, 0
/* 805C8718  6C 1D 80 00 */	xoris r29, r0, 0x8000
/* 805C871C  48 00 01 4C */	b lbl_805C8868
lbl_805C8720:
/* 805C8720  4B E4 3A B5 */	bl Matrix_push
/* 805C8724  6F E4 80 00 */	xoris r4, r31, 0x8000
/* 805C8728  3C 00 43 30 */	lis r0, 0x4330
/* 805C872C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805C8730  3C 00 43 30 */	lis r0, 0x4330
/* 805C8734  C0 7E 00 00 */	lfs f3, 0(r30)
/* 805C8738  38 60 00 01 */	li r3, 1
/* 805C873C  90 81 00 14 */	stw r4, 0x14(r1)
/* 805C8740  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805C8744  93 A1 00 0C */	stw r29, 0xc(r1)
/* 805C8748  EC 20 F8 28 */	fsubs f1, f0, f31
/* 805C874C  90 01 00 08 */	stw r0, 8(r1)
/* 805C8750  C8 01 00 08 */	lfd f0, 8(r1)
/* 805C8754  EC 40 F8 28 */	fsubs f2, f0, f31
/* 805C8758  4B E4 3B A9 */	bl Matrix_translate
/* 805C875C  91 D0 00 00 */	stw r14, 0(r16)
/* 805C8760  7E 0F 83 78 */	mr r15, r16
/* 805C8764  7E 83 A3 78 */	mr r3, r20
/* 805C8768  3A 10 00 08 */	addi r16, r16, 8
/* 805C876C  4B E4 4C 69 */	bl _Matrix_to_Mtx_new
/* 805C8770  7C 12 B0 00 */	cmpw r18, r22
/* 805C8774  90 6F 00 04 */	stw r3, 4(r15)
/* 805C8778  41 82 00 E0 */	beq lbl_805C8858
/* 805C877C  7C 78 B2 14 */	add r3, r24, r22
/* 805C8780  88 03 00 00 */	lbz r0, 0(r3)
/* 805C8784  54 06 06 FF */	clrlwi. r6, r0, 0x1b
/* 805C8788  54 05 DF 7E */	rlwinm r5, r0, 0x1b, 0x1d, 0x1f
/* 805C878C  40 81 00 78 */	ble lbl_805C8804
/* 805C8790  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 805C8794  3C E0 FD 84 */	lis r7, 0xFD84 /* 0xFD840C0F@ha */
/* 805C8798  38 04 00 FF */	addi r0, r4, 0x00FF /* 0xFA0000FF@l */
/* 805C879C  54 C6 10 3A */	slwi r6, r6, 2
/* 805C87A0  1D 25 00 03 */	mulli r9, r5, 3
/* 805C87A4  38 99 01 44 */	addi r4, r25, 0x144
/* 805C87A8  90 10 00 00 */	stw r0, 0(r16)
/* 805C87AC  39 07 0C 0F */	addi r8, r7, 0x0C0F /* 0xFD840C0F@l */
/* 805C87B0  3C A0 D2 F1 */	lis r5, 0xD2F1 /* 0xD2F0FA00@ha */
/* 805C87B4  7C 84 4A 14 */	add r4, r4, r9
/* 805C87B8  88 04 00 01 */	lbz r0, 1(r4)
/* 805C87BC  38 F9 01 64 */	addi r7, r25, 0x164
/* 805C87C0  89 44 00 00 */	lbz r10, 0(r4)
/* 805C87C4  38 C6 FF FC */	addi r6, r6, -4
/* 805C87C8  54 09 82 1E */	rlwinm r9, r0, 0x10, 8, 0xf
/* 805C87CC  89 64 00 02 */	lbz r11, 2(r4)
/* 805C87D0  51 49 C0 0E */	rlwimi r9, r10, 0x18, 0, 7
/* 805C87D4  38 85 FA 00 */	addi r4, r5, 0xFA00 /* 0xD2F0FA00@l */
/* 805C87D8  51 69 44 2E */	rlwimi r9, r11, 8, 0x10, 0x17
/* 805C87DC  3C 00 DE 00 */	lis r0, 0xde00
/* 805C87E0  61 25 00 FF */	ori r5, r9, 0xff
/* 805C87E4  90 B0 00 04 */	stw r5, 4(r16)
/* 805C87E8  91 10 00 08 */	stw r8, 8(r16)
/* 805C87EC  7C A7 30 2E */	lwzx r5, r7, r6
/* 805C87F0  90 B0 00 0C */	stw r5, 0xc(r16)
/* 805C87F4  90 90 00 10 */	stw r4, 0x10(r16)
/* 805C87F8  90 10 00 18 */	stw r0, 0x18(r16)
/* 805C87FC  93 70 00 1C */	stw r27, 0x1c(r16)
/* 805C8800  3A 10 00 20 */	addi r16, r16, 0x20
lbl_805C8804:
/* 805C8804  88 03 00 25 */	lbz r0, 0x25(r3)
/* 805C8808  28 00 00 00 */	cmplwi r0, 0
/* 805C880C  41 82 00 4C */	beq lbl_805C8858
/* 805C8810  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA0000FF@ha */
/* 805C8814  38 B9 02 20 */	addi r5, r25, 0x220
/* 805C8818  1C 80 00 03 */	mulli r4, r0, 3
/* 805C881C  3C 00 DE 00 */	lis r0, 0xde00
/* 805C8820  38 63 00 FF */	addi r3, r3, 0x00FF /* 0xFA0000FF@l */
/* 805C8824  90 70 00 00 */	stw r3, 0(r16)
/* 805C8828  7C A5 22 14 */	add r5, r5, r4
/* 805C882C  88 65 00 01 */	lbz r3, 1(r5)
/* 805C8830  88 85 00 00 */	lbz r4, 0(r5)
/* 805C8834  54 63 82 1E */	rlwinm r3, r3, 0x10, 8, 0xf
/* 805C8838  88 A5 00 02 */	lbz r5, 2(r5)
/* 805C883C  50 83 C0 0E */	rlwimi r3, r4, 0x18, 0, 7
/* 805C8840  50 A3 44 2E */	rlwimi r3, r5, 8, 0x10, 0x17
/* 805C8844  60 63 00 FF */	ori r3, r3, 0xff
/* 805C8848  90 70 00 04 */	stw r3, 4(r16)
/* 805C884C  90 10 00 08 */	stw r0, 8(r16)
/* 805C8850  93 90 00 0C */	stw r28, 0xc(r16)
/* 805C8854  3A 10 00 10 */	addi r16, r16, 0x10
lbl_805C8858:
/* 805C8858  4B E4 39 BD */	bl Matrix_pull
/* 805C885C  3A B5 00 01 */	addi r21, r21, 1
/* 805C8860  3B FF 00 20 */	addi r31, r31, 0x20
/* 805C8864  3A D6 00 01 */	addi r22, r22, 1
lbl_805C8868:
/* 805C8868  2C 15 00 07 */	cmpwi r21, 7
/* 805C886C  40 80 00 0C */	bge lbl_805C8878
/* 805C8870  2C 16 00 25 */	cmpwi r22, 0x25
/* 805C8874  41 80 FE AC */	blt lbl_805C8720
lbl_805C8878:
/* 805C8878  3A F7 00 01 */	addi r23, r23, 1
lbl_805C887C:
/* 805C887C  2C 16 00 25 */	cmpwi r22, 0x25
/* 805C8880  41 80 FE 88 */	blt lbl_805C8708
/* 805C8884  88 13 10 55 */	lbz r0, 0x1055(r19)
/* 805C8888  28 00 00 05 */	cmplwi r0, 5
/* 805C888C  41 80 02 80 */	blt lbl_805C8B0C
/* 805C8890  7C 18 90 AE */	lbzx r0, r24, r18
/* 805C8894  89 D3 10 58 */	lbz r14, 0x1058(r19)
/* 805C8898  54 0F 06 FE */	clrlwi r15, r0, 0x1b
/* 805C889C  4B E4 39 39 */	bl Matrix_push
/* 805C88A0  38 E0 00 07 */	li r7, 7
/* 805C88A4  3C A0 43 30 */	lis r5, 0x4330
/* 805C88A8  7C 12 3B D6 */	divw r0, r18, r7
/* 805C88AC  3C 80 80 65 */	lis r4, lit_1179@ha /* 0x8064AE8C@ha */
/* 805C88B0  3C 60 80 65 */	lis r3, lit_538@ha /* 0x8064AE40@ha */
/* 805C88B4  90 A1 00 10 */	stw r5, 0x10(r1)
/* 805C88B8  38 C4 AE 8C */	addi r6, r4, lit_1179@l /* 0x8064AE8C@l */
/* 805C88BC  38 83 AE 40 */	addi r4, r3, lit_538@l /* 0x8064AE40@l */
/* 805C88C0  7C E0 39 D6 */	mullw r7, r0, r7
/* 805C88C4  7C 00 00 D0 */	neg r0, r0
/* 805C88C8  90 A1 00 08 */	stw r5, 8(r1)
/* 805C88CC  38 60 00 01 */	li r3, 1
/* 805C88D0  C8 46 00 00 */	lfd f2, 0(r6)
/* 805C88D4  C0 64 00 00 */	lfs f3, 0(r4)
/* 805C88D8  1C 00 00 14 */	mulli r0, r0, 0x14
/* 805C88DC  7C 87 90 50 */	subf r4, r7, r18
/* 805C88E0  54 84 28 34 */	slwi r4, r4, 5
/* 805C88E4  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 805C88E8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805C88EC  90 81 00 14 */	stw r4, 0x14(r1)
/* 805C88F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805C88F4  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 805C88F8  C8 01 00 08 */	lfd f0, 8(r1)
/* 805C88FC  EC 21 10 28 */	fsubs f1, f1, f2
/* 805C8900  EC 40 10 28 */	fsubs f2, f0, f2
/* 805C8904  4B E4 39 FD */	bl Matrix_translate
/* 805C8908  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805C890C  7E 83 A3 78 */	mr r3, r20
/* 805C8910  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805C8914  90 10 00 00 */	stw r0, 0(r16)
/* 805C8918  4B E4 4A BD */	bl _Matrix_to_Mtx_new
/* 805C891C  90 70 00 04 */	stw r3, 4(r16)
/* 805C8920  3C 60 FD 6C */	lis r3, 0xFD6C /* 0xFD6C1C1F@ha */
/* 805C8924  38 03 1C 1F */	addi r0, r3, 0x1C1F /* 0xFD6C1C1F@l */
/* 805C8928  3C A0 80 65 */	lis r5, lit_538@ha /* 0x8064AE40@ha */
/* 805C892C  3C 60 80 A3 */	lis r3, cal_win_box2_tex_rgb_ia8@ha /* 0x80A2E120@ha */
/* 805C8930  90 10 00 08 */	stw r0, 8(r16)
/* 805C8934  38 03 E1 20 */	addi r0, r3, cal_win_box2_tex_rgb_ia8@l /* 0x80A2E120@l */
/* 805C8938  C0 25 AE 40 */	lfs f1, lit_538@l(r5)  /* 0x8064AE40@l */
/* 805C893C  3C 60 D2 F0 */	lis r3, 0xD2F0 /* 0xD2F00A00@ha */
/* 805C8940  90 10 00 0C */	stw r0, 0xc(r16)
/* 805C8944  38 03 0A 00 */	addi r0, r3, 0x0A00 /* 0xD2F00A00@l */
/* 805C8948  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 805C894C  90 10 00 10 */	stw r0, 0x10(r16)
/* 805C8950  1D CE 00 03 */	mulli r14, r14, 3
/* 805C8954  38 04 00 FF */	addi r0, r4, 0x00FF /* 0xFA0000FF@l */
/* 805C8958  FC 60 08 90 */	fmr f3, f1
/* 805C895C  39 19 01 24 */	addi r8, r25, 0x124
/* 805C8960  90 10 00 18 */	stw r0, 0x18(r16)
/* 805C8964  7D 08 72 14 */	add r8, r8, r14
/* 805C8968  88 08 00 01 */	lbz r0, 1(r8)
/* 805C896C  38 99 01 34 */	addi r4, r25, 0x134
/* 805C8970  3C 60 80 65 */	lis r3, lit_1176@ha /* 0x8064AE80@ha */
/* 805C8974  88 E8 00 00 */	lbz r7, 0(r8)
/* 805C8978  54 06 82 1E */	rlwinm r6, r0, 0x10, 8, 0xf
/* 805C897C  88 08 00 02 */	lbz r0, 2(r8)
/* 805C8980  50 E6 C0 0E */	rlwimi r6, r7, 0x18, 0, 7
/* 805C8984  C0 43 AE 80 */	lfs f2, lit_1176@l(r3)  /* 0x8064AE80@l */
/* 805C8988  50 06 44 2E */	rlwimi r6, r0, 8, 0x10, 0x17
/* 805C898C  3C A0 FB 00 */	lis r5, 0xfb00
/* 805C8990  60 C6 00 FF */	ori r6, r6, 0xff
/* 805C8994  7C 84 72 14 */	add r4, r4, r14
/* 805C8998  90 D0 00 1C */	stw r6, 0x1c(r16)
/* 805C899C  3C 00 DE 00 */	lis r0, 0xde00
/* 805C89A0  38 60 00 01 */	li r3, 1
/* 805C89A4  90 B0 00 20 */	stw r5, 0x20(r16)
/* 805C89A8  88 A4 00 01 */	lbz r5, 1(r4)
/* 805C89AC  88 C4 00 00 */	lbz r6, 0(r4)
/* 805C89B0  54 A5 82 1E */	rlwinm r5, r5, 0x10, 8, 0xf
/* 805C89B4  88 84 00 02 */	lbz r4, 2(r4)
/* 805C89B8  50 C5 C0 0E */	rlwimi r5, r6, 0x18, 0, 7
/* 805C89BC  50 85 44 2E */	rlwimi r5, r4, 8, 0x10, 0x17
/* 805C89C0  60 A4 00 FF */	ori r4, r5, 0xff
/* 805C89C4  90 90 00 24 */	stw r4, 0x24(r16)
/* 805C89C8  90 10 00 28 */	stw r0, 0x28(r16)
/* 805C89CC  93 50 00 2C */	stw r26, 0x2c(r16)
/* 805C89D0  3A 10 00 30 */	addi r16, r16, 0x30
/* 805C89D4  4B E4 39 2D */	bl Matrix_translate
/* 805C89D8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805C89DC  7E 15 83 78 */	mr r21, r16
/* 805C89E0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805C89E4  7E 83 A3 78 */	mr r3, r20
/* 805C89E8  90 10 00 00 */	stw r0, 0(r16)
/* 805C89EC  3A 10 00 08 */	addi r16, r16, 8
/* 805C89F0  4B E4 49 E5 */	bl _Matrix_to_Mtx_new
/* 805C89F4  2C 0F 00 00 */	cmpwi r15, 0
/* 805C89F8  90 75 00 04 */	stw r3, 4(r21)
/* 805C89FC  40 81 00 74 */	ble lbl_805C8A70
/* 805C8A00  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA0000FF@ha */
/* 805C8A04  39 19 01 54 */	addi r8, r25, 0x154
/* 805C8A08  38 03 00 FF */	addi r0, r3, 0x00FF /* 0xFA0000FF@l */
/* 805C8A0C  3C 80 FD 84 */	lis r4, 0xFD84 /* 0xFD840C0F@ha */
/* 805C8A10  90 10 00 00 */	stw r0, 0(r16)
/* 805C8A14  7D 08 72 14 */	add r8, r8, r14
/* 805C8A18  38 A4 0C 0F */	addi r5, r4, 0x0C0F /* 0xFD840C0F@l */
/* 805C8A1C  3C 60 D2 F1 */	lis r3, 0xD2F1 /* 0xD2F0FA00@ha */
/* 805C8A20  88 C8 00 01 */	lbz r6, 1(r8)
/* 805C8A24  38 99 01 64 */	addi r4, r25, 0x164
/* 805C8A28  88 E8 00 00 */	lbz r7, 0(r8)
/* 805C8A2C  55 E0 10 3A */	slwi r0, r15, 2
/* 805C8A30  54 C6 82 1E */	rlwinm r6, r6, 0x10, 8, 0xf
/* 805C8A34  89 08 00 02 */	lbz r8, 2(r8)
/* 805C8A38  50 E6 C0 0E */	rlwimi r6, r7, 0x18, 0, 7
/* 805C8A3C  7C 84 02 14 */	add r4, r4, r0
/* 805C8A40  51 06 44 2E */	rlwimi r6, r8, 8, 0x10, 0x17
/* 805C8A44  38 63 FA 00 */	addi r3, r3, 0xFA00 /* 0xD2F0FA00@l */
/* 805C8A48  60 C6 00 FF */	ori r6, r6, 0xff
/* 805C8A4C  3C 00 DE 00 */	lis r0, 0xde00
/* 805C8A50  90 D0 00 04 */	stw r6, 4(r16)
/* 805C8A54  90 B0 00 08 */	stw r5, 8(r16)
/* 805C8A58  80 84 FF FC */	lwz r4, -4(r4)
/* 805C8A5C  90 90 00 0C */	stw r4, 0xc(r16)
/* 805C8A60  90 70 00 10 */	stw r3, 0x10(r16)
/* 805C8A64  90 10 00 18 */	stw r0, 0x18(r16)
/* 805C8A68  93 70 00 1C */	stw r27, 0x1c(r16)
/* 805C8A6C  3A 10 00 20 */	addi r16, r16, 0x20
lbl_805C8A70:
/* 805C8A70  80 01 00 18 */	lwz r0, 0x18(r1)
/* 805C8A74  7C 13 02 14 */	add r0, r19, r0
/* 805C8A78  7C 60 92 14 */	add r3, r0, r18
/* 805C8A7C  88 03 00 25 */	lbz r0, 0x25(r3)
/* 805C8A80  28 00 00 00 */	cmplwi r0, 0
/* 805C8A84  41 82 00 4C */	beq lbl_805C8AD0
/* 805C8A88  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA0000FF@ha */
/* 805C8A8C  38 B9 02 20 */	addi r5, r25, 0x220
/* 805C8A90  1C 80 00 03 */	mulli r4, r0, 3
/* 805C8A94  3C 00 DE 00 */	lis r0, 0xde00
/* 805C8A98  38 63 00 FF */	addi r3, r3, 0x00FF /* 0xFA0000FF@l */
/* 805C8A9C  90 70 00 00 */	stw r3, 0(r16)
/* 805C8AA0  7C A5 22 14 */	add r5, r5, r4
/* 805C8AA4  88 65 00 01 */	lbz r3, 1(r5)
/* 805C8AA8  88 85 00 00 */	lbz r4, 0(r5)
/* 805C8AAC  54 63 82 1E */	rlwinm r3, r3, 0x10, 8, 0xf
/* 805C8AB0  88 A5 00 02 */	lbz r5, 2(r5)
/* 805C8AB4  50 83 C0 0E */	rlwimi r3, r4, 0x18, 0, 7
/* 805C8AB8  50 A3 44 2E */	rlwimi r3, r5, 8, 0x10, 0x17
/* 805C8ABC  60 63 00 FF */	ori r3, r3, 0xff
/* 805C8AC0  90 70 00 04 */	stw r3, 4(r16)
/* 805C8AC4  90 10 00 08 */	stw r0, 8(r16)
/* 805C8AC8  93 90 00 0C */	stw r28, 0xc(r16)
/* 805C8ACC  3A 10 00 10 */	addi r16, r16, 0x10
lbl_805C8AD0:
/* 805C8AD0  3C 00 DE 00 */	lis r0, 0xde00
/* 805C8AD4  3C 60 80 A2 */	lis r3, cal_icon_cursor_model@ha /* 0x80A1E860@ha */
/* 805C8AD8  90 10 00 00 */	stw r0, 0(r16)
/* 805C8ADC  38 03 E8 60 */	addi r0, r3, cal_icon_cursor_model@l /* 0x80A1E860@l */
/* 805C8AE0  90 10 00 04 */	stw r0, 4(r16)
/* 805C8AE4  3A 10 00 08 */	addi r16, r16, 8
/* 805C8AE8  4B E4 37 2D */	bl Matrix_pull
/* 805C8AEC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805C8AF0  7E 0E 83 78 */	mr r14, r16
/* 805C8AF4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805C8AF8  7E 83 A3 78 */	mr r3, r20
/* 805C8AFC  90 10 00 00 */	stw r0, 0(r16)
/* 805C8B00  3A 10 00 08 */	addi r16, r16, 8
/* 805C8B04  4B E4 48 D1 */	bl _Matrix_to_Mtx_new
/* 805C8B08  90 6E 00 04 */	stw r3, 4(r14)
lbl_805C8B0C:
/* 805C8B0C  2C 11 00 01 */	cmpwi r17, 1
/* 805C8B10  40 82 01 2C */	bne lbl_805C8C3C
/* 805C8B14  3C 60 FD 6C */	lis r3, 0xFD6C /* 0xFD6C1C3F@ha */
/* 805C8B18  3C A0 D2 F0 */	lis r5, 0xD2F0 /* 0xD2F00A00@ha */
/* 805C8B1C  38 03 1C 3F */	addi r0, r3, 0x1C3F /* 0xFD6C1C3F@l */
/* 805C8B20  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 805C8B24  90 10 00 00 */	stw r0, 0(r16)
/* 805C8B28  38 E5 0A 00 */	addi r7, r5, 0x0A00 /* 0xD2F00A00@l */
/* 805C8B2C  38 C4 00 FF */	addi r6, r4, 0x00FF /* 0xFA0000FF@l */
/* 805C8B30  3C 60 80 A3 */	lis r3, cal_win_eventT_model@ha /* 0x80A2F560@ha */
/* 805C8B34  80 19 01 1C */	lwz r0, 0x11c(r25)
/* 805C8B38  39 19 01 24 */	addi r8, r25, 0x124
/* 805C8B3C  39 39 01 34 */	addi r9, r25, 0x134
/* 805C8B40  3C A0 FB 00 */	lis r5, 0xfb00
/* 805C8B44  90 10 00 04 */	stw r0, 4(r16)
/* 805C8B48  38 03 F5 60 */	addi r0, r3, cal_win_eventT_model@l /* 0x80A2F560@l */
/* 805C8B4C  3C 80 DE 00 */	lis r4, 0xde00
/* 805C8B50  90 F0 00 08 */	stw r7, 8(r16)
/* 805C8B54  88 73 10 58 */	lbz r3, 0x1058(r19)
/* 805C8B58  1C E3 00 03 */	mulli r7, r3, 3
/* 805C8B5C  90 D0 00 10 */	stw r6, 0x10(r16)
/* 805C8B60  7D 08 3A 14 */	add r8, r8, r7
/* 805C8B64  88 68 00 01 */	lbz r3, 1(r8)
/* 805C8B68  7D 29 3A 14 */	add r9, r9, r7
/* 805C8B6C  88 C8 00 00 */	lbz r6, 0(r8)
/* 805C8B70  54 63 82 1E */	rlwinm r3, r3, 0x10, 8, 0xf
/* 805C8B74  88 E8 00 02 */	lbz r7, 2(r8)
/* 805C8B78  50 C3 C0 0E */	rlwimi r3, r6, 0x18, 0, 7
/* 805C8B7C  50 E3 44 2E */	rlwimi r3, r7, 8, 0x10, 0x17
/* 805C8B80  60 63 00 FF */	ori r3, r3, 0xff
/* 805C8B84  90 70 00 14 */	stw r3, 0x14(r16)
/* 805C8B88  90 B0 00 18 */	stw r5, 0x18(r16)
/* 805C8B8C  88 69 00 01 */	lbz r3, 1(r9)
/* 805C8B90  88 A9 00 00 */	lbz r5, 0(r9)
/* 805C8B94  54 63 82 1E */	rlwinm r3, r3, 0x10, 8, 0xf
/* 805C8B98  88 C9 00 02 */	lbz r6, 2(r9)
/* 805C8B9C  50 A3 C0 0E */	rlwimi r3, r5, 0x18, 0, 7
/* 805C8BA0  50 C3 44 2E */	rlwimi r3, r6, 8, 0x10, 0x17
/* 805C8BA4  60 63 00 FF */	ori r3, r3, 0xff
/* 805C8BA8  90 70 00 1C */	stw r3, 0x1c(r16)
/* 805C8BAC  90 90 00 20 */	stw r4, 0x20(r16)
/* 805C8BB0  90 10 00 24 */	stw r0, 0x24(r16)
/* 805C8BB4  3A 10 00 28 */	addi r16, r16, 0x28
/* 805C8BB8  88 13 10 42 */	lbz r0, 0x1042(r19)
/* 805C8BBC  7C 73 02 14 */	add r3, r19, r0
/* 805C8BC0  88 03 10 3C */	lbz r0, 0x103c(r3)
/* 805C8BC4  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 805C8BC8  41 82 00 74 */	beq lbl_805C8C3C
/* 805C8BCC  4B E4 36 09 */	bl Matrix_push
/* 805C8BD0  3C 80 80 65 */	lis r4, lit_538@ha /* 0x8064AE40@ha */
/* 805C8BD4  38 60 00 01 */	li r3, 1
/* 805C8BD8  C0 24 AE 40 */	lfs f1, lit_538@l(r4)  /* 0x8064AE40@l */
/* 805C8BDC  FC 40 08 90 */	fmr f2, f1
/* 805C8BE0  FC 60 08 90 */	fmr f3, f1
/* 805C8BE4  4B E4 37 1D */	bl Matrix_translate
/* 805C8BE8  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805C8BEC  7E 83 A3 78 */	mr r3, r20
/* 805C8BF0  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805C8BF4  90 10 00 00 */	stw r0, 0(r16)
/* 805C8BF8  4B E4 47 DD */	bl _Matrix_to_Mtx_new
/* 805C8BFC  90 70 00 04 */	stw r3, 4(r16)
/* 805C8C00  3C 00 DE 00 */	lis r0, 0xde00
/* 805C8C04  3C 60 80 A2 */	lis r3, cal_icon_sakana_model@ha /* 0x80A1EAE0@ha */
/* 805C8C08  90 10 00 08 */	stw r0, 8(r16)
/* 805C8C0C  38 03 EA E0 */	addi r0, r3, cal_icon_sakana_model@l /* 0x80A1EAE0@l */
/* 805C8C10  90 10 00 0C */	stw r0, 0xc(r16)
/* 805C8C14  3A 10 00 10 */	addi r16, r16, 0x10
/* 805C8C18  4B E4 35 FD */	bl Matrix_pull
/* 805C8C1C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805C8C20  7E 0E 83 78 */	mr r14, r16
/* 805C8C24  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805C8C28  7E 83 A3 78 */	mr r3, r20
/* 805C8C2C  90 10 00 00 */	stw r0, 0(r16)
/* 805C8C30  3A 10 00 08 */	addi r16, r16, 8
/* 805C8C34  4B E4 47 A1 */	bl _Matrix_to_Mtx_new
/* 805C8C38  90 6E 00 04 */	stw r3, 4(r14)
lbl_805C8C3C:
/* 805C8C3C  2C 11 00 01 */	cmpwi r17, 1
/* 805C8C40  40 82 00 D8 */	bne lbl_805C8D18
/* 805C8C44  88 13 10 43 */	lbz r0, 0x1043(r19)
/* 805C8C48  28 00 00 01 */	cmplwi r0, 1
/* 805C8C4C  40 81 00 CC */	ble lbl_805C8D18
/* 805C8C50  4B E4 35 85 */	bl Matrix_push
/* 805C8C54  3C 80 80 65 */	lis r4, lit_1177@ha /* 0x8064AE84@ha */
/* 805C8C58  3C 60 80 65 */	lis r3, lit_538@ha /* 0x8064AE40@ha */
/* 805C8C5C  C0 63 AE 40 */	lfs f3, lit_538@l(r3)  /* 0x8064AE40@l */
/* 805C8C60  38 60 00 01 */	li r3, 1
/* 805C8C64  C0 33 10 34 */	lfs f1, 0x1034(r19)
/* 805C8C68  C0 44 AE 84 */	lfs f2, lit_1177@l(r4)  /* 0x8064AE84@l */
/* 805C8C6C  4B E4 36 95 */	bl Matrix_translate
/* 805C8C70  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805C8C74  7E 83 A3 78 */	mr r3, r20
/* 805C8C78  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805C8C7C  90 10 00 00 */	stw r0, 0(r16)
/* 805C8C80  4B E4 47 55 */	bl _Matrix_to_Mtx_new
/* 805C8C84  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 805C8C88  90 70 00 04 */	stw r3, 4(r16)
/* 805C8C8C  38 04 00 FF */	addi r0, r4, 0x00FF /* 0xFA0000FF@l */
/* 805C8C90  3C 60 80 A2 */	lis r3, cal_icon_yajirushi_model@ha /* 0x80A1EB28@ha */
/* 805C8C94  90 10 00 08 */	stw r0, 8(r16)
/* 805C8C98  3C 80 DE 00 */	lis r4, 0xde00
/* 805C8C9C  38 03 EB 28 */	addi r0, r3, cal_icon_yajirushi_model@l /* 0x80A1EB28@l */
/* 805C8CA0  88 73 10 54 */	lbz r3, 0x1054(r19)
/* 805C8CA4  60 63 FF 00 */	ori r3, r3, 0xff00
/* 805C8CA8  90 70 00 0C */	stw r3, 0xc(r16)
/* 805C8CAC  90 90 00 10 */	stw r4, 0x10(r16)
/* 805C8CB0  90 10 00 14 */	stw r0, 0x14(r16)
/* 805C8CB4  88 73 10 43 */	lbz r3, 0x1043(r19)
/* 805C8CB8  88 13 10 42 */	lbz r0, 0x1042(r19)
/* 805C8CBC  38 63 FF FF */	addi r3, r3, -1
/* 805C8CC0  7C 03 00 00 */	cmpw r3, r0
/* 805C8CC4  40 82 00 1C */	bne lbl_805C8CE0
/* 805C8CC8  3C 60 80 A2 */	lis r3, cal_icon_yajirushi_gfx2@ha /* 0x80A1EB60@ha */
/* 805C8CCC  90 90 00 18 */	stw r4, 0x18(r16)
/* 805C8CD0  38 03 EB 60 */	addi r0, r3, cal_icon_yajirushi_gfx2@l /* 0x80A1EB60@l */
/* 805C8CD4  90 10 00 1C */	stw r0, 0x1c(r16)
/* 805C8CD8  3A 10 00 20 */	addi r16, r16, 0x20
/* 805C8CDC  48 00 00 18 */	b lbl_805C8CF4
lbl_805C8CE0:
/* 805C8CE0  3C 60 80 A2 */	lis r3, cal_icon_yajirushi_gfx@ha /* 0x80A1EB48@ha */
/* 805C8CE4  90 90 00 18 */	stw r4, 0x18(r16)
/* 805C8CE8  38 03 EB 48 */	addi r0, r3, cal_icon_yajirushi_gfx@l /* 0x80A1EB48@l */
/* 805C8CEC  90 10 00 1C */	stw r0, 0x1c(r16)
/* 805C8CF0  3A 10 00 20 */	addi r16, r16, 0x20
lbl_805C8CF4:
/* 805C8CF4  4B E4 35 21 */	bl Matrix_pull
/* 805C8CF8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805C8CFC  7E 0E 83 78 */	mr r14, r16
/* 805C8D00  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805C8D04  7E 83 A3 78 */	mr r3, r20
/* 805C8D08  90 10 00 00 */	stw r0, 0(r16)
/* 805C8D0C  3A 10 00 08 */	addi r16, r16, 8
/* 805C8D10  4B E4 46 C5 */	bl _Matrix_to_Mtx_new
/* 805C8D14  90 6E 00 04 */	stw r3, 4(r14)
lbl_805C8D18:
/* 805C8D18  92 14 02 D0 */	stw r16, 0x2d0(r20)
lbl_805C8D1C:
/* 805C8D1C  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 805C8D20  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 805C8D24  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 805C8D28  39 61 00 70 */	addi r11, r1, 0x70
/* 805C8D2C  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 805C8D30  4B AD 21 B5 */	bl __restore_gpr
/* 805C8D34  80 01 00 94 */	lwz r0, 0x94(r1)
/* 805C8D38  7C 08 03 A6 */	mtlr r0
/* 805C8D3C  38 21 00 90 */	addi r1, r1, 0x90
/* 805C8D40  4E 80 00 20 */	blr 
