lbl_80545374:
/* 80545374  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80545378  7C 08 02 A6 */	mflr r0
/* 8054537C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80545380  39 61 00 30 */	addi r11, r1, 0x30
/* 80545384  4B B5 5B 49 */	bl func_8009AECC
/* 80545388  7C 7B 1B 78 */	mr r27, r3
/* 8054538C  83 C3 1D CC */	lwz r30, 0x1dcc(r3)
/* 80545390  83 E3 1D D0 */	lwz r31, 0x1dd0(r3)
/* 80545394  3B DE FF FF */	addi r30, r30, -1
/* 80545398  48 00 00 CC */	b lbl_80545464
lbl_8054539C:
/* 8054539C  7F DC F3 78 */	mr r28, r30
/* 805453A0  38 61 00 08 */	addi r3, r1, 8
/* 805453A4  38 9F 00 28 */	addi r4, r31, 0x28
/* 805453A8  4B E7 5B 15 */	bl xyz_t_move
/* 805453AC  7F E3 FB 78 */	mr r3, r31
/* 805453B0  4B FF FF 45 */	bl aNPC_check_cond_to_greeting
/* 805453B4  2C 03 00 01 */	cmpwi r3, 1
/* 805453B8  40 82 00 A4 */	bne lbl_8054545C
/* 805453BC  83 BF 01 58 */	lwz r29, 0x158(r31)
/* 805453C0  48 00 00 94 */	b lbl_80545454
lbl_805453C4:
/* 805453C4  7F A3 EB 78 */	mr r3, r29
/* 805453C8  4B FF FF 2D */	bl aNPC_check_cond_to_greeting
/* 805453CC  2C 03 00 01 */	cmpwi r3, 1
/* 805453D0  40 82 00 7C */	bne lbl_8054544C
/* 805453D4  C0 5D 00 2C */	lfs f2, 0x2c(r29)
/* 805453D8  3C 60 80 65 */	lis r3, data_80649374@ha /* 0x80649374@ha */
/* 805453DC  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 805453E0  C0 03 93 74 */	lfs f0, data_80649374@l(r3)  /* 0x80649374@l */
/* 805453E4  EC 22 08 28 */	fsubs f1, f2, f1
/* 805453E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805453EC  4C 41 13 82 */	cror 2, 1, 2
/* 805453F0  40 82 00 08 */	bne lbl_805453F8
/* 805453F4  48 00 00 08 */	b lbl_805453FC
lbl_805453F8:
/* 805453F8  FC 20 08 50 */	fneg f1, f1
lbl_805453FC:
/* 805453FC  3C 60 80 65 */	lis r3, lit_1794@ha /* 0x80649410@ha */
/* 80545400  C0 03 94 10 */	lfs f0, lit_1794@l(r3)  /* 0x80649410@l */
/* 80545404  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80545408  40 80 00 44 */	bge lbl_8054544C
/* 8054540C  C0 7D 00 28 */	lfs f3, 0x28(r29)
/* 80545410  3C 60 80 65 */	lis r3, lit_3905@ha /* 0x80649460@ha */
/* 80545414  C0 01 00 08 */	lfs f0, 8(r1)
/* 80545418  C0 5D 00 30 */	lfs f2, 0x30(r29)
/* 8054541C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80545420  EC 63 00 28 */	fsubs f3, f3, f0
/* 80545424  C0 03 94 60 */	lfs f0, lit_3905@l(r3)  /* 0x80649460@l */
/* 80545428  EC 22 08 28 */	fsubs f1, f2, f1
/* 8054542C  EC 43 00 F2 */	fmuls f2, f3, f3
/* 80545430  EC 21 00 72 */	fmuls f1, f1, f1
/* 80545434  EC 22 08 2A */	fadds f1, f2, f1
/* 80545438  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8054543C  40 80 00 10 */	bge lbl_8054544C
/* 80545440  93 BF 08 F0 */	stw r29, 0x8f0(r31)
/* 80545444  93 FD 08 F0 */	stw r31, 0x8f0(r29)
/* 80545448  48 00 00 14 */	b lbl_8054545C
lbl_8054544C:
/* 8054544C  83 BD 01 58 */	lwz r29, 0x158(r29)
/* 80545450  3B 9C FF FF */	addi r28, r28, -1
lbl_80545454:
/* 80545454  2C 1C 00 00 */	cmpwi r28, 0
/* 80545458  40 82 FF 6C */	bne lbl_805453C4
lbl_8054545C:
/* 8054545C  83 FF 01 58 */	lwz r31, 0x158(r31)
/* 80545460  3B DE FF FF */	addi r30, r30, -1
lbl_80545464:
/* 80545464  2C 1E 00 00 */	cmpwi r30, 0
/* 80545468  41 81 FF 34 */	bgt lbl_8054539C
/* 8054546C  80 1B 1D CC */	lwz r0, 0x1dcc(r27)
/* 80545470  80 9B 1D D0 */	lwz r4, 0x1dd0(r27)
/* 80545474  7C 09 03 A6 */	mtctr r0
/* 80545478  2C 00 00 00 */	cmpwi r0, 0
/* 8054547C  41 82 00 20 */	beq lbl_8054549C
lbl_80545480:
/* 80545480  80 64 08 F4 */	lwz r3, 0x8f4(r4)
/* 80545484  2C 03 00 00 */	cmpwi r3, 0
/* 80545488  40 81 00 0C */	ble lbl_80545494
/* 8054548C  38 03 FF FF */	addi r0, r3, -1
/* 80545490  90 04 08 F4 */	stw r0, 0x8f4(r4)
lbl_80545494:
/* 80545494  80 84 01 58 */	lwz r4, 0x158(r4)
/* 80545498  42 00 FF E8 */	bdnz lbl_80545480
lbl_8054549C:
/* 8054549C  39 61 00 30 */	addi r11, r1, 0x30
/* 805454A0  4B B5 5A 79 */	bl func_8009AF18
/* 805454A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805454A8  7C 08 03 A6 */	mtlr r0
/* 805454AC  38 21 00 30 */	addi r1, r1, 0x30
/* 805454B0  4E 80 00 20 */	blr 
