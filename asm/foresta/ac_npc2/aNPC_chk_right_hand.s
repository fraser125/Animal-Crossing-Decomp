lbl_8053C640:
/* 8053C640  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053C644  7C 08 02 A6 */	mflr r0
/* 8053C648  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053C64C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053C650  3B E0 00 01 */	li r31, 1
/* 8053C654  93 C1 00 08 */	stw r30, 8(r1)
/* 8053C658  7C 7E 1B 78 */	mr r30, r3
/* 8053C65C  88 03 08 99 */	lbz r0, 0x899(r3)
/* 8053C660  2C 00 00 03 */	cmpwi r0, 3
/* 8053C664  41 82 00 14 */	beq lbl_8053C678
/* 8053C668  40 80 00 2C */	bge lbl_8053C694
/* 8053C66C  2C 00 00 00 */	cmpwi r0, 0
/* 8053C670  41 82 00 4C */	beq lbl_8053C6BC
/* 8053C674  48 00 00 20 */	b lbl_8053C694
lbl_8053C678:
/* 8053C678  4B FF FD F1 */	bl func_8053C468
/* 8053C67C  2C 03 00 00 */	cmpwi r3, 0
/* 8053C680  40 82 00 3C */	bne lbl_8053C6BC
/* 8053C684  38 00 00 00 */	li r0, 0
/* 8053C688  3B E0 00 00 */	li r31, 0
/* 8053C68C  98 1E 08 99 */	stb r0, 0x899(r30)
/* 8053C690  48 00 00 2C */	b lbl_8053C6BC
lbl_8053C694:
/* 8053C694  88 1E 08 98 */	lbz r0, 0x898(r30)
/* 8053C698  28 00 00 00 */	cmplwi r0, 0
/* 8053C69C  40 82 00 14 */	bne lbl_8053C6B0
/* 8053C6A0  7F C3 F3 78 */	mr r3, r30
/* 8053C6A4  4B FF FE 61 */	bl aNPC_takeout_right_item
/* 8053C6A8  7C 7F 1B 78 */	mr r31, r3
/* 8053C6AC  48 00 00 10 */	b lbl_8053C6BC
lbl_8053C6B0:
/* 8053C6B0  7F C3 F3 78 */	mr r3, r30
/* 8053C6B4  4B FF FD B5 */	bl func_8053C468
/* 8053C6B8  7C 7F 1B 78 */	mr r31, r3
lbl_8053C6BC:
/* 8053C6BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053C6C0  7F E3 FB 78 */	mr r3, r31
/* 8053C6C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053C6C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8053C6CC  7C 08 03 A6 */	mtlr r0
/* 8053C6D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8053C6D4  4E 80 00 20 */	blr 