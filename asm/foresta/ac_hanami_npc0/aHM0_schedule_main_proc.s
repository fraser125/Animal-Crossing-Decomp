lbl_80529EB4:
/* 80529EB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80529EB8  7C 08 02 A6 */	mflr r0
/* 80529EBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80529EC0  39 61 00 20 */	addi r11, r1, 0x20
/* 80529EC4  4B B7 10 11 */	bl func_8009AED4
/* 80529EC8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80529ECC  7C 7D 1B 78 */	mr r29, r3
/* 80529ED0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80529ED4  7C 9E 23 78 */	mr r30, r4
/* 80529ED8  3F E5 00 02 */	addis r31, r5, 2
/* 80529EDC  38 A0 FF FF */	li r5, -1
/* 80529EE0  80 FF 60 4C */	lwz r7, 0x604c(r31)
/* 80529EE4  38 C0 00 01 */	li r6, 1
/* 80529EE8  81 87 01 20 */	lwz r12, 0x120(r7)
/* 80529EEC  7D 89 03 A6 */	mtctr r12
/* 80529EF0  4E 80 04 21 */	bctrl 
/* 80529EF4  2C 03 00 00 */	cmpwi r3, 0
/* 80529EF8  40 82 00 24 */	bne lbl_80529F1C
/* 80529EFC  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 80529F00  7F A3 EB 78 */	mr r3, r29
/* 80529F04  7F C4 F3 78 */	mr r4, r30
/* 80529F08  38 A0 FF FF */	li r5, -1
/* 80529F0C  81 86 01 20 */	lwz r12, 0x120(r6)
/* 80529F10  38 C0 00 02 */	li r6, 2
/* 80529F14  7D 89 03 A6 */	mtctr r12
/* 80529F18  4E 80 04 21 */	bctrl 
lbl_80529F1C:
/* 80529F1C  7F A3 EB 78 */	mr r3, r29
/* 80529F20  7F C4 F3 78 */	mr r4, r30
/* 80529F24  4B FF FB 75 */	bl aHM0_make_tumbler
/* 80529F28  39 61 00 20 */	addi r11, r1, 0x20
/* 80529F2C  4B B7 0F F5 */	bl func_8009AF20
/* 80529F30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80529F34  7C 08 03 A6 */	mtlr r0
/* 80529F38  38 21 00 20 */	addi r1, r1, 0x20
/* 80529F3C  4E 80 00 20 */	blr 
