lbl_80420318:
/* 80420318  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042031C  7C 08 02 A6 */	mflr r0
/* 80420320  90 01 00 24 */	stw r0, 0x24(r1)
/* 80420324  39 61 00 20 */	addi r11, r1, 0x20
/* 80420328  4B C7 AB AD */	bl func_8009AED4
/* 8042032C  7C 7D 1B 78 */	mr r29, r3
/* 80420330  7C 9E 23 78 */	mr r30, r4
/* 80420334  80 03 02 1C */	lwz r0, 0x21c(r3)
/* 80420338  3B E0 00 02 */	li r31, 2
/* 8042033C  2C 00 00 00 */	cmpwi r0, 0
/* 80420340  40 82 00 24 */	bne lbl_80420364
/* 80420344  80 7E 00 00 */	lwz r3, 0(r30)
/* 80420348  38 80 00 01 */	li r4, 1
/* 8042034C  4B F7 D7 35 */	bl mEv_clear_status
/* 80420350  80 7E 00 00 */	lwz r3, 0(r30)
/* 80420354  38 80 00 20 */	li r4, 0x20
/* 80420358  4B F7 D6 79 */	bl mEv_set_status
/* 8042035C  38 60 00 00 */	li r3, 0
/* 80420360  48 00 00 88 */	b lbl_804203E8
lbl_80420364:
/* 80420364  80 7E 00 00 */	lwz r3, 0(r30)
/* 80420368  4B F7 D8 85 */	bl mEv_check_keep
/* 8042036C  2C 03 00 00 */	cmpwi r3, 0
/* 80420370  40 82 00 38 */	bne lbl_804203A8
/* 80420374  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008000@ha */
/* 80420378  80 9E 00 00 */	lwz r4, 0(r30)
/* 8042037C  7F A3 EB 78 */	mr r3, r29
/* 80420380  38 A0 00 01 */	li r5, 1
/* 80420384  38 C6 80 00 */	addi r6, r6, 0x8000 /* 0x00008000@l */
/* 80420388  4B FF D6 F5 */	bl title_fade
/* 8042038C  2C 03 00 00 */	cmpwi r3, 0
/* 80420390  41 82 00 14 */	beq lbl_804203A4
/* 80420394  80 7E 00 00 */	lwz r3, 0(r30)
/* 80420398  4B F7 D7 ED */	bl mEv_set_keep
/* 8042039C  3B E0 00 01 */	li r31, 1
/* 804203A0  48 00 00 08 */	b lbl_804203A8
lbl_804203A4:
/* 804203A4  3B E0 00 00 */	li r31, 0
lbl_804203A8:
/* 804203A8  2C 1F 00 00 */	cmpwi r31, 0
/* 804203AC  41 82 00 38 */	beq lbl_804203E4
/* 804203B0  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008000@ha */
/* 804203B4  7F A3 EB 78 */	mr r3, r29
/* 804203B8  38 84 80 00 */	addi r4, r4, 0x8000 /* 0x00008000@l */
/* 804203BC  4B FF B8 6D */	bl clean_FG
/* 804203C0  38 60 00 41 */	li r3, 0x41
/* 804203C4  4B FF CE F9 */	bl make_effect
/* 804203C8  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008000@ha */
/* 804203CC  7F A3 EB 78 */	mr r3, r29
/* 804203D0  7F C4 F3 78 */	mr r4, r30
/* 804203D4  38 A0 00 04 */	li r5, 4
/* 804203D8  38 C6 80 00 */	addi r6, r6, 0x8000 /* 0x00008000@l */
/* 804203DC  38 E0 00 04 */	li r7, 4
/* 804203E0  4B FF C2 B9 */	bl make_actor_in_reserved_block
lbl_804203E4:
/* 804203E4  7F E3 FB 78 */	mr r3, r31
lbl_804203E8:
/* 804203E8  39 61 00 20 */	addi r11, r1, 0x20
/* 804203EC  4B C7 AB 35 */	bl func_8009AF20
/* 804203F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804203F4  7C 08 03 A6 */	mtlr r0
/* 804203F8  38 21 00 20 */	addi r1, r1, 0x20
/* 804203FC  4E 80 00 20 */	blr 
