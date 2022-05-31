lbl_803A8984:
/* 803A8984  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A8988  7C 08 02 A6 */	mflr r0
/* 803A898C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A8990  39 61 00 20 */	addi r11, r1, 0x20
/* 803A8994  4B CF 25 3D */	bl func_8009AED0
/* 803A8998  7C 7C 1B 78 */	mr r28, r3
/* 803A899C  7C 9D 23 78 */	mr r29, r4
/* 803A89A0  3B C0 00 00 */	li r30, 0
/* 803A89A4  4B FF C8 15 */	bl mFI_GetBlockNum
/* 803A89A8  7C 7F 1B 78 */	mr r31, r3
/* 803A89AC  7F 83 E3 78 */	mr r3, r28
/* 803A89B0  7F A4 EB 78 */	mr r4, r29
/* 803A89B4  4B FF C8 55 */	bl mFI_BlockCheck
/* 803A89B8  2C 03 00 00 */	cmpwi r3, 0
/* 803A89BC  41 82 00 34 */	beq lbl_803A89F0
/* 803A89C0  3C 60 81 16 */	lis r3, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A89C4  3C E0 81 16 */	lis r7, l_aclist@ha /* 0x81167C24@ha */
/* 803A89C8  38 83 7A 58 */	addi r4, r3, g_fdinfo@l /* 0x81167A58@l */
/* 803A89CC  38 A0 00 80 */	li r5, 0x80
/* 803A89D0  80 C4 00 00 */	lwz r6, 0(r4)
/* 803A89D4  1C 7F 06 14 */	mulli r3, r31, 0x614
/* 803A89D8  38 87 7C 24 */	addi r4, r7, l_aclist@l /* 0x81167C24@l */
/* 803A89DC  80 06 00 74 */	lwz r0, 0x74(r6)
/* 803A89E0  38 63 05 8C */	addi r3, r3, 0x58c
/* 803A89E4  7C 9E 23 78 */	mr r30, r4
/* 803A89E8  7C 60 1A 14 */	add r3, r0, r3
/* 803A89EC  4B CB 46 31 */	bl func_8005D01C
lbl_803A89F0:
/* 803A89F0  7F C3 F3 78 */	mr r3, r30
/* 803A89F4  39 61 00 20 */	addi r11, r1, 0x20
/* 803A89F8  4B CF 25 25 */	bl func_8009AF1C
/* 803A89FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A8A00  7C 08 03 A6 */	mtlr r0
/* 803A8A04  38 21 00 20 */	addi r1, r1, 0x20
/* 803A8A08  4E 80 00 20 */	blr 
