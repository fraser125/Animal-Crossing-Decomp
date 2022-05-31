lbl_803BD6D8:
/* 803BD6D8  38 C0 00 00 */	li r6, 0
/* 803BD6DC  38 E0 00 00 */	li r7, 0
/* 803BD6E0  39 00 00 00 */	li r8, 0
/* 803BD6E4  38 A0 00 00 */	li r5, 0
lbl_803BD6E8:
/* 803BD6E8  88 04 00 00 */	lbz r0, 0(r4)
/* 803BD6EC  7C 00 3E 30 */	sraw r0, r0, r7
/* 803BD6F0  38 E7 00 01 */	addi r7, r7, 1
/* 803BD6F4  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803BD6F8  7C 00 40 30 */	slw r0, r0, r8
/* 803BD6FC  39 08 00 01 */	addi r8, r8, 1
/* 803BD700  2C 08 00 08 */	cmpwi r8, 8
/* 803BD704  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 803BD708  7C A5 03 78 */	or r5, r5, r0
/* 803BD70C  41 80 00 20 */	blt lbl_803BD72C
/* 803BD710  38 C6 00 01 */	addi r6, r6, 1
/* 803BD714  98 A3 00 00 */	stb r5, 0(r3)
/* 803BD718  2C 06 00 15 */	cmpwi r6, 0x15
/* 803BD71C  39 00 00 00 */	li r8, 0
/* 803BD720  38 63 00 01 */	addi r3, r3, 1
/* 803BD724  4C 80 00 20 */	bgelr 
/* 803BD728  38 A0 00 00 */	li r5, 0
lbl_803BD72C:
/* 803BD72C  2C 07 00 06 */	cmpwi r7, 6
/* 803BD730  41 80 FF B8 */	blt lbl_803BD6E8
/* 803BD734  38 E0 00 00 */	li r7, 0
/* 803BD738  38 84 00 01 */	addi r4, r4, 1
/* 803BD73C  4B FF FF AC */	b lbl_803BD6E8
/* 803BD740  4E 80 00 20 */	blr 
