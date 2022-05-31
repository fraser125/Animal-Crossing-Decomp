lbl_803F04E0:
/* 803F04E0  88 03 1F A4 */	lbz r0, 0x1fa4(r3)
/* 803F04E4  7C 00 07 75 */	extsb. r0, r0
/* 803F04E8  40 80 00 0C */	bge lbl_803F04F4
/* 803F04EC  38 60 00 00 */	li r3, 0
/* 803F04F0  4E 80 00 20 */	blr 
lbl_803F04F4:
/* 803F04F4  54 00 10 3A */	slwi r0, r0, 2
/* 803F04F8  7C 63 02 14 */	add r3, r3, r0
/* 803F04FC  80 63 1F A8 */	lwz r3, 0x1fa8(r3)
/* 803F0500  4E 80 00 20 */	blr 
