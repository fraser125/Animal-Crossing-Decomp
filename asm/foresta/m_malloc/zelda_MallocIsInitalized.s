lbl_803BC5FC:
/* 803BC5FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BC600  7C 08 02 A6 */	mflr r0
/* 803BC604  3C 60 81 17 */	lis r3, zelda_arena@ha /* 0x81169DD8@ha */
/* 803BC608  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BC60C  38 63 9D D8 */	addi r3, r3, zelda_arena@l /* 0x81169DD8@l */
/* 803BC610  4B C9 F8 0D */	bl __osMallocIsInitalized
/* 803BC614  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BC618  7C 08 03 A6 */	mtlr r0
/* 803BC61C  38 21 00 10 */	addi r1, r1, 0x10
/* 803BC620  4E 80 00 20 */	blr 
