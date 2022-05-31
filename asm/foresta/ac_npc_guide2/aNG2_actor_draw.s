lbl_80554BCC:
/* 80554BCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80554BD0  7C 08 02 A6 */	mflr r0
/* 80554BD4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80554BD8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80554BDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80554BE0  3C A5 00 02 */	addis r5, r5, 2
/* 80554BE4  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80554BE8  81 85 00 F4 */	lwz r12, 0xf4(r5)
/* 80554BEC  7D 89 03 A6 */	mtctr r12
/* 80554BF0  4E 80 04 21 */	bctrl 
/* 80554BF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80554BF8  7C 08 03 A6 */	mtlr r0
/* 80554BFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80554C00  4E 80 00 20 */	blr 
