lbl_805D75B8:
/* 805D75B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805D75BC  7C 08 02 A6 */	mflr r0
/* 805D75C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D75C4  39 61 00 20 */	addi r11, r1, 0x20
/* 805D75C8  4B AC 39 0D */	bl func_8009AED4
/* 805D75CC  7C 7D 1B 78 */	mr r29, r3
/* 805D75D0  7C 9E 23 78 */	mr r30, r4
/* 805D75D4  7C BF 2B 78 */	mr r31, r5
/* 805D75D8  4B FF FD 0D */	bl mDE_set_frame_main_dl
/* 805D75DC  7F A3 EB 78 */	mr r3, r29
/* 805D75E0  7F C4 F3 78 */	mr r4, r30
/* 805D75E4  7F E5 FB 78 */	mr r5, r31
/* 805D75E8  4B FF E0 19 */	bl mDE_set_frame_tool_dl
/* 805D75EC  7F A3 EB 78 */	mr r3, r29
/* 805D75F0  7F C4 F3 78 */	mr r4, r30
/* 805D75F4  7F E5 FB 78 */	mr r5, r31
/* 805D75F8  4B FF E3 0D */	bl mDE_set_frame_suuji_dl
/* 805D75FC  7F A3 EB 78 */	mr r3, r29
/* 805D7600  7F C4 F3 78 */	mr r4, r30
/* 805D7604  7F E5 FB 78 */	mr r5, r31
/* 805D7608  4B FF E5 15 */	bl mDE_set_frame_mark_dl
/* 805D760C  7F A3 EB 78 */	mr r3, r29
/* 805D7610  7F C4 F3 78 */	mr r4, r30
/* 805D7614  7F E5 FB 78 */	mr r5, r31
/* 805D7618  4B FF E9 F5 */	bl mDE_set_frame_cursor_dl
/* 805D761C  39 61 00 20 */	addi r11, r1, 0x20
/* 805D7620  4B AC 39 01 */	bl func_8009AF20
/* 805D7624  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805D7628  7C 08 03 A6 */	mtlr r0
/* 805D762C  38 21 00 20 */	addi r1, r1, 0x20
/* 805D7630  4E 80 00 20 */	blr 
