lbl_805845D8:
/* 805845D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805845DC  7C 08 02 A6 */	mflr r0
/* 805845E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805845E4  39 61 00 20 */	addi r11, r1, 0x20
/* 805845E8  4B B1 68 ED */	bl func_8009AED4
/* 805845EC  7C 7D 1B 78 */	mr r29, r3
/* 805845F0  7C 9E 23 78 */	mr r30, r4
/* 805845F4  38 60 00 04 */	li r3, 4
/* 805845F8  38 80 00 09 */	li r4, 9
/* 805845FC  4B E1 3E 81 */	bl mDemo_Get_OrderValue
/* 80584600  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 80584604  4B E3 B0 A5 */	bl func_803BF6A8
/* 80584608  2C 1F 00 00 */	cmpwi r31, 0
/* 8058460C  7C 7F 1B 78 */	mr r31, r3
/* 80584610  41 82 00 68 */	beq lbl_80584678
/* 80584614  4B E3 C6 85 */	bl mMsg_Check_MainNormalContinue
/* 80584618  2C 03 00 00 */	cmpwi r3, 0
/* 8058461C  41 82 00 5C */	beq lbl_80584678
/* 80584620  4B FF C9 F9 */	bl aNSC_set_last_day_str
/* 80584624  4B AD 86 D1 */	bl fqrand
/* 80584628  3C 60 80 65 */	lis r3, lit_1746@ha /* 0x80649ACC@ha */
/* 8058462C  C0 03 9A CC */	lfs f0, lit_1746@l(r3)  /* 0x80649ACC@l */
/* 80584630  EC 00 00 72 */	fmuls f0, f0, f1
/* 80584634  FC 00 00 1E */	fctiwz f0, f0
/* 80584638  D8 01 00 08 */	stfd f0, 8(r1)
/* 8058463C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80584640  38 63 00 35 */	addi r3, r3, 0x35
/* 80584644  4B FF D7 45 */	bl aNSC_get_msg_no
/* 80584648  7C 65 1B 78 */	mr r5, r3
/* 8058464C  7F E3 FB 78 */	mr r3, r31
/* 80584650  7F A4 EB 78 */	mr r4, r29
/* 80584654  4B FF D7 7D */	bl aNSC_Set_continue_msg_num
/* 80584658  38 60 00 04 */	li r3, 4
/* 8058465C  38 80 00 09 */	li r4, 9
/* 80584660  38 A0 00 00 */	li r5, 0
/* 80584664  4B E1 3D D5 */	bl mDemo_Set_OrderValue
/* 80584668  7F A3 EB 78 */	mr r3, r29
/* 8058466C  7F C4 F3 78 */	mr r4, r30
/* 80584670  38 A0 00 0F */	li r5, 0xf
/* 80584674  48 00 19 4D */	bl aNSC_setupAction
lbl_80584678:
/* 80584678  39 61 00 20 */	addi r11, r1, 0x20
/* 8058467C  4B B1 68 A5 */	bl func_8009AF20
/* 80584680  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80584684  7C 08 03 A6 */	mtlr r0
/* 80584688  38 21 00 20 */	addi r1, r1, 0x20
/* 8058468C  4E 80 00 20 */	blr 
