lbl_80556784:
/* 80556784  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80556788  7C 08 02 A6 */	mflr r0
/* 8055678C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80556790  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80556794  90 01 00 14 */	stw r0, 0x14(r1)
/* 80556798  3C A5 00 02 */	addis r5, r5, 2
/* 8055679C  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 805567A0  81 85 00 DC */	lwz r12, 0xdc(r5)
/* 805567A4  7D 89 03 A6 */	mtctr r12
/* 805567A8  4E 80 04 21 */	bctrl 
/* 805567AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805567B0  7C 08 03 A6 */	mtlr r0
/* 805567B4  38 21 00 10 */	addi r1, r1, 0x10
/* 805567B8  4E 80 00 20 */	blr 
