lbl_80488A88:
/* 80488A88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80488A8C  7C 08 02 A6 */	mflr r0
/* 80488A90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80488A94  39 61 00 20 */	addi r11, r1, 0x20
/* 80488A98  4B C1 24 35 */	bl func_8009AECC
/* 80488A9C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80488AA0  7C 7B 1B 78 */	mr r27, r3
/* 80488AA4  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 80488AA8  7C 9C 23 78 */	mr r28, r4
/* 80488AAC  3C 63 00 02 */	addis r3, r3, 2
/* 80488AB0  3B E0 2D E8 */	li r31, 0x2de8
/* 80488AB4  83 C3 61 3C */	lwz r30, 0x613c(r3)
/* 80488AB8  28 1E 00 00 */	cmplwi r30, 0
/* 80488ABC  41 82 00 98 */	beq lbl_80488B54
/* 80488AC0  28 1B 00 00 */	cmplwi r27, 0
/* 80488AC4  41 82 00 90 */	beq lbl_80488B54
/* 80488AC8  3B BB 00 10 */	addi r29, r27, 0x10
/* 80488ACC  7F A3 EB 78 */	mr r3, r29
/* 80488AD0  4B F4 5C B1 */	bl mNpc_GetPresentClothMemoryIdx_rnd
/* 80488AD4  7C 7F 1B 78 */	mr r31, r3
/* 80488AD8  7F C3 F3 78 */	mr r3, r30
/* 80488ADC  7F A4 EB 78 */	mr r4, r29
/* 80488AE0  38 A0 00 07 */	li r5, 7
/* 80488AE4  4B F4 32 95 */	bl mNpc_GetAnimalMemoryIdx
/* 80488AE8  7C 1F 18 00 */	cmpw r31, r3
/* 80488AEC  40 82 00 14 */	bne lbl_80488B00
/* 80488AF0  1C 03 01 38 */	mulli r0, r3, 0x138
/* 80488AF4  38 60 2D FA */	li r3, 0x2dfa
/* 80488AF8  7F BD 02 14 */	add r29, r29, r0
/* 80488AFC  48 00 00 14 */	b lbl_80488B10
lbl_80488B00:
/* 80488B00  1C 1F 01 38 */	mulli r0, r31, 0x138
/* 80488B04  38 60 2D E8 */	li r3, 0x2de8
/* 80488B08  7F BD 02 14 */	add r29, r29, r0
/* 80488B0C  7F BE EB 78 */	mr r30, r29
lbl_80488B10:
/* 80488B10  7F 84 E3 78 */	mr r4, r28
/* 80488B14  38 A0 00 03 */	li r5, 3
/* 80488B18  4B FF F9 3D */	bl aQMgr_get_random_msg_no
/* 80488B1C  7C 7F 1B 78 */	mr r31, r3
/* 80488B20  4B F3 6B 89 */	bl func_803BF6A8
/* 80488B24  7F C5 F3 78 */	mr r5, r30
/* 80488B28  38 80 00 0D */	li r4, 0xd
/* 80488B2C  38 C0 00 08 */	li r6, 8
/* 80488B30  4B F3 71 25 */	bl mMsg_Set_free_str
/* 80488B34  A0 7B 08 EE */	lhz r3, 0x8ee(r27)
/* 80488B38  38 80 00 00 */	li r4, 0
/* 80488B3C  4B F5 AA F9 */	bl mQst_SetItemNameStr
/* 80488B40  88 1D 00 31 */	lbz r0, 0x31(r29)
/* 80488B44  38 60 00 00 */	li r3, 0
/* 80488B48  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 80488B4C  98 1D 00 31 */	stb r0, 0x31(r29)
/* 80488B50  B0 7B 08 EE */	sth r3, 0x8ee(r27)
lbl_80488B54:
/* 80488B54  7F E3 FB 78 */	mr r3, r31
/* 80488B58  39 61 00 20 */	addi r11, r1, 0x20
/* 80488B5C  4B C1 23 BD */	bl func_8009AF18
/* 80488B60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80488B64  7C 08 03 A6 */	mtlr r0
/* 80488B68  38 21 00 20 */	addi r1, r1, 0x20
/* 80488B6C  4E 80 00 20 */	blr 
