lbl_805C440C:
/* 805C440C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C4410  7C 08 02 A6 */	mflr r0
/* 805C4414  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C4418  39 61 00 20 */	addi r11, r1, 0x20
/* 805C441C  4B AD 6A B9 */	bl func_8009AED4
/* 805C4420  7C 7D 1B 78 */	mr r29, r3
/* 805C4424  7C 9E 23 78 */	mr r30, r4
/* 805C4428  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805C442C  3B E5 06 84 */	addi r31, r5, 0x684
/* 805C4430  81 85 06 94 */	lwz r12, 0x694(r5)
/* 805C4434  7D 89 03 A6 */	mtctr r12
/* 805C4438  4E 80 04 21 */	bctrl 
/* 805C443C  7F A3 EB 78 */	mr r3, r29
/* 805C4440  7F C4 F3 78 */	mr r4, r30
/* 805C4444  7F E5 FB 78 */	mr r5, r31
/* 805C4448  4B FF F9 81 */	bl mBN_set_frame_dl
/* 805C444C  7F A3 EB 78 */	mr r3, r29
/* 805C4450  7F C4 F3 78 */	mr r4, r30
/* 805C4454  7F E5 FB 78 */	mr r5, r31
/* 805C4458  4B FF FC BD */	bl mBN_set_character_dl
/* 805C445C  39 61 00 20 */	addi r11, r1, 0x20
/* 805C4460  4B AD 6A C1 */	bl func_8009AF20
/* 805C4464  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C4468  7C 08 03 A6 */	mtlr r0
/* 805C446C  38 21 00 20 */	addi r1, r1, 0x20
/* 805C4470  4E 80 00 20 */	blr 
