lbl_805CF1E4:
/* 805CF1E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805CF1E8  7C 08 02 A6 */	mflr r0
/* 805CF1EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CF1F0  39 61 00 20 */	addi r11, r1, 0x20
/* 805CF1F4  4B AC BC E1 */	bl func_8009AED4
/* 805CF1F8  7C 7D 1B 78 */	mr r29, r3
/* 805CF1FC  7C 9E 23 78 */	mr r30, r4
/* 805CF200  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805CF204  3B E5 05 64 */	addi r31, r5, 0x564
/* 805CF208  81 85 05 74 */	lwz r12, 0x574(r5)
/* 805CF20C  7D 89 03 A6 */	mtctr r12
/* 805CF210  4E 80 04 21 */	bctrl 
/* 805CF214  7F A3 EB 78 */	mr r3, r29
/* 805CF218  7F C4 F3 78 */	mr r4, r30
/* 805CF21C  7F E5 FB 78 */	mr r5, r31
/* 805CF220  4B FF FC 1D */	bl mCW_set_frame_dl
/* 805CF224  7F A3 EB 78 */	mr r3, r29
/* 805CF228  7F C4 F3 78 */	mr r4, r30
/* 805CF22C  7F E5 FB 78 */	mr r5, r31
/* 805CF230  4B FF FD 61 */	bl mCW_set_character_dl
/* 805CF234  39 61 00 20 */	addi r11, r1, 0x20
/* 805CF238  4B AC BC E9 */	bl func_8009AF20
/* 805CF23C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CF240  7C 08 03 A6 */	mtlr r0
/* 805CF244  38 21 00 20 */	addi r1, r1, 0x20
/* 805CF248  4E 80 00 20 */	blr 
