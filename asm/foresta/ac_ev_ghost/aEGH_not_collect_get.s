lbl_8051F804:
/* 8051F804  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8051F808  7C 08 02 A6 */	mflr r0
/* 8051F80C  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8051F810  39 61 00 E0 */	addi r11, r1, 0xe0
/* 8051F814  4B B7 B6 BD */	bl func_8009AED0
/* 8051F818  3C 60 80 6A */	lis r3, item_list@ha /* 0x806A0724@ha */
/* 8051F81C  3B A0 00 00 */	li r29, 0
/* 8051F820  3B C3 07 24 */	addi r30, r3, item_list@l /* 0x806A0724@l */
/* 8051F824  3B 80 00 00 */	li r28, 0
/* 8051F828  3B E0 00 00 */	li r31, 0
lbl_8051F82C:
/* 8051F82C  38 61 00 60 */	addi r3, r1, 0x60
/* 8051F830  38 81 00 08 */	addi r4, r1, 8
/* 8051F834  7C BE F8 2E */	lwzx r5, r30, r31
/* 8051F838  7C 63 FA 14 */	add r3, r3, r31
/* 8051F83C  7C 84 FA 14 */	add r4, r4, r31
/* 8051F840  4B FF FF 45 */	bl aEGH_check_collect_num
/* 8051F844  3B 9C 00 01 */	addi r28, r28, 1
/* 8051F848  3B FF 00 04 */	addi r31, r31, 4
/* 8051F84C  2C 1C 00 16 */	cmpwi r28, 0x16
/* 8051F850  41 80 FF DC */	blt lbl_8051F82C
/* 8051F854  38 00 00 16 */	li r0, 0x16
/* 8051F858  38 81 00 08 */	addi r4, r1, 8
/* 8051F85C  38 60 00 00 */	li r3, 0
/* 8051F860  3B 80 00 00 */	li r28, 0
/* 8051F864  7C 09 03 A6 */	mtctr r0
lbl_8051F868:
/* 8051F868  7C 04 18 2E */	lwzx r0, r4, r3
/* 8051F86C  38 63 00 04 */	addi r3, r3, 4
/* 8051F870  7F 9C 02 14 */	add r28, r28, r0
/* 8051F874  42 00 FF F4 */	bdnz lbl_8051F868
/* 8051F878  2C 1C 00 00 */	cmpwi r28, 0
/* 8051F87C  40 82 00 2C */	bne lbl_8051F8A8
/* 8051F880  38 00 00 16 */	li r0, 0x16
/* 8051F884  38 81 00 60 */	addi r4, r1, 0x60
/* 8051F888  3B A0 00 01 */	li r29, 1
/* 8051F88C  38 60 00 00 */	li r3, 0
/* 8051F890  3B 80 00 00 */	li r28, 0
/* 8051F894  7C 09 03 A6 */	mtctr r0
lbl_8051F898:
/* 8051F898  7C 04 18 2E */	lwzx r0, r4, r3
/* 8051F89C  38 63 00 04 */	addi r3, r3, 4
/* 8051F8A0  7F 9C 02 14 */	add r28, r28, r0
/* 8051F8A4  42 00 FF F4 */	bdnz lbl_8051F898
lbl_8051F8A8:
/* 8051F8A8  4B B3 D4 4D */	bl fqrand
/* 8051F8AC  6F 83 80 00 */	xoris r3, r28, 0x8000
/* 8051F8B0  3C 00 43 30 */	lis r0, 0x4330
/* 8051F8B4  90 61 00 BC */	stw r3, 0xbc(r1)
/* 8051F8B8  3C 80 80 65 */	lis r4, lit_672@ha /* 0x8064910C@ha */
/* 8051F8BC  C8 44 91 0C */	lfd f2, lit_672@l(r4)  /* 0x8064910C@l */
/* 8051F8C0  2C 1D 00 00 */	cmpwi r29, 0
/* 8051F8C4  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 8051F8C8  C8 01 00 B8 */	lfd f0, 0xb8(r1)
/* 8051F8CC  EC 00 10 28 */	fsubs f0, f0, f2
/* 8051F8D0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8051F8D4  FC 00 00 1E */	fctiwz f0, f0
/* 8051F8D8  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 8051F8DC  80 61 00 C4 */	lwz r3, 0xc4(r1)
/* 8051F8E0  41 82 00 60 */	beq lbl_8051F940
/* 8051F8E4  38 A1 00 60 */	addi r5, r1, 0x60
/* 8051F8E8  38 C0 00 00 */	li r6, 0
/* 8051F8EC  38 80 00 00 */	li r4, 0
/* 8051F8F0  48 00 00 10 */	b lbl_8051F900
lbl_8051F8F4:
/* 8051F8F4  7C 60 18 50 */	subf r3, r0, r3
/* 8051F8F8  38 C6 00 01 */	addi r6, r6, 1
/* 8051F8FC  38 84 00 04 */	addi r4, r4, 4
lbl_8051F900:
/* 8051F900  2C 06 00 16 */	cmpwi r6, 0x16
/* 8051F904  40 80 00 10 */	bge lbl_8051F914
/* 8051F908  7C 05 20 2E */	lwzx r0, r5, r4
/* 8051F90C  7C 03 00 00 */	cmpw r3, r0
/* 8051F910  40 80 FF E4 */	bge lbl_8051F8F4
lbl_8051F914:
/* 8051F914  2C 06 00 16 */	cmpwi r6, 0x16
/* 8051F918  41 82 00 20 */	beq lbl_8051F938
/* 8051F91C  3C 80 80 6A */	lis r4, item_list@ha /* 0x806A0724@ha */
/* 8051F920  54 C5 10 3A */	slwi r5, r6, 2
/* 8051F924  38 84 07 24 */	addi r4, r4, item_list@l /* 0x806A0724@l */
/* 8051F928  54 60 08 3C */	slwi r0, r3, 1
/* 8051F92C  7C 64 28 2E */	lwzx r3, r4, r5
/* 8051F930  7C 63 02 2E */	lhzx r3, r3, r0
/* 8051F934  48 00 00 6C */	b lbl_8051F9A0
lbl_8051F938:
/* 8051F938  38 60 28 03 */	li r3, 0x2803
/* 8051F93C  48 00 00 64 */	b lbl_8051F9A0
lbl_8051F940:
/* 8051F940  38 A1 00 08 */	addi r5, r1, 8
/* 8051F944  38 C0 00 00 */	li r6, 0
/* 8051F948  38 80 00 00 */	li r4, 0
/* 8051F94C  48 00 00 10 */	b lbl_8051F95C
lbl_8051F950:
/* 8051F950  7C 60 18 50 */	subf r3, r0, r3
/* 8051F954  38 C6 00 01 */	addi r6, r6, 1
/* 8051F958  38 84 00 04 */	addi r4, r4, 4
lbl_8051F95C:
/* 8051F95C  2C 06 00 16 */	cmpwi r6, 0x16
/* 8051F960  40 80 00 10 */	bge lbl_8051F970
/* 8051F964  7C 05 20 2E */	lwzx r0, r5, r4
/* 8051F968  7C 03 00 00 */	cmpw r3, r0
/* 8051F96C  40 80 FF E4 */	bge lbl_8051F950
lbl_8051F970:
/* 8051F970  2C 06 00 16 */	cmpwi r6, 0x16
/* 8051F974  41 82 00 28 */	beq lbl_8051F99C
/* 8051F978  3C 80 80 6A */	lis r4, item_list@ha /* 0x806A0724@ha */
/* 8051F97C  54 C0 10 3A */	slwi r0, r6, 2
/* 8051F980  38 84 07 24 */	addi r4, r4, item_list@l /* 0x806A0724@l */
/* 8051F984  7C 84 00 2E */	lwzx r4, r4, r0
/* 8051F988  4B FF FD 8D */	bl aEGH_get_collect
/* 8051F98C  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8051F990  40 82 00 10 */	bne lbl_8051F9A0
/* 8051F994  38 60 28 00 */	li r3, 0x2800
/* 8051F998  48 00 00 08 */	b lbl_8051F9A0
lbl_8051F99C:
/* 8051F99C  38 60 28 03 */	li r3, 0x2803
lbl_8051F9A0:
/* 8051F9A0  38 80 00 01 */	li r4, 1
/* 8051F9A4  4B EC 6B 81 */	bl mRmTp_FtrItemNo2Item1ItemNo
/* 8051F9A8  39 61 00 E0 */	addi r11, r1, 0xe0
/* 8051F9AC  4B B7 B5 71 */	bl func_8009AF1C
/* 8051F9B0  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8051F9B4  7C 08 03 A6 */	mtlr r0
/* 8051F9B8  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8051F9BC  4E 80 00 20 */	blr 
