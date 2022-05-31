lbl_80568B1C:
/* 80568B1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80568B20  7C 08 02 A6 */	mflr r0
/* 80568B24  90 01 00 24 */	stw r0, 0x24(r1)
/* 80568B28  39 61 00 20 */	addi r11, r1, 0x20
/* 80568B2C  4B B3 23 A9 */	bl func_8009AED4
/* 80568B30  7C 7D 1B 78 */	mr r29, r3
/* 80568B34  7C 9E 23 78 */	mr r30, r4
/* 80568B38  38 60 00 04 */	li r3, 4
/* 80568B3C  38 80 00 09 */	li r4, 9
/* 80568B40  4B E2 F9 3D */	bl mDemo_Get_OrderValue
/* 80568B44  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80568B48  2C 00 00 02 */	cmpwi r0, 2
/* 80568B4C  40 82 00 6C */	bne lbl_80568BB8
/* 80568B50  4B E5 6B 59 */	bl func_803BF6A8
/* 80568B54  4B E5 81 45 */	bl mMsg_Check_MainNormalContinue
/* 80568B58  2C 03 00 01 */	cmpwi r3, 1
/* 80568B5C  40 82 00 5C */	bne lbl_80568BB8
/* 80568B60  3B E0 FF FF */	li r31, -1
/* 80568B64  38 60 00 04 */	li r3, 4
/* 80568B68  38 80 00 09 */	li r4, 9
/* 80568B6C  38 A0 00 00 */	li r5, 0
/* 80568B70  4B E2 F8 C9 */	bl mDemo_Set_OrderValue
/* 80568B74  4B E1 A9 CD */	bl func_80383540
/* 80568B78  4B E1 AF F5 */	bl mChoice_Get_ChoseNum
/* 80568B7C  2C 03 00 01 */	cmpwi r3, 1
/* 80568B80  41 82 00 14 */	beq lbl_80568B94
/* 80568B84  40 80 00 1C */	bge lbl_80568BA0
/* 80568B88  2C 03 00 00 */	cmpwi r3, 0
/* 80568B8C  40 80 00 10 */	bge lbl_80568B9C
/* 80568B90  48 00 00 10 */	b lbl_80568BA0
lbl_80568B94:
/* 80568B94  3B E0 00 08 */	li r31, 8
/* 80568B98  48 00 00 08 */	b lbl_80568BA0
lbl_80568B9C:
/* 80568B9C  3B E0 00 04 */	li r31, 4
lbl_80568BA0:
/* 80568BA0  2C 1F FF FF */	cmpwi r31, -1
/* 80568BA4  41 82 00 14 */	beq lbl_80568BB8
/* 80568BA8  7F A3 EB 78 */	mr r3, r29
/* 80568BAC  7F C4 F3 78 */	mr r4, r30
/* 80568BB0  7F E5 FB 78 */	mr r5, r31
/* 80568BB4  48 00 12 15 */	bl aNPS2_change_talk_proc
lbl_80568BB8:
/* 80568BB8  39 61 00 20 */	addi r11, r1, 0x20
/* 80568BBC  4B B3 23 65 */	bl func_8009AF20
/* 80568BC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80568BC4  7C 08 03 A6 */	mtlr r0
/* 80568BC8  38 21 00 20 */	addi r1, r1, 0x20
/* 80568BCC  4E 80 00 20 */	blr 
