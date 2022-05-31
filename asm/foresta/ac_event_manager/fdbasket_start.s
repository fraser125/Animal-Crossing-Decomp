lbl_8041FEEC:
/* 8041FEEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041FEF0  7C 08 02 A6 */	mflr r0
/* 8041FEF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041FEF8  39 61 00 20 */	addi r11, r1, 0x20
/* 8041FEFC  4B C7 AF D9 */	bl func_8009AED4
/* 8041FF00  7C 7D 1B 78 */	mr r29, r3
/* 8041FF04  7C 9E 23 78 */	mr r30, r4
/* 8041FF08  80 03 02 34 */	lwz r0, 0x234(r3)
/* 8041FF0C  3B E0 00 02 */	li r31, 2
/* 8041FF10  2C 00 00 00 */	cmpwi r0, 0
/* 8041FF14  40 82 00 24 */	bne lbl_8041FF38
/* 8041FF18  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041FF1C  38 80 00 01 */	li r4, 1
/* 8041FF20  4B F7 DB 61 */	bl mEv_clear_status
/* 8041FF24  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041FF28  38 80 00 20 */	li r4, 0x20
/* 8041FF2C  4B F7 DA A5 */	bl mEv_set_status
/* 8041FF30  38 60 00 00 */	li r3, 0
/* 8041FF34  48 00 00 6C */	b lbl_8041FFA0
lbl_8041FF38:
/* 8041FF38  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041FF3C  4B F7 DC B1 */	bl mEv_check_keep
/* 8041FF40  2C 03 00 00 */	cmpwi r3, 0
/* 8041FF44  40 82 00 38 */	bne lbl_8041FF7C
/* 8041FF48  80 9E 00 00 */	lwz r4, 0(r30)
/* 8041FF4C  7F A3 EB 78 */	mr r3, r29
/* 8041FF50  38 A0 00 01 */	li r5, 1
/* 8041FF54  38 C0 00 04 */	li r6, 4
/* 8041FF58  4B FF DB 25 */	bl title_fade
/* 8041FF5C  2C 03 00 00 */	cmpwi r3, 0
/* 8041FF60  41 82 00 18 */	beq lbl_8041FF78
/* 8041FF64  4B FF FB 95 */	bl field_day_delete
/* 8041FF68  80 7E 00 00 */	lwz r3, 0(r30)
/* 8041FF6C  4B F7 DC 19 */	bl mEv_set_keep
/* 8041FF70  3B E0 00 01 */	li r31, 1
/* 8041FF74  48 00 00 08 */	b lbl_8041FF7C
lbl_8041FF78:
/* 8041FF78  3B E0 00 00 */	li r31, 0
lbl_8041FF7C:
/* 8041FF7C  2C 1F 00 00 */	cmpwi r31, 0
/* 8041FF80  41 82 00 1C */	beq lbl_8041FF9C
/* 8041FF84  7F A3 EB 78 */	mr r3, r29
/* 8041FF88  38 80 00 04 */	li r4, 4
/* 8041FF8C  4B FF BC 9D */	bl clean_FG
/* 8041FF90  7F A3 EB 78 */	mr r3, r29
/* 8041FF94  7F C4 F3 78 */	mr r4, r30
/* 8041FF98  4B FF FA 11 */	bl field_day_ct
lbl_8041FF9C:
/* 8041FF9C  7F E3 FB 78 */	mr r3, r31
lbl_8041FFA0:
/* 8041FFA0  39 61 00 20 */	addi r11, r1, 0x20
/* 8041FFA4  4B C7 AF 7D */	bl func_8009AF20
/* 8041FFA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041FFAC  7C 08 03 A6 */	mtlr r0
/* 8041FFB0  38 21 00 20 */	addi r1, r1, 0x20
/* 8041FFB4  4E 80 00 20 */	blr 
