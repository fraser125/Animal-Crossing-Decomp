lbl_803E35BC:
/* 803E35BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E35C0  7C 08 02 A6 */	mflr r0
/* 803E35C4  38 A0 08 3C */	li r5, 0x83c
/* 803E35C8  38 C0 08 4D */	li r6, 0x84d
/* 803E35CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E35D0  4B FC 4B 01 */	bl mFI_GetItemNumOnBlockInField
/* 803E35D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E35D8  7C 08 03 A6 */	mtlr r0
/* 803E35DC  38 21 00 10 */	addi r1, r1, 0x10
/* 803E35E0  4E 80 00 20 */	blr 
