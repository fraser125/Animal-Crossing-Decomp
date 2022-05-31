lbl_80517DB4:
/* 80517DB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80517DB8  7C 08 02 A6 */	mflr r0
/* 80517DBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80517DC0  39 61 00 20 */	addi r11, r1, 0x20
/* 80517DC4  4B B8 31 11 */	bl func_8009AED4
/* 80517DC8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80517DCC  7C 7D 1B 78 */	mr r29, r3
/* 80517DD0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80517DD4  7C 9E 23 78 */	mr r30, r4
/* 80517DD8  3F E5 00 02 */	addis r31, r5, 2
/* 80517DDC  38 A0 FF FF */	li r5, -1
/* 80517DE0  80 FF 60 4C */	lwz r7, 0x604c(r31)
/* 80517DE4  38 C0 00 01 */	li r6, 1
/* 80517DE8  81 87 01 20 */	lwz r12, 0x120(r7)
/* 80517DEC  7D 89 03 A6 */	mtctr r12
/* 80517DF0  4E 80 04 21 */	bctrl 
/* 80517DF4  2C 03 00 00 */	cmpwi r3, 0
/* 80517DF8  40 82 00 24 */	bne lbl_80517E1C
/* 80517DFC  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 80517E00  7F A3 EB 78 */	mr r3, r29
/* 80517E04  7F C4 F3 78 */	mr r4, r30
/* 80517E08  38 A0 FF FF */	li r5, -1
/* 80517E0C  81 86 01 20 */	lwz r12, 0x120(r6)
/* 80517E10  38 C0 00 02 */	li r6, 2
/* 80517E14  7D 89 03 A6 */	mtctr r12
/* 80517E18  4E 80 04 21 */	bctrl 
lbl_80517E1C:
/* 80517E1C  7F A3 EB 78 */	mr r3, r29
/* 80517E20  7F C4 F3 78 */	mr r4, r30
/* 80517E24  4B FF F3 45 */	bl aCD1_make_cracker
/* 80517E28  39 61 00 20 */	addi r11, r1, 0x20
/* 80517E2C  4B B8 30 F5 */	bl func_8009AF20
/* 80517E30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80517E34  7C 08 03 A6 */	mtlr r0
/* 80517E38  38 21 00 20 */	addi r1, r1, 0x20
/* 80517E3C  4E 80 00 20 */	blr 
