lbl_803BC4E0:
/* 803BC4E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BC4E4  7C 08 02 A6 */	mflr r0
/* 803BC4E8  3C C0 81 17 */	lis r6, zelda_arena@ha /* 0x81169DD8@ha */
/* 803BC4EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BC4F0  7C 80 23 78 */	mr r0, r4
/* 803BC4F4  7C 64 1B 78 */	mr r4, r3
/* 803BC4F8  38 66 9D D8 */	addi r3, r6, zelda_arena@l /* 0x81169DD8@l */
/* 803BC4FC  7C A6 2B 78 */	mr r6, r5
/* 803BC500  7C 05 03 78 */	mr r5, r0
/* 803BC504  4B CA 03 2D */	bl __osGetFreeArena
/* 803BC508  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BC50C  7C 08 03 A6 */	mtlr r0
/* 803BC510  38 21 00 10 */	addi r1, r1, 0x10
/* 803BC514  4E 80 00 20 */	blr 
