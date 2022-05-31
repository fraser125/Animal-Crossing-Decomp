lbl_80591BD4:
/* 80591BD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80591BD8  7C 08 02 A6 */	mflr r0
/* 80591BDC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80591BE0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80591BE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80591BE8  3C A5 00 02 */	addis r5, r5, 2
/* 80591BEC  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80591BF0  81 85 00 DC */	lwz r12, 0xdc(r5)
/* 80591BF4  7D 89 03 A6 */	mtctr r12
/* 80591BF8  4E 80 04 21 */	bctrl 
/* 80591BFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80591C00  7C 08 03 A6 */	mtlr r0
/* 80591C04  38 21 00 10 */	addi r1, r1, 0x10
/* 80591C08  4E 80 00 20 */	blr 
