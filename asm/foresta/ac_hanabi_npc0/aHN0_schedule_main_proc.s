lbl_80528D94:
/* 80528D94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80528D98  7C 08 02 A6 */	mflr r0
/* 80528D9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80528DA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80528DA4  4B B7 21 31 */	bl func_8009AED4
/* 80528DA8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80528DAC  7C 7D 1B 78 */	mr r29, r3
/* 80528DB0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80528DB4  7C 9E 23 78 */	mr r30, r4
/* 80528DB8  3F E5 00 02 */	addis r31, r5, 2
/* 80528DBC  38 A0 FF FF */	li r5, -1
/* 80528DC0  80 FF 60 4C */	lwz r7, 0x604c(r31)
/* 80528DC4  38 C0 00 01 */	li r6, 1
/* 80528DC8  81 87 01 20 */	lwz r12, 0x120(r7)
/* 80528DCC  7D 89 03 A6 */	mtctr r12
/* 80528DD0  4E 80 04 21 */	bctrl 
/* 80528DD4  2C 03 00 00 */	cmpwi r3, 0
/* 80528DD8  40 82 00 24 */	bne lbl_80528DFC
/* 80528DDC  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 80528DE0  7F A3 EB 78 */	mr r3, r29
/* 80528DE4  7F C4 F3 78 */	mr r4, r30
/* 80528DE8  38 A0 FF FF */	li r5, -1
/* 80528DEC  81 86 01 20 */	lwz r12, 0x120(r6)
/* 80528DF0  38 C0 00 02 */	li r6, 2
/* 80528DF4  7D 89 03 A6 */	mtctr r12
/* 80528DF8  4E 80 04 21 */	bctrl 
lbl_80528DFC:
/* 80528DFC  7F A3 EB 78 */	mr r3, r29
/* 80528E00  7F C4 F3 78 */	mr r4, r30
/* 80528E04  4B FF F8 39 */	bl aHN0_make_utiwa
/* 80528E08  39 61 00 20 */	addi r11, r1, 0x20
/* 80528E0C  4B B7 21 15 */	bl func_8009AF20
/* 80528E10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80528E14  7C 08 03 A6 */	mtlr r0
/* 80528E18  38 21 00 20 */	addi r1, r1, 0x20
/* 80528E1C  4E 80 00 20 */	blr 
