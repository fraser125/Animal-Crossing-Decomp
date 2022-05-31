lbl_8038D2CC:
/* 8038D2CC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8038D2D0  7C 08 02 A6 */	mflr r0
/* 8038D2D4  90 01 00 84 */	stw r0, 0x84(r1)
/* 8038D2D8  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8038D2DC  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 8038D2E0  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 8038D2E4  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 8038D2E8  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 8038D2EC  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 8038D2F0  39 61 00 50 */	addi r11, r1, 0x50
/* 8038D2F4  4B D0 DB CD */	bl func_8009AEC0
/* 8038D2F8  81 63 00 00 */	lwz r11, 0(r3)
/* 8038D2FC  7C 9B 23 78 */	mr r27, r4
/* 8038D300  7C 7A 1B 78 */	mr r26, r3
/* 8038D304  3C E0 43 30 */	lis r7, 0x4330
/* 8038D308  81 4B 00 00 */	lwz r10, 0(r11)
/* 8038D30C  3C 60 80 64 */	lis r3, lit_793@ha /* 0x806419DC@ha */
/* 8038D310  80 0B 00 04 */	lwz r0, 4(r11)
/* 8038D314  39 03 19 DC */	addi r8, r3, lit_793@l /* 0x806419DC@l */
/* 8038D318  3C C0 80 65 */	lis r6, data_80650860@ha /* 0x80650860@ha */
/* 8038D31C  3C 60 80 64 */	lis r3, lit_1501@ha /* 0x80641A3C@ha */
/* 8038D320  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038D324  54 A4 1D 78 */	rlwinm r4, r5, 3, 0x15, 0x1c
/* 8038D328  38 06 08 60 */	addi r0, r6, data_80650860@l /* 0x80650860@l */
/* 8038D32C  39 23 1A 3C */	addi r9, r3, lit_1501@l /* 0x80641A3C@l */
/* 8038D330  7C A0 22 14 */	add r5, r0, r4
/* 8038D334  91 41 00 10 */	stw r10, 0x10(r1)
/* 8038D338  80 85 00 00 */	lwz r4, 0(r5)
/* 8038D33C  3C 60 80 64 */	lis r3, lit_522@ha /* 0x806419B0@ha */
/* 8038D340  80 0B 00 08 */	lwz r0, 8(r11)
/* 8038D344  3B FB 00 04 */	addi r31, r27, 4
/* 8038D348  90 E1 00 20 */	stw r7, 0x20(r1)
/* 8038D34C  C8 28 00 00 */	lfd f1, 0(r8)
/* 8038D350  90 01 00 18 */	stw r0, 0x18(r1)
/* 8038D354  80 05 00 04 */	lwz r0, 4(r5)
/* 8038D358  80 BA 00 08 */	lwz r5, 8(r26)
/* 8038D35C  80 DA 00 24 */	lwz r6, 0x24(r26)
/* 8038D360  AB C5 00 00 */	lha r30, 0(r5)
/* 8038D364  C0 49 00 00 */	lfs f2, 0(r9)
/* 8038D368  28 06 00 00 */	cmplwi r6, 0
/* 8038D36C  6F C5 80 00 */	xoris r5, r30, 0x8000
/* 8038D370  C3 DA 00 18 */	lfs f30, 0x18(r26)
/* 8038D374  90 A1 00 24 */	stw r5, 0x24(r1)
/* 8038D378  83 BA 00 14 */	lwz r29, 0x14(r26)
/* 8038D37C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8038D380  90 81 00 08 */	stw r4, 8(r1)
/* 8038D384  EC 00 08 28 */	fsubs f0, f0, f1
/* 8038D388  83 9A 00 10 */	lwz r28, 0x10(r26)
/* 8038D38C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8038D390  C3 A3 19 B0 */	lfs f29, lit_522@l(r3)  /* 0x806419B0@l */
/* 8038D394  EF E2 00 32 */	fmuls f31, f2, f0
/* 8038D398  41 82 00 08 */	beq lbl_8038D3A0
/* 8038D39C  C3 A6 00 00 */	lfs f29, 0(r6)
lbl_8038D3A0:
/* 8038D3A0  80 1B 00 00 */	lwz r0, 0(r27)
/* 8038D3A4  2C 00 00 80 */	cmpwi r0, 0x80
/* 8038D3A8  40 80 00 E8 */	bge lbl_8038D490
/* 8038D3AC  C0 3C 00 04 */	lfs f1, 4(r28)
/* 8038D3B0  1C 00 00 34 */	mulli r0, r0, 0x34
/* 8038D3B4  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8038D3B8  EC 41 07 72 */	fmuls f2, f1, f29
/* 8038D3BC  C0 21 00 08 */	lfs f1, 8(r1)
/* 8038D3C0  7F 3F 02 14 */	add r25, r31, r0
/* 8038D3C4  EC 00 07 72 */	fmuls f0, f0, f29
/* 8038D3C8  7F 23 CB 78 */	mr r3, r25
/* 8038D3CC  FC 60 10 50 */	fneg f3, f2
/* 8038D3D0  FC 40 00 50 */	fneg f2, f0
/* 8038D3D4  3B 19 00 08 */	addi r24, r25, 8
/* 8038D3D8  EC 23 08 28 */	fsubs f1, f3, f1
/* 8038D3DC  4B FF DF 59 */	bl mCoBG_SetLinePos
/* 8038D3E0  C0 3C 00 00 */	lfs f1, 0(r28)
/* 8038D3E4  7F 03 C3 78 */	mr r3, r24
/* 8038D3E8  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8038D3EC  EC 21 07 72 */	fmuls f1, f1, f29
/* 8038D3F0  C0 41 00 08 */	lfs f2, 8(r1)
/* 8038D3F4  EC 00 07 72 */	fmuls f0, f0, f29
/* 8038D3F8  EC 22 08 2A */	fadds f1, f2, f1
/* 8038D3FC  FC 40 00 50 */	fneg f2, f0
/* 8038D400  4B FF DF 35 */	bl mCoBG_SetLinePos
/* 8038D404  7F 23 CB 78 */	mr r3, r25
/* 8038D408  7F 04 C3 78 */	mr r4, r24
/* 8038D40C  7F A5 EB 78 */	mr r5, r29
/* 8038D410  4B FF FB 95 */	bl mCoBG_SetBaseOffset
/* 8038D414  FC 20 F0 90 */	fmr f1, f30
/* 8038D418  38 79 00 10 */	addi r3, r25, 0x10
/* 8038D41C  38 81 00 10 */	addi r4, r1, 0x10
/* 8038D420  4B FF FC 0D */	bl mCoBG_SetMoveBgHeightInf
/* 8038D424  38 79 00 20 */	addi r3, r25, 0x20
/* 8038D428  38 80 00 00 */	li r4, 0
/* 8038D42C  4B FF FB DD */	bl mCoBG_GetNorm
/* 8038D430  38 60 00 00 */	li r3, 0
/* 8038D434  38 00 80 00 */	li r0, -32768
/* 8038D438  98 79 00 2A */	stb r3, 0x2a(r25)
/* 8038D43C  7F 23 CB 78 */	mr r3, r25
/* 8038D440  7F 44 D3 78 */	mr r4, r26
/* 8038D444  B0 19 00 28 */	sth r0, 0x28(r25)
/* 8038D448  4B FF FB B1 */	bl mCoBG_MakeCommonData
/* 8038D44C  FC 20 F8 90 */	fmr f1, f31
/* 8038D450  7F 23 CB 78 */	mr r3, r25
/* 8038D454  4B FF FD CD */	bl mCoBG_RotateMoveBgCollisionData
/* 8038D458  A8 19 00 28 */	lha r0, 0x28(r25)
/* 8038D45C  7F 23 CB 78 */	mr r3, r25
/* 8038D460  7C 00 F2 14 */	add r0, r0, r30
/* 8038D464  B0 19 00 28 */	sth r0, 0x28(r25)
/* 8038D468  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8038D46C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8038D470  4B FF DE D1 */	bl mCoBG_PlusLinePos
/* 8038D474  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8038D478  7F 03 C3 78 */	mr r3, r24
/* 8038D47C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8038D480  4B FF DE C1 */	bl mCoBG_PlusLinePos
/* 8038D484  80 7B 00 00 */	lwz r3, 0(r27)
/* 8038D488  38 03 00 01 */	addi r0, r3, 1
/* 8038D48C  90 1B 00 00 */	stw r0, 0(r27)
lbl_8038D490:
/* 8038D490  80 1B 00 00 */	lwz r0, 0(r27)
/* 8038D494  2C 00 00 80 */	cmpwi r0, 0x80
/* 8038D498  40 80 00 E8 */	bge lbl_8038D580
/* 8038D49C  C0 3C 00 04 */	lfs f1, 4(r28)
/* 8038D4A0  1C 00 00 34 */	mulli r0, r0, 0x34
/* 8038D4A4  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8038D4A8  EC 21 07 72 */	fmuls f1, f1, f29
/* 8038D4AC  C0 41 00 08 */	lfs f2, 8(r1)
/* 8038D4B0  EC 00 07 72 */	fmuls f0, f0, f29
/* 8038D4B4  7F 3F 02 14 */	add r25, r31, r0
/* 8038D4B8  7F 23 CB 78 */	mr r3, r25
/* 8038D4BC  FC 20 08 50 */	fneg f1, f1
/* 8038D4C0  EC 42 00 2A */	fadds f2, f2, f0
/* 8038D4C4  3B 19 00 08 */	addi r24, r25, 8
/* 8038D4C8  4B FF DE 6D */	bl mCoBG_SetLinePos
/* 8038D4CC  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8038D4D0  7F 03 C3 78 */	mr r3, r24
/* 8038D4D4  C0 5C 00 04 */	lfs f2, 4(r28)
/* 8038D4D8  EC 20 07 72 */	fmuls f1, f0, f29
/* 8038D4DC  C0 01 00 08 */	lfs f0, 8(r1)
/* 8038D4E0  EC 62 07 72 */	fmuls f3, f2, f29
/* 8038D4E4  FC 40 08 50 */	fneg f2, f1
/* 8038D4E8  FC 20 18 50 */	fneg f1, f3
/* 8038D4EC  EC 42 00 28 */	fsubs f2, f2, f0
/* 8038D4F0  4B FF DE 45 */	bl mCoBG_SetLinePos
/* 8038D4F4  7F 23 CB 78 */	mr r3, r25
/* 8038D4F8  7F 04 C3 78 */	mr r4, r24
/* 8038D4FC  7F A5 EB 78 */	mr r5, r29
/* 8038D500  4B FF FA A5 */	bl mCoBG_SetBaseOffset
/* 8038D504  FC 20 F0 90 */	fmr f1, f30
/* 8038D508  38 79 00 10 */	addi r3, r25, 0x10
/* 8038D50C  38 81 00 10 */	addi r4, r1, 0x10
/* 8038D510  4B FF FB 1D */	bl mCoBG_SetMoveBgHeightInf
/* 8038D514  38 79 00 20 */	addi r3, r25, 0x20
/* 8038D518  38 80 00 01 */	li r4, 1
/* 8038D51C  4B FF FA ED */	bl mCoBG_GetNorm
/* 8038D520  38 60 00 01 */	li r3, 1
/* 8038D524  38 00 C0 00 */	li r0, -16384
/* 8038D528  98 79 00 2A */	stb r3, 0x2a(r25)
/* 8038D52C  7F 23 CB 78 */	mr r3, r25
/* 8038D530  7F 44 D3 78 */	mr r4, r26
/* 8038D534  B0 19 00 28 */	sth r0, 0x28(r25)
/* 8038D538  4B FF FA C1 */	bl mCoBG_MakeCommonData
/* 8038D53C  FC 20 F8 90 */	fmr f1, f31
/* 8038D540  7F 23 CB 78 */	mr r3, r25
/* 8038D544  4B FF FC DD */	bl mCoBG_RotateMoveBgCollisionData
/* 8038D548  A8 19 00 28 */	lha r0, 0x28(r25)
/* 8038D54C  7F 23 CB 78 */	mr r3, r25
/* 8038D550  7C 00 F2 14 */	add r0, r0, r30
/* 8038D554  B0 19 00 28 */	sth r0, 0x28(r25)
/* 8038D558  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8038D55C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8038D560  4B FF DD E1 */	bl mCoBG_PlusLinePos
/* 8038D564  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8038D568  7F 03 C3 78 */	mr r3, r24
/* 8038D56C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8038D570  4B FF DD D1 */	bl mCoBG_PlusLinePos
/* 8038D574  80 7B 00 00 */	lwz r3, 0(r27)
/* 8038D578  38 03 00 01 */	addi r0, r3, 1
/* 8038D57C  90 1B 00 00 */	stw r0, 0(r27)
lbl_8038D580:
/* 8038D580  80 1B 00 00 */	lwz r0, 0(r27)
/* 8038D584  2C 00 00 80 */	cmpwi r0, 0x80
/* 8038D588  40 80 00 E0 */	bge lbl_8038D668
/* 8038D58C  C0 3C 00 00 */	lfs f1, 0(r28)
/* 8038D590  1C 00 00 34 */	mulli r0, r0, 0x34
/* 8038D594  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8038D598  EC 21 07 72 */	fmuls f1, f1, f29
/* 8038D59C  C0 61 00 08 */	lfs f3, 8(r1)
/* 8038D5A0  7F 3F 02 14 */	add r25, r31, r0
/* 8038D5A4  EC 40 07 72 */	fmuls f2, f0, f29
/* 8038D5A8  7F 23 CB 78 */	mr r3, r25
/* 8038D5AC  EC 23 08 2A */	fadds f1, f3, f1
/* 8038D5B0  3B 19 00 08 */	addi r24, r25, 8
/* 8038D5B4  4B FF DD 81 */	bl mCoBG_SetLinePos
/* 8038D5B8  C0 3C 00 04 */	lfs f1, 4(r28)
/* 8038D5BC  7F 03 C3 78 */	mr r3, r24
/* 8038D5C0  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8038D5C4  EC 61 07 72 */	fmuls f3, f1, f29
/* 8038D5C8  C0 21 00 08 */	lfs f1, 8(r1)
/* 8038D5CC  EC 40 07 72 */	fmuls f2, f0, f29
/* 8038D5D0  FC 00 18 50 */	fneg f0, f3
/* 8038D5D4  EC 20 08 28 */	fsubs f1, f0, f1
/* 8038D5D8  4B FF DD 5D */	bl mCoBG_SetLinePos
/* 8038D5DC  7F 23 CB 78 */	mr r3, r25
/* 8038D5E0  7F 04 C3 78 */	mr r4, r24
/* 8038D5E4  7F A5 EB 78 */	mr r5, r29
/* 8038D5E8  4B FF F9 BD */	bl mCoBG_SetBaseOffset
/* 8038D5EC  FC 20 F0 90 */	fmr f1, f30
/* 8038D5F0  38 79 00 10 */	addi r3, r25, 0x10
/* 8038D5F4  38 81 00 10 */	addi r4, r1, 0x10
/* 8038D5F8  4B FF FA 35 */	bl mCoBG_SetMoveBgHeightInf
/* 8038D5FC  38 79 00 20 */	addi r3, r25, 0x20
/* 8038D600  38 80 00 02 */	li r4, 2
/* 8038D604  4B FF FA 05 */	bl mCoBG_GetNorm
/* 8038D608  38 60 00 02 */	li r3, 2
/* 8038D60C  38 00 00 00 */	li r0, 0
/* 8038D610  98 79 00 2A */	stb r3, 0x2a(r25)
/* 8038D614  7F 23 CB 78 */	mr r3, r25
/* 8038D618  7F 44 D3 78 */	mr r4, r26
/* 8038D61C  B0 19 00 28 */	sth r0, 0x28(r25)
/* 8038D620  4B FF F9 D9 */	bl mCoBG_MakeCommonData
/* 8038D624  FC 20 F8 90 */	fmr f1, f31
/* 8038D628  7F 23 CB 78 */	mr r3, r25
/* 8038D62C  4B FF FB F5 */	bl mCoBG_RotateMoveBgCollisionData
/* 8038D630  A8 19 00 28 */	lha r0, 0x28(r25)
/* 8038D634  7F 23 CB 78 */	mr r3, r25
/* 8038D638  7C 00 F2 14 */	add r0, r0, r30
/* 8038D63C  B0 19 00 28 */	sth r0, 0x28(r25)
/* 8038D640  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8038D644  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8038D648  4B FF DC F9 */	bl mCoBG_PlusLinePos
/* 8038D64C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8038D650  7F 03 C3 78 */	mr r3, r24
/* 8038D654  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8038D658  4B FF DC E9 */	bl mCoBG_PlusLinePos
/* 8038D65C  80 7B 00 00 */	lwz r3, 0(r27)
/* 8038D660  38 03 00 01 */	addi r0, r3, 1
/* 8038D664  90 1B 00 00 */	stw r0, 0(r27)
lbl_8038D668:
/* 8038D668  80 1B 00 00 */	lwz r0, 0(r27)
/* 8038D66C  2C 00 00 80 */	cmpwi r0, 0x80
/* 8038D670  40 80 00 E0 */	bge lbl_8038D750
/* 8038D674  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8038D678  1C 00 00 34 */	mulli r0, r0, 0x34
/* 8038D67C  C0 3C 00 00 */	lfs f1, 0(r28)
/* 8038D680  EC 40 07 72 */	fmuls f2, f0, f29
/* 8038D684  C0 01 00 08 */	lfs f0, 8(r1)
/* 8038D688  7F FF 02 14 */	add r31, r31, r0
/* 8038D68C  EC 21 07 72 */	fmuls f1, f1, f29
/* 8038D690  7F E3 FB 78 */	mr r3, r31
/* 8038D694  FC 40 10 50 */	fneg f2, f2
/* 8038D698  3B 3F 00 08 */	addi r25, r31, 8
/* 8038D69C  EC 42 00 28 */	fsubs f2, f2, f0
/* 8038D6A0  4B FF DC 95 */	bl mCoBG_SetLinePos
/* 8038D6A4  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8038D6A8  7F 23 CB 78 */	mr r3, r25
/* 8038D6AC  C0 3C 00 00 */	lfs f1, 0(r28)
/* 8038D6B0  EC 00 07 72 */	fmuls f0, f0, f29
/* 8038D6B4  C0 41 00 08 */	lfs f2, 8(r1)
/* 8038D6B8  EC 21 07 72 */	fmuls f1, f1, f29
/* 8038D6BC  EC 42 00 2A */	fadds f2, f2, f0
/* 8038D6C0  4B FF DC 75 */	bl mCoBG_SetLinePos
/* 8038D6C4  7F E3 FB 78 */	mr r3, r31
/* 8038D6C8  7F 24 CB 78 */	mr r4, r25
/* 8038D6CC  7F A5 EB 78 */	mr r5, r29
/* 8038D6D0  4B FF F8 D5 */	bl mCoBG_SetBaseOffset
/* 8038D6D4  FC 20 F0 90 */	fmr f1, f30
/* 8038D6D8  38 7F 00 10 */	addi r3, r31, 0x10
/* 8038D6DC  38 81 00 10 */	addi r4, r1, 0x10
/* 8038D6E0  4B FF F9 4D */	bl mCoBG_SetMoveBgHeightInf
/* 8038D6E4  38 7F 00 20 */	addi r3, r31, 0x20
/* 8038D6E8  38 80 00 03 */	li r4, 3
/* 8038D6EC  4B FF F9 1D */	bl mCoBG_GetNorm
/* 8038D6F0  38 60 00 03 */	li r3, 3
/* 8038D6F4  38 00 40 00 */	li r0, 0x4000
/* 8038D6F8  98 7F 00 2A */	stb r3, 0x2a(r31)
/* 8038D6FC  7F E3 FB 78 */	mr r3, r31
/* 8038D700  7F 44 D3 78 */	mr r4, r26
/* 8038D704  B0 1F 00 28 */	sth r0, 0x28(r31)
/* 8038D708  4B FF F8 F1 */	bl mCoBG_MakeCommonData
/* 8038D70C  FC 20 F8 90 */	fmr f1, f31
/* 8038D710  7F E3 FB 78 */	mr r3, r31
/* 8038D714  4B FF FB 0D */	bl mCoBG_RotateMoveBgCollisionData
/* 8038D718  A8 1F 00 28 */	lha r0, 0x28(r31)
/* 8038D71C  7F E3 FB 78 */	mr r3, r31
/* 8038D720  7C 00 F2 14 */	add r0, r0, r30
/* 8038D724  B0 1F 00 28 */	sth r0, 0x28(r31)
/* 8038D728  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8038D72C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8038D730  4B FF DC 11 */	bl mCoBG_PlusLinePos
/* 8038D734  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8038D738  7F 23 CB 78 */	mr r3, r25
/* 8038D73C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8038D740  4B FF DC 01 */	bl mCoBG_PlusLinePos
/* 8038D744  80 7B 00 00 */	lwz r3, 0(r27)
/* 8038D748  38 03 00 01 */	addi r0, r3, 1
/* 8038D74C  90 1B 00 00 */	stw r0, 0(r27)
lbl_8038D750:
/* 8038D750  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 8038D754  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8038D758  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 8038D75C  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 8038D760  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 8038D764  39 61 00 50 */	addi r11, r1, 0x50
/* 8038D768  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 8038D76C  4B D0 D7 A1 */	bl func_8009AF0C
/* 8038D770  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8038D774  7C 08 03 A6 */	mtlr r0
/* 8038D778  38 21 00 80 */	addi r1, r1, 0x80
/* 8038D77C  4E 80 00 20 */	blr 
