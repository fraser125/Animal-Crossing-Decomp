lbl_805741A4:
/* 805741A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805741A8  7C 08 02 A6 */	mflr r0
/* 805741AC  3C A0 81 1F */	lis r5, aSEN_matrix@ha /* 0x811ED390@ha */
/* 805741B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805741B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805741B8  7C 9F 23 78 */	mr r31, r4
/* 805741BC  93 C1 00 08 */	stw r30, 8(r1)
/* 805741C0  7C 7E 1B 78 */	mr r30, r3
/* 805741C4  38 65 D3 90 */	addi r3, r5, aSEN_matrix@l /* 0x811ED390@l */
/* 805741C8  4B E9 80 91 */	bl Matrix_put
/* 805741CC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805741D0  7F C3 F3 78 */	mr r3, r30
/* 805741D4  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805741D8  7F E4 FB 78 */	mr r4, r31
/* 805741DC  3C A5 00 02 */	addis r5, r5, 2
/* 805741E0  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 805741E4  81 85 00 F4 */	lwz r12, 0xf4(r5)
/* 805741E8  7D 89 03 A6 */	mtctr r12
/* 805741EC  4E 80 04 21 */	bctrl 
/* 805741F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805741F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805741F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805741FC  7C 08 03 A6 */	mtlr r0
/* 80574200  38 21 00 10 */	addi r1, r1, 0x10
/* 80574204  4E 80 00 20 */	blr 
