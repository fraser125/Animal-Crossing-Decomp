lbl_80548B90:
/* 80548B90  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80548B94  7C 08 02 A6 */	mflr r0
/* 80548B98  90 01 00 44 */	stw r0, 0x44(r1)
/* 80548B9C  39 61 00 40 */	addi r11, r1, 0x40
/* 80548BA0  4B B5 23 19 */	bl func_8009AEB8
/* 80548BA4  3C A0 80 6A */	lis r5, data_806A41D0@ha /* 0x806A41D0@ha */
/* 80548BA8  7C 78 1B 78 */	mr r24, r3
/* 80548BAC  7C 99 23 78 */	mr r25, r4
/* 80548BB0  3B E5 41 D0 */	addi r31, r5, data_806A41D0@l /* 0x806A41D0@l */
/* 80548BB4  4B E7 6A F5 */	bl func_803BF6A8
/* 80548BB8  7C 60 1B 78 */	mr r0, r3
/* 80548BBC  38 60 00 1B */	li r3, 0x1b
/* 80548BC0  7C 1D 03 78 */	mr r29, r0
/* 80548BC4  4B FF E1 21 */	bl aNSC_get_msg_no
/* 80548BC8  7C 7A 1B 78 */	mr r26, r3
/* 80548BCC  38 60 00 D6 */	li r3, 0xd6
/* 80548BD0  4B FF E1 15 */	bl aNSC_get_msg_no
/* 80548BD4  7C 77 1B 78 */	mr r23, r3
/* 80548BD8  38 60 00 D8 */	li r3, 0xd8
/* 80548BDC  4B FF E1 09 */	bl aNSC_get_msg_no
/* 80548BE0  7C 76 1B 78 */	mr r22, r3
/* 80548BE4  7F A3 EB 78 */	mr r3, r29
/* 80548BE8  4B E7 73 E5 */	bl mMsg_Get_msg_num
/* 80548BEC  7C 03 D0 00 */	cmpw r3, r26
/* 80548BF0  41 82 00 14 */	beq lbl_80548C04
/* 80548BF4  7C 03 B8 00 */	cmpw r3, r23
/* 80548BF8  41 82 00 0C */	beq lbl_80548C04
/* 80548BFC  7C 03 B0 00 */	cmpw r3, r22
/* 80548C00  40 82 01 F8 */	bne lbl_80548DF8
lbl_80548C04:
/* 80548C04  7F A3 EB 78 */	mr r3, r29
/* 80548C08  4B E7 80 91 */	bl mMsg_Check_MainNormalContinue
/* 80548C0C  2C 03 00 00 */	cmpwi r3, 0
/* 80548C10  41 82 01 E8 */	beq lbl_80548DF8
/* 80548C14  3B 80 FF FF */	li r28, -1
/* 80548C18  4B E3 A9 29 */	bl func_80383540
/* 80548C1C  4B E3 AF 51 */	bl mChoice_Get_ChoseNum
/* 80548C20  2C 03 00 01 */	cmpwi r3, 1
/* 80548C24  41 82 01 8C */	beq lbl_80548DB0
/* 80548C28  40 80 01 8C */	bge lbl_80548DB4
/* 80548C2C  2C 03 00 00 */	cmpwi r3, 0
/* 80548C30  40 80 00 08 */	bge lbl_80548C38
/* 80548C34  48 00 01 80 */	b lbl_80548DB4
lbl_80548C38:
/* 80548C38  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80548C3C  3B 80 00 01 */	li r28, 1
/* 80548C40  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80548C44  3F C3 00 02 */	addis r30, r3, 2
/* 80548C48  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 80548C4C  80 63 00 8C */	lwz r3, 0x8c(r3)
/* 80548C50  90 61 00 08 */	stw r3, 8(r1)
/* 80548C54  80 18 09 A8 */	lwz r0, 0x9a8(r24)
/* 80548C58  83 78 09 B0 */	lwz r27, 0x9b0(r24)
/* 80548C5C  83 59 1F 60 */	lwz r26, 0x1f60(r25)
/* 80548C60  7C 63 02 14 */	add r3, r3, r0
/* 80548C64  7F 64 DB 78 */	mr r4, r27
/* 80548C68  90 61 00 08 */	stw r3, 8(r1)
/* 80548C6C  4B FF DB 4D */	bl aNSC_check_money_overflow
/* 80548C70  2C 03 00 00 */	cmpwi r3, 0
/* 80548C74  40 82 00 0C */	bne lbl_80548C80
/* 80548C78  3B 80 00 03 */	li r28, 3
/* 80548C7C  48 00 01 38 */	b lbl_80548DB4
lbl_80548C80:
/* 80548C80  88 1A 00 02 */	lbz r0, 2(r26)
/* 80548C84  80 9E 61 3C */	lwz r4, 0x613c(r30)
/* 80548C88  54 03 08 3C */	slwi r3, r0, 1
/* 80548C8C  80 18 09 A8 */	lwz r0, 0x9a8(r24)
/* 80548C90  7C 64 1A 14 */	add r3, r4, r3
/* 80548C94  A2 C3 00 68 */	lhz r22, 0x68(r3)
/* 80548C98  54 03 F8 7E */	srwi r3, r0, 1
/* 80548C9C  4B EA 0B C1 */	bl mSP_PlusSales
/* 80548CA0  28 1B 00 01 */	cmplwi r27, 1
/* 80548CA4  40 82 00 20 */	bne lbl_80548CC4
/* 80548CA8  80 D8 09 A8 */	lwz r6, 0x9a8(r24)
/* 80548CAC  7E C4 B3 78 */	mr r4, r22
/* 80548CB0  7F 45 D3 78 */	mr r5, r26
/* 80548CB4  38 61 00 08 */	addi r3, r1, 8
/* 80548CB8  4B FF E9 A5 */	bl aNSC_buy_item_only_one
/* 80548CBC  7C 7C 1B 78 */	mr r28, r3
/* 80548CC0  48 00 00 E0 */	b lbl_80548DA0
lbl_80548CC4:
/* 80548CC4  A8 19 1F 66 */	lha r0, 0x1f66(r25)
/* 80548CC8  2C 00 00 01 */	cmpwi r0, 1
/* 80548CCC  40 81 00 98 */	ble lbl_80548D64
/* 80548CD0  3C 60 00 02 */	lis r3, 0x0002 /* 0x0001869F@ha */
/* 80548CD4  3A FF 08 9C */	addi r23, r31, 0x89c
/* 80548CD8  3A C3 86 9F */	addi r22, r3, 0x869F /* 0x0001869F@l */
/* 80548CDC  48 00 00 48 */	b lbl_80548D24
lbl_80548CE0:
/* 80548CE0  80 61 00 08 */	lwz r3, 8(r1)
/* 80548CE4  7C 03 B0 40 */	cmplw r3, r22
/* 80548CE8  41 80 00 18 */	blt lbl_80548D00
/* 80548CEC  38 03 8A D0 */	addi r0, r3, -30000
/* 80548CF0  38 60 00 00 */	li r3, 0
/* 80548CF4  90 01 00 08 */	stw r0, 8(r1)
/* 80548CF8  3B 80 00 00 */	li r28, 0
/* 80548CFC  48 00 00 08 */	b lbl_80548D04
lbl_80548D00:
/* 80548D00  38 60 00 01 */	li r3, 1
lbl_80548D04:
/* 80548D04  54 60 08 3C */	slwi r0, r3, 1
/* 80548D08  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 80548D0C  88 9A 00 02 */	lbz r4, 2(r26)
/* 80548D10  38 C0 00 00 */	li r6, 0
/* 80548D14  7C B7 02 2E */	lhzx r5, r23, r0
/* 80548D18  4B E9 81 11 */	bl mPr_SetPossessionItem
/* 80548D1C  3B 5A 00 04 */	addi r26, r26, 4
/* 80548D20  3B 7B FF FF */	addi r27, r27, -1
lbl_80548D24:
/* 80548D24  28 1B 00 00 */	cmplwi r27, 0
/* 80548D28  40 82 FF B8 */	bne lbl_80548CE0
/* 80548D2C  3C 60 00 02 */	lis r3, 0x0002 /* 0x0001869F@ha */
/* 80548D30  3B 43 86 9F */	addi r26, r3, 0x869F /* 0x0001869F@l */
/* 80548D34  48 00 00 20 */	b lbl_80548D54
lbl_80548D38:
/* 80548D38  80 C1 00 08 */	lwz r6, 8(r1)
/* 80548D3C  38 80 21 02 */	li r4, 0x2102
/* 80548D40  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 80548D44  38 A0 00 00 */	li r5, 0
/* 80548D48  38 06 8A D0 */	addi r0, r6, -30000
/* 80548D4C  90 01 00 08 */	stw r0, 8(r1)
/* 80548D50  4B E9 81 B9 */	bl mPr_SetFreePossessionItem
lbl_80548D54:
/* 80548D54  80 01 00 08 */	lwz r0, 8(r1)
/* 80548D58  7C 00 D0 40 */	cmplw r0, r26
/* 80548D5C  40 80 FF DC */	bge lbl_80548D38
/* 80548D60  48 00 00 40 */	b lbl_80548DA0
lbl_80548D64:
/* 80548D64  28 16 20 00 */	cmplwi r22, 0x2000
/* 80548D68  41 80 00 24 */	blt lbl_80548D8C
/* 80548D6C  28 16 20 FF */	cmplwi r22, 0x20ff
/* 80548D70  41 81 00 1C */	bgt lbl_80548D8C
/* 80548D74  7E C4 B3 78 */	mr r4, r22
/* 80548D78  7F 65 DB 78 */	mr r5, r27
/* 80548D7C  38 61 00 08 */	addi r3, r1, 8
/* 80548D80  4B FF E7 CD */	bl aNSC_buy_paper
/* 80548D84  7C 7C 1B 78 */	mr r28, r3
/* 80548D88  48 00 00 18 */	b lbl_80548DA0
lbl_80548D8C:
/* 80548D8C  7E C4 B3 78 */	mr r4, r22
/* 80548D90  7F 65 DB 78 */	mr r5, r27
/* 80548D94  38 61 00 08 */	addi r3, r1, 8
/* 80548D98  4B FF E6 C5 */	bl aNSC_buy_item_single
/* 80548D9C  7C 7C 1B 78 */	mr r28, r3
lbl_80548DA0:
/* 80548DA0  80 01 00 08 */	lwz r0, 8(r1)
/* 80548DA4  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 80548DA8  90 03 00 8C */	stw r0, 0x8c(r3)
/* 80548DAC  48 00 00 08 */	b lbl_80548DB4
lbl_80548DB0:
/* 80548DB0  3B 80 00 02 */	li r28, 2
lbl_80548DB4:
/* 80548DB4  2C 1C FF FF */	cmpwi r28, -1
/* 80548DB8  41 82 00 40 */	beq lbl_80548DF8
/* 80548DBC  7F A3 EB 78 */	mr r3, r29
/* 80548DC0  4B E7 7F 69 */	bl mMsg_Set_ForceNext
/* 80548DC4  57 96 10 3A */	slwi r22, r28, 2
/* 80548DC8  38 7F 09 70 */	addi r3, r31, 0x970
/* 80548DCC  7C 63 B0 2E */	lwzx r3, r3, r22
/* 80548DD0  4B FF DF 15 */	bl aNSC_get_msg_no
/* 80548DD4  7C 65 1B 78 */	mr r5, r3
/* 80548DD8  7F A3 EB 78 */	mr r3, r29
/* 80548DDC  7F 04 C3 78 */	mr r4, r24
/* 80548DE0  4B FF DF 4D */	bl aNSC_Set_continue_msg_num
/* 80548DE4  38 9F 09 80 */	addi r4, r31, 0x980
/* 80548DE8  7F 03 C3 78 */	mr r3, r24
/* 80548DEC  7C A4 B0 2E */	lwzx r5, r4, r22
/* 80548DF0  7F 24 CB 78 */	mr r4, r25
/* 80548DF4  48 00 21 29 */	bl aNSC_setupAction
lbl_80548DF8:
/* 80548DF8  39 61 00 40 */	addi r11, r1, 0x40
/* 80548DFC  4B B5 21 09 */	bl func_8009AF04
/* 80548E00  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80548E04  7C 08 03 A6 */	mtlr r0
/* 80548E08  38 21 00 40 */	addi r1, r1, 0x40
/* 80548E0C  4E 80 00 20 */	blr 
