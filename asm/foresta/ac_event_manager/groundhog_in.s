lbl_804214DC:
/* 804214DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804214E0  7C 08 02 A6 */	mflr r0
/* 804214E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804214E8  39 61 00 20 */	addi r11, r1, 0x20
/* 804214EC  4B C7 99 E9 */	bl func_8009AED4
/* 804214F0  7C 7D 1B 78 */	mr r29, r3
/* 804214F4  7C 9E 23 78 */	mr r30, r4
/* 804214F8  3B E0 00 00 */	li r31, 0
/* 804214FC  38 A0 00 04 */	li r5, 4
/* 80421500  4B FF B6 B1 */	bl show_actor_at_wade_checkless
/* 80421504  3C 03 00 01 */	addis r0, r3, 1
/* 80421508  28 00 FF FF */	cmplwi r0, 0xffff
/* 8042150C  40 82 00 0C */	bne lbl_80421518
/* 80421510  3B E0 00 02 */	li r31, 2
/* 80421514  48 00 00 10 */	b lbl_80421524
lbl_80421518:
/* 80421518  28 03 00 00 */	cmplwi r3, 0
/* 8042151C  41 82 00 08 */	beq lbl_80421524
/* 80421520  3B E0 00 01 */	li r31, 1
lbl_80421524:
/* 80421524  2C 1F 00 00 */	cmpwi r31, 0
/* 80421528  41 82 00 50 */	beq lbl_80421578
/* 8042152C  38 60 00 07 */	li r3, 7
/* 80421530  38 80 00 00 */	li r4, 0
/* 80421534  4B F7 CB A9 */	bl mEv_get_common_area
/* 80421538  28 03 00 00 */	cmplwi r3, 0
/* 8042153C  41 82 00 3C */	beq lbl_80421578
/* 80421540  80 03 00 00 */	lwz r0, 0(r3)
/* 80421544  2C 00 00 01 */	cmpwi r0, 1
/* 80421548  40 82 00 30 */	bne lbl_80421578
/* 8042154C  7F A3 EB 78 */	mr r3, r29
/* 80421550  38 80 00 04 */	li r4, 4
/* 80421554  4B FF A6 D5 */	bl clean_FG
/* 80421558  38 60 00 EC */	li r3, 0xec
/* 8042155C  4B FF B0 F9 */	bl make_control_actor_without_indoor
/* 80421560  7F A3 EB 78 */	mr r3, r29
/* 80421564  7F C4 F3 78 */	mr r4, r30
/* 80421568  38 A0 00 05 */	li r5, 5
/* 8042156C  38 C0 00 04 */	li r6, 4
/* 80421570  38 E0 00 05 */	li r7, 5
/* 80421574  4B FF B2 B9 */	bl make_FG_in_reserved_block
lbl_80421578:
/* 80421578  7F E3 FB 78 */	mr r3, r31
/* 8042157C  39 61 00 20 */	addi r11, r1, 0x20
/* 80421580  4B C7 99 A1 */	bl func_8009AF20
/* 80421584  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80421588  7C 08 03 A6 */	mtlr r0
/* 8042158C  38 21 00 20 */	addi r1, r1, 0x20
/* 80421590  4E 80 00 20 */	blr 
