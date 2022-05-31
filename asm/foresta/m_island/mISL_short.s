lbl_803B411C:
/* 803B411C  7C A9 03 A6 */	mtctr r5
/* 803B4120  2C 05 00 00 */	cmpwi r5, 0
/* 803B4124  4D 82 00 20 */	beqlr 
lbl_803B4128:
/* 803B4128  A0 A4 00 00 */	lhz r5, 0(r4)
/* 803B412C  38 84 00 02 */	addi r4, r4, 2
/* 803B4130  7C A0 1F 2C */	sthbrx r5, 0, r3
/* 803B4134  38 63 00 02 */	addi r3, r3, 2
/* 803B4138  42 00 FF F0 */	bdnz lbl_803B4128
/* 803B413C  4E 80 00 20 */	blr 
