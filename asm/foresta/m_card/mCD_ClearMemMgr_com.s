lbl_803FA488:
/* 803FA488  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FA48C  7C 08 02 A6 */	mflr r0
/* 803FA490  38 80 11 DC */	li r4, 0x11dc
/* 803FA494  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FA498  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803FA49C  7C 7F 1B 78 */	mr r31, r3
/* 803FA4A0  4B C6 2B C9 */	bl bzero
/* 803FA4A4  38 00 FF FF */	li r0, -1
/* 803FA4A8  90 1F 00 00 */	stw r0, 0(r31)
/* 803FA4AC  90 1F 01 80 */	stw r0, 0x180(r31)
/* 803FA4B0  90 1F 01 84 */	stw r0, 0x184(r31)
/* 803FA4B4  90 1F 01 A4 */	stw r0, 0x1a4(r31)
/* 803FA4B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803FA4BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FA4C0  7C 08 03 A6 */	mtlr r0
/* 803FA4C4  38 21 00 10 */	addi r1, r1, 0x10
/* 803FA4C8  4E 80 00 20 */	blr 
