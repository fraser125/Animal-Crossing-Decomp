lbl_803B558C:
/* 803B558C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B5590  7C 08 02 A6 */	mflr r0
/* 803B5594  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B5598  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B559C  7C DF 33 78 */	mr r31, r6
/* 803B55A0  93 C1 00 08 */	stw r30, 8(r1)
/* 803B55A4  7C BE 2B 78 */	mr r30, r5
/* 803B55A8  4B FF FF BD */	bl mISL_ReturnCheckSum
/* 803B55AC  7C 1E 18 50 */	subf r0, r30, r3
/* 803B55B0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 803B55B4  7C 1F 00 50 */	subf r0, r31, r0
/* 803B55B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B55BC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 803B55C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 803B55C4  7C 00 00 F8 */	nor r0, r0, r0
/* 803B55C8  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 803B55CC  38 03 00 01 */	addi r0, r3, 1
/* 803B55D0  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 803B55D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B55D8  7C 08 03 A6 */	mtlr r0
/* 803B55DC  38 21 00 10 */	addi r1, r1, 0x10
/* 803B55E0  4E 80 00 20 */	blr 
