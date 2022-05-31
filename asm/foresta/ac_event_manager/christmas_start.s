lbl_8041EC30:
/* 8041EC30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041EC34  7C 08 02 A6 */	mflr r0
/* 8041EC38  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041EC3C  39 61 00 20 */	addi r11, r1, 0x20
/* 8041EC40  4B C7 C2 95 */	bl func_8009AED4
/* 8041EC44  7C 9E 23 78 */	mr r30, r4
/* 8041EC48  7C 7D 1B 78 */	mr r29, r3
/* 8041EC4C  80 64 00 00 */	lwz r3, 0(r4)
/* 8041EC50  3B E0 00 02 */	li r31, 2
/* 8041EC54  4B F7 EF 99 */	bl mEv_check_keep
/* 8041EC58  2C 03 00 00 */	cmpwi r3, 0
/* 8041EC5C  40 82 00 38 */	bne lbl_8041EC94
/* 8041EC60  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008000@ha */
/* 8041EC64  80 9E 00 00 */	lwz r4, 0(r30)
/* 8041EC68  7F A3 EB 78 */	mr r3, r29
/* 8041EC6C  38 A0 00 01 */	li r5, 1
/* 8041EC70  38 C6 80 00 */	addi r6, r6, 0x8000 /* 0x00008000@l */
/* 8041EC74  4B FF EE 09 */	bl title_fade
/* 8041EC78  2C 03 00 00 */	cmpwi r3, 0
/* 8041EC7C  41 82 00 14 */	beq lbl_8041EC90
/* 8041EC80  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041EC84  4B F7 EF 01 */	bl mEv_set_keep
/* 8041EC88  3B E0 00 01 */	li r31, 1
/* 8041EC8C  48 00 00 08 */	b lbl_8041EC94
lbl_8041EC90:
/* 8041EC90  3B E0 00 00 */	li r31, 0
lbl_8041EC94:
/* 8041EC94  2C 1F 00 00 */	cmpwi r31, 0
/* 8041EC98  41 82 00 28 */	beq lbl_8041ECC0
/* 8041EC9C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000D00F@ha */
/* 8041ECA0  7F A3 EB 78 */	mr r3, r29
/* 8041ECA4  7F C4 F3 78 */	mr r4, r30
/* 8041ECA8  38 C0 00 51 */	li r6, 0x51
/* 8041ECAC  38 A5 D0 0F */	addi r5, r5, 0xD00F /* 0x0000D00F@l */
/* 8041ECB0  38 E0 00 01 */	li r7, 1
/* 8041ECB4  4B FF D2 F9 */	bl make_actor_in_free_block
/* 8041ECB8  3C 80 81 1D */	lis r4, dpppp@ha /* 0x811CB964@ha */
/* 8041ECBC  90 64 B9 64 */	stw r3, dpppp@l(r4)  /* 0x811CB964@l */
lbl_8041ECC0:
/* 8041ECC0  7F E3 FB 78 */	mr r3, r31
/* 8041ECC4  39 61 00 20 */	addi r11, r1, 0x20
/* 8041ECC8  4B C7 C2 59 */	bl func_8009AF20
/* 8041ECCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041ECD0  7C 08 03 A6 */	mtlr r0
/* 8041ECD4  38 21 00 20 */	addi r1, r1, 0x20
/* 8041ECD8  4E 80 00 20 */	blr 
