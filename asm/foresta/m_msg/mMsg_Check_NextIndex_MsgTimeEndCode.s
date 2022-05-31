lbl_803C0594:
/* 803C0594  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C0598  7C 08 02 A6 */	mflr r0
/* 803C059C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C05A0  80 83 04 20 */	lwz r4, 0x420(r3)
/* 803C05A4  4B FF FF C9 */	bl mMsg_Check_MsgTimeEndCode
/* 803C05A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C05AC  7C 08 03 A6 */	mtlr r0
/* 803C05B0  38 21 00 10 */	addi r1, r1, 0x10
/* 803C05B4  4E 80 00 20 */	blr 
