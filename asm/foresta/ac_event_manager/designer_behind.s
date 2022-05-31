lbl_8041E304:
/* 8041E304  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041E308  7C 08 02 A6 */	mflr r0
/* 8041E30C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041E310  39 61 00 20 */	addi r11, r1, 0x20
/* 8041E314  4B C7 CB C1 */	bl func_8009AED4
/* 8041E318  7C 9E 23 78 */	mr r30, r4
/* 8041E31C  7C 7D 1B 78 */	mr r29, r3
/* 8041E320  80 64 00 00 */	lwz r3, 0(r4)
/* 8041E324  38 80 00 40 */	li r4, 0x40
/* 8041E328  4B F7 F7 D9 */	bl mEv_check_status
/* 8041E32C  2C 03 00 00 */	cmpwi r3, 0
/* 8041E330  41 82 00 70 */	beq lbl_8041E3A0
/* 8041E334  7F A3 EB 78 */	mr r3, r29
/* 8041E338  7F C4 F3 78 */	mr r4, r30
/* 8041E33C  38 A0 00 51 */	li r5, 0x51
/* 8041E340  4B FF EE 0D */	bl walk_FG_somewhere_lot4sale
/* 8041E344  7C 7F 1B 79 */	or. r31, r3, r3
/* 8041E348  41 82 00 58 */	beq lbl_8041E3A0
/* 8041E34C  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8041E350  38 80 00 01 */	li r4, 1
/* 8041E354  90 01 00 0C */	stw r0, 0xc(r1)
/* 8041E358  80 7F 00 08 */	lwz r3, 8(r31)
/* 8041E35C  38 03 00 02 */	addi r0, r3, 2
/* 8041E360  90 01 00 08 */	stw r0, 8(r1)
/* 8041E364  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041E368  4B F7 FF B5 */	bl mEv_clear_common_place
/* 8041E36C  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000D002@ha */
/* 8041E370  7F A3 EB 78 */	mr r3, r29
/* 8041E374  7F C4 F3 78 */	mr r4, r30
/* 8041E378  7F E5 FB 78 */	mr r5, r31
/* 8041E37C  38 C1 00 08 */	addi r6, r1, 8
/* 8041E380  38 E7 D0 02 */	addi r7, r7, 0xD002 /* 0x0000D002@l */
/* 8041E384  39 00 00 01 */	li r8, 1
/* 8041E388  4B FF E0 65 */	bl make_actor_in_fixed_block
/* 8041E38C  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041E390  38 80 00 40 */	li r4, 0x40
/* 8041E394  4B F7 F6 ED */	bl mEv_clear_status
/* 8041E398  38 60 00 01 */	li r3, 1
/* 8041E39C  48 00 00 08 */	b lbl_8041E3A4
lbl_8041E3A0:
/* 8041E3A0  38 60 00 01 */	li r3, 1
lbl_8041E3A4:
/* 8041E3A4  39 61 00 20 */	addi r11, r1, 0x20
/* 8041E3A8  4B C7 CB 79 */	bl func_8009AF20
/* 8041E3AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041E3B0  7C 08 03 A6 */	mtlr r0
/* 8041E3B4  38 21 00 20 */	addi r1, r1, 0x20
/* 8041E3B8  4E 80 00 20 */	blr 
