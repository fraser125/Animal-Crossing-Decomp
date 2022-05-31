lbl_8053DD14:
/* 8053DD14  88 03 08 32 */	lbz r0, 0x832(r3)
/* 8053DD18  3C 80 80 6A */	lis r4, fatigue_add_table@ha /* 0x806A3844@ha */
/* 8053DD1C  38 84 38 44 */	addi r4, r4, fatigue_add_table@l /* 0x806A3844@l */
/* 8053DD20  A0 A3 08 36 */	lhz r5, 0x836(r3)
/* 8053DD24  54 00 10 3A */	slwi r0, r0, 2
/* 8053DD28  7C 04 00 2E */	lwzx r0, r4, r0
/* 8053DD2C  7C A5 02 15 */	add. r5, r5, r0
/* 8053DD30  40 80 00 0C */	bge lbl_8053DD3C
/* 8053DD34  38 A0 00 00 */	li r5, 0
/* 8053DD38  48 00 00 10 */	b lbl_8053DD48
lbl_8053DD3C:
/* 8053DD3C  2C 05 06 40 */	cmpwi r5, 0x640
/* 8053DD40  40 81 00 08 */	ble lbl_8053DD48
/* 8053DD44  38 A0 06 40 */	li r5, 0x640
lbl_8053DD48:
/* 8053DD48  B0 A3 08 36 */	sth r5, 0x836(r3)
/* 8053DD4C  4E 80 00 20 */	blr 
