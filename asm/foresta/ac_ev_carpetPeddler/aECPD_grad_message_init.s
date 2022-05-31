lbl_8051C6EC:
/* 8051C6EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051C6F0  7C 08 02 A6 */	mflr r0
/* 8051C6F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051C6F8  4B EA 2F B1 */	bl func_803BF6A8
/* 8051C6FC  4B EA 46 2D */	bl mMsg_Set_ForceNext
/* 8051C700  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051C704  7C 08 03 A6 */	mtlr r0
/* 8051C708  38 21 00 10 */	addi r1, r1, 0x10
/* 8051C70C  4E 80 00 20 */	blr 
