lbl_805DC458:
/* 805DC458  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DC45C  7C 08 02 A6 */	mflr r0
/* 805DC460  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DC464  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DC468  93 C1 00 08 */	stw r30, 8(r1)
/* 805DC46C  7C 9E 23 78 */	mr r30, r4
/* 805DC470  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805DC474  83 E5 09 E4 */	lwz r31, 0x9e4(r5)
/* 805DC478  48 00 D3 A9 */	bl mNW_get_image_no
/* 805DC47C  1C 1E 02 20 */	mulli r0, r30, 0x220
/* 805DC480  80 7F 00 04 */	lwz r3, 4(r31)
/* 805DC484  7C 63 02 14 */	add r3, r3, r0
/* 805DC488  88 63 00 10 */	lbz r3, 0x10(r3)
/* 805DC48C  4B DE D7 31 */	bl mNW_PaletteIdx2Palette
/* 805DC490  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DC494  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DC498  83 C1 00 08 */	lwz r30, 8(r1)
/* 805DC49C  7C 08 03 A6 */	mtlr r0
/* 805DC4A0  38 21 00 10 */	addi r1, r1, 0x10
/* 805DC4A4  4E 80 00 20 */	blr 
