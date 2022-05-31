lbl_803A8850:
/* 803A8850  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A8854  7C 08 02 A6 */	mflr r0
/* 803A8858  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A885C  39 61 00 20 */	addi r11, r1, 0x20
/* 803A8860  4B CF 26 6D */	bl func_8009AECC
/* 803A8864  7C 9C 23 78 */	mr r28, r4
/* 803A8868  7C BD 2B 78 */	mr r29, r5
/* 803A886C  7C 7B 1B 78 */	mr r27, r3
/* 803A8870  7F 83 E3 78 */	mr r3, r28
/* 803A8874  7F A4 EB 78 */	mr r4, r29
/* 803A8878  4B FF C9 41 */	bl mFI_GetBlockNum
/* 803A887C  3C 80 81 16 */	lis r4, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A8880  3B C0 00 00 */	li r30, 0
/* 803A8884  38 84 7A 58 */	addi r4, r4, g_fdinfo@l /* 0x81167A58@l */
/* 803A8888  1C 63 06 14 */	mulli r3, r3, 0x614
/* 803A888C  80 84 00 00 */	lwz r4, 0(r4)
/* 803A8890  80 04 00 74 */	lwz r0, 0x74(r4)
/* 803A8894  3B E3 05 8C */	addi r31, r3, 0x58c
/* 803A8898  7F E0 FA 15 */	add. r31, r0, r31
/* 803A889C  41 82 00 3C */	beq lbl_803A88D8
/* 803A88A0  7F E3 FB 78 */	mr r3, r31
/* 803A88A4  7F 65 DB 78 */	mr r5, r27
/* 803A88A8  38 80 00 10 */	li r4, 0x10
/* 803A88AC  4B FF FE A1 */	bl mFI_GetMoveActorListIdx
/* 803A88B0  2C 03 FF FF */	cmpwi r3, -1
/* 803A88B4  41 82 00 24 */	beq lbl_803A88D8
/* 803A88B8  54 60 18 38 */	slwi r0, r3, 3
/* 803A88BC  38 80 00 00 */	li r4, 0
/* 803A88C0  7C 9F 03 2E */	sthx r4, r31, r0
/* 803A88C4  7F 84 E3 78 */	mr r4, r28
/* 803A88C8  7F A5 EB 78 */	mr r5, r29
/* 803A88CC  7C 63 07 34 */	extsh r3, r3
/* 803A88D0  4B FF FD A5 */	bl mFI_SetMoveActorBitData_OFF
/* 803A88D4  3B C0 00 01 */	li r30, 1
lbl_803A88D8:
/* 803A88D8  7F C3 F3 78 */	mr r3, r30
/* 803A88DC  39 61 00 20 */	addi r11, r1, 0x20
/* 803A88E0  4B CF 26 39 */	bl func_8009AF18
/* 803A88E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A88E8  7C 08 03 A6 */	mtlr r0
/* 803A88EC  38 21 00 20 */	addi r1, r1, 0x20
/* 803A88F0  4E 80 00 20 */	blr 
