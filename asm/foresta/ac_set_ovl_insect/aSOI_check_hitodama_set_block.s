lbl_8049B250:
/* 8049B250  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049B254  7C 08 02 A6 */	mflr r0
/* 8049B258  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049B25C  39 61 00 20 */	addi r11, r1, 0x20
/* 8049B260  4B BF FC 75 */	bl func_8009AED4
/* 8049B264  7C 7D 1B 78 */	mr r29, r3
/* 8049B268  7C 9E 23 78 */	mr r30, r4
/* 8049B26C  3B E0 00 00 */	li r31, 0
/* 8049B270  4B FF FE 79 */	bl aSOI_check_countdown_event
/* 8049B274  2C 03 00 00 */	cmpwi r3, 0
/* 8049B278  40 82 00 4C */	bne lbl_8049B2C4
/* 8049B27C  80 9D 41 80 */	lwz r4, 0x4180(r29)
/* 8049B280  38 00 00 05 */	li r0, 5
/* 8049B284  80 7D 41 84 */	lwz r3, 0x4184(r29)
/* 8049B288  38 C0 00 00 */	li r6, 0
/* 8049B28C  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 8049B290  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 8049B294  7C 09 03 A6 */	mtctr r0
lbl_8049B298:
/* 8049B298  7C 7E 32 14 */	add r3, r30, r6
/* 8049B29C  88 03 00 00 */	lbz r0, 0(r3)
/* 8049B2A0  7C 04 00 40 */	cmplw r4, r0
/* 8049B2A4  40 82 00 18 */	bne lbl_8049B2BC
/* 8049B2A8  88 03 00 05 */	lbz r0, 5(r3)
/* 8049B2AC  7C 05 00 40 */	cmplw r5, r0
/* 8049B2B0  40 82 00 0C */	bne lbl_8049B2BC
/* 8049B2B4  3B E0 00 01 */	li r31, 1
/* 8049B2B8  48 00 00 0C */	b lbl_8049B2C4
lbl_8049B2BC:
/* 8049B2BC  38 C6 00 01 */	addi r6, r6, 1
/* 8049B2C0  42 00 FF D8 */	bdnz lbl_8049B298
lbl_8049B2C4:
/* 8049B2C4  7F E3 FB 78 */	mr r3, r31
/* 8049B2C8  39 61 00 20 */	addi r11, r1, 0x20
/* 8049B2CC  4B BF FC 55 */	bl func_8009AF20
/* 8049B2D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049B2D4  7C 08 03 A6 */	mtlr r0
/* 8049B2D8  38 21 00 20 */	addi r1, r1, 0x20
/* 8049B2DC  4E 80 00 20 */	blr 
