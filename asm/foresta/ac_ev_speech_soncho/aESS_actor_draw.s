lbl_8052597C:
/* 8052597C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80525980  7C 08 02 A6 */	mflr r0
/* 80525984  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80525988  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8052598C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80525990  3C A5 00 02 */	addis r5, r5, 2
/* 80525994  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80525998  81 85 00 F4 */	lwz r12, 0xf4(r5)
/* 8052599C  7D 89 03 A6 */	mtctr r12
/* 805259A0  4E 80 04 21 */	bctrl 
/* 805259A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805259A8  7C 08 03 A6 */	mtlr r0
/* 805259AC  38 21 00 10 */	addi r1, r1, 0x10
/* 805259B0  4E 80 00 20 */	blr 
