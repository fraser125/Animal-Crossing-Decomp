lbl_803C29E8:
/* 803C29E8  A0 83 03 EC */	lhz r4, 0x3ec(r3)
/* 803C29EC  28 04 00 00 */	cmplwi r4, 0
/* 803C29F0  40 82 00 0C */	bne lbl_803C29FC
/* 803C29F4  38 60 00 00 */	li r3, 0
/* 803C29F8  4E 80 00 20 */	blr 
lbl_803C29FC:
/* 803C29FC  28 04 00 01 */	cmplwi r4, 1
/* 803C2A00  40 82 00 0C */	bne lbl_803C2A0C
/* 803C2A04  38 60 00 01 */	li r3, 1
/* 803C2A08  4E 80 00 20 */	blr 
lbl_803C2A0C:
/* 803C2A0C  38 04 FF FF */	addi r0, r4, -1
/* 803C2A10  B0 03 03 EC */	sth r0, 0x3ec(r3)
/* 803C2A14  38 60 00 00 */	li r3, 0
/* 803C2A18  4E 80 00 20 */	blr 
