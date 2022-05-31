lbl_803BC518:
/* 803BC518  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BC51C  7C 08 02 A6 */	mflr r0
/* 803BC520  3C 60 81 17 */	lis r3, zelda_arena@ha /* 0x81169DD8@ha */
/* 803BC524  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BC528  38 63 9D D8 */	addi r3, r3, zelda_arena@l /* 0x81169DD8@l */
/* 803BC52C  4B CA 03 7D */	bl __osGetTotalFreeSize
/* 803BC530  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BC534  7C 08 03 A6 */	mtlr r0
/* 803BC538  38 21 00 10 */	addi r1, r1, 0x10
/* 803BC53C  4E 80 00 20 */	blr 
