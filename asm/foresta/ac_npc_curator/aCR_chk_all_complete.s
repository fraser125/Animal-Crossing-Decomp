lbl_8054C964:
/* 8054C964  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054C968  7C 08 02 A6 */	mflr r0
/* 8054C96C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054C970  39 61 00 20 */	addi r11, r1, 0x20
/* 8054C974  4B B4 E5 5D */	bl func_8009AED0
/* 8054C978  7C 7C 1B 78 */	mr r28, r3
/* 8054C97C  7C 9D 23 78 */	mr r29, r4
/* 8054C980  4B E7 2D 29 */	bl func_803BF6A8
/* 8054C984  7C 7F 1B 78 */	mr r31, r3
/* 8054C988  4B E7 36 45 */	bl mMsg_Get_msg_num
/* 8054C98C  80 1C 09 AC */	lwz r0, 0x9ac(r28)
/* 8054C990  7C 00 18 00 */	cmpw r0, r3
/* 8054C994  40 82 00 5C */	bne lbl_8054C9F0
/* 8054C998  7F E3 FB 78 */	mr r3, r31
/* 8054C99C  4B E7 42 FD */	bl mMsg_Check_MainNormalContinue
/* 8054C9A0  2C 03 00 01 */	cmpwi r3, 1
/* 8054C9A4  40 82 00 4C */	bne lbl_8054C9F0
/* 8054C9A8  3B C0 00 00 */	li r30, 0
/* 8054C9AC  4B FF F1 99 */	bl aCR_countDisplayed
/* 8054C9B0  2C 03 00 78 */	cmpwi r3, 0x78
/* 8054C9B4  40 82 00 0C */	bne lbl_8054C9C0
/* 8054C9B8  4B E7 A8 F5 */	bl mMsm_SetCompMail
/* 8054C9BC  3B C0 00 01 */	li r30, 1
lbl_8054C9C0:
/* 8054C9C0  3C 60 80 6A */	lis r3, msg_no_1000@ha /* 0x806A52B4@ha */
/* 8054C9C4  57 C0 10 3A */	slwi r0, r30, 2
/* 8054C9C8  38 83 52 B4 */	addi r4, r3, msg_no_1000@l /* 0x806A52B4@l */
/* 8054C9CC  7F E3 FB 78 */	mr r3, r31
/* 8054C9D0  7C 84 00 2E */	lwzx r4, r4, r0
/* 8054C9D4  4B E7 35 F1 */	bl mMsg_Set_continue_msg_num
/* 8054C9D8  81 9C 09 A8 */	lwz r12, 0x9a8(r28)
/* 8054C9DC  7F 83 E3 78 */	mr r3, r28
/* 8054C9E0  7F A4 EB 78 */	mr r4, r29
/* 8054C9E4  38 A0 00 00 */	li r5, 0
/* 8054C9E8  7D 89 03 A6 */	mtctr r12
/* 8054C9EC  4E 80 04 21 */	bctrl 
lbl_8054C9F0:
/* 8054C9F0  39 61 00 20 */	addi r11, r1, 0x20
/* 8054C9F4  4B B4 E5 29 */	bl func_8009AF1C
/* 8054C9F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054C9FC  7C 08 03 A6 */	mtlr r0
/* 8054CA00  38 21 00 20 */	addi r1, r1, 0x20
/* 8054CA04  4E 80 00 20 */	blr 
