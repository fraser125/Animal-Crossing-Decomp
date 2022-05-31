lbl_8041F3CC:
/* 8041F3CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041F3D0  7C 08 02 A6 */	mflr r0
/* 8041F3D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041F3D8  39 61 00 20 */	addi r11, r1, 0x20
/* 8041F3DC  4B C7 BA F9 */	bl func_8009AED4
/* 8041F3E0  7C 7D 1B 78 */	mr r29, r3
/* 8041F3E4  7C 9E 23 78 */	mr r30, r4
/* 8041F3E8  80 03 02 1C */	lwz r0, 0x21c(r3)
/* 8041F3EC  3B E0 00 02 */	li r31, 2
/* 8041F3F0  2C 00 00 00 */	cmpwi r0, 0
/* 8041F3F4  40 82 00 24 */	bne lbl_8041F418
/* 8041F3F8  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041F3FC  38 80 00 01 */	li r4, 1
/* 8041F400  4B F7 E6 81 */	bl mEv_clear_status
/* 8041F404  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041F408  38 80 00 20 */	li r4, 0x20
/* 8041F40C  4B F7 E5 C5 */	bl mEv_set_status
/* 8041F410  38 60 00 00 */	li r3, 0
/* 8041F414  48 00 00 A4 */	b lbl_8041F4B8
lbl_8041F418:
/* 8041F418  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041F41C  4B F7 E7 D1 */	bl mEv_check_keep
/* 8041F420  2C 03 00 00 */	cmpwi r3, 0
/* 8041F424  40 82 00 38 */	bne lbl_8041F45C
/* 8041F428  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008000@ha */
/* 8041F42C  80 9E 00 00 */	lwz r4, 0(r30)
/* 8041F430  7F A3 EB 78 */	mr r3, r29
/* 8041F434  38 A0 00 01 */	li r5, 1
/* 8041F438  38 C6 80 00 */	addi r6, r6, 0x8000 /* 0x00008000@l */
/* 8041F43C  4B FF E6 41 */	bl title_fade
/* 8041F440  2C 03 00 00 */	cmpwi r3, 0
/* 8041F444  41 82 00 14 */	beq lbl_8041F458
/* 8041F448  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041F44C  4B F7 E7 39 */	bl mEv_set_keep
/* 8041F450  3B E0 00 01 */	li r31, 1
/* 8041F454  48 00 00 08 */	b lbl_8041F45C
lbl_8041F458:
/* 8041F458  3B E0 00 00 */	li r31, 0
lbl_8041F45C:
/* 8041F45C  2C 1F 00 00 */	cmpwi r31, 0
/* 8041F460  41 82 00 54 */	beq lbl_8041F4B4
/* 8041F464  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008000@ha */
/* 8041F468  7F A3 EB 78 */	mr r3, r29
/* 8041F46C  38 84 80 00 */	addi r4, r4, 0x8000 /* 0x00008000@l */
/* 8041F470  4B FF C7 B9 */	bl clean_FG
/* 8041F474  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008000@ha */
/* 8041F478  7F A3 EB 78 */	mr r3, r29
/* 8041F47C  7F C4 F3 78 */	mr r4, r30
/* 8041F480  38 A0 00 06 */	li r5, 6
/* 8041F484  38 C6 80 00 */	addi r6, r6, 0x8000 /* 0x00008000@l */
/* 8041F488  38 E0 00 06 */	li r7, 6
/* 8041F48C  4B FF D3 A1 */	bl make_FG_in_reserved_block
/* 8041F490  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008000@ha */
/* 8041F494  7F A3 EB 78 */	mr r3, r29
/* 8041F498  7F C4 F3 78 */	mr r4, r30
/* 8041F49C  38 A0 00 05 */	li r5, 5
/* 8041F4A0  38 C6 80 00 */	addi r6, r6, 0x8000 /* 0x00008000@l */
/* 8041F4A4  38 E0 00 05 */	li r7, 5
/* 8041F4A8  4B FF D1 F1 */	bl make_actor_in_reserved_block
/* 8041F4AC  38 60 00 2B */	li r3, 0x2b
/* 8041F4B0  4B FF DE 0D */	bl make_effect
lbl_8041F4B4:
/* 8041F4B4  7F E3 FB 78 */	mr r3, r31
lbl_8041F4B8:
/* 8041F4B8  39 61 00 20 */	addi r11, r1, 0x20
/* 8041F4BC  4B C7 BA 65 */	bl func_8009AF20
/* 8041F4C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041F4C4  7C 08 03 A6 */	mtlr r0
/* 8041F4C8  38 21 00 20 */	addi r1, r1, 0x20
/* 8041F4CC  4E 80 00 20 */	blr 
