lbl_803BC4B4:
/* 803BC4B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BC4B8  7C 08 02 A6 */	mflr r0
/* 803BC4BC  3C A0 81 17 */	lis r5, zelda_arena@ha /* 0x81169DD8@ha */
/* 803BC4C0  7C 64 1B 78 */	mr r4, r3
/* 803BC4C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BC4C8  38 65 9D D8 */	addi r3, r5, zelda_arena@l /* 0x81169DD8@l */
/* 803BC4CC  4B CA 00 25 */	bl __osFree
/* 803BC4D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BC4D4  7C 08 03 A6 */	mtlr r0
/* 803BC4D8  38 21 00 10 */	addi r1, r1, 0x10
/* 803BC4DC  4E 80 00 20 */	blr 
