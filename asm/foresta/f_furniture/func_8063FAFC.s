lbl_8063FAFC:
/* 8063FAFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063FB00  7C 08 02 A6 */	mflr r0
/* 8063FB04  38 80 00 20 */	li r4, 0x20
/* 8063FB08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063FB0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063FB10  7C 7F 1B 78 */	mr r31, r3
/* 8063FB14  38 60 00 20 */	li r3, 0x20
/* 8063FB18  4B D7 C9 11 */	bl func_803BC428
/* 8063FB1C  90 7F 08 50 */	stw r3, 0x850(r31)
/* 8063FB20  3C 60 80 6E */	lis r3, int_tak_tent_off_pal@ha /* 0x806DFA60@ha */
/* 8063FB24  3C A0 80 6E */	lis r5, int_tak_tent_on_pal@ha /* 0x806DFA40@ha */
/* 8063FB28  7F E6 FB 78 */	mr r6, r31
/* 8063FB2C  38 83 FA 60 */	addi r4, r3, int_tak_tent_off_pal@l /* 0x806DFA60@l */
/* 8063FB30  80 7F 08 50 */	lwz r3, 0x850(r31)
/* 8063FB34  38 A5 FA 40 */	addi r5, r5, int_tak_tent_on_pal@l /* 0x806DFA40@l */
/* 8063FB38  4B FE EF 85 */	bl fFTR_MorphHousepaletteCt
/* 8063FB3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063FB40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063FB44  7C 08 03 A6 */	mtlr r0
/* 8063FB48  38 21 00 10 */	addi r1, r1, 0x10
/* 8063FB4C  4E 80 00 20 */	blr 
