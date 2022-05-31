lbl_805215CC:
/* 805215CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805215D0  7C 08 02 A6 */	mflr r0
/* 805215D4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805215D8  38 80 00 00 */	li r4, 0
/* 805215DC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805215E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805215E4  3C 63 00 02 */	addis r3, r3, 2
/* 805215E8  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805215EC  4B EB F1 3D */	bl mPr_GetPossessionItemIdx
/* 805215F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805215F4  7C 08 03 A6 */	mtlr r0
/* 805215F8  38 21 00 10 */	addi r1, r1, 0x10
/* 805215FC  4E 80 00 20 */	blr 
