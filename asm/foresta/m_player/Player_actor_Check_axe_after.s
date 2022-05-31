lbl_804D81F8:
/* 804D81F8  94 21 FD B0 */	stwu r1, -0x250(r1)
/* 804D81FC  7C 08 02 A6 */	mflr r0
/* 804D8200  90 01 02 54 */	stw r0, 0x254(r1)
/* 804D8204  DB E1 02 40 */	stfd f31, 0x240(r1)
/* 804D8208  F3 E1 02 48 */	psq_st f31, 584(r1), 0, 0 /* qr0 */
/* 804D820C  DB C1 02 30 */	stfd f30, 0x230(r1)
/* 804D8210  F3 C1 02 38 */	psq_st f30, 568(r1), 0, 0 /* qr0 */
/* 804D8214  DB A1 02 20 */	stfd f29, 0x220(r1)
/* 804D8218  F3 A1 02 28 */	psq_st f29, 552(r1), 0, 0 /* qr0 */
/* 804D821C  39 61 02 20 */	addi r11, r1, 0x220
/* 804D8220  4B BC 2C 85 */	bl func_8009AEA4
/* 804D8224  7C BE 2B 78 */	mr r30, r5
/* 804D8228  38 00 00 00 */	li r0, 0
/* 804D822C  B0 05 00 00 */	sth r0, 0(r5)
/* 804D8230  7C DF 33 78 */	mr r31, r6
/* 804D8234  7C 71 1B 78 */	mr r17, r3
/* 804D8238  7C 9D 23 78 */	mr r29, r4
/* 804D823C  90 06 00 00 */	stw r0, 0(r6)
/* 804D8240  4B FF EA 3D */	bl Player_actor_Check_OBJtoLine_forItem_axe
/* 804D8244  2C 03 00 00 */	cmpwi r3, 0
/* 804D8248  41 82 00 68 */	beq lbl_804D82B0
/* 804D824C  80 91 0F 64 */	lwz r4, 0xf64(r17)
/* 804D8250  80 B1 0F 58 */	lwz r5, 0xf58(r17)
/* 804D8254  80 64 00 38 */	lwz r3, 0x38(r4)
/* 804D8258  80 04 00 3C */	lwz r0, 0x3c(r4)
/* 804D825C  28 05 00 00 */	cmplwi r5, 0
/* 804D8260  90 7D 00 00 */	stw r3, 0(r29)
/* 804D8264  90 1D 00 04 */	stw r0, 4(r29)
/* 804D8268  80 04 00 40 */	lwz r0, 0x40(r4)
/* 804D826C  90 1D 00 08 */	stw r0, 8(r29)
/* 804D8270  90 BF 00 00 */	stw r5, 0(r31)
/* 804D8274  41 82 00 34 */	beq lbl_804D82A8
/* 804D8278  A8 05 00 00 */	lha r0, 0(r5)
/* 804D827C  2C 00 00 09 */	cmpwi r0, 9
/* 804D8280  40 82 00 20 */	bne lbl_804D82A0
/* 804D8284  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804D8288  C0 05 00 74 */	lfs f0, 0x74(r5)
/* 804D828C  C0 23 65 68 */	lfs f1, lit_604@l(r3)  /* 0x80646568@l */
/* 804D8290  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804D8294  40 82 00 1C */	bne lbl_804D82B0
/* 804D8298  38 60 00 01 */	li r3, 1
/* 804D829C  48 00 10 7C */	b lbl_804D9318
lbl_804D82A0:
/* 804D82A0  38 60 00 01 */	li r3, 1
/* 804D82A4  48 00 10 74 */	b lbl_804D9318
lbl_804D82A8:
/* 804D82A8  38 60 00 01 */	li r3, 1
/* 804D82AC  48 00 10 6C */	b lbl_804D9318
lbl_804D82B0:
/* 804D82B0  AB 31 00 DE */	lha r25, 0xde(r17)
/* 804D82B4  7E 23 8B 78 */	mr r3, r17
/* 804D82B8  38 81 00 48 */	addi r4, r1, 0x48
/* 804D82BC  3A C0 FF FF */	li r22, -1
/* 804D82C0  3A A0 FF FF */	li r21, -1
/* 804D82C4  3A 80 FF FF */	li r20, -1
/* 804D82C8  3A 60 FF FF */	li r19, -1
/* 804D82CC  4B FF E7 41 */	bl Player_actor_Get_player_move_position
/* 804D82D0  3C 60 80 64 */	lis r3, lit_1165@ha /* 0x80646A24@ha */
/* 804D82D4  3C 00 43 30 */	lis r0, 0x4330
/* 804D82D8  38 83 6A 24 */	addi r4, r3, lit_1165@l /* 0x80646A24@l */
/* 804D82DC  C0 81 00 48 */	lfs f4, 0x48(r1)
/* 804D82E0  C0 64 00 00 */	lfs f3, 0(r4)
/* 804D82E4  3C 60 80 64 */	lis r3, lit_1627@ha /* 0x80646A54@ha */
/* 804D82E8  C0 A1 00 50 */	lfs f5, 0x50(r1)
/* 804D82EC  EC 24 18 24 */	fdivs f1, f4, f3
/* 804D82F0  90 01 01 C0 */	stw r0, 0x1c0(r1)
/* 804D82F4  C8 43 6A 54 */	lfd f2, lit_1627@l(r3)  /* 0x80646A54@l */
/* 804D82F8  90 01 01 D0 */	stw r0, 0x1d0(r1)
/* 804D82FC  EC 05 18 24 */	fdivs f0, f5, f3
/* 804D8300  FC 20 08 1E */	fctiwz f1, f1
/* 804D8304  FC 00 00 1E */	fctiwz f0, f0
/* 804D8308  D8 21 01 B8 */	stfd f1, 0x1b8(r1)
/* 804D830C  80 01 01 BC */	lwz r0, 0x1bc(r1)
/* 804D8310  D8 01 01 C8 */	stfd f0, 0x1c8(r1)
/* 804D8314  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804D8318  90 01 01 C4 */	stw r0, 0x1c4(r1)
/* 804D831C  80 01 01 CC */	lwz r0, 0x1cc(r1)
/* 804D8320  C8 01 01 C0 */	lfd f0, 0x1c0(r1)
/* 804D8324  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804D8328  EC 20 10 28 */	fsubs f1, f0, f2
/* 804D832C  90 01 01 D4 */	stw r0, 0x1d4(r1)
/* 804D8330  C8 01 01 D0 */	lfd f0, 0x1d0(r1)
/* 804D8334  EC 23 00 72 */	fmuls f1, f3, f1
/* 804D8338  EC 00 10 28 */	fsubs f0, f0, f2
/* 804D833C  FC 01 20 00 */	fcmpu cr0, f1, f4
/* 804D8340  EC 03 00 32 */	fmuls f0, f3, f0
/* 804D8344  40 82 00 14 */	bne lbl_804D8358
/* 804D8348  FC 00 28 00 */	fcmpu cr0, f0, f5
/* 804D834C  40 82 00 0C */	bne lbl_804D8358
/* 804D8350  38 60 00 00 */	li r3, 0
/* 804D8354  48 00 0F C4 */	b lbl_804D9318
lbl_804D8358:
/* 804D8358  FC 01 20 00 */	fcmpu cr0, f1, f4
/* 804D835C  40 82 00 4C */	bne lbl_804D83A8
/* 804D8360  3C 80 80 64 */	lis r4, lit_2591@ha /* 0x80646C44@ha */
/* 804D8364  3C 60 80 64 */	lis r3, lit_1165@ha /* 0x80646A24@ha */
/* 804D8368  C0 24 6C 44 */	lfs f1, lit_2591@l(r4)  /* 0x80646C44@l */
/* 804D836C  3B 00 00 04 */	li r24, 4
/* 804D8370  C0 03 6A 24 */	lfs f0, lit_1165@l(r3)  /* 0x80646A24@l */
/* 804D8374  EC 61 20 2A */	fadds f3, f1, f4
/* 804D8378  EC 44 08 28 */	fsubs f2, f4, f1
/* 804D837C  EC 25 00 28 */	fsubs f1, f5, f0
/* 804D8380  EC 00 28 2A */	fadds f0, f0, f5
/* 804D8384  D0 61 01 0C */	stfs f3, 0x10c(r1)
/* 804D8388  D0 61 00 F4 */	stfs f3, 0xf4(r1)
/* 804D838C  D0 41 01 18 */	stfs f2, 0x118(r1)
/* 804D8390  D0 41 01 00 */	stfs f2, 0x100(r1)
/* 804D8394  D0 21 01 08 */	stfs f1, 0x108(r1)
/* 804D8398  D0 21 00 FC */	stfs f1, 0xfc(r1)
/* 804D839C  D0 01 01 20 */	stfs f0, 0x120(r1)
/* 804D83A0  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 804D83A4  48 00 00 C0 */	b lbl_804D8464
lbl_804D83A8:
/* 804D83A8  FC 00 28 00 */	fcmpu cr0, f0, f5
/* 804D83AC  40 82 00 4C */	bne lbl_804D83F8
/* 804D83B0  3C 80 80 64 */	lis r4, lit_1165@ha /* 0x80646A24@ha */
/* 804D83B4  3C 60 80 64 */	lis r3, lit_2591@ha /* 0x80646C44@ha */
/* 804D83B8  C0 24 6A 24 */	lfs f1, lit_1165@l(r4)  /* 0x80646A24@l */
/* 804D83BC  3B 00 00 04 */	li r24, 4
/* 804D83C0  C0 03 6C 44 */	lfs f0, lit_2591@l(r3)  /* 0x80646C44@l */
/* 804D83C4  EC 61 20 2A */	fadds f3, f1, f4
/* 804D83C8  EC 44 08 28 */	fsubs f2, f4, f1
/* 804D83CC  EC 25 00 28 */	fsubs f1, f5, f0
/* 804D83D0  EC 00 28 2A */	fadds f0, f0, f5
/* 804D83D4  D0 61 01 0C */	stfs f3, 0x10c(r1)
/* 804D83D8  D0 61 00 F4 */	stfs f3, 0xf4(r1)
/* 804D83DC  D0 41 01 18 */	stfs f2, 0x118(r1)
/* 804D83E0  D0 41 01 00 */	stfs f2, 0x100(r1)
/* 804D83E4  D0 21 01 08 */	stfs f1, 0x108(r1)
/* 804D83E8  D0 21 00 FC */	stfs f1, 0xfc(r1)
/* 804D83EC  D0 01 01 20 */	stfs f0, 0x120(r1)
/* 804D83F0  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 804D83F4  48 00 00 70 */	b lbl_804D8464
lbl_804D83F8:
/* 804D83F8  3C 60 80 64 */	lis r3, lit_1165@ha /* 0x80646A24@ha */
/* 804D83FC  D0 81 01 3C */	stfs f4, 0x13c(r1)
/* 804D8400  C0 03 6A 24 */	lfs f0, lit_1165@l(r3)  /* 0x80646A24@l */
/* 804D8404  3A C0 00 03 */	li r22, 3
/* 804D8408  D0 81 01 00 */	stfs f4, 0x100(r1)
/* 804D840C  3A A0 00 04 */	li r21, 4
/* 804D8410  EC 64 00 28 */	fsubs f3, f4, f0
/* 804D8414  3A 80 00 01 */	li r20, 1
/* 804D8418  EC 40 20 2A */	fadds f2, f0, f4
/* 804D841C  D0 A1 01 2C */	stfs f5, 0x12c(r1)
/* 804D8420  EC 25 00 28 */	fsubs f1, f5, f0
/* 804D8424  3A 60 00 06 */	li r19, 6
/* 804D8428  EC 00 28 2A */	fadds f0, f0, f5
/* 804D842C  D0 61 01 30 */	stfs f3, 0x130(r1)
/* 804D8430  3B 00 00 08 */	li r24, 8
/* 804D8434  D0 61 01 18 */	stfs f3, 0x118(r1)
/* 804D8438  D0 61 00 F4 */	stfs f3, 0xf4(r1)
/* 804D843C  D0 41 01 48 */	stfs f2, 0x148(r1)
/* 804D8440  D0 41 01 24 */	stfs f2, 0x124(r1)
/* 804D8444  D0 41 01 0C */	stfs f2, 0x10c(r1)
/* 804D8448  D0 21 01 14 */	stfs f1, 0x114(r1)
/* 804D844C  D0 21 01 08 */	stfs f1, 0x108(r1)
/* 804D8450  D0 21 00 FC */	stfs f1, 0xfc(r1)
/* 804D8454  D0 A1 01 20 */	stfs f5, 0x120(r1)
/* 804D8458  D0 01 01 50 */	stfs f0, 0x150(r1)
/* 804D845C  D0 01 01 44 */	stfs f0, 0x144(r1)
/* 804D8460  D0 01 01 38 */	stfs f0, 0x138(r1)
lbl_804D8464:
/* 804D8464  3B 81 00 F4 */	addi r28, r1, 0xf4
/* 804D8468  3B 61 00 D4 */	addi r27, r1, 0xd4
/* 804D846C  3A E0 00 00 */	li r23, 0
/* 804D8470  3A 20 00 00 */	li r17, 0
/* 804D8474  3A 40 00 00 */	li r18, 0
/* 804D8478  48 00 00 C0 */	b lbl_804D8538
lbl_804D847C:
/* 804D847C  7C 9C 92 14 */	add r4, r28, r18
/* 804D8480  3B 41 01 54 */	addi r26, r1, 0x154
/* 804D8484  80 C4 00 00 */	lwz r6, 0(r4)
/* 804D8488  7F 5A 92 14 */	add r26, r26, r18
/* 804D848C  80 A4 00 04 */	lwz r5, 4(r4)
/* 804D8490  7F 43 D3 78 */	mr r3, r26
/* 804D8494  80 04 00 08 */	lwz r0, 8(r4)
/* 804D8498  38 81 00 2C */	addi r4, r1, 0x2c
/* 804D849C  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 804D84A0  90 A1 00 30 */	stw r5, 0x30(r1)
/* 804D84A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 804D84A8  4B EC D0 95 */	bl mFI_Wpos2UtCenterWpos
/* 804D84AC  7C 7B 89 2E */	stwx r3, r27, r17
/* 804D84B0  7C 1B 88 2E */	lwzx r0, r27, r17
/* 804D84B4  2C 00 00 00 */	cmpwi r0, 0
/* 804D84B8  41 82 00 74 */	beq lbl_804D852C
/* 804D84BC  C0 7A 00 00 */	lfs f3, 0(r26)
/* 804D84C0  C0 41 00 48 */	lfs f2, 0x48(r1)
/* 804D84C4  C0 3A 00 08 */	lfs f1, 8(r26)
/* 804D84C8  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 804D84CC  EF C3 10 28 */	fsubs f30, f3, f2
/* 804D84D0  EF A1 00 28 */	fsubs f29, f1, f0
/* 804D84D4  FC 20 F0 90 */	fmr f1, f30
/* 804D84D8  FC 40 E8 90 */	fmr f2, f29
/* 804D84DC  4B F3 07 CD */	bl Math3DVecLength2D
/* 804D84E0  FF E0 08 90 */	fmr f31, f1
/* 804D84E4  FC 20 E8 90 */	fmr f1, f29
/* 804D84E8  FC 40 F0 90 */	fmr f2, f30
/* 804D84EC  4B F3 3B 15 */	bl atans_table
/* 804D84F0  7C 60 07 34 */	extsh r0, r3
/* 804D84F4  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 804D84F8  7C 99 00 50 */	subf r4, r25, r0
/* 804D84FC  7C 85 FE 70 */	srawi r5, r4, 0x1f
/* 804D8500  38 03 80 00 */	addi r0, r3, 0x8000 /* 0x00008000@l */
/* 804D8504  7C A4 22 78 */	xor r4, r5, r4
/* 804D8508  7C 85 20 50 */	subf r4, r5, r4
/* 804D850C  7C 04 00 00 */	cmpw r4, r0
/* 804D8510  7C 80 23 78 */	mr r0, r4
/* 804D8514  40 81 00 08 */	ble lbl_804D851C
/* 804D8518  7C 04 18 50 */	subf r0, r4, r3
lbl_804D851C:
/* 804D851C  38 81 00 B4 */	addi r4, r1, 0xb4
/* 804D8520  38 61 00 94 */	addi r3, r1, 0x94
/* 804D8524  7C 04 89 2E */	stwx r0, r4, r17
/* 804D8528  7F E3 8D 2E */	stfsx f31, r3, r17
lbl_804D852C:
/* 804D852C  3A F7 00 01 */	addi r23, r23, 1
/* 804D8530  3A 31 00 04 */	addi r17, r17, 4
/* 804D8534  3A 52 00 0C */	addi r18, r18, 0xc
lbl_804D8538:
/* 804D8538  7C 17 C0 00 */	cmpw r23, r24
/* 804D853C  41 80 FF 40 */	blt lbl_804D847C
/* 804D8540  3C 60 80 64 */	lis r3, lit_1870@ha /* 0x80646C04@ha */
/* 804D8544  38 00 00 04 */	li r0, 4
/* 804D8548  38 63 6C 04 */	addi r3, r3, lit_1870@l /* 0x80646C04@l */
/* 804D854C  38 A1 00 70 */	addi r5, r1, 0x70
/* 804D8550  38 83 FF FC */	addi r4, r3, -4
/* 804D8554  7C 09 03 A6 */	mtctr r0
lbl_804D8558:
/* 804D8558  80 64 00 04 */	lwz r3, 4(r4)
/* 804D855C  84 04 00 08 */	lwzu r0, 8(r4)
/* 804D8560  90 65 00 04 */	stw r3, 4(r5)
/* 804D8564  94 05 00 08 */	stwu r0, 8(r5)
/* 804D8568  42 00 FF F0 */	bdnz lbl_804D8558
/* 804D856C  3B 81 00 D4 */	addi r28, r1, 0xd4
/* 804D8570  3B 60 00 00 */	li r27, 0
/* 804D8574  3B 20 00 00 */	li r25, 0
/* 804D8578  3A 40 00 00 */	li r18, 0
/* 804D857C  3A 20 00 00 */	li r17, 0
/* 804D8580  48 00 03 F0 */	b lbl_804D8970
lbl_804D8584:
/* 804D8584  7C 1C 88 2E */	lwzx r0, r28, r17
/* 804D8588  2C 00 00 00 */	cmpwi r0, 0
/* 804D858C  41 82 03 D4 */	beq lbl_804D8960
/* 804D8590  3B 41 01 54 */	addi r26, r1, 0x154
/* 804D8594  38 61 00 20 */	addi r3, r1, 0x20
/* 804D8598  7F 5A 92 14 */	add r26, r26, r18
/* 804D859C  80 BA 00 00 */	lwz r5, 0(r26)
/* 804D85A0  80 9A 00 04 */	lwz r4, 4(r26)
/* 804D85A4  80 1A 00 08 */	lwz r0, 8(r26)
/* 804D85A8  90 A1 00 20 */	stw r5, 0x20(r1)
/* 804D85AC  90 81 00 24 */	stw r4, 0x24(r1)
/* 804D85B0  90 01 00 28 */	stw r0, 0x28(r1)
/* 804D85B4  4B EC EE 7D */	bl mFI_GetUnitFG
/* 804D85B8  28 03 00 00 */	cmplwi r3, 0
/* 804D85BC  41 82 03 A4 */	beq lbl_804D8960
/* 804D85C0  A2 E3 00 00 */	lhz r23, 0(r3)
/* 804D85C4  38 00 00 00 */	li r0, 0
/* 804D85C8  28 17 08 01 */	cmplwi r23, 0x801
/* 804D85CC  41 82 02 DC */	beq lbl_804D88A8
/* 804D85D0  28 17 08 06 */	cmplwi r23, 0x806
/* 804D85D4  41 82 02 D4 */	beq lbl_804D88A8
/* 804D85D8  28 17 08 0E */	cmplwi r23, 0x80e
/* 804D85DC  41 82 02 CC */	beq lbl_804D88A8
/* 804D85E0  28 17 08 16 */	cmplwi r23, 0x816
/* 804D85E4  41 82 02 C4 */	beq lbl_804D88A8
/* 804D85E8  28 17 08 1E */	cmplwi r23, 0x81e
/* 804D85EC  41 82 02 BC */	beq lbl_804D88A8
/* 804D85F0  28 17 08 26 */	cmplwi r23, 0x826
/* 804D85F4  41 82 02 B4 */	beq lbl_804D88A8
/* 804D85F8  28 17 08 2E */	cmplwi r23, 0x82e
/* 804D85FC  41 82 02 AC */	beq lbl_804D88A8
/* 804D8600  28 17 08 33 */	cmplwi r23, 0x833
/* 804D8604  41 82 02 A4 */	beq lbl_804D88A8
/* 804D8608  28 17 08 38 */	cmplwi r23, 0x838
/* 804D860C  41 82 02 9C */	beq lbl_804D88A8
/* 804D8610  28 17 08 2E */	cmplwi r23, 0x82e
/* 804D8614  41 82 02 94 */	beq lbl_804D88A8
/* 804D8618  28 17 08 33 */	cmplwi r23, 0x833
/* 804D861C  41 82 02 8C */	beq lbl_804D88A8
/* 804D8620  28 17 08 38 */	cmplwi r23, 0x838
/* 804D8624  41 82 02 84 */	beq lbl_804D88A8
/* 804D8628  28 17 08 50 */	cmplwi r23, 0x850
/* 804D862C  41 82 02 7C */	beq lbl_804D88A8
/* 804D8630  28 17 08 55 */	cmplwi r23, 0x855
/* 804D8634  41 82 02 74 */	beq lbl_804D88A8
/* 804D8638  28 17 08 5E */	cmplwi r23, 0x85e
/* 804D863C  41 82 02 6C */	beq lbl_804D88A8
/* 804D8640  28 17 08 64 */	cmplwi r23, 0x864
/* 804D8644  41 82 02 64 */	beq lbl_804D88A8
/* 804D8648  28 17 08 02 */	cmplwi r23, 0x802
/* 804D864C  41 82 02 5C */	beq lbl_804D88A8
/* 804D8650  28 17 08 07 */	cmplwi r23, 0x807
/* 804D8654  41 82 02 54 */	beq lbl_804D88A8
/* 804D8658  28 17 08 0F */	cmplwi r23, 0x80f
/* 804D865C  41 82 02 4C */	beq lbl_804D88A8
/* 804D8660  28 17 08 17 */	cmplwi r23, 0x817
/* 804D8664  41 82 02 44 */	beq lbl_804D88A8
/* 804D8668  28 17 08 1F */	cmplwi r23, 0x81f
/* 804D866C  41 82 02 3C */	beq lbl_804D88A8
/* 804D8670  28 17 08 27 */	cmplwi r23, 0x827
/* 804D8674  41 82 02 34 */	beq lbl_804D88A8
/* 804D8678  28 17 08 2F */	cmplwi r23, 0x82f
/* 804D867C  41 82 02 2C */	beq lbl_804D88A8
/* 804D8680  28 17 08 34 */	cmplwi r23, 0x834
/* 804D8684  41 82 02 24 */	beq lbl_804D88A8
/* 804D8688  28 17 08 39 */	cmplwi r23, 0x839
/* 804D868C  41 82 02 1C */	beq lbl_804D88A8
/* 804D8690  28 17 08 2F */	cmplwi r23, 0x82f
/* 804D8694  41 82 02 14 */	beq lbl_804D88A8
/* 804D8698  28 17 08 34 */	cmplwi r23, 0x834
/* 804D869C  41 82 02 0C */	beq lbl_804D88A8
/* 804D86A0  28 17 08 39 */	cmplwi r23, 0x839
/* 804D86A4  41 82 02 04 */	beq lbl_804D88A8
/* 804D86A8  28 17 08 51 */	cmplwi r23, 0x851
/* 804D86AC  41 82 01 FC */	beq lbl_804D88A8
/* 804D86B0  28 17 08 56 */	cmplwi r23, 0x856
/* 804D86B4  41 82 01 F4 */	beq lbl_804D88A8
/* 804D86B8  28 17 08 5F */	cmplwi r23, 0x85f
/* 804D86BC  41 82 01 EC */	beq lbl_804D88A8
/* 804D86C0  28 17 08 65 */	cmplwi r23, 0x865
/* 804D86C4  41 82 01 E4 */	beq lbl_804D88A8
/* 804D86C8  28 17 08 03 */	cmplwi r23, 0x803
/* 804D86CC  41 82 01 DC */	beq lbl_804D88A8
/* 804D86D0  28 17 08 08 */	cmplwi r23, 0x808
/* 804D86D4  41 82 01 D4 */	beq lbl_804D88A8
/* 804D86D8  28 17 08 10 */	cmplwi r23, 0x810
/* 804D86DC  41 82 01 CC */	beq lbl_804D88A8
/* 804D86E0  28 17 08 18 */	cmplwi r23, 0x818
/* 804D86E4  41 82 01 C4 */	beq lbl_804D88A8
/* 804D86E8  28 17 08 20 */	cmplwi r23, 0x820
/* 804D86EC  41 82 01 BC */	beq lbl_804D88A8
/* 804D86F0  28 17 08 28 */	cmplwi r23, 0x828
/* 804D86F4  41 82 01 B4 */	beq lbl_804D88A8
/* 804D86F8  28 17 08 30 */	cmplwi r23, 0x830
/* 804D86FC  41 82 01 AC */	beq lbl_804D88A8
/* 804D8700  28 17 08 35 */	cmplwi r23, 0x835
/* 804D8704  41 82 01 A4 */	beq lbl_804D88A8
/* 804D8708  28 17 08 3A */	cmplwi r23, 0x83a
/* 804D870C  41 82 01 9C */	beq lbl_804D88A8
/* 804D8710  28 17 08 30 */	cmplwi r23, 0x830
/* 804D8714  41 82 01 94 */	beq lbl_804D88A8
/* 804D8718  28 17 08 35 */	cmplwi r23, 0x835
/* 804D871C  41 82 01 8C */	beq lbl_804D88A8
/* 804D8720  28 17 08 3A */	cmplwi r23, 0x83a
/* 804D8724  41 82 01 84 */	beq lbl_804D88A8
/* 804D8728  28 17 08 52 */	cmplwi r23, 0x852
/* 804D872C  41 82 01 7C */	beq lbl_804D88A8
/* 804D8730  28 17 08 57 */	cmplwi r23, 0x857
/* 804D8734  41 82 01 74 */	beq lbl_804D88A8
/* 804D8738  28 17 08 60 */	cmplwi r23, 0x860
/* 804D873C  41 82 01 6C */	beq lbl_804D88A8
/* 804D8740  28 17 08 66 */	cmplwi r23, 0x866
/* 804D8744  41 82 01 64 */	beq lbl_804D88A8
/* 804D8748  28 17 08 04 */	cmplwi r23, 0x804
/* 804D874C  41 82 01 5C */	beq lbl_804D88A8
/* 804D8750  28 17 08 0C */	cmplwi r23, 0x80c
/* 804D8754  41 82 01 54 */	beq lbl_804D88A8
/* 804D8758  28 17 08 14 */	cmplwi r23, 0x814
/* 804D875C  41 82 01 4C */	beq lbl_804D88A8
/* 804D8760  28 17 08 1C */	cmplwi r23, 0x81c
/* 804D8764  41 82 01 44 */	beq lbl_804D88A8
/* 804D8768  28 17 08 24 */	cmplwi r23, 0x824
/* 804D876C  41 82 01 3C */	beq lbl_804D88A8
/* 804D8770  28 17 08 2C */	cmplwi r23, 0x82c
/* 804D8774  41 82 01 34 */	beq lbl_804D88A8
/* 804D8778  28 17 08 31 */	cmplwi r23, 0x831
/* 804D877C  41 82 01 2C */	beq lbl_804D88A8
/* 804D8780  28 17 08 36 */	cmplwi r23, 0x836
/* 804D8784  41 82 01 24 */	beq lbl_804D88A8
/* 804D8788  28 17 08 3B */	cmplwi r23, 0x83b
/* 804D878C  41 82 01 1C */	beq lbl_804D88A8
/* 804D8790  28 17 08 53 */	cmplwi r23, 0x853
/* 804D8794  41 82 01 14 */	beq lbl_804D88A8
/* 804D8798  28 17 08 5B */	cmplwi r23, 0x85b
/* 804D879C  41 82 01 0C */	beq lbl_804D88A8
/* 804D87A0  28 17 08 61 */	cmplwi r23, 0x861
/* 804D87A4  41 82 01 04 */	beq lbl_804D88A8
/* 804D87A8  28 17 08 68 */	cmplwi r23, 0x868
/* 804D87AC  41 82 00 FC */	beq lbl_804D88A8
/* 804D87B0  28 17 08 67 */	cmplwi r23, 0x867
/* 804D87B4  41 82 00 F4 */	beq lbl_804D88A8
/* 804D87B8  28 17 08 09 */	cmplwi r23, 0x809
/* 804D87BC  41 82 00 EC */	beq lbl_804D88A8
/* 804D87C0  28 17 08 11 */	cmplwi r23, 0x811
/* 804D87C4  41 82 00 E4 */	beq lbl_804D88A8
/* 804D87C8  28 17 08 19 */	cmplwi r23, 0x819
/* 804D87CC  41 82 00 DC */	beq lbl_804D88A8
/* 804D87D0  28 17 08 21 */	cmplwi r23, 0x821
/* 804D87D4  41 82 00 D4 */	beq lbl_804D88A8
/* 804D87D8  28 17 08 29 */	cmplwi r23, 0x829
/* 804D87DC  41 82 00 CC */	beq lbl_804D88A8
/* 804D87E0  28 17 08 58 */	cmplwi r23, 0x858
/* 804D87E4  41 82 00 C4 */	beq lbl_804D88A8
/* 804D87E8  28 17 08 0A */	cmplwi r23, 0x80a
/* 804D87EC  41 82 00 BC */	beq lbl_804D88A8
/* 804D87F0  28 17 08 12 */	cmplwi r23, 0x812
/* 804D87F4  41 82 00 B4 */	beq lbl_804D88A8
/* 804D87F8  28 17 08 1A */	cmplwi r23, 0x81a
/* 804D87FC  41 82 00 AC */	beq lbl_804D88A8
/* 804D8800  28 17 08 22 */	cmplwi r23, 0x822
/* 804D8804  41 82 00 A4 */	beq lbl_804D88A8
/* 804D8808  28 17 08 2A */	cmplwi r23, 0x82a
/* 804D880C  41 82 00 9C */	beq lbl_804D88A8
/* 804D8810  28 17 08 59 */	cmplwi r23, 0x859
/* 804D8814  41 82 00 94 */	beq lbl_804D88A8
/* 804D8818  28 17 08 0B */	cmplwi r23, 0x80b
/* 804D881C  41 82 00 8C */	beq lbl_804D88A8
/* 804D8820  28 17 08 13 */	cmplwi r23, 0x813
/* 804D8824  41 82 00 84 */	beq lbl_804D88A8
/* 804D8828  28 17 08 1B */	cmplwi r23, 0x81b
/* 804D882C  41 82 00 7C */	beq lbl_804D88A8
/* 804D8830  28 17 08 23 */	cmplwi r23, 0x823
/* 804D8834  41 82 00 74 */	beq lbl_804D88A8
/* 804D8838  28 17 08 2B */	cmplwi r23, 0x82b
/* 804D883C  41 82 00 6C */	beq lbl_804D88A8
/* 804D8840  28 17 08 5A */	cmplwi r23, 0x85a
/* 804D8844  41 82 00 64 */	beq lbl_804D88A8
/* 804D8848  28 17 00 5E */	cmplwi r23, 0x5e
/* 804D884C  41 82 00 5C */	beq lbl_804D88A8
/* 804D8850  28 17 00 5F */	cmplwi r23, 0x5f
/* 804D8854  41 82 00 54 */	beq lbl_804D88A8
/* 804D8858  28 17 00 60 */	cmplwi r23, 0x60
/* 804D885C  41 82 00 4C */	beq lbl_804D88A8
/* 804D8860  28 17 00 61 */	cmplwi r23, 0x61
/* 804D8864  41 82 00 44 */	beq lbl_804D88A8
/* 804D8868  28 17 00 69 */	cmplwi r23, 0x69
/* 804D886C  41 82 00 3C */	beq lbl_804D88A8
/* 804D8870  28 17 00 78 */	cmplwi r23, 0x78
/* 804D8874  41 82 00 34 */	beq lbl_804D88A8
/* 804D8878  28 17 00 79 */	cmplwi r23, 0x79
/* 804D887C  41 82 00 2C */	beq lbl_804D88A8
/* 804D8880  28 17 00 7A */	cmplwi r23, 0x7a
/* 804D8884  41 82 00 24 */	beq lbl_804D88A8
/* 804D8888  28 17 00 82 */	cmplwi r23, 0x82
/* 804D888C  41 82 00 1C */	beq lbl_804D88A8
/* 804D8890  28 17 00 7F */	cmplwi r23, 0x7f
/* 804D8894  41 82 00 14 */	beq lbl_804D88A8
/* 804D8898  28 17 00 80 */	cmplwi r23, 0x80
/* 804D889C  41 82 00 0C */	beq lbl_804D88A8
/* 804D88A0  28 17 00 81 */	cmplwi r23, 0x81
/* 804D88A4  40 82 00 08 */	bne lbl_804D88AC
lbl_804D88A8:
/* 804D88A8  38 00 00 01 */	li r0, 1
lbl_804D88AC:
/* 804D88AC  2C 00 00 00 */	cmpwi r0, 0
/* 804D88B0  40 82 00 3C */	bne lbl_804D88EC
/* 804D88B4  28 17 00 63 */	cmplwi r23, 0x63
/* 804D88B8  38 00 00 00 */	li r0, 0
/* 804D88BC  41 80 00 0C */	blt lbl_804D88C8
/* 804D88C0  28 17 00 67 */	cmplwi r23, 0x67
/* 804D88C4  40 81 00 1C */	ble lbl_804D88E0
lbl_804D88C8:
/* 804D88C8  28 17 00 6A */	cmplwi r23, 0x6a
/* 804D88CC  41 80 00 0C */	blt lbl_804D88D8
/* 804D88D0  28 17 00 6E */	cmplwi r23, 0x6e
/* 804D88D4  40 81 00 0C */	ble lbl_804D88E0
lbl_804D88D8:
/* 804D88D8  28 17 00 6F */	cmplwi r23, 0x6f
/* 804D88DC  40 82 00 08 */	bne lbl_804D88E4
lbl_804D88E0:
/* 804D88E0  38 00 00 01 */	li r0, 1
lbl_804D88E4:
/* 804D88E4  2C 00 00 00 */	cmpwi r0, 0
/* 804D88E8  41 82 00 78 */	beq lbl_804D8960
lbl_804D88EC:
/* 804D88EC  80 DA 00 00 */	lwz r6, 0(r26)
/* 804D88F0  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804D88F4  80 BA 00 04 */	lwz r5, 4(r26)
/* 804D88F8  38 83 65 68 */	addi r4, r3, lit_604@l /* 0x80646568@l */
/* 804D88FC  80 1A 00 08 */	lwz r0, 8(r26)
/* 804D8900  38 61 00 14 */	addi r3, r1, 0x14
/* 804D8904  90 C1 00 14 */	stw r6, 0x14(r1)
/* 804D8908  C0 24 00 00 */	lfs f1, 0(r4)
/* 804D890C  90 A1 00 18 */	stw r5, 0x18(r1)
/* 804D8910  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804D8914  4B EB 70 85 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804D8918  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 804D891C  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804D8920  EC 21 00 28 */	fsubs f1, f1, f0
/* 804D8924  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804D8928  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D892C  4C 41 13 82 */	cror 2, 1, 2
/* 804D8930  40 82 00 08 */	bne lbl_804D8938
/* 804D8934  48 00 00 08 */	b lbl_804D893C
lbl_804D8938:
/* 804D8938  FC 20 08 50 */	fneg f1, f1
lbl_804D893C:
/* 804D893C  3C 60 80 64 */	lis r3, lit_2591@ha /* 0x80646C44@ha */
/* 804D8940  C0 03 6C 44 */	lfs f0, lit_2591@l(r3)  /* 0x80646C44@l */
/* 804D8944  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D8948  40 80 00 18 */	bge lbl_804D8960
/* 804D894C  38 81 00 38 */	addi r4, r1, 0x38
/* 804D8950  38 61 00 74 */	addi r3, r1, 0x74
/* 804D8954  38 00 00 01 */	li r0, 1
/* 804D8958  7E E4 CB 2E */	sthx r23, r4, r25
/* 804D895C  7C 03 89 2E */	stwx r0, r3, r17
lbl_804D8960:
/* 804D8960  3B 7B 00 01 */	addi r27, r27, 1
/* 804D8964  3B 39 00 02 */	addi r25, r25, 2
/* 804D8968  3A 52 00 0C */	addi r18, r18, 0xc
/* 804D896C  3A 31 00 04 */	addi r17, r17, 4
lbl_804D8970:
/* 804D8970  7C 1B C0 00 */	cmpw r27, r24
/* 804D8974  41 80 FC 10 */	blt lbl_804D8584
/* 804D8978  3C 60 80 64 */	lis r3, lit_2592@ha /* 0x80646C48@ha */
/* 804D897C  38 C1 00 74 */	addi r6, r1, 0x74
/* 804D8980  C0 03 6C 48 */	lfs f0, lit_2592@l(r3)  /* 0x80646C48@l */
/* 804D8984  38 81 00 94 */	addi r4, r1, 0x94
/* 804D8988  38 60 00 00 */	li r3, 0
/* 804D898C  38 00 00 00 */	li r0, 0
/* 804D8990  7F 09 03 A6 */	mtctr r24
/* 804D8994  2C 18 00 00 */	cmpwi r24, 0
/* 804D8998  40 81 00 28 */	ble lbl_804D89C0
lbl_804D899C:
/* 804D899C  7C A6 18 2E */	lwzx r5, r6, r3
/* 804D89A0  2C 05 00 00 */	cmpwi r5, 0
/* 804D89A4  41 82 00 14 */	beq lbl_804D89B8
/* 804D89A8  7C 24 1C 2E */	lfsx f1, r4, r3
/* 804D89AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D89B0  40 81 00 08 */	ble lbl_804D89B8
/* 804D89B4  7C 06 19 2E */	stwx r0, r6, r3
lbl_804D89B8:
/* 804D89B8  38 63 00 04 */	addi r3, r3, 4
/* 804D89BC  42 00 FF E0 */	bdnz lbl_804D899C
lbl_804D89C0:
/* 804D89C0  38 C1 00 74 */	addi r6, r1, 0x74
/* 804D89C4  38 A1 00 B4 */	addi r5, r1, 0xb4
/* 804D89C8  38 60 00 00 */	li r3, 0
/* 804D89CC  38 00 00 00 */	li r0, 0
/* 804D89D0  7F 09 03 A6 */	mtctr r24
/* 804D89D4  2C 18 00 00 */	cmpwi r24, 0
/* 804D89D8  40 81 00 28 */	ble lbl_804D8A00
lbl_804D89DC:
/* 804D89DC  7C 86 18 2E */	lwzx r4, r6, r3
/* 804D89E0  2C 04 00 00 */	cmpwi r4, 0
/* 804D89E4  41 82 00 14 */	beq lbl_804D89F8
/* 804D89E8  7C 85 18 2E */	lwzx r4, r5, r3
/* 804D89EC  2C 04 35 55 */	cmpwi r4, 0x3555
/* 804D89F0  40 81 00 08 */	ble lbl_804D89F8
/* 804D89F4  7C 06 19 2E */	stwx r0, r6, r3
lbl_804D89F8:
/* 804D89F8  38 63 00 04 */	addi r3, r3, 4
/* 804D89FC  42 00 FF E0 */	bdnz lbl_804D89DC
lbl_804D8A00:
/* 804D8A00  2C 16 00 00 */	cmpwi r22, 0
/* 804D8A04  38 00 FF FF */	li r0, -1
/* 804D8A08  3C 60 00 01 */	lis r3, 1
/* 804D8A0C  41 80 00 34 */	blt lbl_804D8A40
/* 804D8A10  56 C6 10 3A */	slwi r6, r22, 2
/* 804D8A14  38 81 00 74 */	addi r4, r1, 0x74
/* 804D8A18  7C 84 30 2E */	lwzx r4, r4, r6
/* 804D8A1C  2C 04 00 00 */	cmpwi r4, 0
/* 804D8A20  41 82 00 20 */	beq lbl_804D8A40
/* 804D8A24  38 81 00 B4 */	addi r4, r1, 0xb4
/* 804D8A28  3C A0 00 01 */	lis r5, 1
/* 804D8A2C  7C 84 30 2E */	lwzx r4, r4, r6
/* 804D8A30  7C 05 20 00 */	cmpw r5, r4
/* 804D8A34  40 81 00 0C */	ble lbl_804D8A40
/* 804D8A38  7C 83 23 78 */	mr r3, r4
/* 804D8A3C  7E C0 B3 78 */	mr r0, r22
lbl_804D8A40:
/* 804D8A40  2C 15 00 00 */	cmpwi r21, 0
/* 804D8A44  41 80 00 30 */	blt lbl_804D8A74
/* 804D8A48  56 A5 10 3A */	slwi r5, r21, 2
/* 804D8A4C  38 81 00 74 */	addi r4, r1, 0x74
/* 804D8A50  7C 84 28 2E */	lwzx r4, r4, r5
/* 804D8A54  2C 04 00 00 */	cmpwi r4, 0
/* 804D8A58  41 82 00 1C */	beq lbl_804D8A74
/* 804D8A5C  38 81 00 B4 */	addi r4, r1, 0xb4
/* 804D8A60  7C 84 28 2E */	lwzx r4, r4, r5
/* 804D8A64  7C 03 20 00 */	cmpw r3, r4
/* 804D8A68  40 81 00 0C */	ble lbl_804D8A74
/* 804D8A6C  7C 83 23 78 */	mr r3, r4
/* 804D8A70  7E A0 AB 78 */	mr r0, r21
lbl_804D8A74:
/* 804D8A74  2C 14 00 00 */	cmpwi r20, 0
/* 804D8A78  41 80 00 30 */	blt lbl_804D8AA8
/* 804D8A7C  56 85 10 3A */	slwi r5, r20, 2
/* 804D8A80  38 81 00 74 */	addi r4, r1, 0x74
/* 804D8A84  7C 84 28 2E */	lwzx r4, r4, r5
/* 804D8A88  2C 04 00 00 */	cmpwi r4, 0
/* 804D8A8C  41 82 00 1C */	beq lbl_804D8AA8
/* 804D8A90  38 81 00 B4 */	addi r4, r1, 0xb4
/* 804D8A94  7C 84 28 2E */	lwzx r4, r4, r5
/* 804D8A98  7C 03 20 00 */	cmpw r3, r4
/* 804D8A9C  40 81 00 0C */	ble lbl_804D8AA8
/* 804D8AA0  7C 83 23 78 */	mr r3, r4
/* 804D8AA4  7E 80 A3 78 */	mr r0, r20
lbl_804D8AA8:
/* 804D8AA8  2C 13 00 00 */	cmpwi r19, 0
/* 804D8AAC  41 80 00 2C */	blt lbl_804D8AD8
/* 804D8AB0  56 65 10 3A */	slwi r5, r19, 2
/* 804D8AB4  38 81 00 74 */	addi r4, r1, 0x74
/* 804D8AB8  7C 84 28 2E */	lwzx r4, r4, r5
/* 804D8ABC  2C 04 00 00 */	cmpwi r4, 0
/* 804D8AC0  41 82 00 18 */	beq lbl_804D8AD8
/* 804D8AC4  38 81 00 B4 */	addi r4, r1, 0xb4
/* 804D8AC8  7C 84 28 2E */	lwzx r4, r4, r5
/* 804D8ACC  7C 03 20 00 */	cmpw r3, r4
/* 804D8AD0  40 81 00 08 */	ble lbl_804D8AD8
/* 804D8AD4  7E 60 9B 78 */	mr r0, r19
lbl_804D8AD8:
/* 804D8AD8  2C 00 00 00 */	cmpwi r0, 0
/* 804D8ADC  41 80 03 30 */	blt lbl_804D8E0C
/* 804D8AE0  1C A0 00 0C */	mulli r5, r0, 0xc
/* 804D8AE4  38 61 01 54 */	addi r3, r1, 0x154
/* 804D8AE8  38 81 01 5C */	addi r4, r1, 0x15c
/* 804D8AEC  54 00 08 3C */	slwi r0, r0, 1
/* 804D8AF0  7C 03 2C 2E */	lfsx f0, r3, r5
/* 804D8AF4  38 61 00 38 */	addi r3, r1, 0x38
/* 804D8AF8  7C 03 02 2E */	lhzx r0, r3, r0
/* 804D8AFC  38 60 00 00 */	li r3, 0
/* 804D8B00  D0 1D 00 00 */	stfs f0, 0(r29)
/* 804D8B04  28 00 08 01 */	cmplwi r0, 0x801
/* 804D8B08  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 804D8B0C  D0 1D 00 04 */	stfs f0, 4(r29)
/* 804D8B10  7C 04 2C 2E */	lfsx f0, r4, r5
/* 804D8B14  D0 1D 00 08 */	stfs f0, 8(r29)
/* 804D8B18  B0 1E 00 00 */	sth r0, 0(r30)
/* 804D8B1C  41 82 02 DC */	beq lbl_804D8DF8
/* 804D8B20  28 00 08 06 */	cmplwi r0, 0x806
/* 804D8B24  41 82 02 D4 */	beq lbl_804D8DF8
/* 804D8B28  28 00 08 0E */	cmplwi r0, 0x80e
/* 804D8B2C  41 82 02 CC */	beq lbl_804D8DF8
/* 804D8B30  28 00 08 16 */	cmplwi r0, 0x816
/* 804D8B34  41 82 02 C4 */	beq lbl_804D8DF8
/* 804D8B38  28 00 08 1E */	cmplwi r0, 0x81e
/* 804D8B3C  41 82 02 BC */	beq lbl_804D8DF8
/* 804D8B40  28 00 08 26 */	cmplwi r0, 0x826
/* 804D8B44  41 82 02 B4 */	beq lbl_804D8DF8
/* 804D8B48  28 00 08 2E */	cmplwi r0, 0x82e
/* 804D8B4C  41 82 02 AC */	beq lbl_804D8DF8
/* 804D8B50  28 00 08 33 */	cmplwi r0, 0x833
/* 804D8B54  41 82 02 A4 */	beq lbl_804D8DF8
/* 804D8B58  28 00 08 38 */	cmplwi r0, 0x838
/* 804D8B5C  41 82 02 9C */	beq lbl_804D8DF8
/* 804D8B60  28 00 08 2E */	cmplwi r0, 0x82e
/* 804D8B64  41 82 02 94 */	beq lbl_804D8DF8
/* 804D8B68  28 00 08 33 */	cmplwi r0, 0x833
/* 804D8B6C  41 82 02 8C */	beq lbl_804D8DF8
/* 804D8B70  28 00 08 38 */	cmplwi r0, 0x838
/* 804D8B74  41 82 02 84 */	beq lbl_804D8DF8
/* 804D8B78  28 00 08 50 */	cmplwi r0, 0x850
/* 804D8B7C  41 82 02 7C */	beq lbl_804D8DF8
/* 804D8B80  28 00 08 55 */	cmplwi r0, 0x855
/* 804D8B84  41 82 02 74 */	beq lbl_804D8DF8
/* 804D8B88  28 00 08 5E */	cmplwi r0, 0x85e
/* 804D8B8C  41 82 02 6C */	beq lbl_804D8DF8
/* 804D8B90  28 00 08 64 */	cmplwi r0, 0x864
/* 804D8B94  41 82 02 64 */	beq lbl_804D8DF8
/* 804D8B98  28 00 08 02 */	cmplwi r0, 0x802
/* 804D8B9C  41 82 02 5C */	beq lbl_804D8DF8
/* 804D8BA0  28 00 08 07 */	cmplwi r0, 0x807
/* 804D8BA4  41 82 02 54 */	beq lbl_804D8DF8
/* 804D8BA8  28 00 08 0F */	cmplwi r0, 0x80f
/* 804D8BAC  41 82 02 4C */	beq lbl_804D8DF8
/* 804D8BB0  28 00 08 17 */	cmplwi r0, 0x817
/* 804D8BB4  41 82 02 44 */	beq lbl_804D8DF8
/* 804D8BB8  28 00 08 1F */	cmplwi r0, 0x81f
/* 804D8BBC  41 82 02 3C */	beq lbl_804D8DF8
/* 804D8BC0  28 00 08 27 */	cmplwi r0, 0x827
/* 804D8BC4  41 82 02 34 */	beq lbl_804D8DF8
/* 804D8BC8  28 00 08 2F */	cmplwi r0, 0x82f
/* 804D8BCC  41 82 02 2C */	beq lbl_804D8DF8
/* 804D8BD0  28 00 08 34 */	cmplwi r0, 0x834
/* 804D8BD4  41 82 02 24 */	beq lbl_804D8DF8
/* 804D8BD8  28 00 08 39 */	cmplwi r0, 0x839
/* 804D8BDC  41 82 02 1C */	beq lbl_804D8DF8
/* 804D8BE0  28 00 08 2F */	cmplwi r0, 0x82f
/* 804D8BE4  41 82 02 14 */	beq lbl_804D8DF8
/* 804D8BE8  28 00 08 34 */	cmplwi r0, 0x834
/* 804D8BEC  41 82 02 0C */	beq lbl_804D8DF8
/* 804D8BF0  28 00 08 39 */	cmplwi r0, 0x839
/* 804D8BF4  41 82 02 04 */	beq lbl_804D8DF8
/* 804D8BF8  28 00 08 51 */	cmplwi r0, 0x851
/* 804D8BFC  41 82 01 FC */	beq lbl_804D8DF8
/* 804D8C00  28 00 08 56 */	cmplwi r0, 0x856
/* 804D8C04  41 82 01 F4 */	beq lbl_804D8DF8
/* 804D8C08  28 00 08 5F */	cmplwi r0, 0x85f
/* 804D8C0C  41 82 01 EC */	beq lbl_804D8DF8
/* 804D8C10  28 00 08 65 */	cmplwi r0, 0x865
/* 804D8C14  41 82 01 E4 */	beq lbl_804D8DF8
/* 804D8C18  28 00 08 03 */	cmplwi r0, 0x803
/* 804D8C1C  41 82 01 DC */	beq lbl_804D8DF8
/* 804D8C20  28 00 08 08 */	cmplwi r0, 0x808
/* 804D8C24  41 82 01 D4 */	beq lbl_804D8DF8
/* 804D8C28  28 00 08 10 */	cmplwi r0, 0x810
/* 804D8C2C  41 82 01 CC */	beq lbl_804D8DF8
/* 804D8C30  28 00 08 18 */	cmplwi r0, 0x818
/* 804D8C34  41 82 01 C4 */	beq lbl_804D8DF8
/* 804D8C38  28 00 08 20 */	cmplwi r0, 0x820
/* 804D8C3C  41 82 01 BC */	beq lbl_804D8DF8
/* 804D8C40  28 00 08 28 */	cmplwi r0, 0x828
/* 804D8C44  41 82 01 B4 */	beq lbl_804D8DF8
/* 804D8C48  28 00 08 30 */	cmplwi r0, 0x830
/* 804D8C4C  41 82 01 AC */	beq lbl_804D8DF8
/* 804D8C50  28 00 08 35 */	cmplwi r0, 0x835
/* 804D8C54  41 82 01 A4 */	beq lbl_804D8DF8
/* 804D8C58  28 00 08 3A */	cmplwi r0, 0x83a
/* 804D8C5C  41 82 01 9C */	beq lbl_804D8DF8
/* 804D8C60  28 00 08 30 */	cmplwi r0, 0x830
/* 804D8C64  41 82 01 94 */	beq lbl_804D8DF8
/* 804D8C68  28 00 08 35 */	cmplwi r0, 0x835
/* 804D8C6C  41 82 01 8C */	beq lbl_804D8DF8
/* 804D8C70  28 00 08 3A */	cmplwi r0, 0x83a
/* 804D8C74  41 82 01 84 */	beq lbl_804D8DF8
/* 804D8C78  28 00 08 52 */	cmplwi r0, 0x852
/* 804D8C7C  41 82 01 7C */	beq lbl_804D8DF8
/* 804D8C80  28 00 08 57 */	cmplwi r0, 0x857
/* 804D8C84  41 82 01 74 */	beq lbl_804D8DF8
/* 804D8C88  28 00 08 60 */	cmplwi r0, 0x860
/* 804D8C8C  41 82 01 6C */	beq lbl_804D8DF8
/* 804D8C90  28 00 08 66 */	cmplwi r0, 0x866
/* 804D8C94  41 82 01 64 */	beq lbl_804D8DF8
/* 804D8C98  28 00 08 04 */	cmplwi r0, 0x804
/* 804D8C9C  41 82 01 5C */	beq lbl_804D8DF8
/* 804D8CA0  28 00 08 0C */	cmplwi r0, 0x80c
/* 804D8CA4  41 82 01 54 */	beq lbl_804D8DF8
/* 804D8CA8  28 00 08 14 */	cmplwi r0, 0x814
/* 804D8CAC  41 82 01 4C */	beq lbl_804D8DF8
/* 804D8CB0  28 00 08 1C */	cmplwi r0, 0x81c
/* 804D8CB4  41 82 01 44 */	beq lbl_804D8DF8
/* 804D8CB8  28 00 08 24 */	cmplwi r0, 0x824
/* 804D8CBC  41 82 01 3C */	beq lbl_804D8DF8
/* 804D8CC0  28 00 08 2C */	cmplwi r0, 0x82c
/* 804D8CC4  41 82 01 34 */	beq lbl_804D8DF8
/* 804D8CC8  28 00 08 31 */	cmplwi r0, 0x831
/* 804D8CCC  41 82 01 2C */	beq lbl_804D8DF8
/* 804D8CD0  28 00 08 36 */	cmplwi r0, 0x836
/* 804D8CD4  41 82 01 24 */	beq lbl_804D8DF8
/* 804D8CD8  28 00 08 3B */	cmplwi r0, 0x83b
/* 804D8CDC  41 82 01 1C */	beq lbl_804D8DF8
/* 804D8CE0  28 00 08 53 */	cmplwi r0, 0x853
/* 804D8CE4  41 82 01 14 */	beq lbl_804D8DF8
/* 804D8CE8  28 00 08 5B */	cmplwi r0, 0x85b
/* 804D8CEC  41 82 01 0C */	beq lbl_804D8DF8
/* 804D8CF0  28 00 08 61 */	cmplwi r0, 0x861
/* 804D8CF4  41 82 01 04 */	beq lbl_804D8DF8
/* 804D8CF8  28 00 08 68 */	cmplwi r0, 0x868
/* 804D8CFC  41 82 00 FC */	beq lbl_804D8DF8
/* 804D8D00  28 00 08 67 */	cmplwi r0, 0x867
/* 804D8D04  41 82 00 F4 */	beq lbl_804D8DF8
/* 804D8D08  28 00 08 09 */	cmplwi r0, 0x809
/* 804D8D0C  41 82 00 EC */	beq lbl_804D8DF8
/* 804D8D10  28 00 08 11 */	cmplwi r0, 0x811
/* 804D8D14  41 82 00 E4 */	beq lbl_804D8DF8
/* 804D8D18  28 00 08 19 */	cmplwi r0, 0x819
/* 804D8D1C  41 82 00 DC */	beq lbl_804D8DF8
/* 804D8D20  28 00 08 21 */	cmplwi r0, 0x821
/* 804D8D24  41 82 00 D4 */	beq lbl_804D8DF8
/* 804D8D28  28 00 08 29 */	cmplwi r0, 0x829
/* 804D8D2C  41 82 00 CC */	beq lbl_804D8DF8
/* 804D8D30  28 00 08 58 */	cmplwi r0, 0x858
/* 804D8D34  41 82 00 C4 */	beq lbl_804D8DF8
/* 804D8D38  28 00 08 0A */	cmplwi r0, 0x80a
/* 804D8D3C  41 82 00 BC */	beq lbl_804D8DF8
/* 804D8D40  28 00 08 12 */	cmplwi r0, 0x812
/* 804D8D44  41 82 00 B4 */	beq lbl_804D8DF8
/* 804D8D48  28 00 08 1A */	cmplwi r0, 0x81a
/* 804D8D4C  41 82 00 AC */	beq lbl_804D8DF8
/* 804D8D50  28 00 08 22 */	cmplwi r0, 0x822
/* 804D8D54  41 82 00 A4 */	beq lbl_804D8DF8
/* 804D8D58  28 00 08 2A */	cmplwi r0, 0x82a
/* 804D8D5C  41 82 00 9C */	beq lbl_804D8DF8
/* 804D8D60  28 00 08 59 */	cmplwi r0, 0x859
/* 804D8D64  41 82 00 94 */	beq lbl_804D8DF8
/* 804D8D68  28 00 08 0B */	cmplwi r0, 0x80b
/* 804D8D6C  41 82 00 8C */	beq lbl_804D8DF8
/* 804D8D70  28 00 08 13 */	cmplwi r0, 0x813
/* 804D8D74  41 82 00 84 */	beq lbl_804D8DF8
/* 804D8D78  28 00 08 1B */	cmplwi r0, 0x81b
/* 804D8D7C  41 82 00 7C */	beq lbl_804D8DF8
/* 804D8D80  28 00 08 23 */	cmplwi r0, 0x823
/* 804D8D84  41 82 00 74 */	beq lbl_804D8DF8
/* 804D8D88  28 00 08 2B */	cmplwi r0, 0x82b
/* 804D8D8C  41 82 00 6C */	beq lbl_804D8DF8
/* 804D8D90  28 00 08 5A */	cmplwi r0, 0x85a
/* 804D8D94  41 82 00 64 */	beq lbl_804D8DF8
/* 804D8D98  28 00 00 5E */	cmplwi r0, 0x5e
/* 804D8D9C  41 82 00 5C */	beq lbl_804D8DF8
/* 804D8DA0  28 00 00 5F */	cmplwi r0, 0x5f
/* 804D8DA4  41 82 00 54 */	beq lbl_804D8DF8
/* 804D8DA8  28 00 00 60 */	cmplwi r0, 0x60
/* 804D8DAC  41 82 00 4C */	beq lbl_804D8DF8
/* 804D8DB0  28 00 00 61 */	cmplwi r0, 0x61
/* 804D8DB4  41 82 00 44 */	beq lbl_804D8DF8
/* 804D8DB8  28 00 00 69 */	cmplwi r0, 0x69
/* 804D8DBC  41 82 00 3C */	beq lbl_804D8DF8
/* 804D8DC0  28 00 00 78 */	cmplwi r0, 0x78
/* 804D8DC4  41 82 00 34 */	beq lbl_804D8DF8
/* 804D8DC8  28 00 00 79 */	cmplwi r0, 0x79
/* 804D8DCC  41 82 00 2C */	beq lbl_804D8DF8
/* 804D8DD0  28 00 00 7A */	cmplwi r0, 0x7a
/* 804D8DD4  41 82 00 24 */	beq lbl_804D8DF8
/* 804D8DD8  28 00 00 82 */	cmplwi r0, 0x82
/* 804D8DDC  41 82 00 1C */	beq lbl_804D8DF8
/* 804D8DE0  28 00 00 7F */	cmplwi r0, 0x7f
/* 804D8DE4  41 82 00 14 */	beq lbl_804D8DF8
/* 804D8DE8  28 00 00 80 */	cmplwi r0, 0x80
/* 804D8DEC  41 82 00 0C */	beq lbl_804D8DF8
/* 804D8DF0  28 00 00 81 */	cmplwi r0, 0x81
/* 804D8DF4  40 82 00 08 */	bne lbl_804D8DFC
lbl_804D8DF8:
/* 804D8DF8  38 60 00 01 */	li r3, 1
lbl_804D8DFC:
/* 804D8DFC  30 03 FF FF */	addic r0, r3, -1
/* 804D8E00  7C 60 19 10 */	subfe r3, r0, r3
/* 804D8E04  38 63 00 01 */	addi r3, r3, 1
/* 804D8E08  48 00 05 10 */	b lbl_804D9318
lbl_804D8E0C:
/* 804D8E0C  38 A1 00 74 */	addi r5, r1, 0x74
/* 804D8E10  38 81 00 B4 */	addi r4, r1, 0xb4
/* 804D8E14  38 E0 FF FF */	li r7, -1
/* 804D8E18  3D 00 00 01 */	lis r8, 1
/* 804D8E1C  38 C0 00 00 */	li r6, 0
/* 804D8E20  38 60 00 00 */	li r3, 0
/* 804D8E24  7F 09 03 A6 */	mtctr r24
/* 804D8E28  2C 18 00 00 */	cmpwi r24, 0
/* 804D8E2C  40 81 00 30 */	ble lbl_804D8E5C
lbl_804D8E30:
/* 804D8E30  7C 05 18 2E */	lwzx r0, r5, r3
/* 804D8E34  2C 00 00 00 */	cmpwi r0, 0
/* 804D8E38  41 82 00 18 */	beq lbl_804D8E50
/* 804D8E3C  7C 04 18 2E */	lwzx r0, r4, r3
/* 804D8E40  7C 08 00 00 */	cmpw r8, r0
/* 804D8E44  40 81 00 0C */	ble lbl_804D8E50
/* 804D8E48  7C 08 03 78 */	mr r8, r0
/* 804D8E4C  7C C7 33 78 */	mr r7, r6
lbl_804D8E50:
/* 804D8E50  38 C6 00 01 */	addi r6, r6, 1
/* 804D8E54  38 63 00 04 */	addi r3, r3, 4
/* 804D8E58  42 00 FF D8 */	bdnz lbl_804D8E30
lbl_804D8E5C:
/* 804D8E5C  2C 07 00 00 */	cmpwi r7, 0
/* 804D8E60  41 80 03 30 */	blt lbl_804D9190
/* 804D8E64  1C A7 00 0C */	mulli r5, r7, 0xc
/* 804D8E68  38 61 01 54 */	addi r3, r1, 0x154
/* 804D8E6C  38 81 01 5C */	addi r4, r1, 0x15c
/* 804D8E70  54 E0 08 3C */	slwi r0, r7, 1
/* 804D8E74  7C 03 2C 2E */	lfsx f0, r3, r5
/* 804D8E78  38 61 00 38 */	addi r3, r1, 0x38
/* 804D8E7C  7C 03 02 2E */	lhzx r0, r3, r0
/* 804D8E80  38 60 00 00 */	li r3, 0
/* 804D8E84  D0 1D 00 00 */	stfs f0, 0(r29)
/* 804D8E88  28 00 08 01 */	cmplwi r0, 0x801
/* 804D8E8C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 804D8E90  D0 1D 00 04 */	stfs f0, 4(r29)
/* 804D8E94  7C 04 2C 2E */	lfsx f0, r4, r5
/* 804D8E98  D0 1D 00 08 */	stfs f0, 8(r29)
/* 804D8E9C  B0 1E 00 00 */	sth r0, 0(r30)
/* 804D8EA0  41 82 02 DC */	beq lbl_804D917C
/* 804D8EA4  28 00 08 06 */	cmplwi r0, 0x806
/* 804D8EA8  41 82 02 D4 */	beq lbl_804D917C
/* 804D8EAC  28 00 08 0E */	cmplwi r0, 0x80e
/* 804D8EB0  41 82 02 CC */	beq lbl_804D917C
/* 804D8EB4  28 00 08 16 */	cmplwi r0, 0x816
/* 804D8EB8  41 82 02 C4 */	beq lbl_804D917C
/* 804D8EBC  28 00 08 1E */	cmplwi r0, 0x81e
/* 804D8EC0  41 82 02 BC */	beq lbl_804D917C
/* 804D8EC4  28 00 08 26 */	cmplwi r0, 0x826
/* 804D8EC8  41 82 02 B4 */	beq lbl_804D917C
/* 804D8ECC  28 00 08 2E */	cmplwi r0, 0x82e
/* 804D8ED0  41 82 02 AC */	beq lbl_804D917C
/* 804D8ED4  28 00 08 33 */	cmplwi r0, 0x833
/* 804D8ED8  41 82 02 A4 */	beq lbl_804D917C
/* 804D8EDC  28 00 08 38 */	cmplwi r0, 0x838
/* 804D8EE0  41 82 02 9C */	beq lbl_804D917C
/* 804D8EE4  28 00 08 2E */	cmplwi r0, 0x82e
/* 804D8EE8  41 82 02 94 */	beq lbl_804D917C
/* 804D8EEC  28 00 08 33 */	cmplwi r0, 0x833
/* 804D8EF0  41 82 02 8C */	beq lbl_804D917C
/* 804D8EF4  28 00 08 38 */	cmplwi r0, 0x838
/* 804D8EF8  41 82 02 84 */	beq lbl_804D917C
/* 804D8EFC  28 00 08 50 */	cmplwi r0, 0x850
/* 804D8F00  41 82 02 7C */	beq lbl_804D917C
/* 804D8F04  28 00 08 55 */	cmplwi r0, 0x855
/* 804D8F08  41 82 02 74 */	beq lbl_804D917C
/* 804D8F0C  28 00 08 5E */	cmplwi r0, 0x85e
/* 804D8F10  41 82 02 6C */	beq lbl_804D917C
/* 804D8F14  28 00 08 64 */	cmplwi r0, 0x864
/* 804D8F18  41 82 02 64 */	beq lbl_804D917C
/* 804D8F1C  28 00 08 02 */	cmplwi r0, 0x802
/* 804D8F20  41 82 02 5C */	beq lbl_804D917C
/* 804D8F24  28 00 08 07 */	cmplwi r0, 0x807
/* 804D8F28  41 82 02 54 */	beq lbl_804D917C
/* 804D8F2C  28 00 08 0F */	cmplwi r0, 0x80f
/* 804D8F30  41 82 02 4C */	beq lbl_804D917C
/* 804D8F34  28 00 08 17 */	cmplwi r0, 0x817
/* 804D8F38  41 82 02 44 */	beq lbl_804D917C
/* 804D8F3C  28 00 08 1F */	cmplwi r0, 0x81f
/* 804D8F40  41 82 02 3C */	beq lbl_804D917C
/* 804D8F44  28 00 08 27 */	cmplwi r0, 0x827
/* 804D8F48  41 82 02 34 */	beq lbl_804D917C
/* 804D8F4C  28 00 08 2F */	cmplwi r0, 0x82f
/* 804D8F50  41 82 02 2C */	beq lbl_804D917C
/* 804D8F54  28 00 08 34 */	cmplwi r0, 0x834
/* 804D8F58  41 82 02 24 */	beq lbl_804D917C
/* 804D8F5C  28 00 08 39 */	cmplwi r0, 0x839
/* 804D8F60  41 82 02 1C */	beq lbl_804D917C
/* 804D8F64  28 00 08 2F */	cmplwi r0, 0x82f
/* 804D8F68  41 82 02 14 */	beq lbl_804D917C
/* 804D8F6C  28 00 08 34 */	cmplwi r0, 0x834
/* 804D8F70  41 82 02 0C */	beq lbl_804D917C
/* 804D8F74  28 00 08 39 */	cmplwi r0, 0x839
/* 804D8F78  41 82 02 04 */	beq lbl_804D917C
/* 804D8F7C  28 00 08 51 */	cmplwi r0, 0x851
/* 804D8F80  41 82 01 FC */	beq lbl_804D917C
/* 804D8F84  28 00 08 56 */	cmplwi r0, 0x856
/* 804D8F88  41 82 01 F4 */	beq lbl_804D917C
/* 804D8F8C  28 00 08 5F */	cmplwi r0, 0x85f
/* 804D8F90  41 82 01 EC */	beq lbl_804D917C
/* 804D8F94  28 00 08 65 */	cmplwi r0, 0x865
/* 804D8F98  41 82 01 E4 */	beq lbl_804D917C
/* 804D8F9C  28 00 08 03 */	cmplwi r0, 0x803
/* 804D8FA0  41 82 01 DC */	beq lbl_804D917C
/* 804D8FA4  28 00 08 08 */	cmplwi r0, 0x808
/* 804D8FA8  41 82 01 D4 */	beq lbl_804D917C
/* 804D8FAC  28 00 08 10 */	cmplwi r0, 0x810
/* 804D8FB0  41 82 01 CC */	beq lbl_804D917C
/* 804D8FB4  28 00 08 18 */	cmplwi r0, 0x818
/* 804D8FB8  41 82 01 C4 */	beq lbl_804D917C
/* 804D8FBC  28 00 08 20 */	cmplwi r0, 0x820
/* 804D8FC0  41 82 01 BC */	beq lbl_804D917C
/* 804D8FC4  28 00 08 28 */	cmplwi r0, 0x828
/* 804D8FC8  41 82 01 B4 */	beq lbl_804D917C
/* 804D8FCC  28 00 08 30 */	cmplwi r0, 0x830
/* 804D8FD0  41 82 01 AC */	beq lbl_804D917C
/* 804D8FD4  28 00 08 35 */	cmplwi r0, 0x835
/* 804D8FD8  41 82 01 A4 */	beq lbl_804D917C
/* 804D8FDC  28 00 08 3A */	cmplwi r0, 0x83a
/* 804D8FE0  41 82 01 9C */	beq lbl_804D917C
/* 804D8FE4  28 00 08 30 */	cmplwi r0, 0x830
/* 804D8FE8  41 82 01 94 */	beq lbl_804D917C
/* 804D8FEC  28 00 08 35 */	cmplwi r0, 0x835
/* 804D8FF0  41 82 01 8C */	beq lbl_804D917C
/* 804D8FF4  28 00 08 3A */	cmplwi r0, 0x83a
/* 804D8FF8  41 82 01 84 */	beq lbl_804D917C
/* 804D8FFC  28 00 08 52 */	cmplwi r0, 0x852
/* 804D9000  41 82 01 7C */	beq lbl_804D917C
/* 804D9004  28 00 08 57 */	cmplwi r0, 0x857
/* 804D9008  41 82 01 74 */	beq lbl_804D917C
/* 804D900C  28 00 08 60 */	cmplwi r0, 0x860
/* 804D9010  41 82 01 6C */	beq lbl_804D917C
/* 804D9014  28 00 08 66 */	cmplwi r0, 0x866
/* 804D9018  41 82 01 64 */	beq lbl_804D917C
/* 804D901C  28 00 08 04 */	cmplwi r0, 0x804
/* 804D9020  41 82 01 5C */	beq lbl_804D917C
/* 804D9024  28 00 08 0C */	cmplwi r0, 0x80c
/* 804D9028  41 82 01 54 */	beq lbl_804D917C
/* 804D902C  28 00 08 14 */	cmplwi r0, 0x814
/* 804D9030  41 82 01 4C */	beq lbl_804D917C
/* 804D9034  28 00 08 1C */	cmplwi r0, 0x81c
/* 804D9038  41 82 01 44 */	beq lbl_804D917C
/* 804D903C  28 00 08 24 */	cmplwi r0, 0x824
/* 804D9040  41 82 01 3C */	beq lbl_804D917C
/* 804D9044  28 00 08 2C */	cmplwi r0, 0x82c
/* 804D9048  41 82 01 34 */	beq lbl_804D917C
/* 804D904C  28 00 08 31 */	cmplwi r0, 0x831
/* 804D9050  41 82 01 2C */	beq lbl_804D917C
/* 804D9054  28 00 08 36 */	cmplwi r0, 0x836
/* 804D9058  41 82 01 24 */	beq lbl_804D917C
/* 804D905C  28 00 08 3B */	cmplwi r0, 0x83b
/* 804D9060  41 82 01 1C */	beq lbl_804D917C
/* 804D9064  28 00 08 53 */	cmplwi r0, 0x853
/* 804D9068  41 82 01 14 */	beq lbl_804D917C
/* 804D906C  28 00 08 5B */	cmplwi r0, 0x85b
/* 804D9070  41 82 01 0C */	beq lbl_804D917C
/* 804D9074  28 00 08 61 */	cmplwi r0, 0x861
/* 804D9078  41 82 01 04 */	beq lbl_804D917C
/* 804D907C  28 00 08 68 */	cmplwi r0, 0x868
/* 804D9080  41 82 00 FC */	beq lbl_804D917C
/* 804D9084  28 00 08 67 */	cmplwi r0, 0x867
/* 804D9088  41 82 00 F4 */	beq lbl_804D917C
/* 804D908C  28 00 08 09 */	cmplwi r0, 0x809
/* 804D9090  41 82 00 EC */	beq lbl_804D917C
/* 804D9094  28 00 08 11 */	cmplwi r0, 0x811
/* 804D9098  41 82 00 E4 */	beq lbl_804D917C
/* 804D909C  28 00 08 19 */	cmplwi r0, 0x819
/* 804D90A0  41 82 00 DC */	beq lbl_804D917C
/* 804D90A4  28 00 08 21 */	cmplwi r0, 0x821
/* 804D90A8  41 82 00 D4 */	beq lbl_804D917C
/* 804D90AC  28 00 08 29 */	cmplwi r0, 0x829
/* 804D90B0  41 82 00 CC */	beq lbl_804D917C
/* 804D90B4  28 00 08 58 */	cmplwi r0, 0x858
/* 804D90B8  41 82 00 C4 */	beq lbl_804D917C
/* 804D90BC  28 00 08 0A */	cmplwi r0, 0x80a
/* 804D90C0  41 82 00 BC */	beq lbl_804D917C
/* 804D90C4  28 00 08 12 */	cmplwi r0, 0x812
/* 804D90C8  41 82 00 B4 */	beq lbl_804D917C
/* 804D90CC  28 00 08 1A */	cmplwi r0, 0x81a
/* 804D90D0  41 82 00 AC */	beq lbl_804D917C
/* 804D90D4  28 00 08 22 */	cmplwi r0, 0x822
/* 804D90D8  41 82 00 A4 */	beq lbl_804D917C
/* 804D90DC  28 00 08 2A */	cmplwi r0, 0x82a
/* 804D90E0  41 82 00 9C */	beq lbl_804D917C
/* 804D90E4  28 00 08 59 */	cmplwi r0, 0x859
/* 804D90E8  41 82 00 94 */	beq lbl_804D917C
/* 804D90EC  28 00 08 0B */	cmplwi r0, 0x80b
/* 804D90F0  41 82 00 8C */	beq lbl_804D917C
/* 804D90F4  28 00 08 13 */	cmplwi r0, 0x813
/* 804D90F8  41 82 00 84 */	beq lbl_804D917C
/* 804D90FC  28 00 08 1B */	cmplwi r0, 0x81b
/* 804D9100  41 82 00 7C */	beq lbl_804D917C
/* 804D9104  28 00 08 23 */	cmplwi r0, 0x823
/* 804D9108  41 82 00 74 */	beq lbl_804D917C
/* 804D910C  28 00 08 2B */	cmplwi r0, 0x82b
/* 804D9110  41 82 00 6C */	beq lbl_804D917C
/* 804D9114  28 00 08 5A */	cmplwi r0, 0x85a
/* 804D9118  41 82 00 64 */	beq lbl_804D917C
/* 804D911C  28 00 00 5E */	cmplwi r0, 0x5e
/* 804D9120  41 82 00 5C */	beq lbl_804D917C
/* 804D9124  28 00 00 5F */	cmplwi r0, 0x5f
/* 804D9128  41 82 00 54 */	beq lbl_804D917C
/* 804D912C  28 00 00 60 */	cmplwi r0, 0x60
/* 804D9130  41 82 00 4C */	beq lbl_804D917C
/* 804D9134  28 00 00 61 */	cmplwi r0, 0x61
/* 804D9138  41 82 00 44 */	beq lbl_804D917C
/* 804D913C  28 00 00 69 */	cmplwi r0, 0x69
/* 804D9140  41 82 00 3C */	beq lbl_804D917C
/* 804D9144  28 00 00 78 */	cmplwi r0, 0x78
/* 804D9148  41 82 00 34 */	beq lbl_804D917C
/* 804D914C  28 00 00 79 */	cmplwi r0, 0x79
/* 804D9150  41 82 00 2C */	beq lbl_804D917C
/* 804D9154  28 00 00 7A */	cmplwi r0, 0x7a
/* 804D9158  41 82 00 24 */	beq lbl_804D917C
/* 804D915C  28 00 00 82 */	cmplwi r0, 0x82
/* 804D9160  41 82 00 1C */	beq lbl_804D917C
/* 804D9164  28 00 00 7F */	cmplwi r0, 0x7f
/* 804D9168  41 82 00 14 */	beq lbl_804D917C
/* 804D916C  28 00 00 80 */	cmplwi r0, 0x80
/* 804D9170  41 82 00 0C */	beq lbl_804D917C
/* 804D9174  28 00 00 81 */	cmplwi r0, 0x81
/* 804D9178  40 82 00 08 */	bne lbl_804D9180
lbl_804D917C:
/* 804D917C  38 60 00 01 */	li r3, 1
lbl_804D9180:
/* 804D9180  30 03 FF FF */	addic r0, r3, -1
/* 804D9184  7C 60 19 10 */	subfe r3, r0, r3
/* 804D9188  38 63 00 01 */	addi r3, r3, 1
/* 804D918C  48 00 01 8C */	b lbl_804D9318
lbl_804D9190:
/* 804D9190  3C 60 80 64 */	lis r3, lit_1948@ha /* 0x80646C24@ha */
/* 804D9194  38 00 00 04 */	li r0, 4
/* 804D9198  38 63 6C 24 */	addi r3, r3, lit_1948@l /* 0x80646C24@l */
/* 804D919C  38 A1 00 50 */	addi r5, r1, 0x50
/* 804D91A0  38 83 FF FC */	addi r4, r3, -4
/* 804D91A4  7C 09 03 A6 */	mtctr r0
lbl_804D91A8:
/* 804D91A8  80 64 00 04 */	lwz r3, 4(r4)
/* 804D91AC  84 04 00 08 */	lwzu r0, 8(r4)
/* 804D91B0  90 65 00 04 */	stw r3, 4(r5)
/* 804D91B4  94 05 00 08 */	stwu r0, 8(r5)
/* 804D91B8  42 00 FF F0 */	bdnz lbl_804D91A8
/* 804D91BC  3C 60 80 64 */	lis r3, lit_2592@ha /* 0x80646C48@ha */
/* 804D91C0  38 E1 00 D4 */	addi r7, r1, 0xd4
/* 804D91C4  C0 03 6C 48 */	lfs f0, lit_2592@l(r3)  /* 0x80646C48@l */
/* 804D91C8  38 A1 00 94 */	addi r5, r1, 0x94
/* 804D91CC  38 81 00 54 */	addi r4, r1, 0x54
/* 804D91D0  38 60 00 00 */	li r3, 0
/* 804D91D4  38 00 00 01 */	li r0, 1
/* 804D91D8  7F 09 03 A6 */	mtctr r24
/* 804D91DC  2C 18 00 00 */	cmpwi r24, 0
/* 804D91E0  40 81 00 28 */	ble lbl_804D9208
lbl_804D91E4:
/* 804D91E4  7C C7 18 2E */	lwzx r6, r7, r3
/* 804D91E8  2C 06 00 00 */	cmpwi r6, 0
/* 804D91EC  41 82 00 14 */	beq lbl_804D9200
/* 804D91F0  7C 25 1C 2E */	lfsx f1, r5, r3
/* 804D91F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D91F8  40 80 00 08 */	bge lbl_804D9200
/* 804D91FC  7C 04 19 2E */	stwx r0, r4, r3
lbl_804D9200:
/* 804D9200  38 63 00 04 */	addi r3, r3, 4
/* 804D9204  42 00 FF E0 */	bdnz lbl_804D91E4
lbl_804D9208:
/* 804D9208  38 C1 00 54 */	addi r6, r1, 0x54
/* 804D920C  38 A1 00 B4 */	addi r5, r1, 0xb4
/* 804D9210  38 60 00 00 */	li r3, 0
/* 804D9214  38 00 00 00 */	li r0, 0
/* 804D9218  7F 09 03 A6 */	mtctr r24
/* 804D921C  2C 18 00 00 */	cmpwi r24, 0
/* 804D9220  40 81 00 28 */	ble lbl_804D9248
lbl_804D9224:
/* 804D9224  7C 86 18 2E */	lwzx r4, r6, r3
/* 804D9228  2C 04 00 00 */	cmpwi r4, 0
/* 804D922C  41 82 00 14 */	beq lbl_804D9240
/* 804D9230  7C 85 18 2E */	lwzx r4, r5, r3
/* 804D9234  2C 04 35 55 */	cmpwi r4, 0x3555
/* 804D9238  40 81 00 08 */	ble lbl_804D9240
/* 804D923C  7C 06 19 2E */	stwx r0, r6, r3
lbl_804D9240:
/* 804D9240  38 63 00 04 */	addi r3, r3, 4
/* 804D9244  42 00 FF E0 */	bdnz lbl_804D9224
lbl_804D9248:
/* 804D9248  38 A1 00 54 */	addi r5, r1, 0x54
/* 804D924C  38 81 00 B4 */	addi r4, r1, 0xb4
/* 804D9250  38 E0 FF FF */	li r7, -1
/* 804D9254  3D 00 00 01 */	lis r8, 1
/* 804D9258  38 C0 00 00 */	li r6, 0
/* 804D925C  38 60 00 00 */	li r3, 0
/* 804D9260  7F 09 03 A6 */	mtctr r24
/* 804D9264  2C 18 00 00 */	cmpwi r24, 0
/* 804D9268  40 81 00 30 */	ble lbl_804D9298
lbl_804D926C:
/* 804D926C  7C 05 18 2E */	lwzx r0, r5, r3
/* 804D9270  2C 00 00 00 */	cmpwi r0, 0
/* 804D9274  41 82 00 18 */	beq lbl_804D928C
/* 804D9278  7C 04 18 2E */	lwzx r0, r4, r3
/* 804D927C  7C 08 00 00 */	cmpw r8, r0
/* 804D9280  40 81 00 0C */	ble lbl_804D928C
/* 804D9284  7C 08 03 78 */	mr r8, r0
/* 804D9288  7C C7 33 78 */	mr r7, r6
lbl_804D928C:
/* 804D928C  38 C6 00 01 */	addi r6, r6, 1
/* 804D9290  38 63 00 04 */	addi r3, r3, 4
/* 804D9294  42 00 FF D8 */	bdnz lbl_804D926C
lbl_804D9298:
/* 804D9298  2C 07 00 00 */	cmpwi r7, 0
/* 804D929C  41 80 00 78 */	blt lbl_804D9314
/* 804D92A0  1E 47 00 0C */	mulli r18, r7, 0xc
/* 804D92A4  3A 21 01 54 */	addi r17, r1, 0x154
/* 804D92A8  38 61 00 08 */	addi r3, r1, 8
/* 804D92AC  7E 31 92 14 */	add r17, r17, r18
/* 804D92B0  80 B1 00 00 */	lwz r5, 0(r17)
/* 804D92B4  80 91 00 04 */	lwz r4, 4(r17)
/* 804D92B8  80 11 00 08 */	lwz r0, 8(r17)
/* 804D92BC  90 A1 00 08 */	stw r5, 8(r1)
/* 804D92C0  90 81 00 0C */	stw r4, 0xc(r1)
/* 804D92C4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804D92C8  4B EB 66 11 */	bl mCoBG_Wpos2BgUtCenterHeight_AddColumn
/* 804D92CC  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 804D92D0  3C 60 80 64 */	lis r3, lit_1373@ha /* 0x80646A28@ha */
/* 804D92D4  EC 21 00 28 */	fsubs f1, f1, f0
/* 804D92D8  C0 03 6A 28 */	lfs f0, lit_1373@l(r3)  /* 0x80646A28@l */
/* 804D92DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D92E0  4C 41 13 82 */	cror 2, 1, 2
/* 804D92E4  40 82 00 30 */	bne lbl_804D9314
/* 804D92E8  C0 11 00 00 */	lfs f0, 0(r17)
/* 804D92EC  38 81 01 5C */	addi r4, r1, 0x15c
/* 804D92F0  38 00 00 00 */	li r0, 0
/* 804D92F4  38 60 00 01 */	li r3, 1
/* 804D92F8  D0 1D 00 00 */	stfs f0, 0(r29)
/* 804D92FC  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 804D9300  D0 1D 00 04 */	stfs f0, 4(r29)
/* 804D9304  7C 04 94 2E */	lfsx f0, r4, r18
/* 804D9308  D0 1D 00 08 */	stfs f0, 8(r29)
/* 804D930C  90 1F 00 00 */	stw r0, 0(r31)
/* 804D9310  48 00 00 08 */	b lbl_804D9318
lbl_804D9314:
/* 804D9314  38 60 00 00 */	li r3, 0
lbl_804D9318:
/* 804D9318  E3 E1 02 48 */	psq_l f31, 584(r1), 0, 0 /* qr0 */
/* 804D931C  CB E1 02 40 */	lfd f31, 0x240(r1)
/* 804D9320  E3 C1 02 38 */	psq_l f30, 568(r1), 0, 0 /* qr0 */
/* 804D9324  CB C1 02 30 */	lfd f30, 0x230(r1)
/* 804D9328  E3 A1 02 28 */	psq_l f29, 552(r1), 0, 0 /* qr0 */
/* 804D932C  39 61 02 20 */	addi r11, r1, 0x220
/* 804D9330  CB A1 02 20 */	lfd f29, 0x220(r1)
/* 804D9334  4B BC 1B BD */	bl func_8009AEF0
/* 804D9338  80 01 02 54 */	lwz r0, 0x254(r1)
/* 804D933C  7C 08 03 A6 */	mtlr r0
/* 804D9340  38 21 02 50 */	addi r1, r1, 0x250
/* 804D9344  4E 80 00 20 */	blr 
