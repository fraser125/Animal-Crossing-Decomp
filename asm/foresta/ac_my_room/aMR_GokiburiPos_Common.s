lbl_8047E748:
/* 8047E748  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8047E74C  7C 08 02 A6 */	mflr r0
/* 8047E750  90 01 00 94 */	stw r0, 0x94(r1)
/* 8047E754  39 61 00 90 */	addi r11, r1, 0x90
/* 8047E758  4B C1 C7 69 */	bl func_8009AEC0
/* 8047E75C  3C E0 80 64 */	lis r7, lit_3751@ha /* 0x80644A78@ha */
/* 8047E760  88 04 00 3F */	lbz r0, 0x3f(r4)
/* 8047E764  39 27 4A 78 */	addi r9, r7, lit_3751@l /* 0x80644A78@l */
/* 8047E768  7C 7C 1B 78 */	mr r28, r3
/* 8047E76C  81 09 00 00 */	lwz r8, 0(r9)
/* 8047E770  28 00 00 04 */	cmplwi r0, 4
/* 8047E774  80 E9 00 04 */	lwz r7, 4(r9)
/* 8047E778  7C BD 2B 78 */	mr r29, r5
/* 8047E77C  80 69 00 08 */	lwz r3, 8(r9)
/* 8047E780  7C DE 33 78 */	mr r30, r6
/* 8047E784  80 09 00 0C */	lwz r0, 0xc(r9)
/* 8047E788  3B E0 00 00 */	li r31, 0
/* 8047E78C  91 01 00 18 */	stw r8, 0x18(r1)
/* 8047E790  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 8047E794  90 61 00 20 */	stw r3, 0x20(r1)
/* 8047E798  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047E79C  40 82 00 24 */	bne lbl_8047E7C0
/* 8047E7A0  80 A4 00 08 */	lwz r5, 8(r4)
/* 8047E7A4  38 60 00 01 */	li r3, 1
/* 8047E7A8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8047E7AC  90 BC 00 00 */	stw r5, 0(r28)
/* 8047E7B0  90 1C 00 04 */	stw r0, 4(r28)
/* 8047E7B4  80 04 00 10 */	lwz r0, 0x10(r4)
/* 8047E7B8  90 1C 00 08 */	stw r0, 8(r28)
/* 8047E7BC  48 00 02 7C */	b lbl_8047EA38
lbl_8047E7C0:
/* 8047E7C0  3C 60 80 69 */	lis r3, init_pos@ha /* 0x8068A078@ha */
/* 8047E7C4  7C 87 23 78 */	mr r7, r4
/* 8047E7C8  39 23 A0 78 */	addi r9, r3, init_pos@l /* 0x8068A078@l */
/* 8047E7CC  38 61 00 38 */	addi r3, r1, 0x38
/* 8047E7D0  81 09 00 00 */	lwz r8, 0(r9)
/* 8047E7D4  38 81 00 44 */	addi r4, r1, 0x44
/* 8047E7D8  80 09 00 04 */	lwz r0, 4(r9)
/* 8047E7DC  38 A1 00 50 */	addi r5, r1, 0x50
/* 8047E7E0  38 C1 00 5C */	addi r6, r1, 0x5c
/* 8047E7E4  91 1C 00 00 */	stw r8, 0(r28)
/* 8047E7E8  90 1C 00 04 */	stw r0, 4(r28)
/* 8047E7EC  80 09 00 08 */	lwz r0, 8(r9)
/* 8047E7F0  90 1C 00 08 */	stw r0, 8(r28)
/* 8047E7F4  4B FF 97 CD */	bl aMR_GetFtrShape4Position
/* 8047E7F8  3B 21 00 28 */	addi r25, r1, 0x28
/* 8047E7FC  3B 00 00 00 */	li r24, 0
/* 8047E800  3B 60 00 00 */	li r27, 0
/* 8047E804  3B 40 00 00 */	li r26, 0
lbl_8047E808:
/* 8047E808  38 61 00 38 */	addi r3, r1, 0x38
/* 8047E80C  38 9D 00 28 */	addi r4, r29, 0x28
/* 8047E810  7C 63 D2 14 */	add r3, r3, r26
/* 8047E814  4B FF FF 0D */	bl func_8047E720
/* 8047E818  3B 18 00 01 */	addi r24, r24, 1
/* 8047E81C  7C 39 DD 2E */	stfsx f1, r25, r27
/* 8047E820  2C 18 00 04 */	cmpwi r24, 4
/* 8047E824  3B 7B 00 04 */	addi r27, r27, 4
/* 8047E828  3B 5A 00 0C */	addi r26, r26, 0xc
/* 8047E82C  41 80 FF DC */	blt lbl_8047E808
/* 8047E830  3C 60 80 64 */	lis r3, lit_3813@ha /* 0x80644A88@ha */
/* 8047E834  38 C1 00 28 */	addi r6, r1, 0x28
/* 8047E838  38 A1 00 18 */	addi r5, r1, 0x18
/* 8047E83C  39 20 00 00 */	li r9, 0
/* 8047E840  38 E3 4A 88 */	addi r7, r3, lit_3813@l /* 0x80644A88@l */
/* 8047E844  38 00 00 04 */	li r0, 4
lbl_8047E848:
/* 8047E848  C0 27 00 00 */	lfs f1, 0(r7)
/* 8047E84C  39 00 00 00 */	li r8, 0
/* 8047E850  38 60 00 00 */	li r3, 0
/* 8047E854  7C 09 03 A6 */	mtctr r0
lbl_8047E858:
/* 8047E858  7C 06 1C 2E */	lfsx f0, r6, r3
/* 8047E85C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8047E860  40 80 00 18 */	bge lbl_8047E878
/* 8047E864  7C 85 18 2E */	lwzx r4, r5, r3
/* 8047E868  2C 04 FF FF */	cmpwi r4, -1
/* 8047E86C  40 82 00 0C */	bne lbl_8047E878
/* 8047E870  FC 20 00 90 */	fmr f1, f0
/* 8047E874  7D 1F 43 78 */	mr r31, r8
lbl_8047E878:
/* 8047E878  39 08 00 01 */	addi r8, r8, 1
/* 8047E87C  38 63 00 04 */	addi r3, r3, 4
/* 8047E880  42 00 FF D8 */	bdnz lbl_8047E858
/* 8047E884  57 E3 10 3A */	slwi r3, r31, 2
/* 8047E888  7D 25 19 2E */	stwx r9, r5, r3
/* 8047E88C  39 29 00 01 */	addi r9, r9, 1
/* 8047E890  2C 09 00 04 */	cmpwi r9, 4
/* 8047E894  41 80 FF B4 */	blt lbl_8047E848
/* 8047E898  38 E1 00 18 */	addi r7, r1, 0x18
/* 8047E89C  38 A1 00 08 */	addi r5, r1, 8
/* 8047E8A0  39 20 00 00 */	li r9, 0
/* 8047E8A4  38 60 00 00 */	li r3, 0
/* 8047E8A8  38 00 00 04 */	li r0, 4
lbl_8047E8AC:
/* 8047E8AC  39 00 00 00 */	li r8, 0
/* 8047E8B0  38 80 00 00 */	li r4, 0
/* 8047E8B4  7C 09 03 A6 */	mtctr r0
lbl_8047E8B8:
/* 8047E8B8  7C C7 20 2E */	lwzx r6, r7, r4
/* 8047E8BC  7C 09 30 00 */	cmpw r9, r6
/* 8047E8C0  40 82 00 0C */	bne lbl_8047E8CC
/* 8047E8C4  7D 05 19 2E */	stwx r8, r5, r3
/* 8047E8C8  48 00 00 10 */	b lbl_8047E8D8
lbl_8047E8CC:
/* 8047E8CC  39 08 00 01 */	addi r8, r8, 1
/* 8047E8D0  38 84 00 04 */	addi r4, r4, 4
/* 8047E8D4  42 00 FF E4 */	bdnz lbl_8047E8B8
lbl_8047E8D8:
/* 8047E8D8  39 29 00 01 */	addi r9, r9, 1
/* 8047E8DC  38 63 00 04 */	addi r3, r3, 4
/* 8047E8E0  2C 09 00 04 */	cmpwi r9, 4
/* 8047E8E4  41 80 FF C8 */	blt lbl_8047E8AC
/* 8047E8E8  80 61 00 08 */	lwz r3, 8(r1)
/* 8047E8EC  81 01 00 0C */	lwz r8, 0xc(r1)
/* 8047E8F0  38 03 00 01 */	addi r0, r3, 1
/* 8047E8F4  54 05 07 BE */	clrlwi r5, r0, 0x1e
/* 8047E8F8  7C 05 40 00 */	cmpw r5, r8
/* 8047E8FC  41 82 00 4C */	beq lbl_8047E948
/* 8047E900  1C 03 00 0C */	mulli r0, r3, 0xc
/* 8047E904  38 81 00 38 */	addi r4, r1, 0x38
/* 8047E908  38 E1 00 40 */	addi r7, r1, 0x40
/* 8047E90C  3C 60 80 64 */	lis r3, lit_967@ha /* 0x80644A04@ha */
/* 8047E910  1C C5 00 0C */	mulli r6, r5, 0xc
/* 8047E914  7C 64 04 2E */	lfsx f3, r4, r0
/* 8047E918  7C 27 04 2E */	lfsx f1, r7, r0
/* 8047E91C  38 A3 4A 04 */	addi r5, r3, lit_967@l /* 0x80644A04@l */
/* 8047E920  38 61 00 3C */	addi r3, r1, 0x3c
/* 8047E924  C0 85 00 00 */	lfs f4, 0(r5)
/* 8047E928  7C 44 34 2E */	lfsx f2, r4, r6
/* 8047E92C  7C 07 34 2E */	lfsx f0, r7, r6
/* 8047E930  EC 43 10 2A */	fadds f2, f3, f2
/* 8047E934  7C 63 04 2E */	lfsx f3, r3, r0
/* 8047E938  EC 01 00 2A */	fadds f0, f1, f0
/* 8047E93C  EC 44 00 B2 */	fmuls f2, f4, f2
/* 8047E940  EC 84 00 32 */	fmuls f4, f4, f0
/* 8047E944  48 00 00 64 */	b lbl_8047E9A8
lbl_8047E948:
/* 8047E948  38 03 FF FF */	addi r0, r3, -1
/* 8047E94C  54 05 07 BE */	clrlwi r5, r0, 0x1e
/* 8047E950  7C 05 40 00 */	cmpw r5, r8
/* 8047E954  41 82 00 4C */	beq lbl_8047E9A0
/* 8047E958  1C 03 00 0C */	mulli r0, r3, 0xc
/* 8047E95C  38 81 00 38 */	addi r4, r1, 0x38
/* 8047E960  38 E1 00 40 */	addi r7, r1, 0x40
/* 8047E964  3C 60 80 64 */	lis r3, lit_967@ha /* 0x80644A04@ha */
/* 8047E968  1C C5 00 0C */	mulli r6, r5, 0xc
/* 8047E96C  7C 64 04 2E */	lfsx f3, r4, r0
/* 8047E970  7C 27 04 2E */	lfsx f1, r7, r0
/* 8047E974  38 A3 4A 04 */	addi r5, r3, lit_967@l /* 0x80644A04@l */
/* 8047E978  38 61 00 3C */	addi r3, r1, 0x3c
/* 8047E97C  C0 85 00 00 */	lfs f4, 0(r5)
/* 8047E980  7C 44 34 2E */	lfsx f2, r4, r6
/* 8047E984  7C 07 34 2E */	lfsx f0, r7, r6
/* 8047E988  EC 43 10 2A */	fadds f2, f3, f2
/* 8047E98C  7C 63 04 2E */	lfsx f3, r3, r0
/* 8047E990  EC 01 00 2A */	fadds f0, f1, f0
/* 8047E994  EC 44 00 B2 */	fmuls f2, f4, f2
/* 8047E998  EC 84 00 32 */	fmuls f4, f4, f0
/* 8047E99C  48 00 00 0C */	b lbl_8047E9A8
lbl_8047E9A0:
/* 8047E9A0  38 60 00 00 */	li r3, 0
/* 8047E9A4  48 00 00 94 */	b lbl_8047EA38
lbl_8047E9A8:
/* 8047E9A8  2C 1E 00 01 */	cmpwi r30, 1
/* 8047E9AC  40 82 00 50 */	bne lbl_8047E9FC
/* 8047E9B0  80 61 00 08 */	lwz r3, 8(r1)
/* 8047E9B4  3C 80 80 64 */	lis r4, lit_967@ha /* 0x80644A04@ha */
/* 8047E9B8  38 A4 4A 04 */	addi r5, r4, lit_967@l /* 0x80644A04@l */
/* 8047E9BC  38 81 00 38 */	addi r4, r1, 0x38
/* 8047E9C0  38 03 00 02 */	addi r0, r3, 2
/* 8047E9C4  C0 25 00 00 */	lfs f1, 0(r5)
/* 8047E9C8  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 8047E9CC  38 61 00 40 */	addi r3, r1, 0x40
/* 8047E9D0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8047E9D4  7C 04 04 2E */	lfsx f0, r4, r0
/* 8047E9D8  EC 02 00 2A */	fadds f0, f2, f0
/* 8047E9DC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8047E9E0  D0 1C 00 00 */	stfs f0, 0(r28)
/* 8047E9E4  D0 7C 00 04 */	stfs f3, 4(r28)
/* 8047E9E8  7C 03 04 2E */	lfsx f0, r3, r0
/* 8047E9EC  EC 04 00 2A */	fadds f0, f4, f0
/* 8047E9F0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8047E9F4  D0 1C 00 08 */	stfs f0, 8(r28)
/* 8047E9F8  48 00 00 3C */	b lbl_8047EA34
lbl_8047E9FC:
/* 8047E9FC  1C 08 00 0C */	mulli r0, r8, 0xc
/* 8047EA00  38 81 00 38 */	addi r4, r1, 0x38
/* 8047EA04  3C A0 80 64 */	lis r5, lit_967@ha /* 0x80644A04@ha */
/* 8047EA08  C0 25 4A 04 */	lfs f1, lit_967@l(r5)  /* 0x80644A04@l */
/* 8047EA0C  38 61 00 40 */	addi r3, r1, 0x40
/* 8047EA10  7C 04 04 2E */	lfsx f0, r4, r0
/* 8047EA14  EC 02 00 2A */	fadds f0, f2, f0
/* 8047EA18  EC 01 00 32 */	fmuls f0, f1, f0
/* 8047EA1C  D0 1C 00 00 */	stfs f0, 0(r28)
/* 8047EA20  D0 7C 00 04 */	stfs f3, 4(r28)
/* 8047EA24  7C 03 04 2E */	lfsx f0, r3, r0
/* 8047EA28  EC 04 00 2A */	fadds f0, f4, f0
/* 8047EA2C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8047EA30  D0 1C 00 08 */	stfs f0, 8(r28)
lbl_8047EA34:
/* 8047EA34  38 60 00 01 */	li r3, 1
lbl_8047EA38:
/* 8047EA38  39 61 00 90 */	addi r11, r1, 0x90
/* 8047EA3C  4B C1 C4 D1 */	bl func_8009AF0C
/* 8047EA40  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8047EA44  7C 08 03 A6 */	mtlr r0
/* 8047EA48  38 21 00 90 */	addi r1, r1, 0x90
/* 8047EA4C  4E 80 00 20 */	blr 
