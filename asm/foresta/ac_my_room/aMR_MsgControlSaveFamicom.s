lbl_8047691C:
/* 8047691C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80476920  7C 08 02 A6 */	mflr r0
/* 80476924  90 01 00 14 */	stw r0, 0x14(r1)
/* 80476928  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8047692C  7C 7F 1B 78 */	mr r31, r3
/* 80476930  93 C1 00 08 */	stw r30, 8(r1)
/* 80476934  A8 63 04 A4 */	lha r3, 0x4a4(r3)
/* 80476938  2C 03 00 00 */	cmpwi r3, 0
/* 8047693C  40 81 00 10 */	ble lbl_8047694C
/* 80476940  38 03 FF FF */	addi r0, r3, -1
/* 80476944  B0 1F 04 A4 */	sth r0, 0x4a4(r31)
/* 80476948  48 00 00 0C */	b lbl_80476954
lbl_8047694C:
/* 8047694C  38 00 00 00 */	li r0, 0
/* 80476950  B0 1F 04 A4 */	sth r0, 0x4a4(r31)
lbl_80476954:
/* 80476954  A8 1F 04 A4 */	lha r0, 0x4a4(r31)
/* 80476958  2C 00 00 00 */	cmpwi r0, 0
/* 8047695C  40 82 02 00 */	bne lbl_80476B5C
/* 80476960  4B F4 8D 49 */	bl func_803BF6A8
/* 80476964  4B F4 A3 35 */	bl mMsg_Check_MainNormalContinue
/* 80476968  2C 03 00 00 */	cmpwi r3, 0
/* 8047696C  41 82 01 F0 */	beq lbl_80476B5C
/* 80476970  A8 1F 04 A6 */	lha r0, 0x4a6(r31)
/* 80476974  2C 00 00 00 */	cmpwi r0, 0
/* 80476978  40 82 00 10 */	bne lbl_80476988
/* 8047697C  4B BC F9 55 */	bl famicom_internal_data_save
/* 80476980  7C 7E 1B 78 */	mr r30, r3
/* 80476984  48 00 00 0C */	b lbl_80476990
lbl_80476988:
/* 80476988  4B BC FB 25 */	bl famicom_external_data_save
/* 8047698C  7C 7E 1B 78 */	mr r30, r3
lbl_80476990:
/* 80476990  4B FF D6 9D */	bl func_8047402C
/* 80476994  28 1E 00 07 */	cmplwi r30, 7
/* 80476998  41 81 01 78 */	bgt lbl_80476B10
/* 8047699C  3C 60 80 69 */	lis r3, lit_2202@ha /* 0x806898A0@ha */
/* 804769A0  57 C0 10 3A */	slwi r0, r30, 2
/* 804769A4  38 63 98 A0 */	addi r3, r3, lit_2202@l /* 0x806898A0@l */
/* 804769A8  7C 03 00 2E */	lwzx r0, r3, r0
/* 804769AC  7C 09 03 A6 */	mtctr r0
/* 804769B0  4E 80 04 20 */	bctr 
lbl_804769B4:
/* 804769B4  38 00 00 00 */	li r0, 0
/* 804769B8  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 804769BC  4B F4 8C ED */	bl func_803BF6A8
/* 804769C0  4B F4 A3 8D */	bl mMsg_Unset_LockContinue
/* 804769C4  4B F4 8C E5 */	bl func_803BF6A8
/* 804769C8  4B F4 A3 61 */	bl mMsg_Set_ForceNext
/* 804769CC  4B F4 8C DD */	bl func_803BF6A8
/* 804769D0  4B F4 8F 31 */	bl mMsg_request_main_disappear
/* 804769D4  48 00 01 7C */	b lbl_80476B50
lbl_804769D8:
/* 804769D8  38 00 00 00 */	li r0, 0
/* 804769DC  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 804769E0  4B F4 8C C9 */	bl func_803BF6A8
/* 804769E4  38 80 2B 6C */	li r4, 0x2b6c
/* 804769E8  4B F4 95 DD */	bl mMsg_Set_continue_msg_num
/* 804769EC  4B F4 8C BD */	bl func_803BF6A8
/* 804769F0  4B F4 A3 5D */	bl mMsg_Unset_LockContinue
/* 804769F4  4B F4 8C B5 */	bl func_803BF6A8
/* 804769F8  4B F4 A3 31 */	bl mMsg_Set_ForceNext
/* 804769FC  48 00 01 54 */	b lbl_80476B50
lbl_80476A00:
/* 80476A00  38 00 00 00 */	li r0, 0
/* 80476A04  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 80476A08  4B F4 8C A1 */	bl func_803BF6A8
/* 80476A0C  38 80 2B 6D */	li r4, 0x2b6d
/* 80476A10  4B F4 95 B5 */	bl mMsg_Set_continue_msg_num
/* 80476A14  4B F4 8C 95 */	bl func_803BF6A8
/* 80476A18  4B F4 A3 35 */	bl mMsg_Unset_LockContinue
/* 80476A1C  4B F4 8C 8D */	bl func_803BF6A8
/* 80476A20  4B F4 A3 09 */	bl mMsg_Set_ForceNext
/* 80476A24  48 00 01 2C */	b lbl_80476B50
lbl_80476A28:
/* 80476A28  38 00 00 00 */	li r0, 0
/* 80476A2C  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 80476A30  4B F4 8C 79 */	bl func_803BF6A8
/* 80476A34  38 80 2B 6E */	li r4, 0x2b6e
/* 80476A38  4B F4 95 8D */	bl mMsg_Set_continue_msg_num
/* 80476A3C  4B F4 8C 6D */	bl func_803BF6A8
/* 80476A40  4B F4 A3 0D */	bl mMsg_Unset_LockContinue
/* 80476A44  4B F4 8C 65 */	bl func_803BF6A8
/* 80476A48  4B F4 A2 E1 */	bl mMsg_Set_ForceNext
/* 80476A4C  48 00 01 04 */	b lbl_80476B50
lbl_80476A50:
/* 80476A50  38 00 00 00 */	li r0, 0
/* 80476A54  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 80476A58  4B F4 8C 51 */	bl func_803BF6A8
/* 80476A5C  38 80 2B 6F */	li r4, 0x2b6f
/* 80476A60  4B F4 95 65 */	bl mMsg_Set_continue_msg_num
/* 80476A64  4B F4 8C 45 */	bl func_803BF6A8
/* 80476A68  4B F4 A2 E5 */	bl mMsg_Unset_LockContinue
/* 80476A6C  4B F4 8C 3D */	bl func_803BF6A8
/* 80476A70  4B F4 A2 B9 */	bl mMsg_Set_ForceNext
/* 80476A74  48 00 00 DC */	b lbl_80476B50
lbl_80476A78:
/* 80476A78  38 00 00 00 */	li r0, 0
/* 80476A7C  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 80476A80  4B F4 8C 29 */	bl func_803BF6A8
/* 80476A84  38 80 2B 70 */	li r4, 0x2b70
/* 80476A88  4B F4 95 3D */	bl mMsg_Set_continue_msg_num
/* 80476A8C  4B F4 8C 1D */	bl func_803BF6A8
/* 80476A90  4B F4 A2 BD */	bl mMsg_Unset_LockContinue
/* 80476A94  4B F4 8C 15 */	bl func_803BF6A8
/* 80476A98  4B F4 A2 91 */	bl mMsg_Set_ForceNext
/* 80476A9C  48 00 00 B4 */	b lbl_80476B50
lbl_80476AA0:
/* 80476AA0  38 00 00 00 */	li r0, 0
/* 80476AA4  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 80476AA8  4B F4 8C 01 */	bl func_803BF6A8
/* 80476AAC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80476AB0  38 80 00 00 */	li r4, 0
/* 80476AB4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80476AB8  38 C0 00 08 */	li r6, 8
/* 80476ABC  3C A5 00 01 */	addis r5, r5, 1
/* 80476AC0  38 A5 91 20 */	addi r5, r5, -28384
/* 80476AC4  4B F4 91 91 */	bl mMsg_Set_free_str
/* 80476AC8  4B F4 8B E1 */	bl func_803BF6A8
/* 80476ACC  38 80 2B 71 */	li r4, 0x2b71
/* 80476AD0  4B F4 94 F5 */	bl mMsg_Set_continue_msg_num
/* 80476AD4  4B F4 8B D5 */	bl func_803BF6A8
/* 80476AD8  4B F4 A2 75 */	bl mMsg_Unset_LockContinue
/* 80476ADC  4B F4 8B CD */	bl func_803BF6A8
/* 80476AE0  4B F4 A2 49 */	bl mMsg_Set_ForceNext
/* 80476AE4  48 00 00 6C */	b lbl_80476B50
lbl_80476AE8:
/* 80476AE8  38 00 00 00 */	li r0, 0
/* 80476AEC  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 80476AF0  4B F4 8B B9 */	bl func_803BF6A8
/* 80476AF4  38 80 3B 56 */	li r4, 0x3b56
/* 80476AF8  4B F4 94 CD */	bl mMsg_Set_continue_msg_num
/* 80476AFC  4B F4 8B AD */	bl func_803BF6A8
/* 80476B00  4B F4 A2 4D */	bl mMsg_Unset_LockContinue
/* 80476B04  4B F4 8B A5 */	bl func_803BF6A8
/* 80476B08  4B F4 A2 21 */	bl mMsg_Set_ForceNext
/* 80476B0C  48 00 00 44 */	b lbl_80476B50
lbl_80476B10:
/* 80476B10  38 00 00 00 */	li r0, 0
/* 80476B14  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 80476B18  A8 1F 04 A6 */	lha r0, 0x4a6(r31)
/* 80476B1C  2C 00 00 01 */	cmpwi r0, 1
/* 80476B20  40 82 00 14 */	bne lbl_80476B34
/* 80476B24  4B F4 8B 85 */	bl func_803BF6A8
/* 80476B28  38 80 30 72 */	li r4, 0x3072
/* 80476B2C  4B F4 94 99 */	bl mMsg_Set_continue_msg_num
/* 80476B30  48 00 00 10 */	b lbl_80476B40
lbl_80476B34:
/* 80476B34  4B F4 8B 75 */	bl func_803BF6A8
/* 80476B38  38 80 30 72 */	li r4, 0x3072
/* 80476B3C  4B F4 94 89 */	bl mMsg_Set_continue_msg_num
lbl_80476B40:
/* 80476B40  4B F4 8B 69 */	bl func_803BF6A8
/* 80476B44  4B F4 A2 09 */	bl mMsg_Unset_LockContinue
/* 80476B48  4B F4 8B 61 */	bl func_803BF6A8
/* 80476B4C  4B F4 A1 DD */	bl mMsg_Set_ForceNext
lbl_80476B50:
/* 80476B50  38 00 00 00 */	li r0, 0
/* 80476B54  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 80476B58  90 1F 04 F8 */	stw r0, 0x4f8(r31)
lbl_80476B5C:
/* 80476B5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80476B60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80476B64  83 C1 00 08 */	lwz r30, 8(r1)
/* 80476B68  7C 08 03 A6 */	mtlr r0
/* 80476B6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80476B70  4E 80 00 20 */	blr 
