lbl_8054B564:
/* 8054B564  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054B568  7C 08 02 A6 */	mflr r0
/* 8054B56C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054B570  39 61 00 20 */	addi r11, r1, 0x20
/* 8054B574  4B B4 F9 61 */	bl func_8009AED4
/* 8054B578  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8054B57C  7C 7D 1B 78 */	mr r29, r3
/* 8054B580  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8054B584  7C 9E 23 78 */	mr r30, r4
/* 8054B588  3F E5 00 02 */	addis r31, r5, 2
/* 8054B58C  38 A0 FF FF */	li r5, -1
/* 8054B590  80 FF 60 4C */	lwz r7, 0x604c(r31)
/* 8054B594  38 C0 00 01 */	li r6, 1
/* 8054B598  81 87 01 20 */	lwz r12, 0x120(r7)
/* 8054B59C  7D 89 03 A6 */	mtctr r12
/* 8054B5A0  4E 80 04 21 */	bctrl 
/* 8054B5A4  2C 03 00 00 */	cmpwi r3, 0
/* 8054B5A8  40 82 00 24 */	bne lbl_8054B5CC
/* 8054B5AC  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 8054B5B0  7F A3 EB 78 */	mr r3, r29
/* 8054B5B4  7F C4 F3 78 */	mr r4, r30
/* 8054B5B8  38 A0 FF FF */	li r5, -1
/* 8054B5BC  81 86 01 20 */	lwz r12, 0x120(r6)
/* 8054B5C0  38 C0 00 02 */	li r6, 2
/* 8054B5C4  7D 89 03 A6 */	mtctr r12
/* 8054B5C8  4E 80 04 21 */	bctrl 
lbl_8054B5CC:
/* 8054B5CC  39 61 00 20 */	addi r11, r1, 0x20
/* 8054B5D0  4B B4 F9 51 */	bl func_8009AF20
/* 8054B5D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054B5D8  7C 08 03 A6 */	mtlr r0
/* 8054B5DC  38 21 00 20 */	addi r1, r1, 0x20
/* 8054B5E0  4E 80 00 20 */	blr 
