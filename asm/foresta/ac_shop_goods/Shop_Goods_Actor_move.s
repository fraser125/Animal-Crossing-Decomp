lbl_8049E188:
/* 8049E188  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049E18C  7C 08 02 A6 */	mflr r0
/* 8049E190  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049E194  4B FF F7 91 */	bl Shop_Goods_Actor_drop_move
/* 8049E198  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049E19C  7C 08 03 A6 */	mtlr r0
/* 8049E1A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8049E1A4  4E 80 00 20 */	blr 
