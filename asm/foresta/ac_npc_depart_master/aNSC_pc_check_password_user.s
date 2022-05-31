lbl_8054DC64:
/* 8054DC64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054DC68  7C 08 02 A6 */	mflr r0
/* 8054DC6C  38 80 00 00 */	li r4, 0
/* 8054DC70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054DC74  88 03 00 05 */	lbz r0, 5(r3)
/* 8054DC78  28 00 00 01 */	cmplwi r0, 1
/* 8054DC7C  40 82 00 1C */	bne lbl_8054DC98
/* 8054DC80  4B E7 0E C1 */	bl mMpswd_check_name
/* 8054DC84  2C 03 00 01 */	cmpwi r3, 1
/* 8054DC88  40 82 00 0C */	bne lbl_8054DC94
/* 8054DC8C  38 80 00 05 */	li r4, 5
/* 8054DC90  48 00 00 08 */	b lbl_8054DC98
lbl_8054DC94:
/* 8054DC94  38 80 00 08 */	li r4, 8
lbl_8054DC98:
/* 8054DC98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054DC9C  7C 83 23 78 */	mr r3, r4
/* 8054DCA0  7C 08 03 A6 */	mtlr r0
/* 8054DCA4  38 21 00 10 */	addi r1, r1, 0x10
/* 8054DCA8  4E 80 00 20 */	blr 
