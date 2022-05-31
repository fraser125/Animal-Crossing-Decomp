lbl_8054B90C:
/* 8054B90C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054B910  7C 08 02 A6 */	mflr r0
/* 8054B914  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054B918  39 61 00 20 */	addi r11, r1, 0x20
/* 8054B91C  4B B4 F5 B5 */	bl func_8009AED0
/* 8054B920  7C 7C 1B 78 */	mr r28, r3
/* 8054B924  7C 9D 23 78 */	mr r29, r4
/* 8054B928  3B C0 00 00 */	li r30, 0
/* 8054B92C  4B E7 C6 1D */	bl mMmd_CountDisplayedFish
/* 8054B930  2C 03 00 28 */	cmpwi r3, 0x28
/* 8054B934  40 82 00 08 */	bne lbl_8054B93C
/* 8054B938  3B C0 00 01 */	li r30, 1
lbl_8054B93C:
/* 8054B93C  4B E7 3D 6D */	bl func_803BF6A8
/* 8054B940  3C 80 80 6A */	lis r4, msg_no_687@ha /* 0x806A5010@ha */
/* 8054B944  57 DE 10 3A */	slwi r30, r30, 2
/* 8054B948  3B E4 50 10 */	addi r31, r4, msg_no_687@l /* 0x806A5010@l */
/* 8054B94C  7C 9F F0 2E */	lwzx r4, r31, r30
/* 8054B950  4B E7 46 75 */	bl mMsg_Set_continue_msg_num
/* 8054B954  7C 1F F0 2E */	lwzx r0, r31, r30
/* 8054B958  3C 60 80 6A */	lis r3, next_act_idx_688@ha /* 0x806A5018@ha */
/* 8054B95C  38 A3 50 18 */	addi r5, r3, next_act_idx_688@l /* 0x806A5018@l */
/* 8054B960  7F 83 E3 78 */	mr r3, r28
/* 8054B964  90 1C 09 AC */	stw r0, 0x9ac(r28)
/* 8054B968  7F A4 EB 78 */	mr r4, r29
/* 8054B96C  81 9C 09 A8 */	lwz r12, 0x9a8(r28)
/* 8054B970  7C A5 F0 2E */	lwzx r5, r5, r30
/* 8054B974  7D 89 03 A6 */	mtctr r12
/* 8054B978  4E 80 04 21 */	bctrl 
/* 8054B97C  39 61 00 20 */	addi r11, r1, 0x20
/* 8054B980  4B B4 F5 9D */	bl func_8009AF1C
/* 8054B984  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054B988  7C 08 03 A6 */	mtlr r0
/* 8054B98C  38 21 00 20 */	addi r1, r1, 0x20
/* 8054B990  4E 80 00 20 */	blr 
