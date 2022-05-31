lbl_805EF9D4:
/* 805EF9D4  80 03 00 38 */	lwz r0, 0x38(r3)
/* 805EF9D8  38 80 00 00 */	li r4, 0
/* 805EF9DC  2C 00 00 01 */	cmpwi r0, 1
/* 805EF9E0  40 82 00 14 */	bne lbl_805EF9F4
/* 805EF9E4  80 03 00 40 */	lwz r0, 0x40(r3)
/* 805EF9E8  2C 00 00 01 */	cmpwi r0, 1
/* 805EF9EC  40 82 00 08 */	bne lbl_805EF9F4
/* 805EF9F0  38 80 00 01 */	li r4, 1
lbl_805EF9F4:
/* 805EF9F4  7C 83 23 78 */	mr r3, r4
/* 805EF9F8  4E 80 00 20 */	blr 
