lbl_803C4268:
/* 803C4268  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C426C  7C 08 02 A6 */	mflr r0
/* 803C4270  38 A0 00 00 */	li r5, 0
/* 803C4274  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C4278  80 84 00 00 */	lwz r4, 0(r4)
/* 803C427C  4B FF FF 69 */	bl mMsg_Main_Cursol_PutString_Item
/* 803C4280  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C4284  7C 08 03 A6 */	mtlr r0
/* 803C4288  38 21 00 10 */	addi r1, r1, 0x10
/* 803C428C  4E 80 00 20 */	blr 
