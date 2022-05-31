lbl_805887AC:
/* 805887AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805887B0  7C 08 02 A6 */	mflr r0
/* 805887B4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805887B8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805887BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805887C0  3C A5 00 02 */	addis r5, r5, 2
/* 805887C4  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 805887C8  81 85 00 F4 */	lwz r12, 0xf4(r5)
/* 805887CC  7D 89 03 A6 */	mtctr r12
/* 805887D0  4E 80 04 21 */	bctrl 
/* 805887D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805887D8  7C 08 03 A6 */	mtlr r0
/* 805887DC  38 21 00 10 */	addi r1, r1, 0x10
/* 805887E0  4E 80 00 20 */	blr 
