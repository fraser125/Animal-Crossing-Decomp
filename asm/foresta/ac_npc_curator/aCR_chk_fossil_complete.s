lbl_8054B7F4:
/* 8054B7F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054B7F8  7C 08 02 A6 */	mflr r0
/* 8054B7FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054B800  39 61 00 20 */	addi r11, r1, 0x20
/* 8054B804  4B B4 F6 C9 */	bl func_8009AECC
/* 8054B808  7C 7B 1B 78 */	mr r27, r3
/* 8054B80C  7C 9C 23 78 */	mr r28, r4
/* 8054B810  4B E7 3E 99 */	bl func_803BF6A8
/* 8054B814  3B C0 00 00 */	li r30, 0
/* 8054B818  7C 7D 1B 78 */	mr r29, r3
/* 8054B81C  4B E7 C6 0D */	bl mMmd_CountDisplayedFossil
/* 8054B820  2C 03 00 19 */	cmpwi r3, 0x19
/* 8054B824  40 82 00 08 */	bne lbl_8054B82C
/* 8054B828  3B C0 00 01 */	li r30, 1
lbl_8054B82C:
/* 8054B82C  3C 60 80 6A */	lis r3, msg_no_667@ha /* 0x806A4FF0@ha */
/* 8054B830  57 DE 10 3A */	slwi r30, r30, 2
/* 8054B834  3B E3 4F F0 */	addi r31, r3, msg_no_667@l /* 0x806A4FF0@l */
/* 8054B838  7F A3 EB 78 */	mr r3, r29
/* 8054B83C  7C 9F F0 2E */	lwzx r4, r31, r30
/* 8054B840  4B E7 47 85 */	bl mMsg_Set_continue_msg_num
/* 8054B844  7C 1F F0 2E */	lwzx r0, r31, r30
/* 8054B848  3C 60 80 6A */	lis r3, next_act_idx_668@ha /* 0x806A4FF8@ha */
/* 8054B84C  38 A3 4F F8 */	addi r5, r3, next_act_idx_668@l /* 0x806A4FF8@l */
/* 8054B850  7F 63 DB 78 */	mr r3, r27
/* 8054B854  90 1B 09 AC */	stw r0, 0x9ac(r27)
/* 8054B858  7F 84 E3 78 */	mr r4, r28
/* 8054B85C  81 9B 09 A8 */	lwz r12, 0x9a8(r27)
/* 8054B860  7C A5 F0 2E */	lwzx r5, r5, r30
/* 8054B864  7D 89 03 A6 */	mtctr r12
/* 8054B868  4E 80 04 21 */	bctrl 
/* 8054B86C  39 61 00 20 */	addi r11, r1, 0x20
/* 8054B870  4B B4 F6 A9 */	bl func_8009AF18
/* 8054B874  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054B878  7C 08 03 A6 */	mtlr r0
/* 8054B87C  38 21 00 20 */	addi r1, r1, 0x20
/* 8054B880  4E 80 00 20 */	blr 
