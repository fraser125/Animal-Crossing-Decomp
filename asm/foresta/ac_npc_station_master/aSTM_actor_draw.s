lbl_8057F1C8:
/* 8057F1C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057F1CC  7C 08 02 A6 */	mflr r0
/* 8057F1D0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8057F1D4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8057F1D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057F1DC  3C A5 00 02 */	addis r5, r5, 2
/* 8057F1E0  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8057F1E4  81 85 00 F4 */	lwz r12, 0xf4(r5)
/* 8057F1E8  7D 89 03 A6 */	mtctr r12
/* 8057F1EC  4E 80 04 21 */	bctrl 
/* 8057F1F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057F1F4  7C 08 03 A6 */	mtlr r0
/* 8057F1F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8057F1FC  4E 80 00 20 */	blr 
