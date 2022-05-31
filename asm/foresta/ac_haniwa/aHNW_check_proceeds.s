lbl_80427E08:
/* 80427E08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80427E0C  7C 08 02 A6 */	mflr r0
/* 80427E10  90 01 00 24 */	stw r0, 0x24(r1)
/* 80427E14  39 61 00 20 */	addi r11, r1, 0x20
/* 80427E18  4B C7 30 B9 */	bl func_8009AED0
/* 80427E1C  7C 7C 1B 78 */	mr r28, r3
/* 80427E20  7C 9D 23 78 */	mr r29, r4
/* 80427E24  38 60 00 04 */	li r3, 4
/* 80427E28  38 80 00 09 */	li r4, 9
/* 80427E2C  4B F7 06 51 */	bl mDemo_Get_OrderValue
/* 80427E30  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80427E34  41 82 00 84 */	beq lbl_80427EB8
/* 80427E38  88 9C 02 83 */	lbz r4, 0x283(r28)
/* 80427E3C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80427E40  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 80427E44  1C 64 26 B0 */	mulli r3, r4, 0x26b0
/* 80427E48  7C 60 1A 14 */	add r3, r0, r3
/* 80427E4C  3F E3 00 01 */	addis r31, r3, 1
/* 80427E50  3B FF C2 BC */	addi r31, r31, -15684
/* 80427E54  7F E3 FB 78 */	mr r3, r31
/* 80427E58  4B FF FB 05 */	bl aHNW_check_handOver_proceeds
/* 80427E5C  2C 03 00 01 */	cmpwi r3, 1
/* 80427E60  40 82 00 14 */	bne lbl_80427E74
/* 80427E64  38 00 00 00 */	li r0, 0
/* 80427E68  3B C0 00 00 */	li r30, 0
/* 80427E6C  90 1F 00 A0 */	stw r0, 0xa0(r31)
/* 80427E70  48 00 00 08 */	b lbl_80427E78
lbl_80427E74:
/* 80427E74  3B C0 00 01 */	li r30, 1
lbl_80427E78:
/* 80427E78  4B F9 78 31 */	bl func_803BF6A8
/* 80427E7C  3C 80 80 68 */	lis r4, msg_no_591@ha /* 0x80683C70@ha */
/* 80427E80  57 DF 10 3A */	slwi r31, r30, 2
/* 80427E84  38 84 3C 70 */	addi r4, r4, msg_no_591@l /* 0x80683C70@l */
/* 80427E88  7C 84 F8 2E */	lwzx r4, r4, r31
/* 80427E8C  4B F9 81 39 */	bl mMsg_Set_continue_msg_num
/* 80427E90  3C 80 80 68 */	lis r4, next_act_idx_592@ha /* 0x80683C78@ha */
/* 80427E94  7F 83 E3 78 */	mr r3, r28
/* 80427E98  38 A4 3C 78 */	addi r5, r4, next_act_idx_592@l /* 0x80683C78@l */
/* 80427E9C  7F A4 EB 78 */	mr r4, r29
/* 80427EA0  7C A5 F8 2E */	lwzx r5, r5, r31
/* 80427EA4  48 00 0B B1 */	bl aHNW_setupAction
/* 80427EA8  38 60 00 04 */	li r3, 4
/* 80427EAC  38 80 00 09 */	li r4, 9
/* 80427EB0  38 A0 00 00 */	li r5, 0
/* 80427EB4  4B F7 05 85 */	bl mDemo_Set_OrderValue
lbl_80427EB8:
/* 80427EB8  39 61 00 20 */	addi r11, r1, 0x20
/* 80427EBC  4B C7 30 61 */	bl func_8009AF1C
/* 80427EC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80427EC4  7C 08 03 A6 */	mtlr r0
/* 80427EC8  38 21 00 20 */	addi r1, r1, 0x20
/* 80427ECC  4E 80 00 20 */	blr 
