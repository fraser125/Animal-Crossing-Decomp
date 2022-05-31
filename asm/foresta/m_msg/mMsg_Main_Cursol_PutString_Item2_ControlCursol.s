lbl_803C42B8:
/* 803C42B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C42BC  7C 08 02 A6 */	mflr r0
/* 803C42C0  38 A0 00 02 */	li r5, 2
/* 803C42C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C42C8  80 84 00 00 */	lwz r4, 0(r4)
/* 803C42CC  4B FF FF 19 */	bl mMsg_Main_Cursol_PutString_Item
/* 803C42D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C42D4  7C 08 03 A6 */	mtlr r0
/* 803C42D8  38 21 00 10 */	addi r1, r1, 0x10
/* 803C42DC  4E 80 00 20 */	blr 
