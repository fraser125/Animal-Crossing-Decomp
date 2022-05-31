lbl_803C9C5C:
/* 803C9C5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C9C60  7C 08 02 A6 */	mflr r0
/* 803C9C64  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C9C68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C9C6C  7C 7F 1B 79 */	or. r31, r3, r3
/* 803C9C70  41 82 00 24 */	beq lbl_803C9C94
/* 803C9C74  88 64 00 10 */	lbz r3, 0x10(r4)
/* 803C9C78  4B FF FF 45 */	bl mNW_PaletteIdx2Palette
/* 803C9C7C  7F E4 FB 78 */	mr r4, r31
/* 803C9C80  38 A0 00 20 */	li r5, 0x20
/* 803C9C84  4B C9 33 99 */	bl func_8005D01C
/* 803C9C88  7F E3 FB 78 */	mr r3, r31
/* 803C9C8C  38 80 00 20 */	li r4, 0x20
/* 803C9C90  4B CA FF 8D */	bl DCStoreRangeNoSync
lbl_803C9C94:
/* 803C9C94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C9C98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C9C9C  7C 08 03 A6 */	mtlr r0
/* 803C9CA0  38 21 00 10 */	addi r1, r1, 0x10
/* 803C9CA4  4E 80 00 20 */	blr 
