lbl_803AF7B0:
/* 803AF7B0  88 83 00 00 */	lbz r4, 0(r3)
/* 803AF7B4  38 00 00 01 */	li r0, 1
/* 803AF7B8  2C 04 00 7F */	cmpwi r4, 0x7f
/* 803AF7BC  40 82 00 38 */	bne lbl_803AF7F4
/* 803AF7C0  88 03 00 01 */	lbz r0, 1(r3)
/* 803AF7C4  2C 00 00 00 */	cmpwi r0, 0
/* 803AF7C8  41 80 00 24 */	blt lbl_803AF7EC
/* 803AF7CC  2C 00 00 7B */	cmpwi r0, 0x7b
/* 803AF7D0  40 80 00 1C */	bge lbl_803AF7EC
/* 803AF7D4  3C 60 80 64 */	lis r3, data_80641F94@ha /* 0x80641F94@ha */
/* 803AF7D8  54 00 08 3C */	slwi r0, r0, 1
/* 803AF7DC  38 63 1F 94 */	addi r3, r3, data_80641F94@l /* 0x80641F94@l */
/* 803AF7E0  7C 03 00 AE */	lbzx r0, r3, r0
/* 803AF7E4  7C 00 07 74 */	extsb r0, r0
/* 803AF7E8  48 00 00 18 */	b lbl_803AF800
lbl_803AF7EC:
/* 803AF7EC  38 00 00 02 */	li r0, 2
/* 803AF7F0  48 00 00 10 */	b lbl_803AF800
lbl_803AF7F4:
/* 803AF7F4  2C 04 00 80 */	cmpwi r4, 0x80
/* 803AF7F8  40 82 00 08 */	bne lbl_803AF800
/* 803AF7FC  38 00 00 02 */	li r0, 2
lbl_803AF800:
/* 803AF800  7C 03 03 78 */	mr r3, r0
/* 803AF804  4E 80 00 20 */	blr 
