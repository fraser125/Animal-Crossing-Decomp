lbl_805886A0:
/* 805886A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805886A4  7C 08 02 A6 */	mflr r0
/* 805886A8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805886AC  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805886B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805886B4  3C A5 00 02 */	addis r5, r5, 2
/* 805886B8  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 805886BC  81 85 00 DC */	lwz r12, 0xdc(r5)
/* 805886C0  7D 89 03 A6 */	mtctr r12
/* 805886C4  4E 80 04 21 */	bctrl 
/* 805886C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805886CC  7C 08 03 A6 */	mtlr r0
/* 805886D0  38 21 00 10 */	addi r1, r1, 0x10
/* 805886D4  4E 80 00 20 */	blr 
