lbl_8051BF18:
/* 8051BF18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051BF1C  7C 08 02 A6 */	mflr r0
/* 8051BF20  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051BF24  39 61 00 20 */	addi r11, r1, 0x20
/* 8051BF28  4B B7 EF AD */	bl func_8009AED4
/* 8051BF2C  7C 7D 1B 78 */	mr r29, r3
/* 8051BF30  7C 9E 23 78 */	mr r30, r4
/* 8051BF34  4B EA 37 75 */	bl func_803BF6A8
/* 8051BF38  4B EA 4D 61 */	bl mMsg_Check_MainNormalContinue
/* 8051BF3C  2C 03 00 01 */	cmpwi r3, 1
/* 8051BF40  40 82 00 54 */	bne lbl_8051BF94
/* 8051BF44  3B E0 FF FF */	li r31, -1
/* 8051BF48  4B E6 75 F9 */	bl func_80383540
/* 8051BF4C  4B E6 7C 21 */	bl mChoice_Get_ChoseNum
/* 8051BF50  2C 03 00 01 */	cmpwi r3, 1
/* 8051BF54  41 82 00 1C */	beq lbl_8051BF70
/* 8051BF58  40 80 00 1C */	bge lbl_8051BF74
/* 8051BF5C  2C 03 00 00 */	cmpwi r3, 0
/* 8051BF60  40 80 00 08 */	bge lbl_8051BF68
/* 8051BF64  48 00 00 10 */	b lbl_8051BF74
lbl_8051BF68:
/* 8051BF68  3B E0 00 04 */	li r31, 4
/* 8051BF6C  48 00 00 08 */	b lbl_8051BF74
lbl_8051BF70:
/* 8051BF70  3B E0 00 00 */	li r31, 0
lbl_8051BF74:
/* 8051BF74  2C 1F FF FF */	cmpwi r31, -1
/* 8051BF78  41 82 00 1C */	beq lbl_8051BF94
/* 8051BF7C  81 9D 09 A0 */	lwz r12, 0x9a0(r29)
/* 8051BF80  7F A3 EB 78 */	mr r3, r29
/* 8051BF84  7F C4 F3 78 */	mr r4, r30
/* 8051BF88  7F E5 FB 78 */	mr r5, r31
/* 8051BF8C  7D 89 03 A6 */	mtctr r12
/* 8051BF90  4E 80 04 21 */	bctrl 
lbl_8051BF94:
/* 8051BF94  39 61 00 20 */	addi r11, r1, 0x20
/* 8051BF98  4B B7 EF 89 */	bl func_8009AF20
/* 8051BF9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051BFA0  7C 08 03 A6 */	mtlr r0
/* 8051BFA4  38 21 00 20 */	addi r1, r1, 0x20
/* 8051BFA8  4E 80 00 20 */	blr 
