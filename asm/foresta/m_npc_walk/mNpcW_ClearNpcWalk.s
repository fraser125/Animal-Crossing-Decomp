lbl_803D789C:
/* 803D789C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D78A0  7C 08 02 A6 */	mflr r0
/* 803D78A4  38 80 00 90 */	li r4, 0x90
/* 803D78A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D78AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D78B0  7C 7F 1B 78 */	mr r31, r3
/* 803D78B4  4B C8 57 B5 */	bl bzero
/* 803D78B8  7F E3 FB 78 */	mr r3, r31
/* 803D78BC  38 80 00 05 */	li r4, 5
/* 803D78C0  4B FF FF 59 */	bl mNpcW_ClearNpcWalkInfo
/* 803D78C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D78C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D78CC  7C 08 03 A6 */	mtlr r0
/* 803D78D0  38 21 00 10 */	addi r1, r1, 0x10
/* 803D78D4  4E 80 00 20 */	blr 
