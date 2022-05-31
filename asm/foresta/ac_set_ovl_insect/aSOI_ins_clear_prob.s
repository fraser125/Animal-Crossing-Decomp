lbl_8049B9B4:
/* 8049B9B4  3C C0 80 64 */	lis r6, lit_873@ha /* 0x80644D30@ha */
/* 8049B9B8  C0 06 4D 30 */	lfs f0, lit_873@l(r6)  /* 0x80644D30@l */
/* 8049B9BC  7C 89 03 A6 */	mtctr r4
/* 8049B9C0  2C 04 00 00 */	cmpwi r4, 0
/* 8049B9C4  4C 81 00 20 */	blelr 
lbl_8049B9C8:
/* 8049B9C8  88 03 00 04 */	lbz r0, 4(r3)
/* 8049B9CC  7C 05 00 00 */	cmpw r5, r0
/* 8049B9D0  40 82 00 08 */	bne lbl_8049B9D8
/* 8049B9D4  D0 03 00 08 */	stfs f0, 8(r3)
lbl_8049B9D8:
/* 8049B9D8  38 63 00 0C */	addi r3, r3, 0xc
/* 8049B9DC  42 00 FF EC */	bdnz lbl_8049B9C8
/* 8049B9E0  4E 80 00 20 */	blr 
