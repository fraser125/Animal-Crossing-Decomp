lbl_80584BF8:
/* 80584BF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80584BFC  7C 08 02 A6 */	mflr r0
/* 80584C00  90 01 00 24 */	stw r0, 0x24(r1)
/* 80584C04  39 61 00 20 */	addi r11, r1, 0x20
/* 80584C08  4B B1 62 C9 */	bl func_8009AED0
/* 80584C0C  7C 7C 1B 78 */	mr r28, r3
/* 80584C10  7C 9D 23 78 */	mr r29, r4
/* 80584C14  4B E3 AA 95 */	bl func_803BF6A8
/* 80584C18  7C 7E 1B 78 */	mr r30, r3
/* 80584C1C  4B E3 AB 49 */	bl mMsg_Check_not_series_main_wait
/* 80584C20  2C 03 00 01 */	cmpwi r3, 1
/* 80584C24  40 82 00 6C */	bne lbl_80584C90
/* 80584C28  80 7D 1F 60 */	lwz r3, 0x1f60(r29)
/* 80584C2C  38 00 00 00 */	li r0, 0
/* 80584C30  A0 63 00 00 */	lhz r3, 0(r3)
/* 80584C34  28 03 00 00 */	cmplwi r3, 0
/* 80584C38  41 82 00 14 */	beq lbl_80584C4C
/* 80584C3C  B0 7C 09 F4 */	sth r3, 0x9f4(r28)
/* 80584C40  38 80 00 02 */	li r4, 2
/* 80584C44  4B FF C4 E1 */	bl aNSC_set_item_name_str
/* 80584C48  38 00 00 01 */	li r0, 1
lbl_80584C4C:
/* 80584C4C  3C 60 80 6C */	lis r3, msg_no_1834@ha /* 0x806C1910@ha */
/* 80584C50  54 1F 10 3A */	slwi r31, r0, 2
/* 80584C54  38 63 19 10 */	addi r3, r3, msg_no_1834@l /* 0x806C1910@l */
/* 80584C58  7C 63 F8 2E */	lwzx r3, r3, r31
/* 80584C5C  4B FF D1 2D */	bl aNSC_get_msg_no
/* 80584C60  7C 65 1B 78 */	mr r5, r3
/* 80584C64  7F C3 F3 78 */	mr r3, r30
/* 80584C68  7F 84 E3 78 */	mr r4, r28
/* 80584C6C  4B FF D1 A5 */	bl aNSC_ChangeMsgData
/* 80584C70  7F C3 F3 78 */	mr r3, r30
/* 80584C74  4B E3 C0 B5 */	bl mMsg_Set_ForceNext
/* 80584C78  3C 80 80 6C */	lis r4, next_act_idx_1835@ha /* 0x806C1918@ha */
/* 80584C7C  7F 83 E3 78 */	mr r3, r28
/* 80584C80  38 A4 19 18 */	addi r5, r4, next_act_idx_1835@l /* 0x806C1918@l */
/* 80584C84  7F A4 EB 78 */	mr r4, r29
/* 80584C88  7C A5 F8 2E */	lwzx r5, r5, r31
/* 80584C8C  48 00 13 35 */	bl aNSC_setupAction
lbl_80584C90:
/* 80584C90  39 61 00 20 */	addi r11, r1, 0x20
/* 80584C94  4B B1 62 89 */	bl func_8009AF1C
/* 80584C98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80584C9C  7C 08 03 A6 */	mtlr r0
/* 80584CA0  38 21 00 20 */	addi r1, r1, 0x20
/* 80584CA4  4E 80 00 20 */	blr 
