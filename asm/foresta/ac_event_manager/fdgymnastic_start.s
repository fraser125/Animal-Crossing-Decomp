lbl_8041FBE8:
/* 8041FBE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041FBEC  7C 08 02 A6 */	mflr r0
/* 8041FBF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041FBF4  39 61 00 20 */	addi r11, r1, 0x20
/* 8041FBF8  4B C7 B2 DD */	bl func_8009AED4
/* 8041FBFC  7C 7D 1B 78 */	mr r29, r3
/* 8041FC00  7C 9E 23 78 */	mr r30, r4
/* 8041FC04  80 03 02 34 */	lwz r0, 0x234(r3)
/* 8041FC08  3B E0 00 02 */	li r31, 2
/* 8041FC0C  2C 00 00 00 */	cmpwi r0, 0
/* 8041FC10  40 82 00 24 */	bne lbl_8041FC34
/* 8041FC14  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041FC18  38 80 00 01 */	li r4, 1
/* 8041FC1C  4B F7 DE 65 */	bl mEv_clear_status
/* 8041FC20  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041FC24  38 80 00 20 */	li r4, 0x20
/* 8041FC28  4B F7 DD A9 */	bl mEv_set_status
/* 8041FC2C  38 60 00 00 */	li r3, 0
/* 8041FC30  48 00 00 68 */	b lbl_8041FC98
lbl_8041FC34:
/* 8041FC34  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041FC38  4B F7 DF B5 */	bl mEv_check_keep
/* 8041FC3C  2C 03 00 00 */	cmpwi r3, 0
/* 8041FC40  40 82 00 34 */	bne lbl_8041FC74
/* 8041FC44  80 9E 00 00 */	lwz r4, 0(r30)
/* 8041FC48  7F A3 EB 78 */	mr r3, r29
/* 8041FC4C  38 A0 00 01 */	li r5, 1
/* 8041FC50  38 C0 00 04 */	li r6, 4
/* 8041FC54  4B FF DE 29 */	bl title_fade
/* 8041FC58  2C 03 00 00 */	cmpwi r3, 0
/* 8041FC5C  41 82 00 14 */	beq lbl_8041FC70
/* 8041FC60  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041FC64  4B F7 DF 21 */	bl mEv_set_keep
/* 8041FC68  3B E0 00 01 */	li r31, 1
/* 8041FC6C  48 00 00 08 */	b lbl_8041FC74
lbl_8041FC70:
/* 8041FC70  3B E0 00 00 */	li r31, 0
lbl_8041FC74:
/* 8041FC74  2C 1F 00 00 */	cmpwi r31, 0
/* 8041FC78  41 82 00 1C */	beq lbl_8041FC94
/* 8041FC7C  7F A3 EB 78 */	mr r3, r29
/* 8041FC80  38 80 00 04 */	li r4, 4
/* 8041FC84  4B FF BF A5 */	bl clean_FG
/* 8041FC88  7F A3 EB 78 */	mr r3, r29
/* 8041FC8C  7F C4 F3 78 */	mr r4, r30
/* 8041FC90  4B FF FD 19 */	bl field_day_ct
lbl_8041FC94:
/* 8041FC94  7F E3 FB 78 */	mr r3, r31
lbl_8041FC98:
/* 8041FC98  39 61 00 20 */	addi r11, r1, 0x20
/* 8041FC9C  4B C7 B2 85 */	bl func_8009AF20
/* 8041FCA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041FCA4  7C 08 03 A6 */	mtlr r0
/* 8041FCA8  38 21 00 20 */	addi r1, r1, 0x20
/* 8041FCAC  4E 80 00 20 */	blr 
