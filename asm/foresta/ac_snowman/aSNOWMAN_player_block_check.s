lbl_804A3830:
/* 804A3830  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804A3834  7C 08 02 A6 */	mflr r0
/* 804A3838  90 01 00 44 */	stw r0, 0x44(r1)
/* 804A383C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804A3840  7C 7F 1B 78 */	mr r31, r3
/* 804A3844  7C 83 23 78 */	mr r3, r4
/* 804A3848  4B F3 5D F9 */	bl get_player_actor_withoutCheck
/* 804A384C  80 C3 00 28 */	lwz r6, 0x28(r3)
/* 804A3850  38 81 00 10 */	addi r4, r1, 0x10
/* 804A3854  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 804A3858  38 A1 00 24 */	addi r5, r1, 0x24
/* 804A385C  90 C1 00 24 */	stw r6, 0x24(r1)
/* 804A3860  90 01 00 28 */	stw r0, 0x28(r1)
/* 804A3864  80 03 00 30 */	lwz r0, 0x30(r3)
/* 804A3868  38 61 00 14 */	addi r3, r1, 0x14
/* 804A386C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804A3870  4B F0 1E F1 */	bl mFI_Wpos2BlockNum
/* 804A3874  80 DF 00 28 */	lwz r6, 0x28(r31)
/* 804A3878  38 61 00 0C */	addi r3, r1, 0xc
/* 804A387C  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804A3880  38 81 00 08 */	addi r4, r1, 8
/* 804A3884  38 A1 00 18 */	addi r5, r1, 0x18
/* 804A3888  90 C1 00 18 */	stw r6, 0x18(r1)
/* 804A388C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804A3890  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804A3894  90 01 00 20 */	stw r0, 0x20(r1)
/* 804A3898  4B F0 1E C9 */	bl mFI_Wpos2BlockNum
/* 804A389C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 804A38A0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804A38A4  7C 03 00 00 */	cmpw r3, r0
/* 804A38A8  40 82 00 1C */	bne lbl_804A38C4
/* 804A38AC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 804A38B0  80 01 00 08 */	lwz r0, 8(r1)
/* 804A38B4  7C 03 00 00 */	cmpw r3, r0
/* 804A38B8  40 82 00 0C */	bne lbl_804A38C4
/* 804A38BC  38 60 00 01 */	li r3, 1
/* 804A38C0  48 00 00 08 */	b lbl_804A38C8
lbl_804A38C4:
/* 804A38C4  38 60 00 00 */	li r3, 0
lbl_804A38C8:
/* 804A38C8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804A38CC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804A38D0  7C 08 03 A6 */	mtlr r0
/* 804A38D4  38 21 00 40 */	addi r1, r1, 0x40
/* 804A38D8  4E 80 00 20 */	blr 
