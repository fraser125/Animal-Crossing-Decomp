lbl_80497238:
/* 80497238  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049723C  7C 08 02 A6 */	mflr r0
/* 80497240  90 01 00 24 */	stw r0, 0x24(r1)
/* 80497244  39 61 00 20 */	addi r11, r1, 0x20
/* 80497248  4B C0 3C 8D */	bl func_8009AED4
/* 8049724C  7C 7D 1B 78 */	mr r29, r3
/* 80497250  7C BE 2B 78 */	mr r30, r5
/* 80497254  3B E0 00 00 */	li r31, 0
/* 80497258  4B FF FF 91 */	bl aSNMgr_chk_exist_and_appear
/* 8049725C  2C 03 00 00 */	cmpwi r3, 0
/* 80497260  41 82 00 18 */	beq lbl_80497278
/* 80497264  A0 1D 02 9C */	lhz r0, 0x29c(r29)
/* 80497268  7C 00 F6 30 */	sraw r0, r0, r30
/* 8049726C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80497270  40 82 00 08 */	bne lbl_80497278
/* 80497274  3B E0 00 01 */	li r31, 1
lbl_80497278:
/* 80497278  7F E3 FB 78 */	mr r3, r31
/* 8049727C  39 61 00 20 */	addi r11, r1, 0x20
/* 80497280  4B C0 3C A1 */	bl func_8009AF20
/* 80497284  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80497288  7C 08 03 A6 */	mtlr r0
/* 8049728C  38 21 00 20 */	addi r1, r1, 0x20
/* 80497290  4E 80 00 20 */	blr 
