lbl_803E360C:
/* 803E360C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E3610  7C 08 02 A6 */	mflr r0
/* 803E3614  38 A0 00 00 */	li r5, 0
/* 803E3618  38 C0 00 00 */	li r6, 0
/* 803E361C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E3620  4B FC 4A B1 */	bl mFI_GetItemNumOnBlockInField
/* 803E3624  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E3628  7C 08 03 A6 */	mtlr r0
/* 803E362C  38 21 00 10 */	addi r1, r1, 0x10
/* 803E3630  4E 80 00 20 */	blr 
