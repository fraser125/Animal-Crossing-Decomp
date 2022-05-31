lbl_80592E60:
/* 80592E60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80592E64  7C 08 02 A6 */	mflr r0
/* 80592E68  90 01 00 24 */	stw r0, 0x24(r1)
/* 80592E6C  39 61 00 20 */	addi r11, r1, 0x20
/* 80592E70  4B B0 80 65 */	bl func_8009AED4
/* 80592E74  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80592E78  7C 7D 1B 78 */	mr r29, r3
/* 80592E7C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80592E80  7C 9E 23 78 */	mr r30, r4
/* 80592E84  3F E5 00 02 */	addis r31, r5, 2
/* 80592E88  38 A0 FF FF */	li r5, -1
/* 80592E8C  80 FF 60 4C */	lwz r7, 0x604c(r31)
/* 80592E90  38 C0 00 01 */	li r6, 1
/* 80592E94  81 87 01 20 */	lwz r12, 0x120(r7)
/* 80592E98  7D 89 03 A6 */	mtctr r12
/* 80592E9C  4E 80 04 21 */	bctrl 
/* 80592EA0  2C 03 00 00 */	cmpwi r3, 0
/* 80592EA4  40 82 00 24 */	bne lbl_80592EC8
/* 80592EA8  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 80592EAC  7F A3 EB 78 */	mr r3, r29
/* 80592EB0  7F C4 F3 78 */	mr r4, r30
/* 80592EB4  38 A0 FF FF */	li r5, -1
/* 80592EB8  81 86 01 20 */	lwz r12, 0x120(r6)
/* 80592EBC  38 C0 00 02 */	li r6, 2
/* 80592EC0  7D 89 03 A6 */	mtctr r12
/* 80592EC4  4E 80 04 21 */	bctrl 
lbl_80592EC8:
/* 80592EC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80592ECC  4B B0 80 55 */	bl func_8009AF20
/* 80592ED0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80592ED4  7C 08 03 A6 */	mtlr r0
/* 80592ED8  38 21 00 20 */	addi r1, r1, 0x20
/* 80592EDC  4E 80 00 20 */	blr 
