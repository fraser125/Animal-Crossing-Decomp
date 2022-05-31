lbl_8047BC2C:
/* 8047BC2C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8047BC30  7C 08 02 A6 */	mflr r0
/* 8047BC34  90 01 00 34 */	stw r0, 0x34(r1)
/* 8047BC38  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8047BC3C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8047BC40  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 8047BC44  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 8047BC48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8047BC4C  3C 80 80 64 */	lis r4, lit_1234@ha /* 0x80644A18@ha */
/* 8047BC50  7C 7F 1B 78 */	mr r31, r3
/* 8047BC54  C0 04 4A 18 */	lfs f0, lit_1234@l(r4)  /* 0x80644A18@l */
/* 8047BC58  EF C0 00 72 */	fmuls f30, f0, f1
/* 8047BC5C  FC 20 F0 90 */	fmr f1, f30
/* 8047BC60  4B F8 CC 1D */	bl sinf_table
/* 8047BC64  FF E0 08 90 */	fmr f31, f1
/* 8047BC68  FC 20 F0 90 */	fmr f1, f30
/* 8047BC6C  4B F8 CC 81 */	bl cosf_table
/* 8047BC70  3C 60 80 64 */	lis r3, lit_3236@ha /* 0x80644A3C@ha */
/* 8047BC74  C0 03 4A 3C */	lfs f0, lit_3236@l(r3)  /* 0x80644A3C@l */
/* 8047BC78  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8047BC7C  40 81 00 10 */	ble lbl_8047BC8C
/* 8047BC80  63 E0 00 01 */	ori r0, r31, 1
/* 8047BC84  54 1F 04 3E */	clrlwi r31, r0, 0x10
/* 8047BC88  48 00 00 1C */	b lbl_8047BCA4
lbl_8047BC8C:
/* 8047BC8C  3C 60 80 64 */	lis r3, lit_3266@ha /* 0x80644A48@ha */
/* 8047BC90  C0 03 4A 48 */	lfs f0, lit_3266@l(r3)  /* 0x80644A48@l */
/* 8047BC94  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8047BC98  40 80 00 0C */	bge lbl_8047BCA4
/* 8047BC9C  63 E0 00 03 */	ori r0, r31, 3
/* 8047BCA0  54 1F 04 3E */	clrlwi r31, r0, 0x10
lbl_8047BCA4:
/* 8047BCA4  3C 60 80 64 */	lis r3, lit_3236@ha /* 0x80644A3C@ha */
/* 8047BCA8  C0 03 4A 3C */	lfs f0, lit_3236@l(r3)  /* 0x80644A3C@l */
/* 8047BCAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8047BCB0  41 81 00 1C */	bgt lbl_8047BCCC
/* 8047BCB4  3C 60 80 64 */	lis r3, lit_3266@ha /* 0x80644A48@ha */
/* 8047BCB8  C0 03 4A 48 */	lfs f0, lit_3266@l(r3)  /* 0x80644A48@l */
/* 8047BCBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8047BCC0  40 80 00 0C */	bge lbl_8047BCCC
/* 8047BCC4  63 E0 00 02 */	ori r0, r31, 2
/* 8047BCC8  54 1F 04 3E */	clrlwi r31, r0, 0x10
lbl_8047BCCC:
/* 8047BCCC  7F E3 FB 78 */	mr r3, r31
/* 8047BCD0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8047BCD4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8047BCD8  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 8047BCDC  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 8047BCE0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8047BCE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8047BCE8  7C 08 03 A6 */	mtlr r0
/* 8047BCEC  38 21 00 30 */	addi r1, r1, 0x30
/* 8047BCF0  4E 80 00 20 */	blr 
