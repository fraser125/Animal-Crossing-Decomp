lbl_8056F624:
/* 8056F624  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056F628  7C 08 02 A6 */	mflr r0
/* 8056F62C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056F630  88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 8056F634  28 00 00 FF */	cmplwi r0, 0xff
/* 8056F638  40 82 00 18 */	bne lbl_8056F650
/* 8056F63C  88 03 07 F5 */	lbz r0, 0x7f5(r3)
/* 8056F640  28 00 00 02 */	cmplwi r0, 2
/* 8056F644  40 82 00 0C */	bne lbl_8056F650
/* 8056F648  38 A0 00 02 */	li r5, 2
/* 8056F64C  48 00 07 2D */	bl aNRG_setup_think_proc
lbl_8056F650:
/* 8056F650  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056F654  7C 08 03 A6 */	mtlr r0
/* 8056F658  38 21 00 10 */	addi r1, r1, 0x10
/* 8056F65C  4E 80 00 20 */	blr 
