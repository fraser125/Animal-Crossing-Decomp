lbl_803FA6DC:
/* 803FA6DC  38 00 00 04 */	li r0, 4
/* 803FA6E0  38 80 00 00 */	li r4, 0
/* 803FA6E4  38 A0 00 00 */	li r5, 0
/* 803FA6E8  7C 09 03 A6 */	mtctr r0
lbl_803FA6EC:
/* 803FA6EC  A0 03 00 00 */	lhz r0, 0(r3)
/* 803FA6F0  28 00 00 00 */	cmplwi r0, 0
/* 803FA6F4  40 82 00 10 */	bne lbl_803FA704
/* 803FA6F8  38 63 00 02 */	addi r3, r3, 2
/* 803FA6FC  38 A5 00 01 */	addi r5, r5, 1
/* 803FA700  42 00 FF EC */	bdnz lbl_803FA6EC
lbl_803FA704:
/* 803FA704  2C 05 00 04 */	cmpwi r5, 4
/* 803FA708  40 82 00 08 */	bne lbl_803FA710
/* 803FA70C  38 80 00 01 */	li r4, 1
lbl_803FA710:
/* 803FA710  7C 83 23 78 */	mr r3, r4
/* 803FA714  4E 80 00 20 */	blr 
