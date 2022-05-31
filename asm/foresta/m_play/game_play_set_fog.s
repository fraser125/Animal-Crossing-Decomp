lbl_8062A3BC:
/* 8062A3BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062A3C0  7C 08 02 A6 */	mflr r0
/* 8062A3C4  7C 69 1B 78 */	mr r9, r3
/* 8062A3C8  7C 83 23 78 */	mr r3, r4
/* 8062A3CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062A3D0  38 E0 00 00 */	li r7, 0
/* 8062A3D4  88 89 1D 97 */	lbz r4, 0x1d97(r9)
/* 8062A3D8  88 A9 1D 98 */	lbz r5, 0x1d98(r9)
/* 8062A3DC  88 C9 1D 99 */	lbz r6, 0x1d99(r9)
/* 8062A3E0  A9 09 1D 9A */	lha r8, 0x1d9a(r9)
/* 8062A3E4  A9 29 1D 9C */	lha r9, 0x1d9c(r9)
/* 8062A3E8  4B DB AC 79 */	bl gfx_set_fog_nosync
/* 8062A3EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062A3F0  7C 08 03 A6 */	mtlr r0
/* 8062A3F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8062A3F8  4E 80 00 20 */	blr 
