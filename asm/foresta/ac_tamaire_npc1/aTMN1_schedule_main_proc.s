lbl_8058B37C:
/* 8058B37C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058B380  7C 08 02 A6 */	mflr r0
/* 8058B384  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058B388  39 61 00 20 */	addi r11, r1, 0x20
/* 8058B38C  4B B0 FB 49 */	bl func_8009AED4
/* 8058B390  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8058B394  7C 7D 1B 78 */	mr r29, r3
/* 8058B398  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8058B39C  7C 9E 23 78 */	mr r30, r4
/* 8058B3A0  3F E5 00 02 */	addis r31, r5, 2
/* 8058B3A4  38 A0 FF FF */	li r5, -1
/* 8058B3A8  80 FF 60 4C */	lwz r7, 0x604c(r31)
/* 8058B3AC  38 C0 00 01 */	li r6, 1
/* 8058B3B0  81 87 01 20 */	lwz r12, 0x120(r7)
/* 8058B3B4  7D 89 03 A6 */	mtctr r12
/* 8058B3B8  4E 80 04 21 */	bctrl 
/* 8058B3BC  2C 03 00 00 */	cmpwi r3, 0
/* 8058B3C0  40 82 00 24 */	bne lbl_8058B3E4
/* 8058B3C4  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 8058B3C8  7F A3 EB 78 */	mr r3, r29
/* 8058B3CC  7F C4 F3 78 */	mr r4, r30
/* 8058B3D0  38 A0 FF FF */	li r5, -1
/* 8058B3D4  81 86 01 20 */	lwz r12, 0x120(r6)
/* 8058B3D8  38 C0 00 02 */	li r6, 2
/* 8058B3DC  7D 89 03 A6 */	mtctr r12
/* 8058B3E0  4E 80 04 21 */	bctrl 
lbl_8058B3E4:
/* 8058B3E4  39 61 00 20 */	addi r11, r1, 0x20
/* 8058B3E8  4B B0 FB 39 */	bl func_8009AF20
/* 8058B3EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058B3F0  7C 08 03 A6 */	mtlr r0
/* 8058B3F4  38 21 00 20 */	addi r1, r1, 0x20
/* 8058B3F8  4E 80 00 20 */	blr 
