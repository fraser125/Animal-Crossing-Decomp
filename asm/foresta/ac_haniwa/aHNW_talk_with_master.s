lbl_80427ED0:
/* 80427ED0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80427ED4  7C 08 02 A6 */	mflr r0
/* 80427ED8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80427EDC  39 61 00 20 */	addi r11, r1, 0x20
/* 80427EE0  4B C7 2F F5 */	bl func_8009AED4
/* 80427EE4  7C 7D 1B 78 */	mr r29, r3
/* 80427EE8  7C 9E 23 78 */	mr r30, r4
/* 80427EEC  4B F9 77 BD */	bl func_803BF6A8
/* 80427EF0  7C 60 1B 78 */	mr r0, r3
/* 80427EF4  38 60 00 04 */	li r3, 4
/* 80427EF8  7C 1F 03 78 */	mr r31, r0
/* 80427EFC  38 80 00 09 */	li r4, 9
/* 80427F00  4B F7 05 7D */	bl mDemo_Get_OrderValue
/* 80427F04  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80427F08  41 82 00 94 */	beq lbl_80427F9C
/* 80427F0C  7F E3 FB 78 */	mr r3, r31
/* 80427F10  4B F9 8D 89 */	bl mMsg_Check_MainNormalContinue
/* 80427F14  2C 03 00 01 */	cmpwi r3, 1
/* 80427F18  40 82 00 84 */	bne lbl_80427F9C
/* 80427F1C  3B E0 FF FF */	li r31, -1
/* 80427F20  4B F5 B6 21 */	bl func_80383540
/* 80427F24  4B F5 BC 49 */	bl mChoice_Get_ChoseNum
/* 80427F28  2C 03 00 02 */	cmpwi r3, 2
/* 80427F2C  41 82 00 3C */	beq lbl_80427F68
/* 80427F30  40 80 00 14 */	bge lbl_80427F44
/* 80427F34  2C 03 00 00 */	cmpwi r3, 0
/* 80427F38  41 82 00 18 */	beq lbl_80427F50
/* 80427F3C  40 80 00 1C */	bge lbl_80427F58
/* 80427F40  48 00 00 34 */	b lbl_80427F74
lbl_80427F44:
/* 80427F44  2C 03 00 04 */	cmpwi r3, 4
/* 80427F48  40 80 00 2C */	bge lbl_80427F74
/* 80427F4C  48 00 00 24 */	b lbl_80427F70
lbl_80427F50:
/* 80427F50  3B E0 00 0C */	li r31, 0xc
/* 80427F54  48 00 00 20 */	b lbl_80427F74
lbl_80427F58:
/* 80427F58  38 00 00 01 */	li r0, 1
/* 80427F5C  3B E0 00 06 */	li r31, 6
/* 80427F60  98 1D 02 82 */	stb r0, 0x282(r29)
/* 80427F64  48 00 00 10 */	b lbl_80427F74
lbl_80427F68:
/* 80427F68  3B E0 00 04 */	li r31, 4
/* 80427F6C  48 00 00 08 */	b lbl_80427F74
lbl_80427F70:
/* 80427F70  3B E0 00 05 */	li r31, 5
lbl_80427F74:
/* 80427F74  2C 1F FF FF */	cmpwi r31, -1
/* 80427F78  41 82 00 24 */	beq lbl_80427F9C
/* 80427F7C  38 60 00 04 */	li r3, 4
/* 80427F80  38 80 00 09 */	li r4, 9
/* 80427F84  38 A0 00 00 */	li r5, 0
/* 80427F88  4B F7 04 B1 */	bl mDemo_Set_OrderValue
/* 80427F8C  7F A3 EB 78 */	mr r3, r29
/* 80427F90  7F C4 F3 78 */	mr r4, r30
/* 80427F94  7F E5 FB 78 */	mr r5, r31
/* 80427F98  48 00 0A BD */	bl aHNW_setupAction
lbl_80427F9C:
/* 80427F9C  39 61 00 20 */	addi r11, r1, 0x20
/* 80427FA0  4B C7 2F 81 */	bl func_8009AF20
/* 80427FA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80427FA8  7C 08 03 A6 */	mtlr r0
/* 80427FAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80427FB0  4E 80 00 20 */	blr 
