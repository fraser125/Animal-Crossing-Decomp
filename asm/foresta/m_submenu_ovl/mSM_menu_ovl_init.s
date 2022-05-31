lbl_805EF440:
/* 805EF440  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805EF444  7C 08 02 A6 */	mflr r0
/* 805EF448  90 01 00 34 */	stw r0, 0x34(r1)
/* 805EF44C  39 61 00 30 */	addi r11, r1, 0x30
/* 805EF450  4B AA BA 75 */	bl func_8009AEC4
/* 805EF454  3C A0 81 21 */	lis r5, ovl_base@ha /* 0x812126F8@ha */
/* 805EF458  3C C0 80 6D */	lis r6, data_806CE450@ha /* 0x806CE450@ha */
/* 805EF45C  7C 7E 1B 78 */	mr r30, r3
/* 805EF460  38 80 0A 04 */	li r4, 0xa04
/* 805EF464  3B E5 26 F8 */	addi r31, r5, ovl_base@l /* 0x812126F8@l */
/* 805EF468  3B 26 E4 50 */	addi r25, r6, data_806CE450@l /* 0x806CE450@l */
/* 805EF46C  93 E3 00 2C */	stw r31, 0x2c(r3)
/* 805EF470  7F E3 FB 78 */	mr r3, r31
/* 805EF474  4B A6 DB F5 */	bl bzero
/* 805EF478  38 60 00 00 */	li r3, 0
/* 805EF47C  38 00 00 1F */	li r0, 0x1f
/* 805EF480  7C 65 1B 78 */	mr r5, r3
/* 805EF484  38 99 0D 54 */	addi r4, r25, 0xd54
/* 805EF488  7C 09 03 A6 */	mtctr r0
lbl_805EF48C:
/* 805EF48C  38 03 00 1C */	addi r0, r3, 0x1c
/* 805EF490  38 63 00 20 */	addi r3, r3, 0x20
/* 805EF494  7C A4 01 2E */	stwx r5, r4, r0
/* 805EF498  42 00 FF F4 */	bdnz lbl_805EF48C
/* 805EF49C  38 B9 11 34 */	addi r5, r25, 0x1134
/* 805EF4A0  38 00 00 00 */	li r0, 0
/* 805EF4A4  38 99 11 54 */	addi r4, r25, 0x1154
/* 805EF4A8  38 79 11 74 */	addi r3, r25, 0x1174
/* 805EF4AC  90 05 00 1C */	stw r0, 0x1c(r5)
/* 805EF4B0  90 04 00 1C */	stw r0, 0x1c(r4)
/* 805EF4B4  90 03 00 1C */	stw r0, 0x1c(r3)
/* 805EF4B8  4B A5 BA 99 */	bl emu64_refresh
/* 805EF4BC  38 00 00 00 */	li r0, 0
/* 805EF4C0  3C 60 80 3C */	lis r3, none_proc1@ha /* 0x803BB54C@ha */
/* 805EF4C4  90 1E 00 08 */	stw r0, 8(r30)
/* 805EF4C8  3B 23 B5 4C */	addi r25, r3, none_proc1@l /* 0x803BB54C@l */
/* 805EF4CC  3B 40 20 00 */	li r26, 0x2000
/* 805EF4D0  3C 80 80 5F */	lis r4, mSM_return_func@ha /* 0x805EF084@ha */
/* 805EF4D4  93 3F 09 0C */	stw r25, 0x90c(r31)
/* 805EF4D8  3C 60 80 5F */	lis r3, mSM_move_Move@ha /* 0x805EF280@ha */
/* 805EF4DC  3D 60 80 5F */	lis r11, mSM_move_End@ha /* 0x805EF360@ha */
/* 805EF4E0  3D 40 80 5F */	lis r10, mSM_move_chg_base@ha /* 0x805EEE90@ha */
/* 805EF4E4  93 3F 09 10 */	stw r25, 0x910(r31)
/* 805EF4E8  3D 20 80 5F */	lis r9, mSM_set_char_matrix@ha /* 0x805ED580@ha */
/* 805EF4EC  3B 64 F0 84 */	addi r27, r4, mSM_return_func@l /* 0x805EF084@l */
/* 805EF4F0  3D 00 80 5F */	lis r8, mSM_cbuf_copy@ha /* 0x805ED5AC@ha */
/* 805EF4F4  93 3F 09 14 */	stw r25, 0x914(r31)
/* 805EF4F8  3C E0 80 5F */	lis r7, mSM_set_drawMode@ha /* 0x805ED9B0@ha */
/* 805EF4FC  3C C0 80 5F */	lis r6, mSM_draw_item@ha /* 0x805EE4E0@ha */
/* 805EF500  3C A0 80 5F */	lis r5, mSM_draw_mail@ha /* 0x805EE780@ha */
/* 805EF504  93 3F 09 18 */	stw r25, 0x918(r31)
/* 805EF508  3C 80 80 5F */	lis r4, func_805ED014@ha /* 0x805ED014@ha */
/* 805EF50C  3B 83 F2 80 */	addi r28, r3, mSM_move_Move@l /* 0x805EF280@l */
/* 805EF510  3C 60 80 5F */	lis r3, mSM_change_view@ha /* 0x805ED1E8@ha */
/* 805EF514  93 3F 09 1C */	stw r25, 0x91c(r31)
/* 805EF518  3B AB F3 60 */	addi r29, r11, mSM_move_End@l /* 0x805EF360@l */
/* 805EF51C  39 8A EE 90 */	addi r12, r10, mSM_move_chg_base@l /* 0x805EEE90@l */
/* 805EF520  39 69 D5 80 */	addi r11, r9, mSM_set_char_matrix@l /* 0x805ED580@l */
/* 805EF524  93 3F 09 20 */	stw r25, 0x920(r31)
/* 805EF528  39 48 D5 AC */	addi r10, r8, mSM_cbuf_copy@l /* 0x805ED5AC@l */
/* 805EF52C  39 27 D9 B0 */	addi r9, r7, mSM_set_drawMode@l /* 0x805ED9B0@l */
/* 805EF530  39 06 E4 E0 */	addi r8, r6, mSM_draw_item@l /* 0x805EE4E0@l */
/* 805EF534  B3 5F 09 32 */	sth r26, 0x932(r31)
/* 805EF538  38 E5 E7 80 */	addi r7, r5, mSM_draw_mail@l /* 0x805EE780@l */
/* 805EF53C  38 C4 D0 14 */	addi r6, r4, func_805ED014@l /* 0x805ED014@l */
/* 805EF540  38 A3 D1 E8 */	addi r5, r3, mSM_change_view@l /* 0x805ED1E8@l */
/* 805EF544  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805EF548  7F C3 F3 78 */	mr r3, r30
/* 805EF54C  93 64 09 40 */	stw r27, 0x940(r4)
/* 805EF550  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805EF554  93 84 09 44 */	stw r28, 0x944(r4)
/* 805EF558  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805EF55C  93 A4 09 48 */	stw r29, 0x948(r4)
/* 805EF560  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805EF564  91 84 09 4C */	stw r12, 0x94c(r4)
/* 805EF568  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805EF56C  91 64 09 50 */	stw r11, 0x950(r4)
/* 805EF570  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805EF574  91 44 09 54 */	stw r10, 0x954(r4)
/* 805EF578  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805EF57C  91 24 09 58 */	stw r9, 0x958(r4)
/* 805EF580  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805EF584  91 04 09 5C */	stw r8, 0x95c(r4)
/* 805EF588  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805EF58C  90 E4 09 60 */	stw r7, 0x960(r4)
/* 805EF590  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805EF594  90 C4 09 64 */	stw r6, 0x964(r4)
/* 805EF598  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805EF59C  90 A4 09 6C */	stw r5, 0x96c(r4)
/* 805EF5A0  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 805EF5A4  90 04 09 68 */	stw r0, 0x968(r4)
/* 805EF5A8  4B FF FA 1D */	bl mSM_set_proc
/* 805EF5AC  3C 60 80 5F */	lis r3, mSM_menu_ovl_move@ha /* 0x805EF380@ha */
/* 805EF5B0  3C 80 80 5F */	lis r4, mSM_menu_ovl_draw@ha /* 0x805EF3E8@ha */
/* 805EF5B4  38 03 F3 80 */	addi r0, r3, mSM_menu_ovl_move@l /* 0x805EF380@l */
/* 805EF5B8  7F C3 F3 78 */	mr r3, r30
/* 805EF5BC  90 1E 00 30 */	stw r0, 0x30(r30)
/* 805EF5C0  38 04 F3 E8 */	addi r0, r4, mSM_menu_ovl_draw@l /* 0x805EF3E8@l */
/* 805EF5C4  90 1E 00 34 */	stw r0, 0x34(r30)
/* 805EF5C8  4B FF FD B9 */	bl mSM_menu_ovl_move
/* 805EF5CC  39 61 00 30 */	addi r11, r1, 0x30
/* 805EF5D0  4B AA B9 41 */	bl func_8009AF10
/* 805EF5D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805EF5D8  7C 08 03 A6 */	mtlr r0
/* 805EF5DC  38 21 00 30 */	addi r1, r1, 0x30
/* 805EF5E0  4E 80 00 20 */	blr 
