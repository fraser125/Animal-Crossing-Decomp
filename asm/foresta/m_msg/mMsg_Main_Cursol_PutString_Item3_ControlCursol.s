lbl_803C42E0:
/* 803C42E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C42E4  7C 08 02 A6 */	mflr r0
/* 803C42E8  38 A0 00 03 */	li r5, 3
/* 803C42EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C42F0  80 84 00 00 */	lwz r4, 0(r4)
/* 803C42F4  4B FF FE F1 */	bl mMsg_Main_Cursol_PutString_Item
/* 803C42F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C42FC  7C 08 03 A6 */	mtlr r0
/* 803C4300  38 21 00 10 */	addi r1, r1, 0x10
/* 803C4304  4E 80 00 20 */	blr 
