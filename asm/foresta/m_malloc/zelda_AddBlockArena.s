lbl_803BC5A0:
/* 803BC5A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BC5A4  7C 08 02 A6 */	mflr r0
/* 803BC5A8  3C A0 81 17 */	lis r5, zelda_arena@ha /* 0x81169DD8@ha */
/* 803BC5AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BC5B0  7C 60 1B 78 */	mr r0, r3
/* 803BC5B4  38 65 9D D8 */	addi r3, r5, zelda_arena@l /* 0x81169DD8@l */
/* 803BC5B8  7C 85 23 78 */	mr r5, r4
/* 803BC5BC  7C 04 03 78 */	mr r4, r0
/* 803BC5C0  4B C9 F6 F9 */	bl __osMallocAddBlock
/* 803BC5C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BC5C8  7C 08 03 A6 */	mtlr r0
/* 803BC5CC  38 21 00 10 */	addi r1, r1, 0x10
/* 803BC5D0  4E 80 00 20 */	blr 
