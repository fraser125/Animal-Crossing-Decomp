lbl_803DEC74:
/* 803DEC74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DEC78  7C 08 02 A6 */	mflr r0
/* 803DEC7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DEC80  4B FF FB 99 */	bl mPB_get_keep_item_sum
/* 803DEC84  2C 03 00 05 */	cmpwi r3, 5
/* 803DEC88  41 81 00 18 */	bgt lbl_803DECA0
/* 803DEC8C  4B C7 E0 41 */	bl func_8005CCCC
/* 803DEC90  2C 03 00 00 */	cmpwi r3, 0
/* 803DEC94  41 80 00 0C */	blt lbl_803DECA0
/* 803DEC98  4B FF FF 49 */	bl mPB_get_force_set_item
/* 803DEC9C  4B FF FB B5 */	bl mPB_keep_item
lbl_803DECA0:
/* 803DECA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DECA4  7C 08 03 A6 */	mtlr r0
/* 803DECA8  38 21 00 10 */	addi r1, r1, 0x10
/* 803DECAC  4E 80 00 20 */	blr 
