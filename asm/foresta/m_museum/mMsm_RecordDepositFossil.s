lbl_803C7018:
/* 803C7018  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 803C701C  38 C0 00 00 */	li r6, 0
/* 803C7020  28 00 25 11 */	cmplwi r0, 0x2511
/* 803C7024  40 82 00 1C */	bne lbl_803C7040
/* 803C7028  38 00 00 01 */	li r0, 1
/* 803C702C  88 83 00 00 */	lbz r4, 0(r3)
/* 803C7030  7C 00 28 30 */	slw r0, r0, r5
/* 803C7034  38 C0 00 01 */	li r6, 1
/* 803C7038  7C 80 03 78 */	or r0, r4, r0
/* 803C703C  98 03 00 00 */	stb r0, 0(r3)
lbl_803C7040:
/* 803C7040  7C C3 33 78 */	mr r3, r6
/* 803C7044  4E 80 00 20 */	blr 