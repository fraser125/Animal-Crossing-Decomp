lbl_80421E5C:
/* 80421E5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80421E60  7C 08 02 A6 */	mflr r0
/* 80421E64  90 01 00 24 */	stw r0, 0x24(r1)
/* 80421E68  39 61 00 20 */	addi r11, r1, 0x20
/* 80421E6C  4B C7 90 69 */	bl func_8009AED4
/* 80421E70  7C 9E 23 78 */	mr r30, r4
/* 80421E74  7C 7D 1B 78 */	mr r29, r3
/* 80421E78  80 64 00 00 */	lwz r3, 0(r4)
/* 80421E7C  3B E0 00 02 */	li r31, 2
/* 80421E80  4B F7 BD 6D */	bl mEv_check_keep
/* 80421E84  2C 03 00 00 */	cmpwi r3, 0
/* 80421E88  40 82 00 10 */	bne lbl_80421E98
/* 80421E8C  80 7E 00 00 */	lwz r3, 0(r30)
/* 80421E90  4B F7 BC F5 */	bl mEv_set_keep
/* 80421E94  3B E0 00 01 */	li r31, 1
lbl_80421E98:
/* 80421E98  2C 1F 00 00 */	cmpwi r31, 0
/* 80421E9C  41 82 00 28 */	beq lbl_80421EC4
/* 80421EA0  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000D074@ha */
/* 80421EA4  80 FD 02 30 */	lwz r7, 0x230(r29)
/* 80421EA8  81 1D 02 2C */	lwz r8, 0x22c(r29)
/* 80421EAC  7F A3 EB 78 */	mr r3, r29
/* 80421EB0  7F C4 F3 78 */	mr r4, r30
/* 80421EB4  38 A5 D0 74 */	addi r5, r5, 0xD074 /* 0x0000D074@l */
/* 80421EB8  38 C0 00 51 */	li r6, 0x51
/* 80421EBC  39 20 00 02 */	li r9, 2
/* 80421EC0  4B FF A1 E5 */	bl make_actor_in_select_block
lbl_80421EC4:
/* 80421EC4  7F E3 FB 78 */	mr r3, r31
/* 80421EC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80421ECC  4B C7 90 55 */	bl func_8009AF20
/* 80421ED0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80421ED4  7C 08 03 A6 */	mtlr r0
/* 80421ED8  38 21 00 20 */	addi r1, r1, 0x20
/* 80421EDC  4E 80 00 20 */	blr 
