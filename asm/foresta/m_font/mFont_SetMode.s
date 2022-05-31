lbl_803AF86C:
/* 803AF86C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803AF870  7C 08 02 A6 */	mflr r0
/* 803AF874  2C 04 00 00 */	cmpwi r4, 0
/* 803AF878  90 01 00 24 */	stw r0, 0x24(r1)
/* 803AF87C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803AF880  7C 7F 1B 78 */	mr r31, r3
/* 803AF884  40 82 00 20 */	bne lbl_803AF8A4
/* 803AF888  80 1F 02 D0 */	lwz r0, 0x2d0(r31)
/* 803AF88C  38 61 00 08 */	addi r3, r1, 8
/* 803AF890  90 01 00 08 */	stw r0, 8(r1)
/* 803AF894  4B FF FF B5 */	bl mFont_gppSetMode
/* 803AF898  80 01 00 08 */	lwz r0, 8(r1)
/* 803AF89C  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 803AF8A0  48 00 00 1C */	b lbl_803AF8BC
lbl_803AF8A4:
/* 803AF8A4  80 1F 02 F0 */	lwz r0, 0x2f0(r31)
/* 803AF8A8  38 61 00 08 */	addi r3, r1, 8
/* 803AF8AC  90 01 00 08 */	stw r0, 8(r1)
/* 803AF8B0  4B FF FF 99 */	bl mFont_gppSetMode
/* 803AF8B4  80 01 00 08 */	lwz r0, 8(r1)
/* 803AF8B8  90 1F 02 F0 */	stw r0, 0x2f0(r31)
lbl_803AF8BC:
/* 803AF8BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803AF8C0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803AF8C4  7C 08 03 A6 */	mtlr r0
/* 803AF8C8  38 21 00 20 */	addi r1, r1, 0x20
/* 803AF8CC  4E 80 00 20 */	blr 
