lbl_803C01EC:
/* 803C01EC  80 83 00 0C */	lwz r4, 0xc(r3)
/* 803C01F0  80 A3 04 20 */	lwz r5, 0x420(r3)
/* 803C01F4  38 64 00 20 */	addi r3, r4, 0x20
/* 803C01F8  7C 03 28 AE */	lbzx r0, r3, r5
/* 803C01FC  28 00 00 7F */	cmplwi r0, 0x7f
/* 803C0200  40 82 00 1C */	bne lbl_803C021C
/* 803C0204  7C 63 2A 14 */	add r3, r3, r5
/* 803C0208  88 03 00 01 */	lbz r0, 1(r3)
/* 803C020C  28 00 00 0D */	cmplwi r0, 0xd
/* 803C0210  40 82 00 0C */	bne lbl_803C021C
/* 803C0214  38 60 00 01 */	li r3, 1
/* 803C0218  4E 80 00 20 */	blr 
lbl_803C021C:
/* 803C021C  38 60 00 00 */	li r3, 0
/* 803C0220  4E 80 00 20 */	blr 
