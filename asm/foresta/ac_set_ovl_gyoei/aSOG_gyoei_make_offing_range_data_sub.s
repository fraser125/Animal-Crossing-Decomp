lbl_8049A5A8:
/* 8049A5A8  80 03 01 40 */	lwz r0, 0x140(r3)
/* 8049A5AC  3C 80 80 64 */	lis r4, lit_815@ha /* 0x80644D0C@ha */
/* 8049A5B0  C0 24 4D 0C */	lfs f1, lit_815@l(r4)  /* 0x80644D0C@l */
/* 8049A5B4  7C 09 03 A6 */	mtctr r0
/* 8049A5B8  2C 00 00 00 */	cmpwi r0, 0
/* 8049A5BC  4D 82 00 20 */	beqlr 
lbl_8049A5C0:
/* 8049A5C0  C0 03 00 04 */	lfs f0, 4(r3)
/* 8049A5C4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8049A5C8  D0 03 00 04 */	stfs f0, 4(r3)
/* 8049A5CC  38 63 00 08 */	addi r3, r3, 8
/* 8049A5D0  42 00 FF F0 */	bdnz lbl_8049A5C0
/* 8049A5D4  4E 80 00 20 */	blr 
