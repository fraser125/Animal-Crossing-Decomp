lbl_805D92C4:
/* 805D92C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805D92C8  7C 08 02 A6 */	mflr r0
/* 805D92CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D92D0  39 61 00 20 */	addi r11, r1, 0x20
/* 805D92D4  4B AC 1B FD */	bl func_8009AED0
/* 805D92D8  7C 9F 23 78 */	mr r31, r4
/* 805D92DC  7C 7E 1B 78 */	mr r30, r3
/* 805D92E0  A8 84 00 18 */	lha r4, 0x18(r4)
/* 805D92E4  7C A8 2B 78 */	mr r8, r5
/* 805D92E8  A8 1F 00 1A */	lha r0, 0x1a(r31)
/* 805D92EC  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805D92F0  7C E4 01 D6 */	mullw r7, r4, r0
/* 805D92F4  A8 1F 00 1E */	lha r0, 0x1e(r31)
/* 805D92F8  3B A5 03 24 */	addi r29, r5, 0x324
/* 805D92FC  7C 07 00 00 */	cmpw r7, r0
/* 805D9300  41 81 00 14 */	bgt lbl_805D9314
/* 805D9304  7F A4 EB 78 */	mr r4, r29
/* 805D9308  38 A0 00 19 */	li r5, 0x19
/* 805D930C  4B FF F0 A5 */	bl func_805D83B0
/* 805D9310  48 00 00 F8 */	b lbl_805D9408
lbl_805D9314:
/* 805D9314  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 805D9318  7D 05 43 78 */	mr r5, r8
/* 805D931C  38 C0 00 00 */	li r6, 0
/* 805D9320  48 00 00 18 */	b lbl_805D9338
lbl_805D9324:
/* 805D9324  88 04 00 00 */	lbz r0, 0(r4)
/* 805D9328  38 C6 00 01 */	addi r6, r6, 1
/* 805D932C  38 84 00 01 */	addi r4, r4, 1
/* 805D9330  98 05 00 00 */	stb r0, 0(r5)
/* 805D9334  38 A5 00 01 */	addi r5, r5, 1
lbl_805D9338:
/* 805D9338  A8 1F 00 16 */	lha r0, 0x16(r31)
/* 805D933C  7C 06 00 00 */	cmpw r6, r0
/* 805D9340  41 80 FF E4 */	blt lbl_805D9324
/* 805D9344  88 7F 00 13 */	lbz r3, 0x13(r31)
/* 805D9348  7C 06 38 50 */	subf r0, r6, r7
/* 805D934C  98 65 00 00 */	stb r3, 0(r5)
/* 805D9350  7C 09 03 A6 */	mtctr r0
/* 805D9354  7C 06 38 00 */	cmpw r6, r7
/* 805D9358  38 A5 00 01 */	addi r5, r5, 1
/* 805D935C  40 80 00 18 */	bge lbl_805D9374
lbl_805D9360:
/* 805D9360  88 04 00 00 */	lbz r0, 0(r4)
/* 805D9364  38 84 00 01 */	addi r4, r4, 1
/* 805D9368  98 05 00 00 */	stb r0, 0(r5)
/* 805D936C  38 A5 00 01 */	addi r5, r5, 1
/* 805D9370  42 00 FF F0 */	bdnz lbl_805D9360
lbl_805D9374:
/* 805D9374  83 9F 00 28 */	lwz r28, 0x28(r31)
/* 805D9378  7F A3 EB 78 */	mr r3, r29
/* 805D937C  7F E4 FB 78 */	mr r4, r31
/* 805D9380  38 A1 00 0A */	addi r5, r1, 0xa
/* 805D9384  91 1F 00 28 */	stw r8, 0x28(r31)
/* 805D9388  38 C1 00 0C */	addi r6, r1, 0xc
/* 805D938C  38 E1 00 08 */	addi r7, r1, 8
/* 805D9390  A9 1F 00 1E */	lha r8, 0x1e(r31)
/* 805D9394  39 08 00 01 */	addi r8, r8, 1
/* 805D9398  4B FF F7 E9 */	bl mED_get_col_line_width
/* 805D939C  2C 03 00 01 */	cmpwi r3, 1
/* 805D93A0  93 9F 00 28 */	stw r28, 0x28(r31)
/* 805D93A4  41 82 00 40 */	beq lbl_805D93E4
/* 805D93A8  40 80 00 10 */	bge lbl_805D93B8
/* 805D93AC  2C 03 00 00 */	cmpwi r3, 0
/* 805D93B0  40 80 00 14 */	bge lbl_805D93C4
/* 805D93B4  48 00 00 54 */	b lbl_805D9408
lbl_805D93B8:
/* 805D93B8  2C 03 00 04 */	cmpwi r3, 4
/* 805D93BC  40 80 00 4C */	bge lbl_805D9408
/* 805D93C0  48 00 00 10 */	b lbl_805D93D0
lbl_805D93C4:
/* 805D93C4  7F E3 FB 78 */	mr r3, r31
/* 805D93C8  4B FF FD A1 */	bl mED_output_code
/* 805D93CC  48 00 00 3C */	b lbl_805D9408
lbl_805D93D0:
/* 805D93D0  7F C3 F3 78 */	mr r3, r30
/* 805D93D4  7F A4 EB 78 */	mr r4, r29
/* 805D93D8  38 A0 00 19 */	li r5, 0x19
/* 805D93DC  4B FF EF D5 */	bl func_805D83B0
/* 805D93E0  48 00 00 28 */	b lbl_805D9408
lbl_805D93E4:
/* 805D93E4  A8 7F 00 1A */	lha r3, 0x1a(r31)
/* 805D93E8  A8 9F 00 24 */	lha r4, 0x24(r31)
/* 805D93EC  38 03 FF FF */	addi r0, r3, -1
/* 805D93F0  7C 04 00 00 */	cmpw r4, r0
/* 805D93F4  41 82 00 14 */	beq lbl_805D9408
/* 805D93F8  7F C3 F3 78 */	mr r3, r30
/* 805D93FC  7F A4 EB 78 */	mr r4, r29
/* 805D9400  38 A0 00 19 */	li r5, 0x19
/* 805D9404  4B FF EF AD */	bl func_805D83B0
lbl_805D9408:
/* 805D9408  39 61 00 20 */	addi r11, r1, 0x20
/* 805D940C  4B AC 1B 11 */	bl func_8009AF1C
/* 805D9410  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805D9414  7C 08 03 A6 */	mtlr r0
/* 805D9418  38 21 00 20 */	addi r1, r1, 0x20
/* 805D941C  4E 80 00 20 */	blr 
