lbl_8049DFBC:
/* 8049DFBC  3C 80 80 64 */	lis r4, data_80644D3C@ha /* 0x80644D3C@ha */
/* 8049DFC0  38 60 00 00 */	li r3, 0
/* 8049DFC4  38 04 4D 3C */	addi r0, r4, data_80644D3C@l /* 0x80644D3C@l */
/* 8049DFC8  7C 04 03 78 */	mr r4, r0
/* 8049DFCC  48 00 00 0C */	b lbl_8049DFD8
lbl_8049DFD0:
/* 8049DFD0  38 63 00 01 */	addi r3, r3, 1
/* 8049DFD4  38 84 00 28 */	addi r4, r4, 0x28
lbl_8049DFD8:
/* 8049DFD8  A0 04 00 00 */	lhz r0, 0(r4)
/* 8049DFDC  28 00 00 00 */	cmplwi r0, 0
/* 8049DFE0  40 82 FF F0 */	bne lbl_8049DFD0
/* 8049DFE4  A0 04 00 02 */	lhz r0, 2(r4)
/* 8049DFE8  28 00 00 00 */	cmplwi r0, 0
/* 8049DFEC  40 82 FF E4 */	bne lbl_8049DFD0
/* 8049DFF0  4E 80 00 20 */	blr 
