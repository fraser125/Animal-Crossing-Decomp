lbl_803AEC98:
/* 803AEC98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803AEC9C  7C 08 02 A6 */	mflr r0
/* 803AECA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803AECA4  39 61 00 20 */	addi r11, r1, 0x20
/* 803AECA8  4B CE C2 25 */	bl func_8009AECC
/* 803AECAC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803AECB0  3B A0 00 00 */	li r29, 0
/* 803AECB4  3B C3 85 38 */	addi r30, r3, common_data@l /* 0x81138538@l */
/* 803AECB8  3B 80 00 00 */	li r28, 0
/* 803AECBC  3B E0 00 00 */	li r31, 0
lbl_803AECC0:
/* 803AECC0  7C 7E FA 14 */	add r3, r30, r31
/* 803AECC4  3B 63 00 20 */	addi r27, r3, 0x20
/* 803AECC8  7F 63 DB 78 */	mr r3, r27
/* 803AECCC  4B FF FA 19 */	bl sCck_CheckSaveData_radiocard_NSW
/* 803AECD0  7F BD 1B 78 */	or r29, r29, r3
/* 803AECD4  7F 63 DB 78 */	mr r3, r27
/* 803AECD8  4B FF FA 9D */	bl sCck_CheckSaveData_calendar_NSW
/* 803AECDC  7F BD 1B 78 */	or r29, r29, r3
/* 803AECE0  7F 63 DB 78 */	mr r3, r27
/* 803AECE4  4B FF FB 71 */	bl sCck_CheckSaveData_deposit_NSW
/* 803AECE8  7F BD 1B 78 */	or r29, r29, r3
/* 803AECEC  7F 63 DB 78 */	mr r3, r27
/* 803AECF0  4B FF FB C5 */	bl sCck_CheckSaveData_nw_visitor_NSW
/* 803AECF4  7F BD 1B 78 */	or r29, r29, r3
/* 803AECF8  7F 63 DB 78 */	mr r3, r27
/* 803AECFC  4B FF FC 25 */	bl sCck_CheckSaveData_my_org_no_table_NSW
/* 803AED00  3B 9C 00 01 */	addi r28, r28, 1
/* 803AED04  7F BD 1B 78 */	or r29, r29, r3
/* 803AED08  2C 1C 00 04 */	cmpwi r28, 4
/* 803AED0C  3B FF 24 40 */	addi r31, r31, 0x2440
/* 803AED10  41 80 FF B0 */	blt lbl_803AECC0
/* 803AED14  4B FF FC A9 */	bl sCck_CheckSaveData_bridge_NSW
/* 803AED18  7F BD 1B 78 */	or r29, r29, r3
/* 803AED1C  4B FF FD A5 */	bl sCck_CheckSaveData_fishRecord_NSW
/* 803AED20  7F BD 1B 78 */	or r29, r29, r3
/* 803AED24  4B FF FE 6D */	bl sCck_CheckSaveData_Anmret_NSW
/* 803AED28  7F BD 1B 78 */	or r29, r29, r3
/* 803AED2C  4B FF FF 0D */	bl sCck_CheckSaveData_LightHouse_NSW
/* 803AED30  7F BD 1B 78 */	or r29, r29, r3
/* 803AED34  39 61 00 20 */	addi r11, r1, 0x20
/* 803AED38  7F A3 EB 78 */	mr r3, r29
/* 803AED3C  4B CE C1 DD */	bl func_8009AF18
/* 803AED40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803AED44  7C 08 03 A6 */	mtlr r0
/* 803AED48  38 21 00 20 */	addi r1, r1, 0x20
/* 803AED4C  4E 80 00 20 */	blr 
