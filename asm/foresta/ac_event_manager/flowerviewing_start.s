lbl_8041F5A8:
/* 8041F5A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041F5AC  7C 08 02 A6 */	mflr r0
/* 8041F5B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041F5B4  39 61 00 20 */	addi r11, r1, 0x20
/* 8041F5B8  4B C7 B9 1D */	bl func_8009AED4
/* 8041F5BC  7C 7D 1B 78 */	mr r29, r3
/* 8041F5C0  7C 9E 23 78 */	mr r30, r4
/* 8041F5C4  80 03 02 34 */	lwz r0, 0x234(r3)
/* 8041F5C8  3B E0 00 02 */	li r31, 2
/* 8041F5CC  2C 00 00 00 */	cmpwi r0, 0
/* 8041F5D0  40 82 00 24 */	bne lbl_8041F5F4
/* 8041F5D4  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041F5D8  38 80 00 01 */	li r4, 1
/* 8041F5DC  4B F7 E4 A5 */	bl mEv_clear_status
/* 8041F5E0  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041F5E4  38 80 00 20 */	li r4, 0x20
/* 8041F5E8  4B F7 E3 E9 */	bl mEv_set_status
/* 8041F5EC  38 60 00 00 */	li r3, 0
/* 8041F5F0  48 00 00 A4 */	b lbl_8041F694
lbl_8041F5F4:
/* 8041F5F4  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041F5F8  4B F7 E5 F5 */	bl mEv_check_keep
/* 8041F5FC  2C 03 00 00 */	cmpwi r3, 0
/* 8041F600  40 82 00 34 */	bne lbl_8041F634
/* 8041F604  80 9E 00 00 */	lwz r4, 0(r30)
/* 8041F608  7F A3 EB 78 */	mr r3, r29
/* 8041F60C  38 A0 00 01 */	li r5, 1
/* 8041F610  38 C0 00 04 */	li r6, 4
/* 8041F614  4B FF E4 69 */	bl title_fade
/* 8041F618  2C 03 00 00 */	cmpwi r3, 0
/* 8041F61C  41 82 00 14 */	beq lbl_8041F630
/* 8041F620  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041F624  4B F7 E5 61 */	bl mEv_set_keep
/* 8041F628  3B E0 00 01 */	li r31, 1
/* 8041F62C  48 00 00 08 */	b lbl_8041F634
lbl_8041F630:
/* 8041F630  3B E0 00 00 */	li r31, 0
lbl_8041F634:
/* 8041F634  2C 1F 00 00 */	cmpwi r31, 0
/* 8041F638  41 82 00 58 */	beq lbl_8041F690
/* 8041F63C  7F A3 EB 78 */	mr r3, r29
/* 8041F640  38 80 00 04 */	li r4, 4
/* 8041F644  4B FF C5 E5 */	bl clean_FG
/* 8041F648  7F A3 EB 78 */	mr r3, r29
/* 8041F64C  7F C4 F3 78 */	mr r4, r30
/* 8041F650  38 A0 00 05 */	li r5, 5
/* 8041F654  38 C0 00 04 */	li r6, 4
/* 8041F658  38 E0 00 6E */	li r7, 0x6e
/* 8041F65C  4B FF D1 D1 */	bl make_FG_in_reserved_block
/* 8041F660  7F A3 EB 78 */	mr r3, r29
/* 8041F664  7F C4 F3 78 */	mr r4, r30
/* 8041F668  38 A0 00 06 */	li r5, 6
/* 8041F66C  38 C0 00 04 */	li r6, 4
/* 8041F670  38 E0 00 6F */	li r7, 0x6f
/* 8041F674  4B FF D1 B9 */	bl make_FG_in_reserved_block
/* 8041F678  7F A3 EB 78 */	mr r3, r29
/* 8041F67C  7F C4 F3 78 */	mr r4, r30
/* 8041F680  38 A0 00 07 */	li r5, 7
/* 8041F684  38 C0 00 04 */	li r6, 4
/* 8041F688  38 E0 00 07 */	li r7, 7
/* 8041F68C  4B FF D0 0D */	bl make_actor_in_reserved_block
lbl_8041F690:
/* 8041F690  7F E3 FB 78 */	mr r3, r31
lbl_8041F694:
/* 8041F694  39 61 00 20 */	addi r11, r1, 0x20
/* 8041F698  4B C7 B8 89 */	bl func_8009AF20
/* 8041F69C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041F6A0  7C 08 03 A6 */	mtlr r0
/* 8041F6A4  38 21 00 20 */	addi r1, r1, 0x20
/* 8041F6A8  4E 80 00 20 */	blr 
