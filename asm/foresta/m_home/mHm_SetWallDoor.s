lbl_803B311C:
/* 803B311C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B3120  7C 08 02 A6 */	mflr r0
/* 803B3124  38 A0 00 01 */	li r5, 1
/* 803B3128  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B312C  4B FF FF 6D */	bl mHm_ChangeWallDoorFG
/* 803B3130  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B3134  7C 08 03 A6 */	mtlr r0
/* 803B3138  38 21 00 10 */	addi r1, r1, 0x10
/* 803B313C  4E 80 00 20 */	blr 
