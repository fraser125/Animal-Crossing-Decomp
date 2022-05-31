lbl_803B30F8:
/* 803B30F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B30FC  7C 08 02 A6 */	mflr r0
/* 803B3100  38 A0 00 00 */	li r5, 0
/* 803B3104  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B3108  4B FF FF 91 */	bl mHm_ChangeWallDoorFG
/* 803B310C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B3110  7C 08 03 A6 */	mtlr r0
/* 803B3114  38 21 00 10 */	addi r1, r1, 0x10
/* 803B3118  4E 80 00 20 */	blr 
