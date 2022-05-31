lbl_8041EA30:
/* 8041EA30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041EA34  7C 08 02 A6 */	mflr r0
/* 8041EA38  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041EA3C  39 61 00 20 */	addi r11, r1, 0x20
/* 8041EA40  4B C7 C4 95 */	bl func_8009AED4
/* 8041EA44  7C 9E 23 78 */	mr r30, r4
/* 8041EA48  7C 7D 1B 78 */	mr r29, r3
/* 8041EA4C  80 64 00 00 */	lwz r3, 0(r4)
/* 8041EA50  3B E0 00 02 */	li r31, 2
/* 8041EA54  4B F7 F1 99 */	bl mEv_check_keep
/* 8041EA58  2C 03 00 00 */	cmpwi r3, 0
/* 8041EA5C  40 82 00 10 */	bne lbl_8041EA6C
/* 8041EA60  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041EA64  4B F7 F1 21 */	bl mEv_set_keep
/* 8041EA68  3B E0 00 01 */	li r31, 1
lbl_8041EA6C:
/* 8041EA6C  2C 1F 00 00 */	cmpwi r31, 0
/* 8041EA70  41 82 00 24 */	beq lbl_8041EA94
/* 8041EA74  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000D064@ha */
/* 8041EA78  7F A3 EB 78 */	mr r3, r29
/* 8041EA7C  7F C4 F3 78 */	mr r4, r30
/* 8041EA80  38 C0 00 51 */	li r6, 0x51
/* 8041EA84  38 A5 D0 64 */	addi r5, r5, 0xD064 /* 0x0000D064@l */
/* 8041EA88  4B FF D4 39 */	bl make_actor_in_seaside_block
/* 8041EA8C  3C 80 81 1D */	lis r4, wpppp@ha /* 0x811CB95C@ha */
/* 8041EA90  90 64 B9 5C */	stw r3, wpppp@l(r4)  /* 0x811CB95C@l */
lbl_8041EA94:
/* 8041EA94  7F E3 FB 78 */	mr r3, r31
/* 8041EA98  39 61 00 20 */	addi r11, r1, 0x20
/* 8041EA9C  4B C7 C4 85 */	bl func_8009AF20
/* 8041EAA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041EAA4  7C 08 03 A6 */	mtlr r0
/* 8041EAA8  38 21 00 20 */	addi r1, r1, 0x20
/* 8041EAAC  4E 80 00 20 */	blr 
