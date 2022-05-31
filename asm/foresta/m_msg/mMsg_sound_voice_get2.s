lbl_803C1DF8:
/* 803C1DF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C1DFC  7C 08 02 A6 */	mflr r0
/* 803C1E00  2C 03 00 CD */	cmpwi r3, 0xcd
/* 803C1E04  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C1E08  40 82 00 0C */	bne lbl_803C1E14
/* 803C1E0C  38 60 00 84 */	li r3, 0x84
/* 803C1E10  48 00 00 08 */	b lbl_803C1E18
lbl_803C1E14:
/* 803C1E14  4B FF FF 6D */	bl func_803C1D80
lbl_803C1E18:
/* 803C1E18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C1E1C  7C 08 03 A6 */	mtlr r0
/* 803C1E20  38 21 00 10 */	addi r1, r1, 0x10
/* 803C1E24  4E 80 00 20 */	blr 
