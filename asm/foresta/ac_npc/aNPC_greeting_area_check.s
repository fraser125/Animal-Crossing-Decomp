lbl_8053A71C:
/* 8053A71C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8053A720  7C 08 02 A6 */	mflr r0
/* 8053A724  90 01 00 34 */	stw r0, 0x34(r1)
/* 8053A728  39 61 00 30 */	addi r11, r1, 0x30
/* 8053A72C  4B B6 07 A1 */	bl func_8009AECC
/* 8053A730  7C 7B 1B 78 */	mr r27, r3
/* 8053A734  83 C3 1D CC */	lwz r30, 0x1dcc(r3)
/* 8053A738  83 E3 1D D0 */	lwz r31, 0x1dd0(r3)
/* 8053A73C  3B DE FF FF */	addi r30, r30, -1
/* 8053A740  48 00 00 CC */	b lbl_8053A80C
lbl_8053A744:
/* 8053A744  7F DC F3 78 */	mr r28, r30
/* 8053A748  38 61 00 08 */	addi r3, r1, 8
/* 8053A74C  38 9F 00 28 */	addi r4, r31, 0x28
/* 8053A750  4B E8 07 6D */	bl xyz_t_move
/* 8053A754  7F E3 FB 78 */	mr r3, r31
/* 8053A758  4B FF FF 45 */	bl aNPC_check_cond_to_greeting
/* 8053A75C  2C 03 00 01 */	cmpwi r3, 1
/* 8053A760  40 82 00 A4 */	bne lbl_8053A804
/* 8053A764  83 BF 01 58 */	lwz r29, 0x158(r31)
/* 8053A768  48 00 00 94 */	b lbl_8053A7FC
lbl_8053A76C:
/* 8053A76C  7F A3 EB 78 */	mr r3, r29
/* 8053A770  4B FF FF 2D */	bl aNPC_check_cond_to_greeting
/* 8053A774  2C 03 00 01 */	cmpwi r3, 1
/* 8053A778  40 82 00 7C */	bne lbl_8053A7F4
/* 8053A77C  C0 5D 00 2C */	lfs f2, 0x2c(r29)
/* 8053A780  3C 60 80 65 */	lis r3, data_80649274@ha /* 0x80649274@ha */
/* 8053A784  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8053A788  C0 03 92 74 */	lfs f0, data_80649274@l(r3)  /* 0x80649274@l */
/* 8053A78C  EC 22 08 28 */	fsubs f1, f2, f1
/* 8053A790  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8053A794  4C 41 13 82 */	cror 2, 1, 2
/* 8053A798  40 82 00 08 */	bne lbl_8053A7A0
/* 8053A79C  48 00 00 08 */	b lbl_8053A7A4
lbl_8053A7A0:
/* 8053A7A0  FC 20 08 50 */	fneg f1, f1
lbl_8053A7A4:
/* 8053A7A4  3C 60 80 65 */	lis r3, lit_1583@ha /* 0x806492B4@ha */
/* 8053A7A8  C0 03 92 B4 */	lfs f0, lit_1583@l(r3)  /* 0x806492B4@l */
/* 8053A7AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8053A7B0  40 80 00 44 */	bge lbl_8053A7F4
/* 8053A7B4  C0 7D 00 28 */	lfs f3, 0x28(r29)
/* 8053A7B8  3C 60 80 65 */	lis r3, lit_2433@ha /* 0x80649318@ha */
/* 8053A7BC  C0 01 00 08 */	lfs f0, 8(r1)
/* 8053A7C0  C0 5D 00 30 */	lfs f2, 0x30(r29)
/* 8053A7C4  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8053A7C8  EC 63 00 28 */	fsubs f3, f3, f0
/* 8053A7CC  C0 03 93 18 */	lfs f0, lit_2433@l(r3)  /* 0x80649318@l */
/* 8053A7D0  EC 22 08 28 */	fsubs f1, f2, f1
/* 8053A7D4  EC 43 00 F2 */	fmuls f2, f3, f3
/* 8053A7D8  EC 21 00 72 */	fmuls f1, f1, f1
/* 8053A7DC  EC 22 08 2A */	fadds f1, f2, f1
/* 8053A7E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8053A7E4  40 80 00 10 */	bge lbl_8053A7F4
/* 8053A7E8  93 BF 08 F0 */	stw r29, 0x8f0(r31)
/* 8053A7EC  93 FD 08 F0 */	stw r31, 0x8f0(r29)
/* 8053A7F0  48 00 00 14 */	b lbl_8053A804
lbl_8053A7F4:
/* 8053A7F4  83 BD 01 58 */	lwz r29, 0x158(r29)
/* 8053A7F8  3B 9C FF FF */	addi r28, r28, -1
lbl_8053A7FC:
/* 8053A7FC  2C 1C 00 00 */	cmpwi r28, 0
/* 8053A800  40 82 FF 6C */	bne lbl_8053A76C
lbl_8053A804:
/* 8053A804  83 FF 01 58 */	lwz r31, 0x158(r31)
/* 8053A808  3B DE FF FF */	addi r30, r30, -1
lbl_8053A80C:
/* 8053A80C  2C 1E 00 00 */	cmpwi r30, 0
/* 8053A810  41 81 FF 34 */	bgt lbl_8053A744
/* 8053A814  80 1B 1D CC */	lwz r0, 0x1dcc(r27)
/* 8053A818  80 9B 1D D0 */	lwz r4, 0x1dd0(r27)
/* 8053A81C  7C 09 03 A6 */	mtctr r0
/* 8053A820  2C 00 00 00 */	cmpwi r0, 0
/* 8053A824  41 82 00 20 */	beq lbl_8053A844
lbl_8053A828:
/* 8053A828  80 64 08 F4 */	lwz r3, 0x8f4(r4)
/* 8053A82C  2C 03 00 00 */	cmpwi r3, 0
/* 8053A830  40 81 00 0C */	ble lbl_8053A83C
/* 8053A834  38 03 FF FF */	addi r0, r3, -1
/* 8053A838  90 04 08 F4 */	stw r0, 0x8f4(r4)
lbl_8053A83C:
/* 8053A83C  80 84 01 58 */	lwz r4, 0x158(r4)
/* 8053A840  42 00 FF E8 */	bdnz lbl_8053A828
lbl_8053A844:
/* 8053A844  39 61 00 30 */	addi r11, r1, 0x30
/* 8053A848  4B B6 06 D1 */	bl func_8009AF18
/* 8053A84C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8053A850  7C 08 03 A6 */	mtlr r0
/* 8053A854  38 21 00 30 */	addi r1, r1, 0x30
/* 8053A858  4E 80 00 20 */	blr 
