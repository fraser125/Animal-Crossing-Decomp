lbl_803E35E4:
/* 803E35E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E35E8  7C 08 02 A6 */	mflr r0
/* 803E35EC  38 A0 08 45 */	li r5, 0x845
/* 803E35F0  38 C0 08 4D */	li r6, 0x84d
/* 803E35F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E35F8  4B FC 4A D9 */	bl mFI_GetItemNumOnBlockInField
/* 803E35FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E3600  7C 08 03 A6 */	mtlr r0
/* 803E3604  38 21 00 10 */	addi r1, r1, 0x10
/* 803E3608  4E 80 00 20 */	blr 
