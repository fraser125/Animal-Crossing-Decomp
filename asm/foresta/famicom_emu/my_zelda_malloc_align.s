lbl_8062D398:
/* 8062D398  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062D39C  7C 08 02 A6 */	mflr r0
/* 8062D3A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062D3A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062D3A8  93 C1 00 08 */	stw r30, 8(r1)
/* 8062D3AC  7C 7E 1B 78 */	mr r30, r3
/* 8062D3B0  4B D8 F0 79 */	bl func_803BC428
/* 8062D3B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8062D3B8  41 82 00 10 */	beq lbl_8062D3C8
/* 8062D3BC  7F C5 F3 78 */	mr r5, r30
/* 8062D3C0  38 80 00 FF */	li r4, 0xff
/* 8062D3C4  4B 9D 5F E5 */	bl func_800033A8
lbl_8062D3C8:
/* 8062D3C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062D3CC  7F E3 FB 78 */	mr r3, r31
/* 8062D3D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062D3D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8062D3D8  7C 08 03 A6 */	mtlr r0
/* 8062D3DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8062D3E0  4E 80 00 20 */	blr 
