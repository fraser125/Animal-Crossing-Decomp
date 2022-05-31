lbl_803C0118:
/* 803C0118  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C011C  7C 08 02 A6 */	mflr r0
/* 803C0120  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C0124  80 63 00 0C */	lwz r3, 0xc(r3)
/* 803C0128  38 63 00 20 */	addi r3, r3, 0x20
/* 803C012C  4B FF FF C1 */	bl mMsg_Check_LastCode_forData
/* 803C0130  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C0134  7C 08 03 A6 */	mtlr r0
/* 803C0138  38 21 00 10 */	addi r1, r1, 0x10
/* 803C013C  4E 80 00 20 */	blr 
