lbl_80583C34:
/* 80583C34  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80583C38  7C 08 02 A6 */	mflr r0
/* 80583C3C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80583C40  39 61 00 40 */	addi r11, r1, 0x40
/* 80583C44  4B B1 72 75 */	bl func_8009AEB8
/* 80583C48  3C A0 80 6C */	lis r5, data_806C0C18@ha /* 0x806C0C18@ha */
/* 80583C4C  7C 78 1B 78 */	mr r24, r3
/* 80583C50  7C 99 23 78 */	mr r25, r4
/* 80583C54  3B E5 0C 18 */	addi r31, r5, data_806C0C18@l /* 0x806C0C18@l */
/* 80583C58  4B E3 BA 51 */	bl func_803BF6A8
/* 80583C5C  7C 60 1B 78 */	mr r0, r3
/* 80583C60  38 60 00 1B */	li r3, 0x1b
/* 80583C64  7C 1D 03 78 */	mr r29, r0
/* 80583C68  4B FF E1 21 */	bl aNSC_get_msg_no
/* 80583C6C  7C 7A 1B 78 */	mr r26, r3
/* 80583C70  38 60 00 D6 */	li r3, 0xd6
/* 80583C74  4B FF E1 15 */	bl aNSC_get_msg_no
/* 80583C78  7C 77 1B 78 */	mr r23, r3
/* 80583C7C  38 60 00 D8 */	li r3, 0xd8
/* 80583C80  4B FF E1 09 */	bl aNSC_get_msg_no
/* 80583C84  7C 76 1B 78 */	mr r22, r3
/* 80583C88  7F A3 EB 78 */	mr r3, r29
/* 80583C8C  4B E3 C3 41 */	bl mMsg_Get_msg_num
/* 80583C90  7C 03 D0 00 */	cmpw r3, r26
/* 80583C94  41 82 00 14 */	beq lbl_80583CA8
/* 80583C98  7C 03 B8 00 */	cmpw r3, r23
/* 80583C9C  41 82 00 0C */	beq lbl_80583CA8
/* 80583CA0  7C 03 B0 00 */	cmpw r3, r22
/* 80583CA4  40 82 01 F8 */	bne lbl_80583E9C
lbl_80583CA8:
/* 80583CA8  7F A3 EB 78 */	mr r3, r29
/* 80583CAC  4B E3 CF ED */	bl mMsg_Check_MainNormalContinue
/* 80583CB0  2C 03 00 00 */	cmpwi r3, 0
/* 80583CB4  41 82 01 E8 */	beq lbl_80583E9C
/* 80583CB8  3B 80 FF FF */	li r28, -1
/* 80583CBC  4B DF F8 85 */	bl func_80383540
/* 80583CC0  4B DF FE AD */	bl mChoice_Get_ChoseNum
/* 80583CC4  2C 03 00 01 */	cmpwi r3, 1
/* 80583CC8  41 82 01 8C */	beq lbl_80583E54
/* 80583CCC  40 80 01 8C */	bge lbl_80583E58
/* 80583CD0  2C 03 00 00 */	cmpwi r3, 0
/* 80583CD4  40 80 00 08 */	bge lbl_80583CDC
/* 80583CD8  48 00 01 80 */	b lbl_80583E58
lbl_80583CDC:
/* 80583CDC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80583CE0  3B 80 00 01 */	li r28, 1
/* 80583CE4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80583CE8  3F C3 00 02 */	addis r30, r3, 2
/* 80583CEC  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 80583CF0  80 63 00 8C */	lwz r3, 0x8c(r3)
/* 80583CF4  90 61 00 08 */	stw r3, 8(r1)
/* 80583CF8  80 18 09 A8 */	lwz r0, 0x9a8(r24)
/* 80583CFC  83 78 09 B0 */	lwz r27, 0x9b0(r24)
/* 80583D00  83 59 1F 60 */	lwz r26, 0x1f60(r25)
/* 80583D04  7C 63 02 14 */	add r3, r3, r0
/* 80583D08  7F 64 DB 78 */	mr r4, r27
/* 80583D0C  90 61 00 08 */	stw r3, 8(r1)
/* 80583D10  4B FF DB 4D */	bl aNSC_check_money_overflow
/* 80583D14  2C 03 00 00 */	cmpwi r3, 0
/* 80583D18  40 82 00 0C */	bne lbl_80583D24
/* 80583D1C  3B 80 00 03 */	li r28, 3
/* 80583D20  48 00 01 38 */	b lbl_80583E58
lbl_80583D24:
/* 80583D24  88 1A 00 02 */	lbz r0, 2(r26)
/* 80583D28  80 9E 61 3C */	lwz r4, 0x613c(r30)
/* 80583D2C  54 03 08 3C */	slwi r3, r0, 1
/* 80583D30  80 18 09 A8 */	lwz r0, 0x9a8(r24)
/* 80583D34  7C 64 1A 14 */	add r3, r4, r3
/* 80583D38  A2 C3 00 68 */	lhz r22, 0x68(r3)
/* 80583D3C  54 03 F8 7E */	srwi r3, r0, 1
/* 80583D40  4B E6 5B 1D */	bl mSP_PlusSales
/* 80583D44  28 1B 00 01 */	cmplwi r27, 1
/* 80583D48  40 82 00 20 */	bne lbl_80583D68
/* 80583D4C  80 D8 09 A8 */	lwz r6, 0x9a8(r24)
/* 80583D50  7E C4 B3 78 */	mr r4, r22
/* 80583D54  7F 45 D3 78 */	mr r5, r26
/* 80583D58  38 61 00 08 */	addi r3, r1, 8
/* 80583D5C  4B FF E9 A5 */	bl aNSC_buy_item_only_one
/* 80583D60  7C 7C 1B 78 */	mr r28, r3
/* 80583D64  48 00 00 E0 */	b lbl_80583E44
lbl_80583D68:
/* 80583D68  A8 19 1F 66 */	lha r0, 0x1f66(r25)
/* 80583D6C  2C 00 00 01 */	cmpwi r0, 1
/* 80583D70  40 81 00 98 */	ble lbl_80583E08
/* 80583D74  3C 60 00 02 */	lis r3, 0x0002 /* 0x0001869F@ha */
/* 80583D78  3A FF 0B 70 */	addi r23, r31, 0xb70
/* 80583D7C  3A C3 86 9F */	addi r22, r3, 0x869F /* 0x0001869F@l */
/* 80583D80  48 00 00 48 */	b lbl_80583DC8
lbl_80583D84:
/* 80583D84  80 61 00 08 */	lwz r3, 8(r1)
/* 80583D88  7C 03 B0 40 */	cmplw r3, r22
/* 80583D8C  41 80 00 18 */	blt lbl_80583DA4
/* 80583D90  38 03 8A D0 */	addi r0, r3, -30000
/* 80583D94  38 60 00 00 */	li r3, 0
/* 80583D98  90 01 00 08 */	stw r0, 8(r1)
/* 80583D9C  3B 80 00 00 */	li r28, 0
/* 80583DA0  48 00 00 08 */	b lbl_80583DA8
lbl_80583DA4:
/* 80583DA4  38 60 00 01 */	li r3, 1
lbl_80583DA8:
/* 80583DA8  54 60 08 3C */	slwi r0, r3, 1
/* 80583DAC  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 80583DB0  88 9A 00 02 */	lbz r4, 2(r26)
/* 80583DB4  38 C0 00 00 */	li r6, 0
/* 80583DB8  7C B7 02 2E */	lhzx r5, r23, r0
/* 80583DBC  4B E5 D0 6D */	bl mPr_SetPossessionItem
/* 80583DC0  3B 5A 00 04 */	addi r26, r26, 4
/* 80583DC4  3B 7B FF FF */	addi r27, r27, -1
lbl_80583DC8:
/* 80583DC8  28 1B 00 00 */	cmplwi r27, 0
/* 80583DCC  40 82 FF B8 */	bne lbl_80583D84
/* 80583DD0  3C 60 00 02 */	lis r3, 0x0002 /* 0x0001869F@ha */
/* 80583DD4  3B 43 86 9F */	addi r26, r3, 0x869F /* 0x0001869F@l */
/* 80583DD8  48 00 00 20 */	b lbl_80583DF8
lbl_80583DDC:
/* 80583DDC  80 C1 00 08 */	lwz r6, 8(r1)
/* 80583DE0  38 80 21 02 */	li r4, 0x2102
/* 80583DE4  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 80583DE8  38 A0 00 00 */	li r5, 0
/* 80583DEC  38 06 8A D0 */	addi r0, r6, -30000
/* 80583DF0  90 01 00 08 */	stw r0, 8(r1)
/* 80583DF4  4B E5 D1 15 */	bl mPr_SetFreePossessionItem
lbl_80583DF8:
/* 80583DF8  80 01 00 08 */	lwz r0, 8(r1)
/* 80583DFC  7C 00 D0 40 */	cmplw r0, r26
/* 80583E00  40 80 FF DC */	bge lbl_80583DDC
/* 80583E04  48 00 00 40 */	b lbl_80583E44
lbl_80583E08:
/* 80583E08  28 16 20 00 */	cmplwi r22, 0x2000
/* 80583E0C  41 80 00 24 */	blt lbl_80583E30
/* 80583E10  28 16 20 FF */	cmplwi r22, 0x20ff
/* 80583E14  41 81 00 1C */	bgt lbl_80583E30
/* 80583E18  7E C4 B3 78 */	mr r4, r22
/* 80583E1C  7F 65 DB 78 */	mr r5, r27
/* 80583E20  38 61 00 08 */	addi r3, r1, 8
/* 80583E24  4B FF E7 CD */	bl aNSC_buy_paper
/* 80583E28  7C 7C 1B 78 */	mr r28, r3
/* 80583E2C  48 00 00 18 */	b lbl_80583E44
lbl_80583E30:
/* 80583E30  7E C4 B3 78 */	mr r4, r22
/* 80583E34  7F 65 DB 78 */	mr r5, r27
/* 80583E38  38 61 00 08 */	addi r3, r1, 8
/* 80583E3C  4B FF E6 C5 */	bl aNSC_buy_item_single
/* 80583E40  7C 7C 1B 78 */	mr r28, r3
lbl_80583E44:
/* 80583E44  80 01 00 08 */	lwz r0, 8(r1)
/* 80583E48  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 80583E4C  90 03 00 8C */	stw r0, 0x8c(r3)
/* 80583E50  48 00 00 08 */	b lbl_80583E58
lbl_80583E54:
/* 80583E54  3B 80 00 02 */	li r28, 2
lbl_80583E58:
/* 80583E58  2C 1C FF FF */	cmpwi r28, -1
/* 80583E5C  41 82 00 40 */	beq lbl_80583E9C
/* 80583E60  7F A3 EB 78 */	mr r3, r29
/* 80583E64  4B E3 CE C5 */	bl mMsg_Set_ForceNext
/* 80583E68  57 96 10 3A */	slwi r22, r28, 2
/* 80583E6C  38 7F 0C 44 */	addi r3, r31, 0xc44
/* 80583E70  7C 63 B0 2E */	lwzx r3, r3, r22
/* 80583E74  4B FF DF 15 */	bl aNSC_get_msg_no
/* 80583E78  7C 65 1B 78 */	mr r5, r3
/* 80583E7C  7F A3 EB 78 */	mr r3, r29
/* 80583E80  7F 04 C3 78 */	mr r4, r24
/* 80583E84  4B FF DF 4D */	bl aNSC_Set_continue_msg_num
/* 80583E88  38 9F 0C 54 */	addi r4, r31, 0xc54
/* 80583E8C  7F 03 C3 78 */	mr r3, r24
/* 80583E90  7C A4 B0 2E */	lwzx r5, r4, r22
/* 80583E94  7F 24 CB 78 */	mr r4, r25
/* 80583E98  48 00 21 29 */	bl aNSC_setupAction
lbl_80583E9C:
/* 80583E9C  39 61 00 40 */	addi r11, r1, 0x40
/* 80583EA0  4B B1 70 65 */	bl func_8009AF04
/* 80583EA4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80583EA8  7C 08 03 A6 */	mtlr r0
/* 80583EAC  38 21 00 40 */	addi r1, r1, 0x40
/* 80583EB0  4E 80 00 20 */	blr 
