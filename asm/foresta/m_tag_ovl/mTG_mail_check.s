lbl_805F61D4:
/* 805F61D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F61D8  7C 08 02 A6 */	mflr r0
/* 805F61DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F61E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F61E4  3B E0 00 00 */	li r31, 0
/* 805F61E8  A0 03 00 2C */	lhz r0, 0x2c(r3)
/* 805F61EC  28 00 00 00 */	cmplwi r0, 0
/* 805F61F0  41 82 00 08 */	beq lbl_805F61F8
/* 805F61F4  63 FF 00 01 */	ori r31, r31, 1
lbl_805F61F8:
/* 805F61F8  4B DC 69 79 */	bl mMl_check_send_mail
/* 805F61FC  2C 03 00 00 */	cmpwi r3, 0
/* 805F6200  40 82 00 08 */	bne lbl_805F6208
/* 805F6204  63 FF 00 02 */	ori r31, r31, 2
lbl_805F6208:
/* 805F6208  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F620C  7F E3 FB 78 */	mr r3, r31
/* 805F6210  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F6214  7C 08 03 A6 */	mtlr r0
/* 805F6218  38 21 00 10 */	addi r1, r1, 0x10
/* 805F621C  4E 80 00 20 */	blr 
