lbl_803CFE2C:
/* 803CFE2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CFE30  7C 08 02 A6 */	mflr r0
/* 803CFE34  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 803CFE38  39 20 00 04 */	li r9, 4
/* 803CFE3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CFE40  38 E7 85 38 */	addi r7, r7, common_data@l /* 0x81138538@l */
/* 803CFE44  3D 47 00 02 */	addis r10, r7, 2
/* 803CFE48  39 00 00 07 */	li r8, 7
/* 803CFE4C  A1 4A 34 40 */	lhz r10, 0x3440(r10)
/* 803CFE50  38 E0 FF F1 */	li r7, -15
/* 803CFE54  38 00 FF FF */	li r0, -1
/* 803CFE58  B1 43 00 00 */	sth r10, 0(r3)
/* 803CFE5C  99 23 00 02 */	stb r9, 2(r3)
/* 803CFE60  99 03 00 03 */	stb r8, 3(r3)
/* 803CFE64  98 E3 00 04 */	stb r7, 4(r3)
/* 803CFE68  B0 03 00 06 */	sth r0, 6(r3)
/* 803CFE6C  7C 83 07 34 */	extsh r3, r4
/* 803CFE70  54 A4 06 3E */	clrlwi r4, r5, 0x18
/* 803CFE74  54 C5 06 3E */	clrlwi r5, r6, 0x18
/* 803CFE78  4B FD 87 61 */	bl mFI_SetMoveActorBitData_ON
/* 803CFE7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CFE80  7C 08 03 A6 */	mtlr r0
/* 803CFE84  38 21 00 10 */	addi r1, r1, 0x10
/* 803CFE88  4E 80 00 20 */	blr 
