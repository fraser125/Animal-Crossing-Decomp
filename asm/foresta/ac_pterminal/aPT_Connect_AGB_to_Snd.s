lbl_80484DE4:
/* 80484DE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80484DE8  7C 08 02 A6 */	mflr r0
/* 80484DEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80484DF0  39 61 00 20 */	addi r11, r1, 0x20
/* 80484DF4  4B C1 60 E1 */	bl func_8009AED4
/* 80484DF8  7C 7D 1B 78 */	mr r29, r3
/* 80484DFC  7C 9E 23 78 */	mr r30, r4
/* 80484E00  4B F3 A8 A9 */	bl func_803BF6A8
/* 80484E04  4B F3 BE 95 */	bl mMsg_Check_MainNormalContinue
/* 80484E08  2C 03 00 00 */	cmpwi r3, 0
/* 80484E0C  41 82 00 94 */	beq lbl_80484EA0
/* 80484E10  4B F3 A8 99 */	bl func_803BF6A8
/* 80484E14  4B F3 B1 B9 */	bl mMsg_Get_msg_num
/* 80484E18  2C 03 3D F2 */	cmpwi r3, 0x3df2
/* 80484E1C  40 82 00 84 */	bne lbl_80484EA0
/* 80484E20  4B BC 49 DD */	bl mGcgba_ConnectEnabled
/* 80484E24  7C 7F 1B 78 */	mr r31, r3
/* 80484E28  4B F3 A8 81 */	bl func_803BF6A8
/* 80484E2C  4B F3 BF 15 */	bl mMsg_Set_LockContinue
/* 80484E30  2C 1F 00 09 */	cmpwi r31, 9
/* 80484E34  41 82 00 58 */	beq lbl_80484E8C
/* 80484E38  40 80 00 24 */	bge lbl_80484E5C
/* 80484E3C  2C 1F 00 01 */	cmpwi r31, 1
/* 80484E40  41 82 00 08 */	beq lbl_80484E48
/* 80484E44  48 00 00 18 */	b lbl_80484E5C
lbl_80484E48:
/* 80484E48  7F A3 EB 78 */	mr r3, r29
/* 80484E4C  7F C4 F3 78 */	mr r4, r30
/* 80484E50  38 A0 00 04 */	li r5, 4
/* 80484E54  48 00 03 55 */	bl aPT_Setup
/* 80484E58  48 00 00 34 */	b lbl_80484E8C
lbl_80484E5C:
/* 80484E5C  80 1D 01 80 */	lwz r0, 0x180(r29)
/* 80484E60  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80484E64  41 80 00 28 */	blt lbl_80484E8C
/* 80484E68  4B F3 A8 41 */	bl func_803BF6A8
/* 80484E6C  4B F3 BE E1 */	bl mMsg_Unset_LockContinue
/* 80484E70  4B F3 A8 39 */	bl func_803BF6A8
/* 80484E74  38 80 3D F3 */	li r4, 0x3df3
/* 80484E78  4B F3 B1 4D */	bl mMsg_Set_continue_msg_num
/* 80484E7C  7F A3 EB 78 */	mr r3, r29
/* 80484E80  7F C4 F3 78 */	mr r4, r30
/* 80484E84  38 A0 00 00 */	li r5, 0
/* 80484E88  48 00 03 21 */	bl aPT_Setup
lbl_80484E8C:
/* 80484E8C  80 9D 01 80 */	lwz r4, 0x180(r29)
/* 80484E90  7F A3 EB 78 */	mr r3, r29
/* 80484E94  38 04 00 01 */	addi r0, r4, 1
/* 80484E98  90 1D 01 80 */	stw r0, 0x180(r29)
/* 80484E9C  4B FF FC 61 */	bl aPT_SetTransSE
lbl_80484EA0:
/* 80484EA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80484EA4  4B C1 60 7D */	bl func_8009AF20
/* 80484EA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80484EAC  7C 08 03 A6 */	mtlr r0
/* 80484EB0  38 21 00 20 */	addi r1, r1, 0x20
/* 80484EB4  4E 80 00 20 */	blr 
