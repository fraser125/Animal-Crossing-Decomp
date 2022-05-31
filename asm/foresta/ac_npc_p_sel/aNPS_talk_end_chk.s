lbl_80566DD8:
/* 80566DD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80566DDC  7C 08 02 A6 */	mflr r0
/* 80566DE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80566DE4  39 61 00 20 */	addi r11, r1, 0x20
/* 80566DE8  4B B3 40 E9 */	bl func_8009AED0
/* 80566DEC  7C 7F 1B 78 */	mr r31, r3
/* 80566DF0  7C 9E 23 78 */	mr r30, r4
/* 80566DF4  4B E5 88 B5 */	bl func_803BF6A8
/* 80566DF8  81 9F 09 9C */	lwz r12, 0x99c(r31)
/* 80566DFC  7C 7D 1B 78 */	mr r29, r3
/* 80566E00  7F E3 FB 78 */	mr r3, r31
/* 80566E04  7F C4 F3 78 */	mr r4, r30
/* 80566E08  3B 80 00 00 */	li r28, 0
/* 80566E0C  7D 89 03 A6 */	mtctr r12
/* 80566E10  4E 80 04 21 */	bctrl 
/* 80566E14  7F A3 EB 78 */	mr r3, r29
/* 80566E18  4B E5 9F 51 */	bl mMsg_Check_idling_now
/* 80566E1C  2C 03 00 01 */	cmpwi r3, 1
/* 80566E20  40 82 00 44 */	bne lbl_80566E64
/* 80566E24  7F A3 EB 78 */	mr r3, r29
/* 80566E28  4B E5 8C 1D */	bl mMsg_request_main_disappear_wait_type1
/* 80566E2C  38 60 00 96 */	li r3, 0x96
/* 80566E30  38 00 00 50 */	li r0, 0x50
/* 80566E34  90 7F 09 A8 */	stw r3, 0x9a8(r31)
/* 80566E38  38 7E 23 FC */	addi r3, r30, 0x23fc
/* 80566E3C  38 80 00 04 */	li r4, 4
/* 80566E40  90 1F 09 AC */	stw r0, 0x9ac(r31)
/* 80566E44  4B AF 62 25 */	bl bzero
/* 80566E48  7F E3 FB 78 */	mr r3, r31
/* 80566E4C  7F C4 F3 78 */	mr r4, r30
/* 80566E50  4B FF F8 C5 */	bl aNPS_think_init_proc
/* 80566E54  38 00 00 01 */	li r0, 1
/* 80566E58  3B 80 00 01 */	li r28, 1
/* 80566E5C  90 1F 09 A0 */	stw r0, 0x9a0(r31)
/* 80566E60  48 00 00 9C */	b lbl_80566EFC
lbl_80566E64:
/* 80566E64  83 DF 09 A4 */	lwz r30, 0x9a4(r31)
/* 80566E68  7F A3 EB 78 */	mr r3, r29
/* 80566E6C  4B E5 9E 6D */	bl mMsg_Check_MainNormal
/* 80566E70  2C 03 00 01 */	cmpwi r3, 1
/* 80566E74  41 82 00 14 */	beq lbl_80566E88
/* 80566E78  4B E1 C6 C9 */	bl func_80383540
/* 80566E7C  4B E1 C8 01 */	bl mChoice_check_main_normal
/* 80566E80  2C 03 00 01 */	cmpwi r3, 1
/* 80566E84  40 82 00 18 */	bne lbl_80566E9C
lbl_80566E88:
/* 80566E88  3B DE 00 01 */	addi r30, r30, 1
/* 80566E8C  2C 1E 02 58 */	cmpwi r30, 0x258
/* 80566E90  40 81 00 10 */	ble lbl_80566EA0
/* 80566E94  3B C0 02 58 */	li r30, 0x258
/* 80566E98  48 00 00 08 */	b lbl_80566EA0
lbl_80566E9C:
/* 80566E9C  3B C0 00 00 */	li r30, 0
lbl_80566EA0:
/* 80566EA0  38 60 00 04 */	li r3, 4
/* 80566EA4  38 80 00 00 */	li r4, 0
/* 80566EA8  4B E3 15 D5 */	bl mDemo_Get_OrderValue
/* 80566EAC  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80566EB0  40 82 00 48 */	bne lbl_80566EF8
/* 80566EB4  2C 1E 02 58 */	cmpwi r30, 0x258
/* 80566EB8  41 80 00 24 */	blt lbl_80566EDC
/* 80566EBC  80 1F 07 14 */	lwz r0, 0x714(r31)
/* 80566EC0  2C 00 00 76 */	cmpwi r0, 0x76
/* 80566EC4  41 82 00 34 */	beq lbl_80566EF8
/* 80566EC8  38 60 00 04 */	li r3, 4
/* 80566ECC  38 80 00 00 */	li r4, 0
/* 80566ED0  38 A0 00 FF */	li r5, 0xff
/* 80566ED4  4B E3 15 65 */	bl mDemo_Set_OrderValue
/* 80566ED8  48 00 00 20 */	b lbl_80566EF8
lbl_80566EDC:
/* 80566EDC  80 1F 07 14 */	lwz r0, 0x714(r31)
/* 80566EE0  2C 00 00 76 */	cmpwi r0, 0x76
/* 80566EE4  40 82 00 14 */	bne lbl_80566EF8
/* 80566EE8  38 60 00 04 */	li r3, 4
/* 80566EEC  38 80 00 00 */	li r4, 0
/* 80566EF0  38 A0 00 FD */	li r5, 0xfd
/* 80566EF4  4B E3 15 45 */	bl mDemo_Set_OrderValue
lbl_80566EF8:
/* 80566EF8  93 DF 09 A4 */	stw r30, 0x9a4(r31)
lbl_80566EFC:
/* 80566EFC  7F 83 E3 78 */	mr r3, r28
/* 80566F00  39 61 00 20 */	addi r11, r1, 0x20
/* 80566F04  4B B3 40 19 */	bl func_8009AF1C
/* 80566F08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80566F0C  7C 08 03 A6 */	mtlr r0
/* 80566F10  38 21 00 20 */	addi r1, r1, 0x20
/* 80566F14  4E 80 00 20 */	blr 
