lbl_80525CF4:
/* 80525CF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80525CF8  7C 08 02 A6 */	mflr r0
/* 80525CFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80525D00  39 61 00 20 */	addi r11, r1, 0x20
/* 80525D04  4B B7 51 D1 */	bl func_8009AED4
/* 80525D08  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80525D0C  7C 7D 1B 78 */	mr r29, r3
/* 80525D10  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80525D14  7C 9E 23 78 */	mr r30, r4
/* 80525D18  3F E5 00 02 */	addis r31, r5, 2
/* 80525D1C  38 A0 FF FF */	li r5, -1
/* 80525D20  80 FF 60 4C */	lwz r7, 0x604c(r31)
/* 80525D24  38 C0 00 01 */	li r6, 1
/* 80525D28  81 87 01 20 */	lwz r12, 0x120(r7)
/* 80525D2C  7D 89 03 A6 */	mtctr r12
/* 80525D30  4E 80 04 21 */	bctrl 
/* 80525D34  2C 03 00 00 */	cmpwi r3, 0
/* 80525D38  40 82 00 24 */	bne lbl_80525D5C
/* 80525D3C  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 80525D40  7F A3 EB 78 */	mr r3, r29
/* 80525D44  7F C4 F3 78 */	mr r4, r30
/* 80525D48  38 A0 FF FF */	li r5, -1
/* 80525D4C  81 86 01 20 */	lwz r12, 0x120(r6)
/* 80525D50  38 C0 00 02 */	li r6, 2
/* 80525D54  7D 89 03 A6 */	mtctr r12
/* 80525D58  4E 80 04 21 */	bctrl 
lbl_80525D5C:
/* 80525D5C  39 61 00 20 */	addi r11, r1, 0x20
/* 80525D60  4B B7 51 C1 */	bl func_8009AF20
/* 80525D64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80525D68  7C 08 03 A6 */	mtlr r0
/* 80525D6C  38 21 00 20 */	addi r1, r1, 0x20
/* 80525D70  4E 80 00 20 */	blr 