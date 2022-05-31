lbl_805559B4:
/* 805559B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805559B8  7C 08 02 A6 */	mflr r0
/* 805559BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805559C0  39 61 00 20 */	addi r11, r1, 0x20
/* 805559C4  4B B4 55 09 */	bl func_8009AECC
/* 805559C8  7C 7E 1B 78 */	mr r30, r3
/* 805559CC  7C 9F 23 78 */	mr r31, r4
/* 805559D0  38 60 00 04 */	li r3, 4
/* 805559D4  38 80 00 09 */	li r4, 9
/* 805559D8  4B E4 2A A5 */	bl mDemo_Get_OrderValue
/* 805559DC  54 7D 04 3F */	clrlwi. r29, r3, 0x10
/* 805559E0  41 82 01 28 */	beq lbl_80555B08
/* 805559E4  4B E6 9C C5 */	bl func_803BF6A8
/* 805559E8  7C 7C 1B 78 */	mr r28, r3
/* 805559EC  4B E6 B2 AD */	bl mMsg_Check_MainNormalContinue
/* 805559F0  2C 03 00 01 */	cmpwi r3, 1
/* 805559F4  40 82 01 14 */	bne lbl_80555B08
/* 805559F8  3B 60 FF FF */	li r27, -1
/* 805559FC  4B E2 DB 45 */	bl func_80383540
/* 80555A00  4B E2 E1 6D */	bl mChoice_Get_ChoseNum
/* 80555A04  2C 03 00 01 */	cmpwi r3, 1
/* 80555A08  41 82 00 7C */	beq lbl_80555A84
/* 80555A0C  40 80 00 C8 */	bge lbl_80555AD4
/* 80555A10  2C 03 00 00 */	cmpwi r3, 0
/* 80555A14  40 80 00 08 */	bge lbl_80555A1C
/* 80555A18  48 00 00 BC */	b lbl_80555AD4
lbl_80555A1C:
/* 80555A1C  2C 1D 00 02 */	cmpwi r29, 2
/* 80555A20  41 82 00 30 */	beq lbl_80555A50
/* 80555A24  40 80 00 44 */	bge lbl_80555A68
/* 80555A28  2C 1D 00 01 */	cmpwi r29, 1
/* 80555A2C  40 80 00 08 */	bge lbl_80555A34
/* 80555A30  48 00 00 38 */	b lbl_80555A68
lbl_80555A34:
/* 80555A34  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80555A38  38 00 00 00 */	li r0, 0
/* 80555A3C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80555A40  3C 63 00 02 */	addis r3, r3, 2
/* 80555A44  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80555A48  98 03 00 14 */	stb r0, 0x14(r3)
/* 80555A4C  48 00 00 1C */	b lbl_80555A68
lbl_80555A50:
/* 80555A50  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80555A54  38 00 00 01 */	li r0, 1
/* 80555A58  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80555A5C  3C 63 00 02 */	addis r3, r3, 2
/* 80555A60  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80555A64  98 03 00 14 */	stb r0, 0x14(r3)
lbl_80555A68:
/* 80555A68  7F 83 E3 78 */	mr r3, r28
/* 80555A6C  3B 60 00 00 */	li r27, 0
/* 80555A70  38 80 2A D9 */	li r4, 0x2ad9
/* 80555A74  4B E6 A5 51 */	bl mMsg_Set_continue_msg_num
/* 80555A78  7F 83 E3 78 */	mr r3, r28
/* 80555A7C  4B E6 B2 AD */	bl mMsg_Set_ForceNext
/* 80555A80  48 00 00 54 */	b lbl_80555AD4
lbl_80555A84:
/* 80555A84  2C 1D 00 02 */	cmpwi r29, 2
/* 80555A88  41 82 00 30 */	beq lbl_80555AB8
/* 80555A8C  40 80 00 44 */	bge lbl_80555AD0
/* 80555A90  2C 1D 00 01 */	cmpwi r29, 1
/* 80555A94  40 80 00 08 */	bge lbl_80555A9C
/* 80555A98  48 00 00 38 */	b lbl_80555AD0
lbl_80555A9C:
/* 80555A9C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80555AA0  38 00 00 01 */	li r0, 1
/* 80555AA4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80555AA8  3C 63 00 02 */	addis r3, r3, 2
/* 80555AAC  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80555AB0  98 03 00 14 */	stb r0, 0x14(r3)
/* 80555AB4  48 00 00 1C */	b lbl_80555AD0
lbl_80555AB8:
/* 80555AB8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80555ABC  38 00 00 00 */	li r0, 0
/* 80555AC0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80555AC4  3C 63 00 02 */	addis r3, r3, 2
/* 80555AC8  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80555ACC  98 03 00 14 */	stb r0, 0x14(r3)
lbl_80555AD0:
/* 80555AD0  3B 60 00 01 */	li r27, 1
lbl_80555AD4:
/* 80555AD4  2C 1B FF FF */	cmpwi r27, -1
/* 80555AD8  41 82 00 30 */	beq lbl_80555B08
/* 80555ADC  3C 60 80 6A */	lis r3, next_act_idx_738@ha /* 0x806A65E8@ha */
/* 80555AE0  57 60 10 3A */	slwi r0, r27, 2
/* 80555AE4  38 83 65 E8 */	addi r4, r3, next_act_idx_738@l /* 0x806A65E8@l */
/* 80555AE8  7F C3 F3 78 */	mr r3, r30
/* 80555AEC  7C A4 00 2E */	lwzx r5, r4, r0
/* 80555AF0  7F E4 FB 78 */	mr r4, r31
/* 80555AF4  48 00 0A 29 */	bl aNG2_setupAction
/* 80555AF8  38 60 00 04 */	li r3, 4
/* 80555AFC  38 80 00 09 */	li r4, 9
/* 80555B00  38 A0 00 00 */	li r5, 0
/* 80555B04  4B E4 29 35 */	bl mDemo_Set_OrderValue
lbl_80555B08:
/* 80555B08  39 61 00 20 */	addi r11, r1, 0x20
/* 80555B0C  4B B4 54 0D */	bl func_8009AF18
/* 80555B10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80555B14  7C 08 03 A6 */	mtlr r0
/* 80555B18  38 21 00 20 */	addi r1, r1, 0x20
/* 80555B1C  4E 80 00 20 */	blr 
