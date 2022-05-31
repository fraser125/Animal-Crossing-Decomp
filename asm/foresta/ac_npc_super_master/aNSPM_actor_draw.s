lbl_805806B8:
/* 805806B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805806BC  7C 08 02 A6 */	mflr r0
/* 805806C0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805806C4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805806C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805806CC  3C A5 00 02 */	addis r5, r5, 2
/* 805806D0  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 805806D4  81 85 00 F4 */	lwz r12, 0xf4(r5)
/* 805806D8  7D 89 03 A6 */	mtctr r12
/* 805806DC  4E 80 04 21 */	bctrl 
/* 805806E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805806E4  7C 08 03 A6 */	mtlr r0
/* 805806E8  38 21 00 10 */	addi r1, r1, 0x10
/* 805806EC  4E 80 00 20 */	blr 
