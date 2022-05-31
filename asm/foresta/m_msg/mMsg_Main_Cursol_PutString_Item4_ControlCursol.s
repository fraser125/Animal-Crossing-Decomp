lbl_803C4308:
/* 803C4308  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C430C  7C 08 02 A6 */	mflr r0
/* 803C4310  38 A0 00 04 */	li r5, 4
/* 803C4314  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C4318  80 84 00 00 */	lwz r4, 0(r4)
/* 803C431C  4B FF FE C9 */	bl mMsg_Main_Cursol_PutString_Item
/* 803C4320  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C4324  7C 08 03 A6 */	mtlr r0
/* 803C4328  38 21 00 10 */	addi r1, r1, 0x10
/* 803C432C  4E 80 00 20 */	blr 
