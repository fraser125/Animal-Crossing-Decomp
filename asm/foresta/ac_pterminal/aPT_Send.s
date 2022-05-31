lbl_80484ED8:
/* 80484ED8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80484EDC  7C 08 02 A6 */	mflr r0
/* 80484EE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80484EE4  39 61 00 20 */	addi r11, r1, 0x20
/* 80484EE8  4B C1 5F ED */	bl func_8009AED4
/* 80484EEC  7C 7D 1B 78 */	mr r29, r3
/* 80484EF0  7C 9E 23 78 */	mr r30, r4
/* 80484EF4  4B F1 59 71 */	bl mEA_dl_carde_program_size
/* 80484EF8  7C 7F 1B 78 */	mr r31, r3
/* 80484EFC  4B F1 59 55 */	bl mEA_dl_carde_program_p
/* 80484F00  7F E4 FB 78 */	mr r4, r31
/* 80484F04  4B BC 5B 3D */	bl mGcgba_send_eAppri
/* 80484F08  2C 03 00 00 */	cmpwi r3, 0
/* 80484F0C  41 82 00 14 */	beq lbl_80484F20
/* 80484F10  41 80 00 7C */	blt lbl_80484F8C
/* 80484F14  2C 03 00 03 */	cmpwi r3, 3
/* 80484F18  40 80 00 74 */	bge lbl_80484F8C
/* 80484F1C  48 00 00 3C */	b lbl_80484F58
lbl_80484F20:
/* 80484F20  4B F3 A7 89 */	bl func_803BF6A8
/* 80484F24  4B F3 BE 29 */	bl mMsg_Unset_LockContinue
/* 80484F28  4B F3 A7 81 */	bl func_803BF6A8
/* 80484F2C  38 80 3D F4 */	li r4, 0x3df4
/* 80484F30  4B F3 B0 95 */	bl mMsg_Set_continue_msg_num
/* 80484F34  7F A3 EB 78 */	mr r3, r29
/* 80484F38  7F C4 F3 78 */	mr r4, r30
/* 80484F3C  38 A0 00 05 */	li r5, 5
/* 80484F40  48 00 02 69 */	bl aPT_Setup
/* 80484F44  4B F3 A7 65 */	bl func_803BF6A8
/* 80484F48  4B F3 BD E1 */	bl mMsg_Set_ForceNext
/* 80484F4C  4B BC 48 71 */	bl mGcgba_InitVar
/* 80484F50  4B BC 48 9D */	bl mGcgba_EndComm
/* 80484F54  48 00 00 40 */	b lbl_80484F94
lbl_80484F58:
/* 80484F58  4B F3 A7 51 */	bl func_803BF6A8
/* 80484F5C  4B F3 BD F1 */	bl mMsg_Unset_LockContinue
/* 80484F60  4B F3 A7 49 */	bl func_803BF6A8
/* 80484F64  38 80 3D F1 */	li r4, 0x3df1
/* 80484F68  4B F3 B0 5D */	bl mMsg_Set_continue_msg_num
/* 80484F6C  7F A3 EB 78 */	mr r3, r29
/* 80484F70  7F C4 F3 78 */	mr r4, r30
/* 80484F74  38 A0 00 00 */	li r5, 0
/* 80484F78  48 00 02 31 */	bl aPT_Setup
/* 80484F7C  4B F3 A7 2D */	bl func_803BF6A8
/* 80484F80  4B F3 BD A9 */	bl mMsg_Set_ForceNext
/* 80484F84  4B BC 48 69 */	bl mGcgba_EndComm
/* 80484F88  48 00 00 0C */	b lbl_80484F94
lbl_80484F8C:
/* 80484F8C  7F A3 EB 78 */	mr r3, r29
/* 80484F90  4B FF FB 6D */	bl aPT_SetTransSE
lbl_80484F94:
/* 80484F94  39 61 00 20 */	addi r11, r1, 0x20
/* 80484F98  4B C1 5F 89 */	bl func_8009AF20
/* 80484F9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80484FA0  7C 08 03 A6 */	mtlr r0
/* 80484FA4  38 21 00 20 */	addi r1, r1, 0x20
/* 80484FA8  4E 80 00 20 */	blr 
