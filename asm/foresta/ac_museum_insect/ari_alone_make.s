lbl_8045B2BC:
/* 8045B2BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045B2C0  7C 08 02 A6 */	mflr r0
/* 8045B2C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045B2C8  38 00 00 0F */	li r0, 0xf
/* 8045B2CC  7C 09 03 A6 */	mtctr r0
lbl_8045B2D0:
/* 8045B2D0  A8 03 00 8C */	lha r0, 0x8c(r3)
/* 8045B2D4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8045B2D8  40 82 00 0C */	bne lbl_8045B2E4
/* 8045B2DC  4B FF FE E5 */	bl ari_alone_ct
/* 8045B2E0  48 00 00 0C */	b lbl_8045B2EC
lbl_8045B2E4:
/* 8045B2E4  38 63 00 94 */	addi r3, r3, 0x94
/* 8045B2E8  42 00 FF E8 */	bdnz lbl_8045B2D0
lbl_8045B2EC:
/* 8045B2EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045B2F0  7C 08 03 A6 */	mtlr r0
/* 8045B2F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8045B2F8  4E 80 00 20 */	blr 
