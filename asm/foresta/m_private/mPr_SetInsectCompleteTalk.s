lbl_803E21E0:
/* 803E21E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E21E4  7C 08 02 A6 */	mflr r0
/* 803E21E8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E21EC  38 80 00 01 */	li r4, 1
/* 803E21F0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E21F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E21F8  3C 63 00 02 */	addis r3, r3, 2
/* 803E21FC  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 803E2200  38 63 11 02 */	addi r3, r3, 0x1102
/* 803E2204  4B FF FF 0D */	bl mPr_SetCompleteTalk
/* 803E2208  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E220C  7C 08 03 A6 */	mtlr r0
/* 803E2210  38 21 00 10 */	addi r1, r1, 0x10
/* 803E2214  4E 80 00 20 */	blr 
