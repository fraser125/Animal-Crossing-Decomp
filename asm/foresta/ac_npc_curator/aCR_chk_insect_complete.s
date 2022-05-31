lbl_8054B994:
/* 8054B994  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054B998  7C 08 02 A6 */	mflr r0
/* 8054B99C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054B9A0  39 61 00 20 */	addi r11, r1, 0x20
/* 8054B9A4  4B B4 F5 2D */	bl func_8009AED0
/* 8054B9A8  7C 7C 1B 78 */	mr r28, r3
/* 8054B9AC  7C 9D 23 78 */	mr r29, r4
/* 8054B9B0  3B C0 00 00 */	li r30, 0
/* 8054B9B4  4B E7 C5 35 */	bl mMmd_CountDisplayedInsect
/* 8054B9B8  2C 03 00 28 */	cmpwi r3, 0x28
/* 8054B9BC  40 82 00 08 */	bne lbl_8054B9C4
/* 8054B9C0  3B C0 00 01 */	li r30, 1
lbl_8054B9C4:
/* 8054B9C4  4B E7 3C E5 */	bl func_803BF6A8
/* 8054B9C8  3C 80 80 6A */	lis r4, msg_no_697@ha /* 0x806A5020@ha */
/* 8054B9CC  57 DE 10 3A */	slwi r30, r30, 2
/* 8054B9D0  3B E4 50 20 */	addi r31, r4, msg_no_697@l /* 0x806A5020@l */
/* 8054B9D4  7C 9F F0 2E */	lwzx r4, r31, r30
/* 8054B9D8  4B E7 45 ED */	bl mMsg_Set_continue_msg_num
/* 8054B9DC  7C 1F F0 2E */	lwzx r0, r31, r30
/* 8054B9E0  3C 60 80 6A */	lis r3, next_act_idx_698@ha /* 0x806A5028@ha */
/* 8054B9E4  38 A3 50 28 */	addi r5, r3, next_act_idx_698@l /* 0x806A5028@l */
/* 8054B9E8  7F 83 E3 78 */	mr r3, r28
/* 8054B9EC  90 1C 09 AC */	stw r0, 0x9ac(r28)
/* 8054B9F0  7F A4 EB 78 */	mr r4, r29
/* 8054B9F4  81 9C 09 A8 */	lwz r12, 0x9a8(r28)
/* 8054B9F8  7C A5 F0 2E */	lwzx r5, r5, r30
/* 8054B9FC  7D 89 03 A6 */	mtctr r12
/* 8054BA00  4E 80 04 21 */	bctrl 
/* 8054BA04  39 61 00 20 */	addi r11, r1, 0x20
/* 8054BA08  4B B4 F5 15 */	bl func_8009AF1C
/* 8054BA0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054BA10  7C 08 03 A6 */	mtlr r0
/* 8054BA14  38 21 00 20 */	addi r1, r1, 0x20
/* 8054BA18  4E 80 00 20 */	blr 
