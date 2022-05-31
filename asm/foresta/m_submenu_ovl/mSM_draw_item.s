lbl_805EE4E0:
/* 805EE4E0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805EE4E4  7C 08 02 A6 */	mflr r0
/* 805EE4E8  90 01 00 74 */	stw r0, 0x74(r1)
/* 805EE4EC  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 805EE4F0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 805EE4F4  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 805EE4F8  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 805EE4FC  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 805EE500  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 805EE504  39 61 00 40 */	addi r11, r1, 0x40
/* 805EE508  4B AA C9 A9 */	bl func_8009AEB0
/* 805EE50C  3D 40 80 65 */	lis r10, lit_832@ha /* 0x8064B7F4@ha */
/* 805EE510  FF E0 18 90 */	fmr f31, f3
/* 805EE514  C0 0A B7 F4 */	lfs f0, lit_832@l(r10)  /* 0x8064B7F4@l */
/* 805EE518  3D 60 80 6D */	lis r11, data_806CE450@ha /* 0x806CE450@ha */
/* 805EE51C  FF A0 08 90 */	fmr f29, f1
/* 805EE520  7C 76 1B 78 */	mr r22, r3
/* 805EE524  FF C0 10 90 */	fmr f30, f2
/* 805EE528  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 805EE52C  7C 94 23 78 */	mr r20, r4
/* 805EE530  7C D7 33 78 */	mr r23, r6
/* 805EE534  7C F8 3B 78 */	mr r24, r7
/* 805EE538  7D 19 43 78 */	mr r25, r8
/* 805EE53C  7D 3A 4B 78 */	mr r26, r9
/* 805EE540  3B EB E4 50 */	addi r31, r11, data_806CE450@l /* 0x806CE450@l */
/* 805EE544  3B A0 FF FF */	li r29, -1
/* 805EE548  3B 80 00 00 */	li r28, 0
/* 805EE54C  41 80 02 04 */	blt lbl_805EE750
/* 805EE550  2C 05 00 00 */	cmpwi r5, 0
/* 805EE554  41 82 00 34 */	beq lbl_805EE588
/* 805EE558  2C 18 00 0B */	cmpwi r24, 0xb
/* 805EE55C  40 81 00 1C */	ble lbl_805EE578
/* 805EE560  2C 18 00 16 */	cmpwi r24, 0x16
/* 805EE564  38 9F 00 70 */	addi r4, r31, 0x70
/* 805EE568  38 84 00 58 */	addi r4, r4, 0x58
/* 805EE56C  40 81 01 18 */	ble lbl_805EE684
/* 805EE570  3B 80 00 01 */	li r28, 1
/* 805EE574  48 00 01 10 */	b lbl_805EE684
lbl_805EE578:
/* 805EE578  57 00 18 38 */	slwi r0, r24, 3
/* 805EE57C  38 9F 00 70 */	addi r4, r31, 0x70
/* 805EE580  7C 84 02 14 */	add r4, r4, r0
/* 805EE584  48 00 01 00 */	b lbl_805EE684
lbl_805EE588:
/* 805EE588  56 80 04 3E */	clrlwi r0, r20, 0x10
/* 805EE58C  28 00 15 B0 */	cmplwi r0, 0x15b0
/* 805EE590  41 80 00 14 */	blt lbl_805EE5A4
/* 805EE594  28 00 17 AB */	cmplwi r0, 0x17ab
/* 805EE598  41 81 00 0C */	bgt lbl_805EE5A4
/* 805EE59C  38 9F 00 58 */	addi r4, r31, 0x58
/* 805EE5A0  48 00 00 E4 */	b lbl_805EE684
lbl_805EE5A4:
/* 805EE5A4  56 80 04 3E */	clrlwi r0, r20, 0x10
/* 805EE5A8  28 00 1E EC */	cmplwi r0, 0x1eec
/* 805EE5AC  41 80 00 14 */	blt lbl_805EE5C0
/* 805EE5B0  28 00 1F 4F */	cmplwi r0, 0x1f4f
/* 805EE5B4  41 81 00 0C */	bgt lbl_805EE5C0
/* 805EE5B8  38 9F 00 60 */	addi r4, r31, 0x60
/* 805EE5BC  48 00 00 C8 */	b lbl_805EE684
lbl_805EE5C0:
/* 805EE5C0  7E 83 A3 78 */	mr r3, r20
/* 805EE5C4  4B DD B1 AD */	bl mNT_check_unknown
/* 805EE5C8  2C 03 00 01 */	cmpwi r3, 1
/* 805EE5CC  40 82 00 0C */	bne lbl_805EE5D8
/* 805EE5D0  38 9F 00 68 */	addi r4, r31, 0x68
/* 805EE5D4  48 00 00 B0 */	b lbl_805EE684
lbl_805EE5D8:
/* 805EE5D8  56 80 A7 3E */	rlwinm r0, r20, 0x14, 0x1c, 0x1f
/* 805EE5DC  56 95 04 3E */	clrlwi r21, r20, 0x10
/* 805EE5E0  2C 00 00 01 */	cmpwi r0, 1
/* 805EE5E4  41 82 00 0C */	beq lbl_805EE5F0
/* 805EE5E8  2C 00 00 03 */	cmpwi r0, 3
/* 805EE5EC  40 82 00 0C */	bne lbl_805EE5F8
lbl_805EE5F0:
/* 805EE5F0  38 9F 00 50 */	addi r4, r31, 0x50
/* 805EE5F4  48 00 00 90 */	b lbl_805EE684
lbl_805EE5F8:
/* 805EE5F8  7E 83 A3 78 */	mr r3, r20
/* 805EE5FC  4B FF F9 89 */	bl mSM_get_groupNo
/* 805EE600  56 BD C7 3E */	rlwinm r29, r21, 0x18, 0x1c, 0x1f
/* 805EE604  28 1D 00 0E */	cmplwi r29, 0xe
/* 805EE608  41 81 00 68 */	bgt lbl_805EE670
/* 805EE60C  3C A0 80 6D */	lis r5, lit_833@ha /* 0x806CF138@ha */
/* 805EE610  57 A4 10 3A */	slwi r4, r29, 2
/* 805EE614  38 A5 F1 38 */	addi r5, r5, lit_833@l /* 0x806CF138@l */
/* 805EE618  7C 05 20 2E */	lwzx r0, r5, r4
/* 805EE61C  7C 09 03 A6 */	mtctr r0
/* 805EE620  4E 80 04 20 */	bctr 
lbl_805EE624:
/* 805EE624  38 7F 0C A8 */	addi r3, r31, 0xca8
/* 805EE628  57 00 18 38 */	slwi r0, r24, 3
/* 805EE62C  7C 63 20 2E */	lwzx r3, r3, r4
/* 805EE630  7C 83 02 14 */	add r4, r3, r0
/* 805EE634  48 00 00 50 */	b lbl_805EE684
lbl_805EE638:
/* 805EE638  38 15 E0 00 */	addi r0, r21, -8192
/* 805EE63C  38 7F 0C A8 */	addi r3, r31, 0xca8
/* 805EE640  7C 00 36 70 */	srawi r0, r0, 6
/* 805EE644  7C A3 20 2E */	lwzx r5, r3, r4
/* 805EE648  7C 60 01 94 */	addze r3, r0
/* 805EE64C  38 03 00 01 */	addi r0, r3, 1
/* 805EE650  54 03 18 38 */	slwi r3, r0, 3
/* 805EE654  38 83 FF F8 */	addi r4, r3, -8
/* 805EE658  7C 85 22 14 */	add r4, r5, r4
/* 805EE65C  48 00 00 28 */	b lbl_805EE684
lbl_805EE660:
/* 805EE660  57 A0 10 3A */	slwi r0, r29, 2
/* 805EE664  38 7F 0C A8 */	addi r3, r31, 0xca8
/* 805EE668  7C 83 00 2E */	lwzx r4, r3, r0
/* 805EE66C  48 00 00 18 */	b lbl_805EE684
lbl_805EE670:
/* 805EE670  57 A0 10 3A */	slwi r0, r29, 2
/* 805EE674  38 9F 0C A8 */	addi r4, r31, 0xca8
/* 805EE678  7C 84 00 2E */	lwzx r4, r4, r0
/* 805EE67C  54 60 18 38 */	slwi r0, r3, 3
/* 805EE680  7C 84 02 14 */	add r4, r4, r0
lbl_805EE684:
/* 805EE684  28 04 00 00 */	cmplwi r4, 0
/* 805EE688  41 82 00 98 */	beq lbl_805EE720
/* 805EE68C  2C 1D 00 03 */	cmpwi r29, 3
/* 805EE690  41 82 00 0C */	beq lbl_805EE69C
/* 805EE694  2C 1D 00 0D */	cmpwi r29, 0xd
/* 805EE698  40 82 00 18 */	bne lbl_805EE6B0
lbl_805EE69C:
/* 805EE69C  2C 18 00 00 */	cmpwi r24, 0
/* 805EE6A0  41 82 00 10 */	beq lbl_805EE6B0
/* 805EE6A4  80 64 00 00 */	lwz r3, 0(r4)
/* 805EE6A8  3B C3 00 20 */	addi r30, r3, 0x20
/* 805EE6AC  48 00 00 08 */	b lbl_805EE6B4
lbl_805EE6B0:
/* 805EE6B0  83 C4 00 00 */	lwz r30, 0(r4)
lbl_805EE6B4:
/* 805EE6B4  2C 17 00 00 */	cmpwi r23, 0
/* 805EE6B8  41 82 00 44 */	beq lbl_805EE6FC
/* 805EE6BC  2C 1C 00 00 */	cmpwi r28, 0
/* 805EE6C0  41 82 00 1C */	beq lbl_805EE6DC
/* 805EE6C4  20 78 00 30 */	subfic r3, r24, 0x30
/* 805EE6C8  38 00 00 1A */	li r0, 0x1a
/* 805EE6CC  1C 63 00 FF */	mulli r3, r3, 0xff
/* 805EE6D0  7C 03 03 D6 */	divw r0, r3, r0
/* 805EE6D4  98 01 00 0B */	stb r0, 0xb(r1)
/* 805EE6D8  48 00 00 0C */	b lbl_805EE6E4
lbl_805EE6DC:
/* 805EE6DC  38 00 00 FF */	li r0, 0xff
/* 805EE6E0  98 01 00 0B */	stb r0, 0xb(r1)
lbl_805EE6E4:
/* 805EE6E4  38 00 00 FF */	li r0, 0xff
/* 805EE6E8  3B 60 00 FF */	li r27, 0xff
/* 805EE6EC  98 01 00 08 */	stb r0, 8(r1)
/* 805EE6F0  98 01 00 09 */	stb r0, 9(r1)
/* 805EE6F4  98 01 00 0A */	stb r0, 0xa(r1)
/* 805EE6F8  48 00 00 28 */	b lbl_805EE720
lbl_805EE6FC:
/* 805EE6FC  38 C0 00 64 */	li r6, 0x64
/* 805EE700  38 A0 00 73 */	li r5, 0x73
/* 805EE704  38 60 00 A0 */	li r3, 0xa0
/* 805EE708  38 00 00 FF */	li r0, 0xff
/* 805EE70C  98 C1 00 08 */	stb r6, 8(r1)
/* 805EE710  3B 60 00 64 */	li r27, 0x64
/* 805EE714  98 A1 00 09 */	stb r5, 9(r1)
/* 805EE718  98 61 00 0A */	stb r3, 0xa(r1)
/* 805EE71C  98 01 00 0B */	stb r0, 0xb(r1)
lbl_805EE720:
/* 805EE720  28 04 00 00 */	cmplwi r4, 0
/* 805EE724  41 82 00 2C */	beq lbl_805EE750
/* 805EE728  FC 20 E8 90 */	fmr f1, f29
/* 805EE72C  7E C3 B3 78 */	mr r3, r22
/* 805EE730  FC 40 F0 90 */	fmr f2, f30
/* 805EE734  7F C5 F3 78 */	mr r5, r30
/* 805EE738  FC 60 F8 90 */	fmr f3, f31
/* 805EE73C  7F 66 DB 78 */	mr r6, r27
/* 805EE740  7F 28 CB 78 */	mr r8, r25
/* 805EE744  7F 49 D3 78 */	mr r9, r26
/* 805EE748  38 E1 00 08 */	addi r7, r1, 8
/* 805EE74C  4B FF F8 41 */	bl mSM_set_dl_item
lbl_805EE750:
/* 805EE750  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 805EE754  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 805EE758  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 805EE75C  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 805EE760  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 805EE764  39 61 00 40 */	addi r11, r1, 0x40
/* 805EE768  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 805EE76C  4B AA C7 91 */	bl func_8009AEFC
/* 805EE770  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805EE774  7C 08 03 A6 */	mtlr r0
/* 805EE778  38 21 00 70 */	addi r1, r1, 0x70
/* 805EE77C  4E 80 00 20 */	blr 
