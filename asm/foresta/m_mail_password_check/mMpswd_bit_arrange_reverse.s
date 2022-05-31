lbl_803BD39C:
/* 803BD39C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803BD3A0  7C 08 02 A6 */	mflr r0
/* 803BD3A4  38 A0 00 01 */	li r5, 1
/* 803BD3A8  90 01 00 44 */	stw r0, 0x44(r1)
/* 803BD3AC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 803BD3B0  7C 7F 1B 78 */	mr r31, r3
/* 803BD3B4  38 61 00 1C */	addi r3, r1, 0x1c
/* 803BD3B8  7F E4 FB 78 */	mr r4, r31
/* 803BD3BC  4B C4 60 D5 */	bl memcpy
/* 803BD3C0  38 61 00 1D */	addi r3, r1, 0x1d
/* 803BD3C4  38 9F 00 02 */	addi r4, r31, 2
/* 803BD3C8  38 A0 00 13 */	li r5, 0x13
/* 803BD3CC  4B C4 60 C5 */	bl memcpy
/* 803BD3D0  38 81 00 2F */	addi r4, r1, 0x2f
/* 803BD3D4  38 61 00 08 */	addi r3, r1, 8
/* 803BD3D8  39 20 00 13 */	li r9, 0x13
/* 803BD3DC  38 00 00 08 */	li r0, 8
lbl_803BD3E0:
/* 803BD3E0  88 E4 00 00 */	lbz r7, 0(r4)
/* 803BD3E4  39 00 00 00 */	li r8, 0
/* 803BD3E8  39 40 00 07 */	li r10, 7
/* 803BD3EC  7C 09 03 A6 */	mtctr r0
lbl_803BD3F0:
/* 803BD3F0  7C E6 56 30 */	sraw r6, r7, r10
/* 803BD3F4  20 AA 00 07 */	subfic r5, r10, 7
/* 803BD3F8  39 4A FF FF */	addi r10, r10, -1
/* 803BD3FC  54 C6 07 FE */	clrlwi r6, r6, 0x1f
/* 803BD400  7C C5 28 30 */	slw r5, r6, r5
/* 803BD404  7D 05 2B 78 */	or r5, r8, r5
/* 803BD408  54 A8 06 3E */	clrlwi r8, r5, 0x18
/* 803BD40C  42 00 FF E4 */	bdnz lbl_803BD3F0
/* 803BD410  35 29 FF FF */	addic. r9, r9, -1
/* 803BD414  98 E4 00 00 */	stb r7, 0(r4)
/* 803BD418  38 84 FF FF */	addi r4, r4, -1
/* 803BD41C  99 03 00 00 */	stb r8, 0(r3)
/* 803BD420  38 63 00 01 */	addi r3, r3, 1
/* 803BD424  40 80 FF BC */	bge lbl_803BD3E0
/* 803BD428  7F E3 FB 78 */	mr r3, r31
/* 803BD42C  38 81 00 08 */	addi r4, r1, 8
/* 803BD430  38 A0 00 01 */	li r5, 1
/* 803BD434  4B C4 60 5D */	bl memcpy
/* 803BD438  38 7F 00 02 */	addi r3, r31, 2
/* 803BD43C  38 81 00 09 */	addi r4, r1, 9
/* 803BD440  38 A0 00 13 */	li r5, 0x13
/* 803BD444  4B C4 60 4D */	bl memcpy
/* 803BD448  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803BD44C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 803BD450  7C 08 03 A6 */	mtlr r0
/* 803BD454  38 21 00 40 */	addi r1, r1, 0x40
/* 803BD458  4E 80 00 20 */	blr 
