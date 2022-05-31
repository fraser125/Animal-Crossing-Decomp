lbl_8041FD90:
/* 8041FD90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041FD94  7C 08 02 A6 */	mflr r0
/* 8041FD98  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041FD9C  39 61 00 20 */	addi r11, r1, 0x20
/* 8041FDA0  4B C7 B1 35 */	bl func_8009AED4
/* 8041FDA4  7C 7D 1B 78 */	mr r29, r3
/* 8041FDA8  7C 9E 23 78 */	mr r30, r4
/* 8041FDAC  80 03 02 34 */	lwz r0, 0x234(r3)
/* 8041FDB0  3B E0 00 02 */	li r31, 2
/* 8041FDB4  2C 00 00 00 */	cmpwi r0, 0
/* 8041FDB8  40 82 00 24 */	bne lbl_8041FDDC
/* 8041FDBC  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041FDC0  38 80 00 01 */	li r4, 1
/* 8041FDC4  4B F7 DC BD */	bl mEv_clear_status
/* 8041FDC8  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041FDCC  38 80 00 20 */	li r4, 0x20
/* 8041FDD0  4B F7 DC 01 */	bl mEv_set_status
/* 8041FDD4  38 60 00 00 */	li r3, 0
/* 8041FDD8  48 00 00 68 */	b lbl_8041FE40
lbl_8041FDDC:
/* 8041FDDC  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041FDE0  4B F7 DE 0D */	bl mEv_check_keep
/* 8041FDE4  2C 03 00 00 */	cmpwi r3, 0
/* 8041FDE8  40 82 00 38 */	bne lbl_8041FE20
/* 8041FDEC  80 9E 00 00 */	lwz r4, 0(r30)
/* 8041FDF0  7F A3 EB 78 */	mr r3, r29
/* 8041FDF4  38 A0 00 01 */	li r5, 1
/* 8041FDF8  38 C0 00 04 */	li r6, 4
/* 8041FDFC  4B FF DC 81 */	bl title_fade
/* 8041FE00  2C 03 00 00 */	cmpwi r3, 0
/* 8041FE04  41 82 00 18 */	beq lbl_8041FE1C
/* 8041FE08  4B FF FC F1 */	bl field_day_delete
/* 8041FE0C  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041FE10  4B F7 DD 75 */	bl mEv_set_keep
/* 8041FE14  3B E0 00 01 */	li r31, 1
/* 8041FE18  48 00 00 08 */	b lbl_8041FE20
lbl_8041FE1C:
/* 8041FE1C  3B E0 00 00 */	li r31, 0
lbl_8041FE20:
/* 8041FE20  2C 1F 00 00 */	cmpwi r31, 0
/* 8041FE24  41 82 00 18 */	beq lbl_8041FE3C
/* 8041FE28  38 60 00 7F */	li r3, 0x7f
/* 8041FE2C  4B FF C8 29 */	bl make_control_actor_without_indoor
/* 8041FE30  7F A3 EB 78 */	mr r3, r29
/* 8041FE34  7F C4 F3 78 */	mr r4, r30
/* 8041FE38  4B FF FB 71 */	bl field_day_ct
lbl_8041FE3C:
/* 8041FE3C  7F E3 FB 78 */	mr r3, r31
lbl_8041FE40:
/* 8041FE40  39 61 00 20 */	addi r11, r1, 0x20
/* 8041FE44  4B C7 B0 DD */	bl func_8009AF20
/* 8041FE48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041FE4C  7C 08 03 A6 */	mtlr r0
/* 8041FE50  38 21 00 20 */	addi r1, r1, 0x20
/* 8041FE54  4E 80 00 20 */	blr 
