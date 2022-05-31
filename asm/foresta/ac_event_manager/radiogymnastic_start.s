lbl_8041F788:
/* 8041F788  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041F78C  7C 08 02 A6 */	mflr r0
/* 8041F790  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041F794  39 61 00 20 */	addi r11, r1, 0x20
/* 8041F798  4B C7 B7 3D */	bl func_8009AED4
/* 8041F79C  7C 7D 1B 78 */	mr r29, r3
/* 8041F7A0  7C 9E 23 78 */	mr r30, r4
/* 8041F7A4  80 03 02 34 */	lwz r0, 0x234(r3)
/* 8041F7A8  3B E0 00 02 */	li r31, 2
/* 8041F7AC  2C 00 00 00 */	cmpwi r0, 0
/* 8041F7B0  40 82 00 24 */	bne lbl_8041F7D4
/* 8041F7B4  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041F7B8  38 80 00 01 */	li r4, 1
/* 8041F7BC  4B F7 E2 C5 */	bl mEv_clear_status
/* 8041F7C0  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041F7C4  38 80 00 20 */	li r4, 0x20
/* 8041F7C8  4B F7 E2 09 */	bl mEv_set_status
/* 8041F7CC  38 60 00 00 */	li r3, 0
/* 8041F7D0  48 00 00 A4 */	b lbl_8041F874
lbl_8041F7D4:
/* 8041F7D4  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041F7D8  4B F7 E4 15 */	bl mEv_check_keep
/* 8041F7DC  2C 03 00 00 */	cmpwi r3, 0
/* 8041F7E0  40 82 00 34 */	bne lbl_8041F814
/* 8041F7E4  80 9E 00 00 */	lwz r4, 0(r30)
/* 8041F7E8  7F A3 EB 78 */	mr r3, r29
/* 8041F7EC  38 A0 00 01 */	li r5, 1
/* 8041F7F0  38 C0 00 04 */	li r6, 4
/* 8041F7F4  4B FF E2 89 */	bl title_fade
/* 8041F7F8  2C 03 00 00 */	cmpwi r3, 0
/* 8041F7FC  41 82 00 14 */	beq lbl_8041F810
/* 8041F800  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041F804  4B F7 E3 81 */	bl mEv_set_keep
/* 8041F808  3B E0 00 01 */	li r31, 1
/* 8041F80C  48 00 00 08 */	b lbl_8041F814
lbl_8041F810:
/* 8041F810  3B E0 00 00 */	li r31, 0
lbl_8041F814:
/* 8041F814  2C 1F 00 00 */	cmpwi r31, 0
/* 8041F818  41 82 00 58 */	beq lbl_8041F870
/* 8041F81C  7F A3 EB 78 */	mr r3, r29
/* 8041F820  38 80 00 04 */	li r4, 4
/* 8041F824  4B FF C4 05 */	bl clean_FG
/* 8041F828  7F A3 EB 78 */	mr r3, r29
/* 8041F82C  7F C4 F3 78 */	mr r4, r30
/* 8041F830  38 A0 00 05 */	li r5, 5
/* 8041F834  38 C0 00 04 */	li r6, 4
/* 8041F838  38 E0 00 05 */	li r7, 5
/* 8041F83C  4B FF CF F1 */	bl make_FG_in_reserved_block
/* 8041F840  7F A3 EB 78 */	mr r3, r29
/* 8041F844  7F C4 F3 78 */	mr r4, r30
/* 8041F848  38 A0 00 04 */	li r5, 4
/* 8041F84C  38 C0 00 04 */	li r6, 4
/* 8041F850  38 E0 00 04 */	li r7, 4
/* 8041F854  4B FF CE 45 */	bl make_actor_in_reserved_block
/* 8041F858  7F A3 EB 78 */	mr r3, r29
/* 8041F85C  7F C4 F3 78 */	mr r4, r30
/* 8041F860  38 A0 00 06 */	li r5, 6
/* 8041F864  38 C0 00 04 */	li r6, 4
/* 8041F868  38 E0 00 06 */	li r7, 6
/* 8041F86C  4B FF CE 2D */	bl make_actor_in_reserved_block
lbl_8041F870:
/* 8041F870  7F E3 FB 78 */	mr r3, r31
lbl_8041F874:
/* 8041F874  39 61 00 20 */	addi r11, r1, 0x20
/* 8041F878  4B C7 B6 A9 */	bl func_8009AF20
/* 8041F87C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041F880  7C 08 03 A6 */	mtlr r0
/* 8041F884  38 21 00 20 */	addi r1, r1, 0x20
/* 8041F888  4E 80 00 20 */	blr 
