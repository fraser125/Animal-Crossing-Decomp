lbl_80491848:
/* 80491848  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049184C  7C 08 02 A6 */	mflr r0
/* 80491850  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80491854  38 80 00 00 */	li r4, 0
/* 80491858  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8049185C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80491860  3C 63 00 02 */	addis r3, r3, 2
/* 80491864  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80491868  4B F4 EE C1 */	bl mPr_GetPossessionItemIdx
/* 8049186C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80491870  7C 08 03 A6 */	mtlr r0
/* 80491874  38 21 00 10 */	addi r1, r1, 0x10
/* 80491878  4E 80 00 20 */	blr 
