lbl_803B6064:
/* 803B6064  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B6068  7C 08 02 A6 */	mflr r0
/* 803B606C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B6070  4B FF FB D5 */	bl Kabu_decide_trade_market
/* 803B6074  4B FF FF AD */	bl Kabu_decide_price_without_sunday
/* 803B6078  4B FF FB 65 */	bl func_803B5BDC
/* 803B607C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B6080  7C 08 03 A6 */	mtlr r0
/* 803B6084  38 21 00 10 */	addi r1, r1, 0x10
/* 803B6088  4E 80 00 20 */	blr 
