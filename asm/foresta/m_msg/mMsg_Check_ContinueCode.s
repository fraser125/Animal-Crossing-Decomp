lbl_803C016C:
/* 803C016C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C0170  7C 08 02 A6 */	mflr r0
/* 803C0174  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C0178  80 63 00 0C */	lwz r3, 0xc(r3)
/* 803C017C  38 63 00 20 */	addi r3, r3, 0x20
/* 803C0180  4B FF FF C1 */	bl mMsg_Check_ContinueCode_forData
/* 803C0184  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C0188  7C 08 03 A6 */	mtlr r0
/* 803C018C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C0190  4E 80 00 20 */	blr 
