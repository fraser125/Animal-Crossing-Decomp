lbl_8041EE1C:
/* 8041EE1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041EE20  7C 08 02 A6 */	mflr r0
/* 8041EE24  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041EE28  39 61 00 20 */	addi r11, r1, 0x20
/* 8041EE2C  4B C7 C0 A9 */	bl func_8009AED4
/* 8041EE30  7C 9E 23 78 */	mr r30, r4
/* 8041EE34  7C 7D 1B 78 */	mr r29, r3
/* 8041EE38  80 64 00 00 */	lwz r3, 0(r4)
/* 8041EE3C  3B E0 00 02 */	li r31, 2
/* 8041EE40  4B F7 ED AD */	bl mEv_check_keep
/* 8041EE44  2C 03 00 00 */	cmpwi r3, 0
/* 8041EE48  40 82 00 38 */	bne lbl_8041EE80
/* 8041EE4C  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008000@ha */
/* 8041EE50  80 9E 00 00 */	lwz r4, 0(r30)
/* 8041EE54  7F A3 EB 78 */	mr r3, r29
/* 8041EE58  38 A0 00 01 */	li r5, 1
/* 8041EE5C  38 C6 80 00 */	addi r6, r6, 0x8000 /* 0x00008000@l */
/* 8041EE60  4B FF EC 1D */	bl title_fade
/* 8041EE64  2C 03 00 00 */	cmpwi r3, 0
/* 8041EE68  41 82 00 14 */	beq lbl_8041EE7C
/* 8041EE6C  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041EE70  4B F7 ED 15 */	bl mEv_set_keep
/* 8041EE74  3B E0 00 01 */	li r31, 1
/* 8041EE78  48 00 00 08 */	b lbl_8041EE80
lbl_8041EE7C:
/* 8041EE7C  3B E0 00 00 */	li r31, 0
lbl_8041EE80:
/* 8041EE80  2C 1F 00 00 */	cmpwi r31, 0
/* 8041EE84  41 82 00 28 */	beq lbl_8041EEAC
/* 8041EE88  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000D025@ha */
/* 8041EE8C  7F A3 EB 78 */	mr r3, r29
/* 8041EE90  7F C4 F3 78 */	mr r4, r30
/* 8041EE94  38 C0 00 51 */	li r6, 0x51
/* 8041EE98  38 A5 D0 25 */	addi r5, r5, 0xD025 /* 0x0000D025@l */
/* 8041EE9C  38 E0 00 01 */	li r7, 1
/* 8041EEA0  4B FF D1 0D */	bl make_actor_in_free_block
/* 8041EEA4  3C 80 81 1D */	lis r4, dpppp@ha /* 0x811CB964@ha */
/* 8041EEA8  90 64 B9 64 */	stw r3, dpppp@l(r4)  /* 0x811CB964@l */
lbl_8041EEAC:
/* 8041EEAC  7F E3 FB 78 */	mr r3, r31
/* 8041EEB0  39 61 00 20 */	addi r11, r1, 0x20
/* 8041EEB4  4B C7 C0 6D */	bl func_8009AF20
/* 8041EEB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041EEBC  7C 08 03 A6 */	mtlr r0
/* 8041EEC0  38 21 00 20 */	addi r1, r1, 0x20
/* 8041EEC4  4E 80 00 20 */	blr 
