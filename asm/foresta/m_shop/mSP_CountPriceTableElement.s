lbl_803E85C8:
/* 803E85C8  38 80 00 00 */	li r4, 0
/* 803E85CC  48 00 00 0C */	b lbl_803E85D8
lbl_803E85D0:
/* 803E85D0  38 63 00 02 */	addi r3, r3, 2
/* 803E85D4  38 84 00 01 */	addi r4, r4, 1
lbl_803E85D8:
/* 803E85D8  A0 03 00 00 */	lhz r0, 0(r3)
/* 803E85DC  28 00 FF FF */	cmplwi r0, 0xffff
/* 803E85E0  40 82 FF F0 */	bne lbl_803E85D0
/* 803E85E4  7C 83 23 78 */	mr r3, r4
/* 803E85E8  4E 80 00 20 */	blr 
