lbl_80600880:
/* 80600880  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80600884  7C 08 02 A6 */	mflr r0
/* 80600888  90 01 00 24 */	stw r0, 0x24(r1)
/* 8060088C  39 61 00 20 */	addi r11, r1, 0x20
/* 80600890  4B A9 A6 41 */	bl func_8009AED0
/* 80600894  7C BE 2B 78 */	mr r30, r5
/* 80600898  3C C0 80 6D */	lis r6, wr_win_data@ha /* 0x806D19D0@ha */
/* 8060089C  80 E5 00 38 */	lwz r7, 0x38(r5)
/* 806008A0  7C 9D 23 78 */	mr r29, r4
/* 806008A4  38 06 19 D0 */	addi r0, r6, wr_win_data@l /* 0x806D19D0@l */
/* 806008A8  80 84 00 00 */	lwz r4, 0(r4)
/* 806008AC  54 E6 20 36 */	slwi r6, r7, 4
/* 806008B0  7C 7C 1B 78 */	mr r28, r3
/* 806008B4  7F E0 32 14 */	add r31, r0, r6
/* 806008B8  7F E6 FB 78 */	mr r6, r31
/* 806008BC  4B FF FB F1 */	bl mWR_set_frame_dl
/* 806008C0  7F 83 E3 78 */	mr r3, r28
/* 806008C4  7F A4 EB 78 */	mr r4, r29
/* 806008C8  7F C5 F3 78 */	mr r5, r30
/* 806008CC  7F E6 FB 78 */	mr r6, r31
/* 806008D0  4B FF FE 2D */	bl mWR_set_strings
/* 806008D4  39 61 00 20 */	addi r11, r1, 0x20
/* 806008D8  4B A9 A6 45 */	bl func_8009AF1C
/* 806008DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806008E0  7C 08 03 A6 */	mtlr r0
/* 806008E4  38 21 00 20 */	addi r1, r1, 0x20
/* 806008E8  4E 80 00 20 */	blr 
