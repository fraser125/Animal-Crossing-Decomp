lbl_803A878C:
/* 803A878C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803A8790  7C 08 02 A6 */	mflr r0
/* 803A8794  90 01 00 34 */	stw r0, 0x34(r1)
/* 803A8798  39 61 00 30 */	addi r11, r1, 0x30
/* 803A879C  4B CF 27 21 */	bl func_8009AEBC
/* 803A87A0  7C 98 23 78 */	mr r24, r4
/* 803A87A4  7C B9 2B 78 */	mr r25, r5
/* 803A87A8  7C 77 1B 78 */	mr r23, r3
/* 803A87AC  7C DA 33 78 */	mr r26, r6
/* 803A87B0  7C FB 3B 78 */	mr r27, r7
/* 803A87B4  7D 1C 43 78 */	mr r28, r8
/* 803A87B8  7D 3D 4B 78 */	mr r29, r9
/* 803A87BC  7F 03 C3 78 */	mr r3, r24
/* 803A87C0  7F 24 CB 78 */	mr r4, r25
/* 803A87C4  4B FF C9 F5 */	bl mFI_GetBlockNum
/* 803A87C8  3C 80 81 16 */	lis r4, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A87CC  3B C0 00 00 */	li r30, 0
/* 803A87D0  38 84 7A 58 */	addi r4, r4, g_fdinfo@l /* 0x81167A58@l */
/* 803A87D4  1C 63 06 14 */	mulli r3, r3, 0x614
/* 803A87D8  80 84 00 00 */	lwz r4, 0(r4)
/* 803A87DC  80 04 00 74 */	lwz r0, 0x74(r4)
/* 803A87E0  3B E3 05 8C */	addi r31, r3, 0x58c
/* 803A87E4  7F E0 FA 15 */	add. r31, r0, r31
/* 803A87E8  41 82 00 4C */	beq lbl_803A8834
/* 803A87EC  7F E3 FB 78 */	mr r3, r31
/* 803A87F0  38 80 00 10 */	li r4, 0x10
/* 803A87F4  38 A0 00 00 */	li r5, 0
/* 803A87F8  4B FF FF 55 */	bl mFI_GetMoveActorListIdx
/* 803A87FC  2C 03 FF FF */	cmpwi r3, -1
/* 803A8800  41 82 00 34 */	beq lbl_803A8834
/* 803A8804  54 60 18 38 */	slwi r0, r3, 3
/* 803A8808  7F 04 C3 78 */	mr r4, r24
/* 803A880C  7E FF 03 2E */	sthx r23, r31, r0
/* 803A8810  7C DF 02 14 */	add r6, r31, r0
/* 803A8814  7F 25 CB 78 */	mr r5, r25
/* 803A8818  7C 63 07 34 */	extsh r3, r3
/* 803A881C  9B 46 00 02 */	stb r26, 2(r6)
/* 803A8820  9B 66 00 03 */	stb r27, 3(r6)
/* 803A8824  9B 86 00 04 */	stb r28, 4(r6)
/* 803A8828  B3 A6 00 06 */	sth r29, 6(r6)
/* 803A882C  4B FF FD AD */	bl mFI_SetMoveActorBitData_ON
/* 803A8830  3B C0 00 01 */	li r30, 1
lbl_803A8834:
/* 803A8834  7F C3 F3 78 */	mr r3, r30
/* 803A8838  39 61 00 30 */	addi r11, r1, 0x30
/* 803A883C  4B CF 26 CD */	bl func_8009AF08
/* 803A8840  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803A8844  7C 08 03 A6 */	mtlr r0
/* 803A8848  38 21 00 30 */	addi r1, r1, 0x30
/* 803A884C  4E 80 00 20 */	blr 
