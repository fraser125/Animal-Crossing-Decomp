lbl_804D6518:
/* 804D6518  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D651C  7C 08 02 A6 */	mflr r0
/* 804D6520  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D6524  80 03 0D BC */	lwz r0, 0xdbc(r3)
/* 804D6528  7C 04 00 00 */	cmpw r4, r0
/* 804D652C  41 82 00 10 */	beq lbl_804D653C
/* 804D6530  90 83 0D BC */	stw r4, 0xdbc(r3)
/* 804D6534  38 63 11 10 */	addi r3, r3, 0x1110
/* 804D6538  4B F0 31 ED */	bl mPlib_DMA_player_Part_Table
lbl_804D653C:
/* 804D653C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D6540  7C 08 03 A6 */	mtlr r0
/* 804D6544  38 21 00 10 */	addi r1, r1, 0x10
/* 804D6548  4E 80 00 20 */	blr 
