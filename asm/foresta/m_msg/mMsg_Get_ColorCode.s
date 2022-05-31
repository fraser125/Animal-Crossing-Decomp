lbl_803C02F4:
/* 803C02F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C02F8  7C 08 02 A6 */	mflr r0
/* 803C02FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C0300  80 63 00 0C */	lwz r3, 0xc(r3)
/* 803C0304  38 63 00 20 */	addi r3, r3, 0x20
/* 803C0308  4B FF FF A9 */	bl mMsg_Get_ColorCode_forData
/* 803C030C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C0310  7C 08 03 A6 */	mtlr r0
/* 803C0314  38 21 00 10 */	addi r1, r1, 0x10
/* 803C0318  4E 80 00 20 */	blr 
