lbl_8056F144:
/* 8056F144  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056F148  7C 08 02 A6 */	mflr r0
/* 8056F14C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8056F150  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8056F154  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056F158  3C A5 00 02 */	addis r5, r5, 2
/* 8056F15C  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8056F160  81 85 00 E0 */	lwz r12, 0xe0(r5)
/* 8056F164  7D 89 03 A6 */	mtctr r12
/* 8056F168  4E 80 04 21 */	bctrl 
/* 8056F16C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056F170  7C 08 03 A6 */	mtlr r0
/* 8056F174  38 21 00 10 */	addi r1, r1, 0x10
/* 8056F178  4E 80 00 20 */	blr 
