lbl_803BC45C:
/* 803BC45C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BC460  7C 08 02 A6 */	mflr r0
/* 803BC464  3C A0 81 17 */	lis r5, zelda_arena@ha /* 0x81169DD8@ha */
/* 803BC468  7C 64 1B 78 */	mr r4, r3
/* 803BC46C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BC470  38 65 9D D8 */	addi r3, r5, zelda_arena@l /* 0x81169DD8@l */
/* 803BC474  4B C9 FD 05 */	bl __osMalloc
/* 803BC478  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BC47C  7C 08 03 A6 */	mtlr r0
/* 803BC480  38 21 00 10 */	addi r1, r1, 0x10
/* 803BC484  4E 80 00 20 */	blr 
