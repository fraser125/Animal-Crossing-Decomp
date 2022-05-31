lbl_8054B760:
/* 8054B760  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054B764  7C 08 02 A6 */	mflr r0
/* 8054B768  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054B76C  39 61 00 20 */	addi r11, r1, 0x20
/* 8054B770  4B B4 F7 61 */	bl func_8009AED0
/* 8054B774  7C 9D 23 78 */	mr r29, r4
/* 8054B778  7C 7C 1B 78 */	mr r28, r3
/* 8054B77C  80 64 1F 60 */	lwz r3, 0x1f60(r4)
/* 8054B780  A0 63 00 00 */	lhz r3, 0(r3)
/* 8054B784  4B FF FE 95 */	bl aCR_get_fossil_type
/* 8054B788  7C 7F 1B 78 */	mr r31, r3
/* 8054B78C  3B C0 2F 84 */	li r30, 0x2f84
/* 8054B790  2C 1F FF FF */	cmpwi r31, -1
/* 8054B794  41 82 00 20 */	beq lbl_8054B7B4
/* 8054B798  4B FF FE D9 */	bl aCR_chk_fossil_parts_complete_sub
/* 8054B79C  2C 03 00 01 */	cmpwi r3, 1
/* 8054B7A0  40 82 00 14 */	bne lbl_8054B7B4
/* 8054B7A4  3C 60 80 6A */	lis r3, msg_no_table@ha /* 0x806A4FD4@ha */
/* 8054B7A8  57 E0 10 3A */	slwi r0, r31, 2
/* 8054B7AC  38 63 4F D4 */	addi r3, r3, msg_no_table@l /* 0x806A4FD4@l */
/* 8054B7B0  7F C3 00 2E */	lwzx r30, r3, r0
lbl_8054B7B4:
/* 8054B7B4  4B E7 3E F5 */	bl func_803BF6A8
/* 8054B7B8  7F C4 F3 78 */	mr r4, r30
/* 8054B7BC  4B E7 48 09 */	bl mMsg_Set_continue_msg_num
/* 8054B7C0  93 DC 09 AC */	stw r30, 0x9ac(r28)
/* 8054B7C4  7F 83 E3 78 */	mr r3, r28
/* 8054B7C8  7F A4 EB 78 */	mr r4, r29
/* 8054B7CC  38 A0 00 20 */	li r5, 0x20
/* 8054B7D0  81 9C 09 A8 */	lwz r12, 0x9a8(r28)
/* 8054B7D4  7D 89 03 A6 */	mtctr r12
/* 8054B7D8  4E 80 04 21 */	bctrl 
/* 8054B7DC  39 61 00 20 */	addi r11, r1, 0x20
/* 8054B7E0  4B B4 F7 3D */	bl func_8009AF1C
/* 8054B7E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054B7E8  7C 08 03 A6 */	mtlr r0
/* 8054B7EC  38 21 00 20 */	addi r1, r1, 0x20
/* 8054B7F0  4E 80 00 20 */	blr 
