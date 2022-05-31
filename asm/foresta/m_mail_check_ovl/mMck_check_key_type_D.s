lbl_8050F4D0:
/* 8050F4D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050F4D4  7C 08 02 A6 */	mflr r0
/* 8050F4D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050F4DC  39 61 00 20 */	addi r11, r1, 0x20
/* 8050F4E0  4B B8 B9 F5 */	bl func_8009AED4
/* 8050F4E4  7C 7D 1B 78 */	mr r29, r3
/* 8050F4E8  7C 9E 23 78 */	mr r30, r4
/* 8050F4EC  3B E0 00 00 */	li r31, 0
/* 8050F4F0  48 00 00 58 */	b lbl_8050F548
lbl_8050F4F4:
/* 8050F4F4  88 7D 00 00 */	lbz r3, 0(r29)
/* 8050F4F8  38 80 00 00 */	li r4, 0
/* 8050F4FC  4B FF FD 69 */	bl mMck_check_alpha
/* 8050F500  2C 03 00 01 */	cmpwi r3, 1
/* 8050F504  41 82 00 18 */	beq lbl_8050F51C
/* 8050F508  88 7D 00 00 */	lbz r3, 0(r29)
/* 8050F50C  38 80 00 01 */	li r4, 1
/* 8050F510  4B FF FD 55 */	bl mMck_check_alpha
/* 8050F514  2C 03 00 01 */	cmpwi r3, 1
/* 8050F518  40 82 00 28 */	bne lbl_8050F540
lbl_8050F51C:
/* 8050F51C  88 7D 00 00 */	lbz r3, 0(r29)
/* 8050F520  88 1D 00 01 */	lbz r0, 1(r29)
/* 8050F524  7C 03 00 40 */	cmplw r3, r0
/* 8050F528  40 82 00 18 */	bne lbl_8050F540
/* 8050F52C  88 1D 00 02 */	lbz r0, 2(r29)
/* 8050F530  7C 03 00 40 */	cmplw r3, r0
/* 8050F534  40 82 00 0C */	bne lbl_8050F540
/* 8050F538  3B E0 FF CE */	li r31, -50
/* 8050F53C  48 00 00 14 */	b lbl_8050F550
lbl_8050F540:
/* 8050F540  3B DE FF FF */	addi r30, r30, -1
/* 8050F544  3B BD 00 01 */	addi r29, r29, 1
lbl_8050F548:
/* 8050F548  2C 1E 00 02 */	cmpwi r30, 2
/* 8050F54C  41 81 FF A8 */	bgt lbl_8050F4F4
lbl_8050F550:
/* 8050F550  7F E3 FB 78 */	mr r3, r31
/* 8050F554  39 61 00 20 */	addi r11, r1, 0x20
/* 8050F558  4B B8 B9 C9 */	bl func_8009AF20
/* 8050F55C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050F560  7C 08 03 A6 */	mtlr r0
/* 8050F564  38 21 00 20 */	addi r1, r1, 0x20
/* 8050F568  4E 80 00 20 */	blr 
