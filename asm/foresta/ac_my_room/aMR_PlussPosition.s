lbl_8047A634:
/* 8047A634  38 00 00 04 */	li r0, 4
/* 8047A638  38 A0 00 00 */	li r5, 0
/* 8047A63C  7C 09 03 A6 */	mtctr r0
lbl_8047A640:
/* 8047A640  7C C3 2A 14 */	add r6, r3, r5
/* 8047A644  C0 04 00 00 */	lfs f0, 0(r4)
/* 8047A648  C0 26 00 00 */	lfs f1, 0(r6)
/* 8047A64C  38 A5 00 20 */	addi r5, r5, 0x20
/* 8047A650  EC 01 00 2A */	fadds f0, f1, f0
/* 8047A654  D0 06 00 00 */	stfs f0, 0(r6)
/* 8047A658  C0 26 00 04 */	lfs f1, 4(r6)
/* 8047A65C  C0 04 00 08 */	lfs f0, 8(r4)
/* 8047A660  EC 01 00 2A */	fadds f0, f1, f0
/* 8047A664  D0 06 00 04 */	stfs f0, 4(r6)
/* 8047A668  C0 26 00 08 */	lfs f1, 8(r6)
/* 8047A66C  C0 04 00 00 */	lfs f0, 0(r4)
/* 8047A670  EC 01 00 2A */	fadds f0, f1, f0
/* 8047A674  D0 06 00 08 */	stfs f0, 8(r6)
/* 8047A678  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 8047A67C  C0 04 00 08 */	lfs f0, 8(r4)
/* 8047A680  EC 01 00 2A */	fadds f0, f1, f0
/* 8047A684  D0 06 00 0C */	stfs f0, 0xc(r6)
/* 8047A688  42 00 FF B8 */	bdnz lbl_8047A640
/* 8047A68C  4E 80 00 20 */	blr 