lbl_803B3554:
/* 803B3554  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B3558  7C 08 02 A6 */	mflr r0
/* 803B355C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B3560  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B3564  7C 7F 1B 79 */	or. r31, r3, r3
/* 803B3568  41 82 00 24 */	beq lbl_803B358C
/* 803B356C  38 80 08 C8 */	li r4, 0x8c8
/* 803B3570  4B CA 9A F9 */	bl bzero
/* 803B3574  38 7F 00 08 */	addi r3, r31, 8
/* 803B3578  38 80 00 03 */	li r4, 3
/* 803B357C  4B FF FB A1 */	bl mHm_SetWallDoor
/* 803B3580  4B FD 1E A1 */	bl mCkRh_InitGokiSaveData_IslandPlayerRoom
/* 803B3584  7F E3 FB 78 */	mr r3, r31
/* 803B3588  4B FF FF 9D */	bl mHm_SetDefaultCottageData
lbl_803B358C:
/* 803B358C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B3590  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B3594  7C 08 03 A6 */	mtlr r0
/* 803B3598  38 21 00 10 */	addi r1, r1, 0x10
/* 803B359C  4E 80 00 20 */	blr 
