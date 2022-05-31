lbl_803BC540:
/* 803BC540  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BC544  7C 08 02 A6 */	mflr r0
/* 803BC548  3C A0 81 17 */	lis r5, zelda_arena@ha /* 0x81169DD8@ha */
/* 803BC54C  7C 64 1B 78 */	mr r4, r3
/* 803BC550  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BC554  38 65 9D D8 */	addi r3, r5, zelda_arena@l /* 0x81169DD8@l */
/* 803BC558  4B CA 03 B1 */	bl __osGetMemBlockSize
/* 803BC55C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BC560  7C 08 03 A6 */	mtlr r0
/* 803BC564  38 21 00 10 */	addi r1, r1, 0x10
/* 803BC568  4E 80 00 20 */	blr 
