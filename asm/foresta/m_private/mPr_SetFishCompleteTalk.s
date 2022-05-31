lbl_803E2148:
/* 803E2148  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E214C  7C 08 02 A6 */	mflr r0
/* 803E2150  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E2154  38 80 00 00 */	li r4, 0
/* 803E2158  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E215C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E2160  3C 63 00 02 */	addis r3, r3, 2
/* 803E2164  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 803E2168  38 63 11 02 */	addi r3, r3, 0x1102
/* 803E216C  4B FF FF A5 */	bl mPr_SetCompleteTalk
/* 803E2170  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E2174  7C 08 03 A6 */	mtlr r0
/* 803E2178  38 21 00 10 */	addi r1, r1, 0x10
/* 803E217C  4E 80 00 20 */	blr 
