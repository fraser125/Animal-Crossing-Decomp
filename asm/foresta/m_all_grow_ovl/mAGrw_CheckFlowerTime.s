lbl_80510024:
/* 80510024  88 03 00 05 */	lbz r0, 5(r3)
/* 80510028  38 80 00 01 */	li r4, 1
/* 8051002C  88 63 00 03 */	lbz r3, 3(r3)
/* 80510030  28 00 00 02 */	cmplwi r0, 2
/* 80510034  40 82 00 0C */	bne lbl_80510040
/* 80510038  28 03 00 19 */	cmplwi r3, 0x19
/* 8051003C  40 80 00 24 */	bge lbl_80510060
lbl_80510040:
/* 80510040  28 00 00 03 */	cmplwi r0, 3
/* 80510044  41 80 00 0C */	blt lbl_80510050
/* 80510048  28 00 00 0B */	cmplwi r0, 0xb
/* 8051004C  40 81 00 14 */	ble lbl_80510060
lbl_80510050:
/* 80510050  28 00 00 0C */	cmplwi r0, 0xc
/* 80510054  40 82 00 10 */	bne lbl_80510064
/* 80510058  28 03 00 0A */	cmplwi r3, 0xa
/* 8051005C  40 80 00 08 */	bge lbl_80510064
lbl_80510060:
/* 80510060  38 80 00 00 */	li r4, 0
lbl_80510064:
/* 80510064  7C 83 23 78 */	mr r3, r4
/* 80510068  4E 80 00 20 */	blr 