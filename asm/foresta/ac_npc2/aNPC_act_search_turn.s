lbl_8053F0A8:
/* 8053F0A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053F0AC  7C 08 02 A6 */	mflr r0
/* 8053F0B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053F0B4  39 61 00 20 */	addi r11, r1, 0x20
/* 8053F0B8  4B B5 BE 1D */	bl func_8009AED4
/* 8053F0BC  7C 7D 1B 78 */	mr r29, r3
/* 8053F0C0  3B C0 00 01 */	li r30, 1
/* 8053F0C4  83 E3 09 2C */	lwz r31, 0x92c(r3)
/* 8053F0C8  7F E3 FB 78 */	mr r3, r31
/* 8053F0CC  4B FF FC 49 */	bl aNPC_check_live_target
/* 8053F0D0  2C 03 00 00 */	cmpwi r3, 0
/* 8053F0D4  40 82 00 0C */	bne lbl_8053F0E0
/* 8053F0D8  3B C0 00 00 */	li r30, 0
/* 8053F0DC  48 00 00 28 */	b lbl_8053F104
lbl_8053F0E0:
/* 8053F0E0  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8053F0E4  7F A3 EB 78 */	mr r3, r29
/* 8053F0E8  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 8053F0EC  4B FF EA 3D */	bl aNPC_set_dst_pos
/* 8053F0F0  A8 7D 00 DE */	lha r3, 0xde(r29)
/* 8053F0F4  A8 1D 09 24 */	lha r0, 0x924(r29)
/* 8053F0F8  7C 03 00 00 */	cmpw r3, r0
/* 8053F0FC  40 82 00 08 */	bne lbl_8053F104
/* 8053F100  3B C0 00 00 */	li r30, 0
lbl_8053F104:
/* 8053F104  7F C3 F3 78 */	mr r3, r30
/* 8053F108  39 61 00 20 */	addi r11, r1, 0x20
/* 8053F10C  4B B5 BE 15 */	bl func_8009AF20
/* 8053F110  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053F114  7C 08 03 A6 */	mtlr r0
/* 8053F118  38 21 00 20 */	addi r1, r1, 0x20
/* 8053F11C  4E 80 00 20 */	blr 
