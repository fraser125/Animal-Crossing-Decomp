lbl_803BD66C:
/* 803BD66C  38 C0 00 00 */	li r6, 0
/* 803BD670  38 E0 00 00 */	li r7, 0
/* 803BD674  39 00 00 00 */	li r8, 0
/* 803BD678  38 A0 00 00 */	li r5, 0
lbl_803BD67C:
/* 803BD67C  88 04 00 00 */	lbz r0, 0(r4)
/* 803BD680  7C 00 3E 30 */	sraw r0, r0, r7
/* 803BD684  38 E7 00 01 */	addi r7, r7, 1
/* 803BD688  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803BD68C  7C 00 40 30 */	slw r0, r0, r8
/* 803BD690  39 08 00 01 */	addi r8, r8, 1
/* 803BD694  2C 08 00 06 */	cmpwi r8, 6
/* 803BD698  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 803BD69C  7C A5 03 78 */	or r5, r5, r0
/* 803BD6A0  41 80 00 20 */	blt lbl_803BD6C0
/* 803BD6A4  38 C6 00 01 */	addi r6, r6, 1
/* 803BD6A8  98 A3 00 00 */	stb r5, 0(r3)
/* 803BD6AC  2C 06 00 1C */	cmpwi r6, 0x1c
/* 803BD6B0  39 00 00 00 */	li r8, 0
/* 803BD6B4  38 63 00 01 */	addi r3, r3, 1
/* 803BD6B8  4C 80 00 20 */	bgelr 
/* 803BD6BC  38 A0 00 00 */	li r5, 0
lbl_803BD6C0:
/* 803BD6C0  2C 07 00 08 */	cmpwi r7, 8
/* 803BD6C4  41 80 FF B8 */	blt lbl_803BD67C
/* 803BD6C8  38 E0 00 00 */	li r7, 0
/* 803BD6CC  38 84 00 01 */	addi r4, r4, 1
/* 803BD6D0  4B FF FF AC */	b lbl_803BD67C
/* 803BD6D4  4E 80 00 20 */	blr 
