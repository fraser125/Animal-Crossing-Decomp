lbl_8053FC78:
/* 8053FC78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053FC7C  7C 08 02 A6 */	mflr r0
/* 8053FC80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053FC84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053FC88  3B E0 00 00 */	li r31, 0
/* 8053FC8C  93 C1 00 08 */	stw r30, 8(r1)
/* 8053FC90  7C 7E 1B 78 */	mr r30, r3
/* 8053FC94  88 03 07 F5 */	lbz r0, 0x7f5(r3)
/* 8053FC98  28 00 00 09 */	cmplwi r0, 9
/* 8053FC9C  40 82 00 10 */	bne lbl_8053FCAC
/* 8053FCA0  38 00 03 3F */	li r0, 0x33f
/* 8053FCA4  90 1E 08 40 */	stw r0, 0x840(r30)
/* 8053FCA8  48 00 00 0C */	b lbl_8053FCB4
lbl_8053FCAC:
/* 8053FCAC  38 00 00 00 */	li r0, 0
/* 8053FCB0  90 1E 08 40 */	stw r0, 0x840(r30)
lbl_8053FCB4:
/* 8053FCB4  88 1E 08 33 */	lbz r0, 0x833(r30)
/* 8053FCB8  28 00 00 02 */	cmplwi r0, 2
/* 8053FCBC  40 82 00 0C */	bne lbl_8053FCC8
/* 8053FCC0  3B E0 00 02 */	li r31, 2
/* 8053FCC4  48 00 00 20 */	b lbl_8053FCE4
lbl_8053FCC8:
/* 8053FCC8  4B FF FC 99 */	bl func_8053F960
/* 8053FCCC  88 1E 09 73 */	lbz r0, 0x973(r30)
/* 8053FCD0  28 00 00 00 */	cmplwi r0, 0
/* 8053FCD4  41 82 00 08 */	beq lbl_8053FCDC
/* 8053FCD8  3B E0 00 01 */	li r31, 1
lbl_8053FCDC:
/* 8053FCDC  38 00 00 02 */	li r0, 2
/* 8053FCE0  98 1E 08 33 */	stb r0, 0x833(r30)
lbl_8053FCE4:
/* 8053FCE4  7F C3 F3 78 */	mr r3, r30
/* 8053FCE8  7F E4 FB 78 */	mr r4, r31
/* 8053FCEC  4B FF FD 91 */	bl aNPC_act_talk_chg_step
/* 8053FCF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053FCF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053FCF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8053FCFC  7C 08 03 A6 */	mtlr r0
/* 8053FD00  38 21 00 10 */	addi r1, r1, 0x10
/* 8053FD04  4E 80 00 20 */	blr 
