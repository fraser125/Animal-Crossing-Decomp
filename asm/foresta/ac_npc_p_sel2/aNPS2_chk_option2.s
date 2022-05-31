lbl_805689A4:
/* 805689A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805689A8  7C 08 02 A6 */	mflr r0
/* 805689AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805689B0  39 61 00 20 */	addi r11, r1, 0x20
/* 805689B4  4B B3 25 1D */	bl func_8009AED0
/* 805689B8  7C 7C 1B 78 */	mr r28, r3
/* 805689BC  7C 9D 23 78 */	mr r29, r4
/* 805689C0  38 60 00 04 */	li r3, 4
/* 805689C4  38 80 00 09 */	li r4, 9
/* 805689C8  4B E2 FA B5 */	bl mDemo_Get_OrderValue
/* 805689CC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 805689D0  2C 00 00 03 */	cmpwi r0, 3
/* 805689D4  40 82 01 30 */	bne lbl_80568B04
/* 805689D8  4B E5 6C D1 */	bl func_803BF6A8
/* 805689DC  4B E5 82 BD */	bl mMsg_Check_MainNormalContinue
/* 805689E0  2C 03 00 01 */	cmpwi r3, 1
/* 805689E4  40 82 01 20 */	bne lbl_80568B04
/* 805689E8  3B C0 FF FF */	li r30, -1
/* 805689EC  38 60 00 04 */	li r3, 4
/* 805689F0  38 80 00 09 */	li r4, 9
/* 805689F4  38 A0 00 00 */	li r5, 0
/* 805689F8  4B E2 FA 41 */	bl mDemo_Set_OrderValue
/* 805689FC  4B E1 AB 45 */	bl func_80383540
/* 80568A00  4B E1 B1 6D */	bl mChoice_Get_ChoseNum
/* 80568A04  2C 03 00 02 */	cmpwi r3, 2
/* 80568A08  41 82 00 D8 */	beq lbl_80568AE0
/* 80568A0C  40 80 00 14 */	bge lbl_80568A20
/* 80568A10  2C 03 00 00 */	cmpwi r3, 0
/* 80568A14  41 82 00 18 */	beq lbl_80568A2C
/* 80568A18  40 80 00 A4 */	bge lbl_80568ABC
/* 80568A1C  48 00 00 D0 */	b lbl_80568AEC
lbl_80568A20:
/* 80568A20  2C 03 00 04 */	cmpwi r3, 4
/* 80568A24  40 80 00 C8 */	bge lbl_80568AEC
/* 80568A28  48 00 00 C0 */	b lbl_80568AE8
lbl_80568A2C:
/* 80568A2C  80 1C 09 A0 */	lwz r0, 0x9a0(r28)
/* 80568A30  2C 00 00 04 */	cmpwi r0, 4
/* 80568A34  41 82 00 34 */	beq lbl_80568A68
/* 80568A38  40 80 00 54 */	bge lbl_80568A8C
/* 80568A3C  2C 00 00 01 */	cmpwi r0, 1
/* 80568A40  41 82 00 08 */	beq lbl_80568A48
/* 80568A44  48 00 00 48 */	b lbl_80568A8C
lbl_80568A48:
/* 80568A48  4B FF F5 05 */	bl aNPS2_get_only_one_pl_no
/* 80568A4C  4B FF E9 81 */	bl func_805673CC
/* 80568A50  7F 83 E3 78 */	mr r3, r28
/* 80568A54  38 80 00 19 */	li r4, 0x19
/* 80568A58  4B FF EA F1 */	bl aNPS2_make_msg
/* 80568A5C  3B C0 00 04 */	li r30, 4
/* 80568A60  7C 7F 1B 78 */	mr r31, r3
/* 80568A64  48 00 00 48 */	b lbl_80568AAC
lbl_80568A68:
/* 80568A68  7F 83 E3 78 */	mr r3, r28
/* 80568A6C  38 80 00 00 */	li r4, 0
/* 80568A70  4B FF F3 85 */	bl aNPS2_set_choice_str2
/* 80568A74  7F 83 E3 78 */	mr r3, r28
/* 80568A78  38 80 00 07 */	li r4, 7
/* 80568A7C  4B FF EA CD */	bl aNPS2_make_msg
/* 80568A80  3B C0 00 0B */	li r30, 0xb
/* 80568A84  7C 7F 1B 78 */	mr r31, r3
/* 80568A88  48 00 00 24 */	b lbl_80568AAC
lbl_80568A8C:
/* 80568A8C  7F 83 E3 78 */	mr r3, r28
/* 80568A90  38 80 00 00 */	li r4, 0
/* 80568A94  4B FF F2 19 */	bl aNPS2_set_choice_str
/* 80568A98  7F 83 E3 78 */	mr r3, r28
/* 80568A9C  38 80 00 07 */	li r4, 7
/* 80568AA0  4B FF EA A9 */	bl aNPS2_make_msg
/* 80568AA4  3B C0 00 09 */	li r30, 9
/* 80568AA8  7C 7F 1B 78 */	mr r31, r3
lbl_80568AAC:
/* 80568AAC  4B E5 6B FD */	bl func_803BF6A8
/* 80568AB0  7F E4 FB 78 */	mr r4, r31
/* 80568AB4  4B E5 75 11 */	bl mMsg_Set_continue_msg_num
/* 80568AB8  48 00 00 34 */	b lbl_80568AEC
lbl_80568ABC:
/* 80568ABC  7F 83 E3 78 */	mr r3, r28
/* 80568AC0  3B C0 00 07 */	li r30, 7
/* 80568AC4  38 80 00 0D */	li r4, 0xd
/* 80568AC8  4B FF EA 81 */	bl aNPS2_make_msg
/* 80568ACC  7C 7F 1B 78 */	mr r31, r3
/* 80568AD0  4B E5 6B D9 */	bl func_803BF6A8
/* 80568AD4  7F E4 FB 78 */	mr r4, r31
/* 80568AD8  4B E5 74 ED */	bl mMsg_Set_continue_msg_num
/* 80568ADC  48 00 00 10 */	b lbl_80568AEC
lbl_80568AE0:
/* 80568AE0  3B C0 00 10 */	li r30, 0x10
/* 80568AE4  48 00 00 08 */	b lbl_80568AEC
lbl_80568AE8:
/* 80568AE8  3B C0 00 04 */	li r30, 4
lbl_80568AEC:
/* 80568AEC  2C 1E FF FF */	cmpwi r30, -1
/* 80568AF0  41 82 00 14 */	beq lbl_80568B04
/* 80568AF4  7F 83 E3 78 */	mr r3, r28
/* 80568AF8  7F A4 EB 78 */	mr r4, r29
/* 80568AFC  7F C5 F3 78 */	mr r5, r30
/* 80568B00  48 00 12 C9 */	bl aNPS2_change_talk_proc
lbl_80568B04:
/* 80568B04  39 61 00 20 */	addi r11, r1, 0x20
/* 80568B08  4B B3 24 15 */	bl func_8009AF1C
/* 80568B0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80568B10  7C 08 03 A6 */	mtlr r0
/* 80568B14  38 21 00 20 */	addi r1, r1, 0x20
/* 80568B18  4E 80 00 20 */	blr 
