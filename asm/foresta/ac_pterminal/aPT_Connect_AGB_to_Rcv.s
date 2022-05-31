lbl_80484CE4:
/* 80484CE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80484CE8  7C 08 02 A6 */	mflr r0
/* 80484CEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80484CF0  39 61 00 20 */	addi r11, r1, 0x20
/* 80484CF4  4B C1 61 E1 */	bl func_8009AED4
/* 80484CF8  7C 7D 1B 78 */	mr r29, r3
/* 80484CFC  7C 9E 23 78 */	mr r30, r4
/* 80484D00  4B F3 A9 A9 */	bl func_803BF6A8
/* 80484D04  4B F3 BF 95 */	bl mMsg_Check_MainNormalContinue
/* 80484D08  2C 03 00 00 */	cmpwi r3, 0
/* 80484D0C  41 82 00 94 */	beq lbl_80484DA0
/* 80484D10  4B F3 A9 99 */	bl func_803BF6A8
/* 80484D14  4B F3 B2 B9 */	bl mMsg_Get_msg_num
/* 80484D18  2C 03 3D EF */	cmpwi r3, 0x3def
/* 80484D1C  40 82 00 84 */	bne lbl_80484DA0
/* 80484D20  4B BC 4A DD */	bl mGcgba_ConnectEnabled
/* 80484D24  7C 7F 1B 78 */	mr r31, r3
/* 80484D28  4B F3 A9 81 */	bl func_803BF6A8
/* 80484D2C  4B F3 C0 15 */	bl mMsg_Set_LockContinue
/* 80484D30  2C 1F 00 09 */	cmpwi r31, 9
/* 80484D34  41 82 00 58 */	beq lbl_80484D8C
/* 80484D38  40 80 00 24 */	bge lbl_80484D5C
/* 80484D3C  2C 1F 00 01 */	cmpwi r31, 1
/* 80484D40  41 82 00 08 */	beq lbl_80484D48
/* 80484D44  48 00 00 18 */	b lbl_80484D5C
lbl_80484D48:
/* 80484D48  7F A3 EB 78 */	mr r3, r29
/* 80484D4C  7F C4 F3 78 */	mr r4, r30
/* 80484D50  38 A0 00 06 */	li r5, 6
/* 80484D54  48 00 04 55 */	bl aPT_Setup
/* 80484D58  48 00 00 34 */	b lbl_80484D8C
lbl_80484D5C:
/* 80484D5C  80 1D 01 80 */	lwz r0, 0x180(r29)
/* 80484D60  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80484D64  41 80 00 28 */	blt lbl_80484D8C
/* 80484D68  4B F3 A9 41 */	bl func_803BF6A8
/* 80484D6C  4B F3 BF E1 */	bl mMsg_Unset_LockContinue
/* 80484D70  4B F3 A9 39 */	bl func_803BF6A8
/* 80484D74  38 80 3D F3 */	li r4, 0x3df3
/* 80484D78  4B F3 B2 4D */	bl mMsg_Set_continue_msg_num
/* 80484D7C  7F A3 EB 78 */	mr r3, r29
/* 80484D80  7F C4 F3 78 */	mr r4, r30
/* 80484D84  38 A0 00 00 */	li r5, 0
/* 80484D88  48 00 04 21 */	bl aPT_Setup
lbl_80484D8C:
/* 80484D8C  80 9D 01 80 */	lwz r4, 0x180(r29)
/* 80484D90  7F A3 EB 78 */	mr r3, r29
/* 80484D94  38 04 00 01 */	addi r0, r4, 1
/* 80484D98  90 1D 01 80 */	stw r0, 0x180(r29)
/* 80484D9C  4B FF FD 61 */	bl aPT_SetTransSE
lbl_80484DA0:
/* 80484DA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80484DA4  4B C1 61 7D */	bl func_8009AF20
/* 80484DA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80484DAC  7C 08 03 A6 */	mtlr r0
/* 80484DB0  38 21 00 20 */	addi r1, r1, 0x20
/* 80484DB4  4E 80 00 20 */	blr 
