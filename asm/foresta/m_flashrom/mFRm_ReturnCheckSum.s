lbl_803AC4FC:
/* 803AC4FC  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 803AC500  38 A0 00 00 */	li r5, 0
/* 803AC504  40 82 00 20 */	bne lbl_803AC524
/* 803AC508  48 00 00 14 */	b lbl_803AC51C
lbl_803AC50C:
/* 803AC50C  A0 03 00 00 */	lhz r0, 0(r3)
/* 803AC510  38 63 00 02 */	addi r3, r3, 2
/* 803AC514  38 84 FF FE */	addi r4, r4, -2
/* 803AC518  7C A5 02 14 */	add r5, r5, r0
lbl_803AC51C:
/* 803AC51C  2C 04 00 00 */	cmpwi r4, 0
/* 803AC520  40 82 FF EC */	bne lbl_803AC50C
lbl_803AC524:
/* 803AC524  7C A3 2B 78 */	mr r3, r5
/* 803AC528  4E 80 00 20 */	blr 
