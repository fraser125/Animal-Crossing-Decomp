lbl_80517090:
/* 80517090  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80517094  7C 08 02 A6 */	mflr r0
/* 80517098  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8051709C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805170A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805170A4  3C A5 00 02 */	addis r5, r5, 2
/* 805170A8  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 805170AC  81 85 00 E0 */	lwz r12, 0xe0(r5)
/* 805170B0  7D 89 03 A6 */	mtctr r12
/* 805170B4  4E 80 04 21 */	bctrl 
/* 805170B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805170BC  7C 08 03 A6 */	mtlr r0
/* 805170C0  38 21 00 10 */	addi r1, r1, 0x10
/* 805170C4  4E 80 00 20 */	blr 
