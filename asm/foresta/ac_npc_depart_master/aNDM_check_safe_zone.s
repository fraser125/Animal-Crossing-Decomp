lbl_8054D280:
/* 8054D280  3C A0 80 65 */	lis r5, lit_557@ha /* 0x806494E0@ha */
/* 8054D284  C0 24 00 30 */	lfs f1, 0x30(r4)
/* 8054D288  38 85 94 E0 */	addi r4, r5, lit_557@l /* 0x806494E0@l */
/* 8054D28C  38 A0 00 00 */	li r5, 0
/* 8054D290  C0 04 00 00 */	lfs f0, 0(r4)
/* 8054D294  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8054D298  40 81 00 10 */	ble lbl_8054D2A8
/* 8054D29C  88 03 09 A2 */	lbz r0, 0x9a2(r3)
/* 8054D2A0  28 00 00 07 */	cmplwi r0, 7
/* 8054D2A4  41 82 00 20 */	beq lbl_8054D2C4
lbl_8054D2A8:
/* 8054D2A8  3C 80 80 65 */	lis r4, lit_558@ha /* 0x806494E4@ha */
/* 8054D2AC  C0 04 94 E4 */	lfs f0, lit_558@l(r4)  /* 0x806494E4@l */
/* 8054D2B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8054D2B4  40 80 00 14 */	bge lbl_8054D2C8
/* 8054D2B8  88 03 09 A2 */	lbz r0, 0x9a2(r3)
/* 8054D2BC  28 00 00 04 */	cmplwi r0, 4
/* 8054D2C0  40 82 00 08 */	bne lbl_8054D2C8
lbl_8054D2C4:
/* 8054D2C4  38 A0 00 01 */	li r5, 1
lbl_8054D2C8:
/* 8054D2C8  7C A3 2B 78 */	mr r3, r5
/* 8054D2CC  4E 80 00 20 */	blr 
