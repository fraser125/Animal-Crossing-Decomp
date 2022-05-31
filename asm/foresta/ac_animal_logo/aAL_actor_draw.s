lbl_80411604:
/* 80411604  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80411608  7C 08 02 A6 */	mflr r0
/* 8041160C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80411610  39 61 00 20 */	addi r11, r1, 0x20
/* 80411614  4B C8 98 C1 */	bl func_8009AED4
/* 80411618  83 C4 00 00 */	lwz r30, 0(r4)
/* 8041161C  7C 9D 23 78 */	mr r29, r4
/* 80411620  7C 7F 1B 78 */	mr r31, r3
/* 80411624  38 80 00 01 */	li r4, 1
/* 80411628  7F C3 F3 78 */	mr r3, r30
/* 8041162C  4B F9 EB 0D */	bl mFont_SetMatrix
/* 80411630  80 1F 01 74 */	lwz r0, 0x174(r31)
/* 80411634  2C 00 00 01 */	cmpwi r0, 1
/* 80411638  41 80 00 10 */	blt lbl_80411648
/* 8041163C  7F C3 F3 78 */	mr r3, r30
/* 80411640  7F E4 FB 78 */	mr r4, r31
/* 80411644  4B FF FA D9 */	bl aAL_back_draw
lbl_80411648:
/* 80411648  7F A3 EB 78 */	mr r3, r29
/* 8041164C  7F E4 FB 78 */	mr r4, r31
/* 80411650  4B FF FE BD */	bl aAL_title_draw
/* 80411654  80 1F 01 74 */	lwz r0, 0x174(r31)
/* 80411658  2C 00 00 02 */	cmpwi r0, 2
/* 8041165C  41 80 00 18 */	blt lbl_80411674
/* 80411660  7F E3 FB 78 */	mr r3, r31
/* 80411664  7F C4 F3 78 */	mr r4, r30
/* 80411668  4B FF F6 C9 */	bl aAL_copyright_draw
/* 8041166C  7F C3 F3 78 */	mr r3, r30
/* 80411670  4B FF F9 ED */	bl aAL_tm_draw
lbl_80411674:
/* 80411674  7F C3 F3 78 */	mr r3, r30
/* 80411678  38 80 00 01 */	li r4, 1
/* 8041167C  4B F9 E1 F1 */	bl mFont_SetMode
/* 80411680  38 60 00 00 */	li r3, 0
/* 80411684  4B FF 71 B5 */	bl padmgr_isConnectedController
/* 80411688  2C 03 00 00 */	cmpwi r3, 0
/* 8041168C  41 82 00 28 */	beq lbl_804116B4
/* 80411690  80 1F 01 74 */	lwz r0, 0x174(r31)
/* 80411694  2C 00 00 06 */	cmpwi r0, 6
/* 80411698  40 80 00 1C */	bge lbl_804116B4
/* 8041169C  2C 00 00 03 */	cmpwi r0, 3
/* 804116A0  40 80 00 08 */	bge lbl_804116A8
/* 804116A4  48 00 00 10 */	b lbl_804116B4
lbl_804116A8:
/* 804116A8  7F E3 FB 78 */	mr r3, r31
/* 804116AC  7F C4 F3 78 */	mr r4, r30
/* 804116B0  4B FF FB 7D */	bl aAL_press_start_draw
lbl_804116B4:
/* 804116B4  7F C3 F3 78 */	mr r3, r30
/* 804116B8  38 80 00 01 */	li r4, 1
/* 804116BC  4B F9 EB 7D */	bl mFont_UnSetMatrix
/* 804116C0  7F A3 EB 78 */	mr r3, r29
/* 804116C4  7F C4 F3 78 */	mr r4, r30
/* 804116C8  4B FF 35 2D */	bl game_debug_draw_last
/* 804116CC  7F C3 F3 78 */	mr r3, r30
/* 804116D0  4B FF 36 A9 */	bl game_draw_last
/* 804116D4  39 61 00 20 */	addi r11, r1, 0x20
/* 804116D8  4B C8 98 49 */	bl func_8009AF20
/* 804116DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804116E0  7C 08 03 A6 */	mtlr r0
/* 804116E4  38 21 00 20 */	addi r1, r1, 0x20
/* 804116E8  4E 80 00 20 */	blr 
