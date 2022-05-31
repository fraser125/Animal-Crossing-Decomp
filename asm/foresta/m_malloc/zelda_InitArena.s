lbl_803BC56C:
/* 803BC56C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BC570  7C 08 02 A6 */	mflr r0
/* 803BC574  3C A0 81 17 */	lis r5, zelda_arena@ha /* 0x81169DD8@ha */
/* 803BC578  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BC57C  7C 60 1B 78 */	mr r0, r3
/* 803BC580  38 65 9D D8 */	addi r3, r5, zelda_arena@l /* 0x81169DD8@l */
/* 803BC584  7C 85 23 78 */	mr r5, r4
/* 803BC588  7C 04 03 78 */	mr r4, r0
/* 803BC58C  4B C9 F6 CD */	bl __osMallocInit
/* 803BC590  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BC594  7C 08 03 A6 */	mtlr r0
/* 803BC598  38 21 00 10 */	addi r1, r1, 0x10
/* 803BC59C  4E 80 00 20 */	blr 
