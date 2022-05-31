lbl_8056B438:
/* 8056B438  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056B43C  7C 08 02 A6 */	mflr r0
/* 8056B440  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 8056B444  54 86 F6 BE */	rlwinm r6, r4, 0x1e, 0x1a, 0x1f
/* 8056B448  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056B44C  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8056B450  54 6A F6 BE */	rlwinm r10, r3, 0x1e, 0x1a, 0x1f
/* 8056B454  54 84 F0 02 */	slwi r4, r4, 0x1e
/* 8056B458  54 08 0F FE */	srwi r8, r0, 0x1f
/* 8056B45C  54 A7 0F FE */	srwi r7, r5, 0x1f
/* 8056B460  7C A8 20 50 */	subf r5, r8, r4
/* 8056B464  54 60 F0 02 */	slwi r0, r3, 0x1e
/* 8056B468  7C 87 00 50 */	subf r4, r7, r0
/* 8056B46C  7D 26 50 51 */	subf. r9, r6, r10
/* 8056B470  54 A5 10 3E */	rotlwi r5, r5, 2
/* 8056B474  54 84 10 3E */	rotlwi r4, r4, 2
/* 8056B478  7C 09 00 D0 */	neg r0, r9
/* 8056B47C  7C A5 42 14 */	add r5, r5, r8
/* 8056B480  7C 84 3A 14 */	add r4, r4, r7
/* 8056B484  41 80 00 08 */	blt lbl_8056B48C
/* 8056B488  7D 20 4B 78 */	mr r0, r9
lbl_8056B48C:
/* 8056B48C  2C 00 00 01 */	cmpwi r0, 1
/* 8056B490  40 81 00 14 */	ble lbl_8056B4A4
/* 8056B494  7C 83 23 78 */	mr r3, r4
/* 8056B498  7D 44 53 78 */	mr r4, r10
/* 8056B49C  4B FF FE 41 */	bl aPOL2_get_next_zone_move_z
/* 8056B4A0  48 00 00 38 */	b lbl_8056B4D8
lbl_8056B4A4:
/* 8056B4A4  7C 05 20 00 */	cmpw r5, r4
/* 8056B4A8  40 82 00 08 */	bne lbl_8056B4B0
/* 8056B4AC  48 00 00 2C */	b lbl_8056B4D8
lbl_8056B4B0:
/* 8056B4B0  40 80 00 18 */	bge lbl_8056B4C8
/* 8056B4B4  54 C0 10 3A */	slwi r0, r6, 2
/* 8056B4B8  7C 65 02 14 */	add r3, r5, r0
/* 8056B4BC  38 03 00 01 */	addi r0, r3, 1
/* 8056B4C0  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8056B4C4  48 00 00 14 */	b lbl_8056B4D8
lbl_8056B4C8:
/* 8056B4C8  54 C0 10 3A */	slwi r0, r6, 2
/* 8056B4CC  7C 65 02 14 */	add r3, r5, r0
/* 8056B4D0  38 03 FF FF */	addi r0, r3, -1
/* 8056B4D4  54 03 06 3E */	clrlwi r3, r0, 0x18
lbl_8056B4D8:
/* 8056B4D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056B4DC  7C 08 03 A6 */	mtlr r0
/* 8056B4E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8056B4E4  4E 80 00 20 */	blr 
