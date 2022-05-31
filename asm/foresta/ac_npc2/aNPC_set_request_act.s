lbl_8053F3A0:
/* 8053F3A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053F3A4  7C 08 02 A6 */	mflr r0
/* 8053F3A8  54 88 06 3E */	clrlwi r8, r4, 0x18
/* 8053F3AC  39 20 00 00 */	li r9, 0
/* 8053F3B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053F3B4  88 03 08 08 */	lbz r0, 0x808(r3)
/* 8053F3B8  7C 08 00 40 */	cmplw r8, r0
/* 8053F3BC  41 80 00 2C */	blt lbl_8053F3E8
/* 8053F3C0  98 83 08 08 */	stb r4, 0x808(r3)
/* 8053F3C4  28 07 00 00 */	cmplwi r7, 0
/* 8053F3C8  98 A3 08 09 */	stb r5, 0x809(r3)
/* 8053F3CC  98 C3 08 0A */	stb r6, 0x80a(r3)
/* 8053F3D0  41 82 00 14 */	beq lbl_8053F3E4
/* 8053F3D4  7C E4 3B 78 */	mr r4, r7
/* 8053F3D8  38 63 08 0C */	addi r3, r3, 0x80c
/* 8053F3DC  38 A0 00 0C */	li r5, 0xc
/* 8053F3E0  4B E7 B6 45 */	bl func_803BAA24
lbl_8053F3E4:
/* 8053F3E4  39 20 00 01 */	li r9, 1
lbl_8053F3E8:
/* 8053F3E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053F3EC  7D 23 4B 78 */	mr r3, r9
/* 8053F3F0  7C 08 03 A6 */	mtlr r0
/* 8053F3F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8053F3F8  4E 80 00 20 */	blr 
