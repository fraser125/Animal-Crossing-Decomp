lbl_803A7930:
/* 803A7930  3C 80 80 64 */	lis r4, lit_637@ha /* 0x80641F44@ha */
/* 803A7934  38 A0 00 00 */	li r5, 0
/* 803A7938  C0 04 1F 44 */	lfs f0, lit_637@l(r4)  /* 0x80641F44@l */
/* 803A793C  38 00 00 04 */	li r0, 4
/* 803A7940  90 A3 00 00 */	stw r5, 0(r3)
/* 803A7944  38 80 FF FF */	li r4, -1
/* 803A7948  7C 09 03 A6 */	mtctr r0
lbl_803A794C:
/* 803A794C  98 83 00 04 */	stb r4, 4(r3)
/* 803A7950  98 83 00 05 */	stb r4, 5(r3)
/* 803A7954  D0 03 00 08 */	stfs f0, 8(r3)
/* 803A7958  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 803A795C  90 A3 00 10 */	stw r5, 0x10(r3)
/* 803A7960  42 00 FF EC */	bdnz lbl_803A794C
/* 803A7964  4E 80 00 20 */	blr 