lbl_80550E4C:
/* 80550E4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80550E50  7C 08 02 A6 */	mflr r0
/* 80550E54  90 01 00 24 */	stw r0, 0x24(r1)
/* 80550E58  39 61 00 20 */	addi r11, r1, 0x20
/* 80550E5C  4B B4 A0 79 */	bl func_8009AED4
/* 80550E60  7C 7D 1B 78 */	mr r29, r3
/* 80550E64  7C 9E 23 78 */	mr r30, r4
/* 80550E68  38 60 00 04 */	li r3, 4
/* 80550E6C  38 80 00 09 */	li r4, 9
/* 80550E70  4B E4 76 0D */	bl mDemo_Get_OrderValue
/* 80550E74  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 80550E78  4B E6 E8 31 */	bl func_803BF6A8
/* 80550E7C  2C 1F 00 00 */	cmpwi r31, 0
/* 80550E80  7C 7F 1B 78 */	mr r31, r3
/* 80550E84  41 82 00 68 */	beq lbl_80550EEC
/* 80550E88  4B E6 FE 11 */	bl mMsg_Check_MainNormalContinue
/* 80550E8C  2C 03 00 00 */	cmpwi r3, 0
/* 80550E90  41 82 00 5C */	beq lbl_80550EEC
/* 80550E94  4B FF C9 F9 */	bl aNSC_set_last_day_str
/* 80550E98  4B B0 BE 5D */	bl fqrand
/* 80550E9C  3C 60 80 65 */	lis r3, lit_1731@ha /* 0x8064952C@ha */
/* 80550EA0  C0 03 95 2C */	lfs f0, lit_1731@l(r3)  /* 0x8064952C@l */
/* 80550EA4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80550EA8  FC 00 00 1E */	fctiwz f0, f0
/* 80550EAC  D8 01 00 08 */	stfd f0, 8(r1)
/* 80550EB0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80550EB4  38 63 00 35 */	addi r3, r3, 0x35
/* 80550EB8  4B FF D7 45 */	bl aNSC_get_msg_no
/* 80550EBC  7C 65 1B 78 */	mr r5, r3
/* 80550EC0  7F E3 FB 78 */	mr r3, r31
/* 80550EC4  7F A4 EB 78 */	mr r4, r29
/* 80550EC8  4B FF D7 7D */	bl aNSC_Set_continue_msg_num
/* 80550ECC  38 60 00 04 */	li r3, 4
/* 80550ED0  38 80 00 09 */	li r4, 9
/* 80550ED4  38 A0 00 00 */	li r5, 0
/* 80550ED8  4B E4 75 61 */	bl mDemo_Set_OrderValue
/* 80550EDC  7F A3 EB 78 */	mr r3, r29
/* 80550EE0  7F C4 F3 78 */	mr r4, r30
/* 80550EE4  38 A0 00 0F */	li r5, 0xf
/* 80550EE8  48 00 19 4D */	bl aNSC_setupAction
lbl_80550EEC:
/* 80550EEC  39 61 00 20 */	addi r11, r1, 0x20
/* 80550EF0  4B B4 A0 31 */	bl func_8009AF20
/* 80550EF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80550EF8  7C 08 03 A6 */	mtlr r0
/* 80550EFC  38 21 00 20 */	addi r1, r1, 0x20
/* 80550F00  4E 80 00 20 */	blr 
