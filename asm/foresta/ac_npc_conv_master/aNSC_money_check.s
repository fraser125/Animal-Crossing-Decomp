lbl_80546778:
/* 80546778  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054677C  7C 08 02 A6 */	mflr r0
/* 80546780  90 01 00 14 */	stw r0, 0x14(r1)
/* 80546784  4B EA 48 0D */	bl mSP_money_check
/* 80546788  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054678C  7C 08 03 A6 */	mtlr r0
/* 80546790  38 21 00 10 */	addi r1, r1, 0x10
/* 80546794  4E 80 00 20 */	blr 
