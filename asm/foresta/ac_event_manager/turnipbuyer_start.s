lbl_8041E884:
/* 8041E884  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041E888  7C 08 02 A6 */	mflr r0
/* 8041E88C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041E890  39 61 00 20 */	addi r11, r1, 0x20
/* 8041E894  4B C7 C6 41 */	bl func_8009AED4
/* 8041E898  7C 9E 23 78 */	mr r30, r4
/* 8041E89C  7C 7D 1B 78 */	mr r29, r3
/* 8041E8A0  80 64 00 00 */	lwz r3, 0(r4)
/* 8041E8A4  3B E0 00 02 */	li r31, 2
/* 8041E8A8  4B F7 F3 45 */	bl mEv_check_keep
/* 8041E8AC  2C 03 00 00 */	cmpwi r3, 0
/* 8041E8B0  40 82 00 10 */	bne lbl_8041E8C0
/* 8041E8B4  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041E8B8  4B F7 F2 CD */	bl mEv_set_keep
/* 8041E8BC  3B E0 00 01 */	li r31, 1
lbl_8041E8C0:
/* 8041E8C0  2C 1F 00 00 */	cmpwi r31, 0
/* 8041E8C4  41 82 00 34 */	beq lbl_8041E8F8
/* 8041E8C8  4B F5 50 C9 */	bl mAGrw_CheckKabuPeddler
/* 8041E8CC  2C 03 00 00 */	cmpwi r3, 0
/* 8041E8D0  41 82 00 28 */	beq lbl_8041E8F8
/* 8041E8D4  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000D007@ha */
/* 8041E8D8  7F A3 EB 78 */	mr r3, r29
/* 8041E8DC  7F C4 F3 78 */	mr r4, r30
/* 8041E8E0  38 C0 00 51 */	li r6, 0x51
/* 8041E8E4  38 A5 D0 07 */	addi r5, r5, 0xD007 /* 0x0000D007@l */
/* 8041E8E8  38 E0 00 01 */	li r7, 1
/* 8041E8EC  4B FF D6 C1 */	bl make_actor_in_free_block
/* 8041E8F0  3C 80 81 1D */	lis r4, wpppp@ha /* 0x811CB95C@ha */
/* 8041E8F4  90 64 B9 5C */	stw r3, wpppp@l(r4)  /* 0x811CB95C@l */
lbl_8041E8F8:
/* 8041E8F8  7F E3 FB 78 */	mr r3, r31
/* 8041E8FC  39 61 00 20 */	addi r11, r1, 0x20
/* 8041E900  4B C7 C6 21 */	bl func_8009AF20
/* 8041E904  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041E908  7C 08 03 A6 */	mtlr r0
/* 8041E90C  38 21 00 20 */	addi r1, r1, 0x20
/* 8041E910  4E 80 00 20 */	blr 
