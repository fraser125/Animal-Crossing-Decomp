lbl_803DF8C0:
/* 803DF8C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DF8C4  7C 08 02 A6 */	mflr r0
/* 803DF8C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DF8CC  4B FF FF 65 */	bl mPO_delivery_mail
/* 803DF8D0  4B FF FF 89 */	bl mPO_delivery_leaflet
/* 803DF8D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DF8D8  7C 08 03 A6 */	mtlr r0
/* 803DF8DC  38 21 00 10 */	addi r1, r1, 0x10
/* 803DF8E0  4E 80 00 20 */	blr 
