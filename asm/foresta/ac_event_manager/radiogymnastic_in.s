lbl_8041F91C:
/* 8041F91C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041F920  7C 08 02 A6 */	mflr r0
/* 8041F924  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041F928  39 61 00 20 */	addi r11, r1, 0x20
/* 8041F92C  4B C7 B5 A9 */	bl func_8009AED4
/* 8041F930  7C 7D 1B 78 */	mr r29, r3
/* 8041F934  7C 9E 23 78 */	mr r30, r4
/* 8041F938  38 A0 00 04 */	li r5, 4
/* 8041F93C  4B FF D2 75 */	bl show_actor_at_wade_checkless
/* 8041F940  7C 7F 1B 78 */	mr r31, r3
/* 8041F944  7F A3 EB 78 */	mr r3, r29
/* 8041F948  7F C4 F3 78 */	mr r4, r30
/* 8041F94C  38 A0 00 06 */	li r5, 6
/* 8041F950  4B FF D2 61 */	bl show_actor_at_wade_checkless
/* 8041F954  3C 1F 00 01 */	addis r0, r31, 1
/* 8041F958  28 00 FF FF */	cmplwi r0, 0xffff
/* 8041F95C  41 82 00 10 */	beq lbl_8041F96C
/* 8041F960  3C 03 00 01 */	addis r0, r3, 1
/* 8041F964  28 00 FF FF */	cmplwi r0, 0xffff
/* 8041F968  40 82 00 0C */	bne lbl_8041F974
lbl_8041F96C:
/* 8041F96C  38 60 00 02 */	li r3, 2
/* 8041F970  48 00 00 20 */	b lbl_8041F990
lbl_8041F974:
/* 8041F974  28 1F 00 00 */	cmplwi r31, 0
/* 8041F978  41 82 00 14 */	beq lbl_8041F98C
/* 8041F97C  28 03 00 00 */	cmplwi r3, 0
/* 8041F980  41 82 00 0C */	beq lbl_8041F98C
/* 8041F984  38 60 00 01 */	li r3, 1
/* 8041F988  48 00 00 08 */	b lbl_8041F990
lbl_8041F98C:
/* 8041F98C  38 60 00 00 */	li r3, 0
lbl_8041F990:
/* 8041F990  39 61 00 20 */	addi r11, r1, 0x20
/* 8041F994  4B C7 B5 8D */	bl func_8009AF20
/* 8041F998  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041F99C  7C 08 03 A6 */	mtlr r0
/* 8041F9A0  38 21 00 20 */	addi r1, r1, 0x20
/* 8041F9A4  4E 80 00 20 */	blr 
