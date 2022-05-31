lbl_805EF76C:
/* 805EF76C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805EF770  80 C3 09 7C */	lwz r6, 0x97c(r3)
/* 805EF774  80 66 00 00 */	lwz r3, 0(r6)
/* 805EF778  1C A3 00 B4 */	mulli r5, r3, 0xb4
/* 805EF77C  38 03 00 01 */	addi r0, r3, 1
/* 805EF780  38 A5 00 08 */	addi r5, r5, 8
/* 805EF784  7C A6 2A 14 */	add r5, r6, r5
/* 805EF788  7C 09 03 A6 */	mtctr r0
/* 805EF78C  2C 03 00 00 */	cmpwi r3, 0
/* 805EF790  41 80 00 1C */	blt lbl_805EF7AC
lbl_805EF794:
/* 805EF794  88 05 00 00 */	lbz r0, 0(r5)
/* 805EF798  7C 00 20 00 */	cmpw r0, r4
/* 805EF79C  4D 82 00 20 */	beqlr 
/* 805EF7A0  38 A5 FF 4C */	addi r5, r5, -180
/* 805EF7A4  38 63 FF FF */	addi r3, r3, -1
/* 805EF7A8  42 00 FF EC */	bdnz lbl_805EF794
lbl_805EF7AC:
/* 805EF7AC  38 60 FF FF */	li r3, -1
/* 805EF7B0  4E 80 00 20 */	blr 
