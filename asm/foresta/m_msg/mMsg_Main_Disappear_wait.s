lbl_803C594C:
/* 803C594C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C5950  7C 08 02 A6 */	mflr r0
/* 803C5954  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C5958  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C595C  7C 9F 23 78 */	mr r31, r4
/* 803C5960  93 C1 00 08 */	stw r30, 8(r1)
/* 803C5964  7C 7E 1B 78 */	mr r30, r3
/* 803C5968  4B FF FC 35 */	bl func_803C559C
/* 803C596C  7C 60 1B 78 */	mr r0, r3
/* 803C5970  7F C3 F3 78 */	mr r3, r30
/* 803C5974  7C 04 03 78 */	mr r4, r0
/* 803C5978  4B FF FF A5 */	bl func_803C591C
/* 803C597C  7F C3 F3 78 */	mr r3, r30
/* 803C5980  7F E4 FB 78 */	mr r4, r31
/* 803C5984  4B FF 99 F9 */	bl func_803BF37C
/* 803C5988  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C598C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C5990  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C5994  7C 08 03 A6 */	mtlr r0
/* 803C5998  38 21 00 10 */	addi r1, r1, 0x10
/* 803C599C  4E 80 00 20 */	blr 
