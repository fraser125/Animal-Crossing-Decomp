lbl_803AF938:
/* 803AF938  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AF93C  7C 08 02 A6 */	mflr r0
/* 803AF940  2C 08 00 00 */	cmpwi r8, 0
/* 803AF944  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AF948  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803AF94C  7C 7F 1B 78 */	mr r31, r3
/* 803AF950  40 82 00 14 */	bne lbl_803AF964
/* 803AF954  80 7F 02 D0 */	lwz r3, 0x2d0(r31)
/* 803AF958  4B FF FF 79 */	bl mFont_gfxSetPrimColor
/* 803AF95C  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 803AF960  48 00 00 10 */	b lbl_803AF970
lbl_803AF964:
/* 803AF964  80 7F 02 F0 */	lwz r3, 0x2f0(r31)
/* 803AF968  4B FF FF 69 */	bl mFont_gfxSetPrimColor
/* 803AF96C  90 7F 02 F0 */	stw r3, 0x2f0(r31)
lbl_803AF970:
/* 803AF970  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AF974  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803AF978  7C 08 03 A6 */	mtlr r0
/* 803AF97C  38 21 00 10 */	addi r1, r1, 0x10
/* 803AF980  4E 80 00 20 */	blr 
