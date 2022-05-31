lbl_804721B4:
/* 804721B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804721B8  7C 08 02 A6 */	mflr r0
/* 804721BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804721C0  39 61 00 20 */	addi r11, r1, 0x20
/* 804721C4  4B C2 8D 11 */	bl func_8009AED4
/* 804721C8  7C 7D 1B 78 */	mr r29, r3
/* 804721CC  7C BE 2B 78 */	mr r30, r5
/* 804721D0  4B FF EC 25 */	bl aMR_SearchFurnitureBankVacancy
/* 804721D4  2C 03 00 00 */	cmpwi r3, 0
/* 804721D8  41 82 00 34 */	beq lbl_8047220C
/* 804721DC  4B FF EC 8D */	bl aMR_SearchFreeFurnitureBankIdx
/* 804721E0  7C 7F 1B 78 */	mr r31, r3
/* 804721E4  2C 1F FF FF */	cmpwi r31, -1
/* 804721E8  41 82 00 24 */	beq lbl_8047220C
/* 804721EC  4B FF EB C1 */	bl aMR_BankNo2BankAddress
/* 804721F0  7C 60 1B 78 */	mr r0, r3
/* 804721F4  7F A3 EB 78 */	mr r3, r29
/* 804721F8  7C 05 03 78 */	mr r5, r0
/* 804721FC  7F C4 F3 78 */	mr r4, r30
/* 80472200  7F E6 FB 78 */	mr r6, r31
/* 80472204  4B FF FF 05 */	bl aMR_DmaFurniture_Common
/* 80472208  48 00 00 08 */	b lbl_80472210
lbl_8047220C:
/* 8047220C  38 60 00 00 */	li r3, 0
lbl_80472210:
/* 80472210  39 61 00 20 */	addi r11, r1, 0x20
/* 80472214  4B C2 8D 0D */	bl func_8009AF20
/* 80472218  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8047221C  7C 08 03 A6 */	mtlr r0
/* 80472220  38 21 00 20 */	addi r1, r1, 0x20
/* 80472224  4E 80 00 20 */	blr 
