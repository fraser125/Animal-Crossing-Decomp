lbl_80571EB4:
/* 80571EB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80571EB8  7C 08 02 A6 */	mflr r0
/* 80571EBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80571EC0  39 61 00 20 */	addi r11, r1, 0x20
/* 80571EC4  4B B2 90 11 */	bl func_8009AED4
/* 80571EC8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80571ECC  7C 7D 1B 78 */	mr r29, r3
/* 80571ED0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80571ED4  7C 9E 23 78 */	mr r30, r4
/* 80571ED8  3F E5 00 02 */	addis r31, r5, 2
/* 80571EDC  38 A0 FF FF */	li r5, -1
/* 80571EE0  80 FF 60 4C */	lwz r7, 0x604c(r31)
/* 80571EE4  38 C0 00 01 */	li r6, 1
/* 80571EE8  81 87 01 20 */	lwz r12, 0x120(r7)
/* 80571EEC  7D 89 03 A6 */	mtctr r12
/* 80571EF0  4E 80 04 21 */	bctrl 
/* 80571EF4  2C 03 00 00 */	cmpwi r3, 0
/* 80571EF8  40 82 00 24 */	bne lbl_80571F1C
/* 80571EFC  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 80571F00  7F A3 EB 78 */	mr r3, r29
/* 80571F04  7F C4 F3 78 */	mr r4, r30
/* 80571F08  38 A0 FF FF */	li r5, -1
/* 80571F0C  81 86 01 20 */	lwz r12, 0x120(r6)
/* 80571F10  38 C0 00 02 */	li r6, 2
/* 80571F14  7D 89 03 A6 */	mtctr r12
/* 80571F18  4E 80 04 21 */	bctrl 
lbl_80571F1C:
/* 80571F1C  39 61 00 20 */	addi r11, r1, 0x20
/* 80571F20  4B B2 90 01 */	bl func_8009AF20
/* 80571F24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80571F28  7C 08 03 A6 */	mtlr r0
/* 80571F2C  38 21 00 20 */	addi r1, r1, 0x20
/* 80571F30  4E 80 00 20 */	blr 
