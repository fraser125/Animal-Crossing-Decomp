lbl_803C0288:
/* 803C0288  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C028C  7C 08 02 A6 */	mflr r0
/* 803C0290  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C0294  80 63 00 0C */	lwz r3, 0xc(r3)
/* 803C0298  38 63 00 20 */	addi r3, r3, 0x20
/* 803C029C  4B FF FF 89 */	bl mMsg_Get_CursolSetTimeCode_forData
/* 803C02A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C02A4  7C 08 03 A6 */	mtlr r0
/* 803C02A8  38 21 00 10 */	addi r1, r1, 0x10
/* 803C02AC  4E 80 00 20 */	blr 
