lbl_805EF998:
/* 805EF998  80 83 00 38 */	lwz r4, 0x38(r3)
/* 805EF99C  38 A0 00 00 */	li r5, 0
/* 805EF9A0  2C 04 00 00 */	cmpwi r4, 0
/* 805EF9A4  40 82 00 10 */	bne lbl_805EF9B4
/* 805EF9A8  80 03 00 40 */	lwz r0, 0x40(r3)
/* 805EF9AC  2C 00 00 00 */	cmpwi r0, 0
/* 805EF9B0  41 82 00 18 */	beq lbl_805EF9C8
lbl_805EF9B4:
/* 805EF9B4  2C 04 00 01 */	cmpwi r4, 1
/* 805EF9B8  40 82 00 14 */	bne lbl_805EF9CC
/* 805EF9BC  80 03 00 40 */	lwz r0, 0x40(r3)
/* 805EF9C0  2C 00 00 02 */	cmpwi r0, 2
/* 805EF9C4  40 82 00 08 */	bne lbl_805EF9CC
lbl_805EF9C8:
/* 805EF9C8  38 A0 00 01 */	li r5, 1
lbl_805EF9CC:
/* 805EF9CC  7C A3 2B 78 */	mr r3, r5
/* 805EF9D0  4E 80 00 20 */	blr 
