lbl_80568E00:
/* 80568E00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80568E04  7C 08 02 A6 */	mflr r0
/* 80568E08  90 01 00 24 */	stw r0, 0x24(r1)
/* 80568E0C  39 61 00 20 */	addi r11, r1, 0x20
/* 80568E10  4B B3 20 C5 */	bl func_8009AED4
/* 80568E14  7C 7D 1B 78 */	mr r29, r3
/* 80568E18  7C 9E 23 78 */	mr r30, r4
/* 80568E1C  38 60 00 04 */	li r3, 4
/* 80568E20  38 80 00 09 */	li r4, 9
/* 80568E24  4B E2 F6 59 */	bl mDemo_Get_OrderValue
/* 80568E28  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80568E2C  3B E0 FF FF */	li r31, -1
/* 80568E30  2C 00 00 05 */	cmpwi r0, 5
/* 80568E34  40 82 00 68 */	bne lbl_80568E9C
/* 80568E38  4B E5 68 71 */	bl func_803BF6A8
/* 80568E3C  4B E5 7E 5D */	bl mMsg_Check_MainNormalContinue
/* 80568E40  2C 03 00 01 */	cmpwi r3, 1
/* 80568E44  40 82 00 58 */	bne lbl_80568E9C
/* 80568E48  38 60 00 04 */	li r3, 4
/* 80568E4C  38 80 00 09 */	li r4, 9
/* 80568E50  38 A0 00 00 */	li r5, 0
/* 80568E54  4B E2 F5 E5 */	bl mDemo_Set_OrderValue
/* 80568E58  4B E1 A6 E9 */	bl func_80383540
/* 80568E5C  4B E1 AD 11 */	bl mChoice_Get_ChoseNum
/* 80568E60  2C 03 00 01 */	cmpwi r3, 1
/* 80568E64  41 82 00 14 */	beq lbl_80568E78
/* 80568E68  40 80 00 1C */	bge lbl_80568E84
/* 80568E6C  2C 03 00 00 */	cmpwi r3, 0
/* 80568E70  40 80 00 10 */	bge lbl_80568E80
/* 80568E74  48 00 00 10 */	b lbl_80568E84
lbl_80568E78:
/* 80568E78  3B E0 00 0F */	li r31, 0xf
/* 80568E7C  48 00 00 08 */	b lbl_80568E84
lbl_80568E80:
/* 80568E80  3B E0 00 04 */	li r31, 4
lbl_80568E84:
/* 80568E84  2C 1F FF FF */	cmpwi r31, -1
/* 80568E88  41 82 00 14 */	beq lbl_80568E9C
/* 80568E8C  7F A3 EB 78 */	mr r3, r29
/* 80568E90  7F C4 F3 78 */	mr r4, r30
/* 80568E94  7F E5 FB 78 */	mr r5, r31
/* 80568E98  48 00 0F 31 */	bl aNPS2_change_talk_proc
lbl_80568E9C:
/* 80568E9C  39 61 00 20 */	addi r11, r1, 0x20
/* 80568EA0  4B B3 20 81 */	bl func_8009AF20
/* 80568EA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80568EA8  7C 08 03 A6 */	mtlr r0
/* 80568EAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80568EB0  4E 80 00 20 */	blr 
