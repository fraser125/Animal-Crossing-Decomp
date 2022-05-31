lbl_8053ED44:
/* 8053ED44  80 03 01 98 */	lwz r0, 0x198(r3)
/* 8053ED48  38 A0 00 01 */	li r5, 1
/* 8053ED4C  2C 00 00 02 */	cmpwi r0, 2
/* 8053ED50  40 82 00 2C */	bne lbl_8053ED7C
/* 8053ED54  88 83 07 53 */	lbz r4, 0x753(r3)
/* 8053ED58  28 04 00 00 */	cmplwi r4, 0
/* 8053ED5C  40 82 00 18 */	bne lbl_8053ED74
/* 8053ED60  A0 03 08 36 */	lhz r0, 0x836(r3)
/* 8053ED64  28 00 00 C8 */	cmplwi r0, 0xc8
/* 8053ED68  40 80 00 14 */	bge lbl_8053ED7C
/* 8053ED6C  38 A0 00 00 */	li r5, 0
/* 8053ED70  48 00 00 0C */	b lbl_8053ED7C
lbl_8053ED74:
/* 8053ED74  38 04 FF FF */	addi r0, r4, -1
/* 8053ED78  98 03 07 53 */	stb r0, 0x753(r3)
lbl_8053ED7C:
/* 8053ED7C  7C A3 2B 78 */	mr r3, r5
/* 8053ED80  4E 80 00 20 */	blr 
