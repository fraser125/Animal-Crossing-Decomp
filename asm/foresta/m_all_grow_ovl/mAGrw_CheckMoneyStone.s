lbl_80510E1C:
/* 80510E1C  A0 03 00 00 */	lhz r0, 0(r3)
/* 80510E20  38 60 00 00 */	li r3, 0
/* 80510E24  28 00 00 6A */	cmplwi r0, 0x6a
/* 80510E28  41 80 00 0C */	blt lbl_80510E34
/* 80510E2C  28 00 00 6E */	cmplwi r0, 0x6e
/* 80510E30  40 81 00 0C */	ble lbl_80510E3C
lbl_80510E34:
/* 80510E34  28 00 00 6F */	cmplwi r0, 0x6f
/* 80510E38  4C 82 00 20 */	bnelr 
lbl_80510E3C:
/* 80510E3C  38 00 00 01 */	li r0, 1
/* 80510E40  38 60 00 01 */	li r3, 1
/* 80510E44  98 04 00 4A */	stb r0, 0x4a(r4)
/* 80510E48  4E 80 00 20 */	blr 
