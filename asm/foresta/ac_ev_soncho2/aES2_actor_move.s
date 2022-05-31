lbl_805248CC:
/* 805248CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805248D0  7C 08 02 A6 */	mflr r0
/* 805248D4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805248D8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805248DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805248E0  3C A5 00 02 */	addis r5, r5, 2
/* 805248E4  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 805248E8  81 85 00 E0 */	lwz r12, 0xe0(r5)
/* 805248EC  7D 89 03 A6 */	mtctr r12
/* 805248F0  4E 80 04 21 */	bctrl 
/* 805248F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805248F8  7C 08 03 A6 */	mtlr r0
/* 805248FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80524900  4E 80 00 20 */	blr 
