lbl_803C9850:
/* 803C9850  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C9854  7C 08 02 A6 */	mflr r0
/* 803C9858  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C985C  54 60 07 BE */	clrlwi r0, r3, 0x1e
/* 803C9860  1C 80 24 40 */	mulli r4, r0, 0x2440
/* 803C9864  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803C9868  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C986C  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803C9870  93 C1 00 08 */	stw r30, 8(r1)
/* 803C9874  3B C0 00 00 */	li r30, 0
/* 803C9878  7F E0 22 14 */	add r31, r0, r4
lbl_803C987C:
/* 803C987C  57 C0 07 7E */	clrlwi r0, r30, 0x1d
/* 803C9880  38 BE 06 DF */	addi r5, r30, 0x6df
/* 803C9884  1C 60 02 20 */	mulli r3, r0, 0x220
/* 803C9888  38 80 00 10 */	li r4, 0x10
/* 803C988C  38 63 12 60 */	addi r3, r3, 0x1260
/* 803C9890  7C 7F 1A 14 */	add r3, r31, r3
/* 803C9894  48 02 54 39 */	bl mString_Load_StringFromRom
/* 803C9898  3B DE 00 01 */	addi r30, r30, 1
/* 803C989C  2C 1E 00 08 */	cmpwi r30, 8
/* 803C98A0  41 80 FF DC */	blt lbl_803C987C
/* 803C98A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C98A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C98AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C98B0  7C 08 03 A6 */	mtlr r0
/* 803C98B4  38 21 00 10 */	addi r1, r1, 0x10
/* 803C98B8  4E 80 00 20 */	blr 
