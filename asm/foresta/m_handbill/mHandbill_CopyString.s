lbl_803B1A3C:
/* 803B1A3C  7C A9 03 A6 */	mtctr r5
/* 803B1A40  2C 05 00 00 */	cmpwi r5, 0
/* 803B1A44  4C 81 00 20 */	blelr 
lbl_803B1A48:
/* 803B1A48  88 04 00 00 */	lbz r0, 0(r4)
/* 803B1A4C  38 84 00 01 */	addi r4, r4, 1
/* 803B1A50  98 03 00 00 */	stb r0, 0(r3)
/* 803B1A54  38 63 00 01 */	addi r3, r3, 1
/* 803B1A58  42 00 FF F0 */	bdnz lbl_803B1A48
/* 803B1A5C  4E 80 00 20 */	blr 
