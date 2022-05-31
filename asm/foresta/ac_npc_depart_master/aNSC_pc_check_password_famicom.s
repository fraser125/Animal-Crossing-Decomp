lbl_8054DB1C:
/* 8054DB1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054DB20  7C 08 02 A6 */	mflr r0
/* 8054DB24  38 80 00 00 */	li r4, 0
/* 8054DB28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054DB2C  88 03 00 05 */	lbz r0, 5(r3)
/* 8054DB30  28 00 00 01 */	cmplwi r0, 1
/* 8054DB34  40 82 00 1C */	bne lbl_8054DB50
/* 8054DB38  4B E7 10 09 */	bl mMpswd_check_name
/* 8054DB3C  2C 03 00 01 */	cmpwi r3, 1
/* 8054DB40  40 82 00 0C */	bne lbl_8054DB4C
/* 8054DB44  38 80 00 01 */	li r4, 1
/* 8054DB48  48 00 00 08 */	b lbl_8054DB50
lbl_8054DB4C:
/* 8054DB4C  38 80 00 08 */	li r4, 8
lbl_8054DB50:
/* 8054DB50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054DB54  7C 83 23 78 */	mr r3, r4
/* 8054DB58  7C 08 03 A6 */	mtlr r0
/* 8054DB5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8054DB60  4E 80 00 20 */	blr 
