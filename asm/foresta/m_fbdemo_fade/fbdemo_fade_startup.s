lbl_803A13BC:
/* 803A13BC  3C 80 80 65 */	lis r4, start_color@ha /* 0x80653490@ha */
/* 803A13C0  88 03 00 00 */	lbz r0, 0(r3)
/* 803A13C4  38 A4 34 90 */	addi r5, r4, start_color@l /* 0x80653490@l */
/* 803A13C8  3C 80 80 65 */	lis r4, start_frame@ha /* 0x80653480@ha */
/* 803A13CC  7C A5 00 AE */	lbzx r5, r5, r0
/* 803A13D0  38 84 34 80 */	addi r4, r4, start_frame@l /* 0x80653480@l */
/* 803A13D4  38 00 00 00 */	li r0, 0
/* 803A13D8  98 A3 00 07 */	stb r5, 7(r3)
/* 803A13DC  88 A3 00 00 */	lbz r5, 0(r3)
/* 803A13E0  7C 84 28 AE */	lbzx r4, r4, r5
/* 803A13E4  7C 84 07 74 */	extsb r4, r4
/* 803A13E8  B0 83 00 08 */	sth r4, 8(r3)
/* 803A13EC  98 03 00 01 */	stb r0, 1(r3)
/* 803A13F0  88 03 00 00 */	lbz r0, 0(r3)
/* 803A13F4  28 00 00 01 */	cmplwi r0, 1
/* 803A13F8  4C 82 00 20 */	bnelr 
/* 803A13FC  38 00 00 0A */	li r0, 0xa
/* 803A1400  B0 03 00 0C */	sth r0, 0xc(r3)
/* 803A1404  4E 80 00 20 */	blr 
