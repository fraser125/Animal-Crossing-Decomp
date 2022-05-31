lbl_803C0194:
/* 803C0194  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C0198  7C 08 02 A6 */	mflr r0
/* 803C019C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C01A0  80 83 04 20 */	lwz r4, 0x420(r3)
/* 803C01A4  4B FF FF C9 */	bl mMsg_Check_ContinueCode
/* 803C01A8  30 03 FF FF */	addic r0, r3, -1
/* 803C01AC  7C 60 19 10 */	subfe r3, r0, r3
/* 803C01B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C01B4  7C 08 03 A6 */	mtlr r0
/* 803C01B8  38 21 00 10 */	addi r1, r1, 0x10
/* 803C01BC  4E 80 00 20 */	blr 
