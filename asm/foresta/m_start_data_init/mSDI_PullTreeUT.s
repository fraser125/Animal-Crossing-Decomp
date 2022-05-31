lbl_803EE058:
/* 803EE058  A0 03 00 00 */	lhz r0, 0(r3)
/* 803EE05C  28 00 08 00 */	cmplwi r0, 0x800
/* 803EE060  41 80 00 0C */	blt lbl_803EE06C
/* 803EE064  28 00 08 3B */	cmplwi r0, 0x83b
/* 803EE068  40 81 00 34 */	ble lbl_803EE09C
lbl_803EE06C:
/* 803EE06C  28 00 08 4F */	cmplwi r0, 0x84f
/* 803EE070  41 80 00 0C */	blt lbl_803EE07C
/* 803EE074  28 00 08 5B */	cmplwi r0, 0x85b
/* 803EE078  40 81 00 24 */	ble lbl_803EE09C
lbl_803EE07C:
/* 803EE07C  28 00 08 5D */	cmplwi r0, 0x85d
/* 803EE080  41 80 00 0C */	blt lbl_803EE08C
/* 803EE084  28 00 08 61 */	cmplwi r0, 0x861
/* 803EE088  40 81 00 14 */	ble lbl_803EE09C
lbl_803EE08C:
/* 803EE08C  28 00 08 63 */	cmplwi r0, 0x863
/* 803EE090  4D 80 00 20 */	bltlr 
/* 803EE094  28 00 08 68 */	cmplwi r0, 0x868
/* 803EE098  4D 81 00 20 */	bgtlr 
lbl_803EE09C:
/* 803EE09C  38 00 00 00 */	li r0, 0
/* 803EE0A0  B0 03 00 00 */	sth r0, 0(r3)
/* 803EE0A4  4E 80 00 20 */	blr 
