lbl_8055F440:
/* 8055F440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055F444  7C 08 02 A6 */	mflr r0
/* 8055F448  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8055F44C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8055F450  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055F454  3C A5 00 02 */	addis r5, r5, 2
/* 8055F458  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8055F45C  81 85 00 F4 */	lwz r12, 0xf4(r5)
/* 8055F460  7D 89 03 A6 */	mtctr r12
/* 8055F464  4E 80 04 21 */	bctrl 
/* 8055F468  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055F46C  7C 08 03 A6 */	mtlr r0
/* 8055F470  38 21 00 10 */	addi r1, r1, 0x10
/* 8055F474  4E 80 00 20 */	blr 