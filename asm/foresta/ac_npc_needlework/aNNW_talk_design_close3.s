lbl_80562A18:
/* 80562A18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80562A1C  7C 08 02 A6 */	mflr r0
/* 80562A20  90 01 00 24 */	stw r0, 0x24(r1)
/* 80562A24  39 61 00 20 */	addi r11, r1, 0x20
/* 80562A28  4B B3 84 AD */	bl func_8009AED4
/* 80562A2C  7C 7D 1B 78 */	mr r29, r3
/* 80562A30  7C 9E 23 78 */	mr r30, r4
/* 80562A34  4B E5 CC 75 */	bl func_803BF6A8
/* 80562A38  88 1E 1F 4E */	lbz r0, 0x1f4e(r30)
/* 80562A3C  7C 7E 1B 78 */	mr r30, r3
/* 80562A40  28 00 00 00 */	cmplwi r0, 0
/* 80562A44  40 82 00 8C */	bne lbl_80562AD0
/* 80562A48  38 60 01 5E */	li r3, 0x15e
/* 80562A4C  4B E8 86 D5 */	bl mSP_get_sell_price
/* 80562A50  88 1D 09 AE */	lbz r0, 0x9ae(r29)
/* 80562A54  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80562A58  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 80562A5C  38 9D 09 9C */	addi r4, r29, 0x99c
/* 80562A60  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 80562A64  1C 60 02 20 */	mulli r3, r0, 0x220
/* 80562A68  3F E5 00 02 */	addis r31, r5, 2
/* 80562A6C  80 1F 61 3C */	lwz r0, 0x613c(r31)
/* 80562A70  38 63 12 40 */	addi r3, r3, 0x1240
/* 80562A74  7C 60 1A 14 */	add r3, r0, r3
/* 80562A78  4B E6 72 7D */	bl mNW_OverWriteOriginalName
/* 80562A7C  88 9D 09 AE */	lbz r4, 0x9ae(r29)
/* 80562A80  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 80562A84  38 84 01 00 */	addi r4, r4, 0x100
/* 80562A88  A0 03 10 88 */	lhz r0, 0x1088(r3)
/* 80562A8C  54 83 04 3E */	clrlwi r3, r4, 0x10
/* 80562A90  7C 03 00 40 */	cmplw r3, r0
/* 80562A94  40 82 00 14 */	bne lbl_80562AA8
/* 80562A98  7F A3 EB 78 */	mr r3, r29
/* 80562A9C  38 80 00 31 */	li r4, 0x31
/* 80562AA0  48 00 19 E9 */	bl aNNW_change_talk_proc
/* 80562AA4  48 00 00 2C */	b lbl_80562AD0
lbl_80562AA8:
/* 80562AA8  7F C3 F3 78 */	mr r3, r30
/* 80562AAC  38 80 2F EB */	li r4, 0x2feb
/* 80562AB0  4B E5 DE E9 */	bl mMsg_ChangeMsgData
/* 80562AB4  7F C3 F3 78 */	mr r3, r30
/* 80562AB8  4B E5 E2 71 */	bl mMsg_Set_ForceNext
/* 80562ABC  7F C3 F3 78 */	mr r3, r30
/* 80562AC0  4B E5 D0 C9 */	bl mMsg_request_main_appear_wait_type1
/* 80562AC4  7F A3 EB 78 */	mr r3, r29
/* 80562AC8  38 80 00 01 */	li r4, 1
/* 80562ACC  48 00 19 BD */	bl aNNW_change_talk_proc
lbl_80562AD0:
/* 80562AD0  39 61 00 20 */	addi r11, r1, 0x20
/* 80562AD4  4B B3 84 4D */	bl func_8009AF20
/* 80562AD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80562ADC  7C 08 03 A6 */	mtlr r0
/* 80562AE0  38 21 00 20 */	addi r1, r1, 0x20
/* 80562AE4  4E 80 00 20 */	blr 
