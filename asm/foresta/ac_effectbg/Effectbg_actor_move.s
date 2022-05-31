lbl_804185C8:
/* 804185C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804185CC  7C 08 02 A6 */	mflr r0
/* 804185D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804185D4  39 61 00 20 */	addi r11, r1, 0x20
/* 804185D8  4B C8 28 FD */	bl func_8009AED4
/* 804185DC  3C 60 81 1D */	lis r3, efbg_start_p@ha /* 0x811CB828@ha */
/* 804185E0  7C 9D 23 78 */	mr r29, r4
/* 804185E4  83 E3 B8 28 */	lwz r31, efbg_start_p@l(r3)  /* 0x811CB828@l */
/* 804185E8  3B C0 00 00 */	li r30, 0
lbl_804185EC:
/* 804185EC  88 1F 03 C4 */	lbz r0, 0x3c4(r31)
/* 804185F0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804185F4  41 82 00 10 */	beq lbl_80418604
/* 804185F8  7F E3 FB 78 */	mr r3, r31
/* 804185FC  7F A4 EB 78 */	mr r4, r29
/* 80418600  4B FF FA DD */	bl EffectBG_object_move
lbl_80418604:
/* 80418604  3B DE 00 01 */	addi r30, r30, 1
/* 80418608  3B FF 03 D0 */	addi r31, r31, 0x3d0
/* 8041860C  2C 1E 00 03 */	cmpwi r30, 3
/* 80418610  41 80 FF DC */	blt lbl_804185EC
/* 80418614  39 61 00 20 */	addi r11, r1, 0x20
/* 80418618  4B C8 29 09 */	bl func_8009AF20
/* 8041861C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80418620  7C 08 03 A6 */	mtlr r0
/* 80418624  38 21 00 20 */	addi r1, r1, 0x20
/* 80418628  4E 80 00 20 */	blr 
