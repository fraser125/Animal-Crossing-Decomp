lbl_8056FE54:
/* 8056FE54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056FE58  7C 08 02 A6 */	mflr r0
/* 8056FE5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056FE60  39 61 00 20 */	addi r11, r1, 0x20
/* 8056FE64  4B B2 B0 71 */	bl func_8009AED4
/* 8056FE68  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8056FE6C  7C 7D 1B 78 */	mr r29, r3
/* 8056FE70  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8056FE74  7C 9E 23 78 */	mr r30, r4
/* 8056FE78  3F E5 00 02 */	addis r31, r5, 2
/* 8056FE7C  38 A0 FF FF */	li r5, -1
/* 8056FE80  80 FF 60 4C */	lwz r7, 0x604c(r31)
/* 8056FE84  38 C0 00 01 */	li r6, 1
/* 8056FE88  81 87 01 20 */	lwz r12, 0x120(r7)
/* 8056FE8C  7D 89 03 A6 */	mtctr r12
/* 8056FE90  4E 80 04 21 */	bctrl 
/* 8056FE94  2C 03 00 00 */	cmpwi r3, 0
/* 8056FE98  40 82 00 24 */	bne lbl_8056FEBC
/* 8056FE9C  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 8056FEA0  7F A3 EB 78 */	mr r3, r29
/* 8056FEA4  7F C4 F3 78 */	mr r4, r30
/* 8056FEA8  38 A0 FF FF */	li r5, -1
/* 8056FEAC  81 86 01 20 */	lwz r12, 0x120(r6)
/* 8056FEB0  38 C0 00 02 */	li r6, 2
/* 8056FEB4  7D 89 03 A6 */	mtctr r12
/* 8056FEB8  4E 80 04 21 */	bctrl 
lbl_8056FEBC:
/* 8056FEBC  39 61 00 20 */	addi r11, r1, 0x20
/* 8056FEC0  4B B2 B0 61 */	bl func_8009AF20
/* 8056FEC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056FEC8  7C 08 03 A6 */	mtlr r0
/* 8056FECC  38 21 00 20 */	addi r1, r1, 0x20
/* 8056FED0  4E 80 00 20 */	blr 
