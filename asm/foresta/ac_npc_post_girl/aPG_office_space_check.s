lbl_8056C6B4:
/* 8056C6B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056C6B8  7C 08 02 A6 */	mflr r0
/* 8056C6BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056C6C0  39 61 00 20 */	addi r11, r1, 0x20
/* 8056C6C4  4B B2 E8 11 */	bl func_8009AED4
/* 8056C6C8  7C 7D 1B 78 */	mr r29, r3
/* 8056C6CC  7C 9E 23 78 */	mr r30, r4
/* 8056C6D0  3B E0 00 00 */	li r31, 0
/* 8056C6D4  4B FF FF 55 */	bl aPG_set_post_status
/* 8056C6D8  88 1D 09 A4 */	lbz r0, 0x9a4(r29)
/* 8056C6DC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8056C6E0  41 82 00 10 */	beq lbl_8056C6F0
/* 8056C6E4  38 00 00 01 */	li r0, 1
/* 8056C6E8  3B E0 00 01 */	li r31, 1
/* 8056C6EC  98 1D 09 A6 */	stb r0, 0x9a6(r29)
lbl_8056C6F0:
/* 8056C6F0  3C 60 80 6C */	lis r3, msg_no_533@ha /* 0x806BE980@ha */
/* 8056C6F4  57 FF 10 3A */	slwi r31, r31, 2
/* 8056C6F8  38 83 E9 80 */	addi r4, r3, msg_no_533@l /* 0x806BE980@l */
/* 8056C6FC  7F A3 EB 78 */	mr r3, r29
/* 8056C700  7C 84 F8 2E */	lwzx r4, r4, r31
/* 8056C704  4B FF FD 61 */	bl func_8056C464
/* 8056C708  3C 60 80 6C */	lis r3, next_act_idx_534@ha /* 0x806BE988@ha */
/* 8056C70C  81 9D 09 A0 */	lwz r12, 0x9a0(r29)
/* 8056C710  38 A3 E9 88 */	addi r5, r3, next_act_idx_534@l /* 0x806BE988@l */
/* 8056C714  7F A3 EB 78 */	mr r3, r29
/* 8056C718  7F C4 F3 78 */	mr r4, r30
/* 8056C71C  7C A5 F8 2E */	lwzx r5, r5, r31
/* 8056C720  7D 89 03 A6 */	mtctr r12
/* 8056C724  4E 80 04 21 */	bctrl 
/* 8056C728  39 61 00 20 */	addi r11, r1, 0x20
/* 8056C72C  4B B2 E7 F5 */	bl func_8009AF20
/* 8056C730  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056C734  7C 08 03 A6 */	mtlr r0
/* 8056C738  38 21 00 20 */	addi r1, r1, 0x20
/* 8056C73C  4E 80 00 20 */	blr 
