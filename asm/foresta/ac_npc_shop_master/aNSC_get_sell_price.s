lbl_80577D30:
/* 80577D30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80577D34  7C 08 02 A6 */	mflr r0
/* 80577D38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80577D3C  4B E7 33 E5 */	bl mSP_get_sell_price
/* 80577D40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80577D44  7C 08 03 A6 */	mtlr r0
/* 80577D48  38 21 00 10 */	addi r1, r1, 0x10
/* 80577D4C  4E 80 00 20 */	blr 
