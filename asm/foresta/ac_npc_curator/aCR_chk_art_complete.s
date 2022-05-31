lbl_8054B884:
/* 8054B884  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054B888  7C 08 02 A6 */	mflr r0
/* 8054B88C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054B890  39 61 00 20 */	addi r11, r1, 0x20
/* 8054B894  4B B4 F6 3D */	bl func_8009AED0
/* 8054B898  7C 7C 1B 78 */	mr r28, r3
/* 8054B89C  7C 9D 23 78 */	mr r29, r4
/* 8054B8A0  3B C0 00 00 */	li r30, 0
/* 8054B8A4  4B E7 C5 E5 */	bl mMmd_CountDisplayedArt
/* 8054B8A8  2C 03 00 0F */	cmpwi r3, 0xf
/* 8054B8AC  40 82 00 08 */	bne lbl_8054B8B4
/* 8054B8B0  3B C0 00 01 */	li r30, 1
lbl_8054B8B4:
/* 8054B8B4  4B E7 3D F5 */	bl func_803BF6A8
/* 8054B8B8  3C 80 80 6A */	lis r4, msg_no_677@ha /* 0x806A5000@ha */
/* 8054B8BC  57 DE 10 3A */	slwi r30, r30, 2
/* 8054B8C0  3B E4 50 00 */	addi r31, r4, msg_no_677@l /* 0x806A5000@l */
/* 8054B8C4  7C 9F F0 2E */	lwzx r4, r31, r30
/* 8054B8C8  4B E7 46 FD */	bl mMsg_Set_continue_msg_num
/* 8054B8CC  7C 1F F0 2E */	lwzx r0, r31, r30
/* 8054B8D0  3C 60 80 6A */	lis r3, next_act_idx_678@ha /* 0x806A5008@ha */
/* 8054B8D4  38 A3 50 08 */	addi r5, r3, next_act_idx_678@l /* 0x806A5008@l */
/* 8054B8D8  7F 83 E3 78 */	mr r3, r28
/* 8054B8DC  90 1C 09 AC */	stw r0, 0x9ac(r28)
/* 8054B8E0  7F A4 EB 78 */	mr r4, r29
/* 8054B8E4  81 9C 09 A8 */	lwz r12, 0x9a8(r28)
/* 8054B8E8  7C A5 F0 2E */	lwzx r5, r5, r30
/* 8054B8EC  7D 89 03 A6 */	mtctr r12
/* 8054B8F0  4E 80 04 21 */	bctrl 
/* 8054B8F4  39 61 00 20 */	addi r11, r1, 0x20
/* 8054B8F8  4B B4 F6 25 */	bl func_8009AF1C
/* 8054B8FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054B900  7C 08 03 A6 */	mtlr r0
/* 8054B904  38 21 00 20 */	addi r1, r1, 0x20
/* 8054B908  4E 80 00 20 */	blr 
