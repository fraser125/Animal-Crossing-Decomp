lbl_805DA160:
/* 805DA160  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DA164  7C 08 02 A6 */	mflr r0
/* 805DA168  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DA16C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DA170  7C BF 2B 78 */	mr r31, r5
/* 805DA174  A8 C5 00 16 */	lha r6, 0x16(r5)
/* 805DA178  2C 06 00 00 */	cmpwi r6, 0
/* 805DA17C  40 81 00 18 */	ble lbl_805DA194
/* 805DA180  38 66 FF FF */	addi r3, r6, -1
/* 805DA184  38 00 00 01 */	li r0, 1
/* 805DA188  B0 7F 00 16 */	sth r3, 0x16(r31)
/* 805DA18C  98 1F 00 15 */	stb r0, 0x15(r31)
/* 805DA190  48 00 00 3C */	b lbl_805DA1CC
lbl_805DA194:
/* 805DA194  A8 DF 00 1E */	lha r6, 0x1e(r31)
/* 805DA198  A8 1F 00 18 */	lha r0, 0x18(r31)
/* 805DA19C  7C 06 00 00 */	cmpw r6, r0
/* 805DA1A0  40 80 00 2C */	bge lbl_805DA1CC
/* 805DA1A4  38 00 00 20 */	li r0, 0x20
/* 805DA1A8  98 1F 00 13 */	stb r0, 0x13(r31)
/* 805DA1AC  4B FF FE 85 */	bl mED_input_footer_line
/* 805DA1B0  38 00 00 00 */	li r0, 0
/* 805DA1B4  B0 1F 00 16 */	sth r0, 0x16(r31)
/* 805DA1B8  88 1F 00 15 */	lbz r0, 0x15(r31)
/* 805DA1BC  28 00 00 00 */	cmplwi r0, 0
/* 805DA1C0  41 82 00 0C */	beq lbl_805DA1CC
/* 805DA1C4  38 00 00 08 */	li r0, 8
/* 805DA1C8  98 1F 00 11 */	stb r0, 0x11(r31)
lbl_805DA1CC:
/* 805DA1CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DA1D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DA1D4  7C 08 03 A6 */	mtlr r0
/* 805DA1D8  38 21 00 10 */	addi r1, r1, 0x10
/* 805DA1DC  4E 80 00 20 */	blr 
