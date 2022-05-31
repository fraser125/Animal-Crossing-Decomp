lbl_803EA620:
/* 803EA620  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EA624  7C 08 02 A6 */	mflr r0
/* 803EA628  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EA62C  4B FF F3 39 */	bl mSP_GetShopLevel
/* 803EA630  3C 80 80 66 */	lis r4, shop_close_time_table_1352@ha /* 0x8065D914@ha */
/* 803EA634  38 84 D9 14 */	addi r4, r4, shop_close_time_table_1352@l /* 0x8065D914@l */
/* 803EA638  7C 64 18 AE */	lbzx r3, r4, r3
/* 803EA63C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EA640  7C 08 03 A6 */	mtlr r0
/* 803EA644  38 21 00 10 */	addi r1, r1, 0x10
/* 803EA648  4E 80 00 20 */	blr 
