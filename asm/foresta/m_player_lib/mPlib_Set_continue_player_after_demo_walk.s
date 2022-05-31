lbl_803DBA5C:
/* 803DBA5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DBA60  7C 08 02 A6 */	mflr r0
/* 803DBA64  38 80 00 08 */	li r4, 8
/* 803DBA68  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DBA6C  7C 60 1B 78 */	mr r0, r3
/* 803DBA70  38 60 00 00 */	li r3, 0
/* 803DBA74  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 803DBA78  4B FB C9 C1 */	bl mDemo_Set_OrderValue
/* 803DBA7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DBA80  7C 08 03 A6 */	mtlr r0
/* 803DBA84  38 21 00 10 */	addi r1, r1, 0x10
/* 803DBA88  4E 80 00 20 */	blr 
