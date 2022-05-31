lbl_8049B9E4:
/* 8049B9E4  7C 89 03 A6 */	mtctr r4
/* 8049B9E8  2C 04 00 00 */	cmpwi r4, 0
/* 8049B9EC  4C 81 00 20 */	blelr 
lbl_8049B9F0:
/* 8049B9F0  88 03 00 04 */	lbz r0, 4(r3)
/* 8049B9F4  2C 00 00 09 */	cmpwi r0, 9
/* 8049B9F8  41 82 00 2C */	beq lbl_8049BA24
/* 8049B9FC  40 80 00 40 */	bge lbl_8049BA3C
/* 8049BA00  2C 00 00 08 */	cmpwi r0, 8
/* 8049BA04  40 80 00 08 */	bge lbl_8049BA0C
/* 8049BA08  48 00 00 34 */	b lbl_8049BA3C
lbl_8049BA0C:
/* 8049BA0C  2C 05 00 00 */	cmpwi r5, 0
/* 8049BA10  40 82 00 38 */	bne lbl_8049BA48
/* 8049BA14  3C 80 80 64 */	lis r4, lit_873@ha /* 0x80644D30@ha */
/* 8049BA18  C0 04 4D 30 */	lfs f0, lit_873@l(r4)  /* 0x80644D30@l */
/* 8049BA1C  D0 03 00 08 */	stfs f0, 8(r3)
/* 8049BA20  48 00 00 28 */	b lbl_8049BA48
lbl_8049BA24:
/* 8049BA24  2C 06 00 00 */	cmpwi r6, 0
/* 8049BA28  40 82 00 20 */	bne lbl_8049BA48
/* 8049BA2C  3C 80 80 64 */	lis r4, lit_873@ha /* 0x80644D30@ha */
/* 8049BA30  C0 04 4D 30 */	lfs f0, lit_873@l(r4)  /* 0x80644D30@l */
/* 8049BA34  D0 03 00 08 */	stfs f0, 8(r3)
/* 8049BA38  48 00 00 10 */	b lbl_8049BA48
lbl_8049BA3C:
/* 8049BA3C  3C 80 80 64 */	lis r4, lit_873@ha /* 0x80644D30@ha */
/* 8049BA40  C0 04 4D 30 */	lfs f0, lit_873@l(r4)  /* 0x80644D30@l */
/* 8049BA44  D0 03 00 08 */	stfs f0, 8(r3)
lbl_8049BA48:
/* 8049BA48  38 63 00 0C */	addi r3, r3, 0xc
/* 8049BA4C  42 00 FF A4 */	bdnz lbl_8049B9F0
/* 8049BA50  4E 80 00 20 */	blr 
