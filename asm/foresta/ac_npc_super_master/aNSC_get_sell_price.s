lbl_8058183C:
/* 8058183C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80581840  7C 08 02 A6 */	mflr r0
/* 80581844  90 01 00 14 */	stw r0, 0x14(r1)
/* 80581848  4B E6 98 D9 */	bl mSP_get_sell_price
/* 8058184C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80581850  7C 08 03 A6 */	mtlr r0
/* 80581854  38 21 00 10 */	addi r1, r1, 0x10
/* 80581858  4E 80 00 20 */	blr 