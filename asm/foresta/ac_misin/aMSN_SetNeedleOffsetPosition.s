lbl_8042E7C4:
/* 8042E7C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042E7C8  C0 43 00 14 */	lfs f2, 0x14(r3)
/* 8042E7CC  FC 00 10 1E */	fctiwz f0, f2
/* 8042E7D0  D8 01 00 08 */	stfd f0, 8(r1)
/* 8042E7D4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8042E7D8  2C 00 00 0A */	cmpwi r0, 0xa
/* 8042E7DC  40 80 00 24 */	bge lbl_8042E800
/* 8042E7E0  3C A0 80 64 */	lis r5, lit_637@ha /* 0x80644188@ha */
/* 8042E7E4  3C C0 80 64 */	lis r6, lit_636@ha /* 0x80644184@ha */
/* 8042E7E8  C0 05 41 88 */	lfs f0, lit_637@l(r5)  /* 0x80644188@l */
/* 8042E7EC  C0 26 41 84 */	lfs f1, lit_636@l(r6)  /* 0x80644184@l */
/* 8042E7F0  EC 02 00 24 */	fdivs f0, f2, f0
/* 8042E7F4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8042E7F8  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8042E7FC  48 00 00 68 */	b lbl_8042E864
lbl_8042E800:
/* 8042E800  2C 00 00 11 */	cmpwi r0, 0x11
/* 8042E804  40 80 00 40 */	bge lbl_8042E844
/* 8042E808  3C C0 80 64 */	lis r6, lit_637@ha /* 0x80644188@ha */
/* 8042E80C  3C A0 80 64 */	lis r5, lit_638@ha /* 0x8064418C@ha */
/* 8042E810  C0 06 41 88 */	lfs f0, lit_637@l(r6)  /* 0x80644188@l */
/* 8042E814  3C E0 80 64 */	lis r7, data_8064414C@ha /* 0x8064414C@ha */
/* 8042E818  38 C7 41 4C */	addi r6, r7, data_8064414C@l /* 0x8064414C@l */
/* 8042E81C  EC 22 00 28 */	fsubs f1, f2, f0
/* 8042E820  C0 05 41 8C */	lfs f0, lit_638@l(r5)  /* 0x8064418C@l */
/* 8042E824  3C E0 80 64 */	lis r7, lit_636@ha /* 0x80644184@ha */
/* 8042E828  C0 46 00 00 */	lfs f2, 0(r6)
/* 8042E82C  C0 67 41 84 */	lfs f3, lit_636@l(r7)  /* 0x80644184@l */
/* 8042E830  EC 01 00 24 */	fdivs f0, f1, f0
/* 8042E834  EC 02 00 32 */	fmuls f0, f2, f0
/* 8042E838  EC 03 00 2A */	fadds f0, f3, f0
/* 8042E83C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8042E840  48 00 00 24 */	b lbl_8042E864
lbl_8042E844:
/* 8042E844  3C A0 80 68 */	lis r5, zero_offset@ha /* 0x80684C14@ha */
/* 8042E848  38 C5 4C 14 */	addi r6, r5, zero_offset@l /* 0x80684C14@l */
/* 8042E84C  80 A6 00 00 */	lwz r5, 0(r6)
/* 8042E850  80 06 00 04 */	lwz r0, 4(r6)
/* 8042E854  90 A3 00 18 */	stw r5, 0x18(r3)
/* 8042E858  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8042E85C  80 06 00 08 */	lwz r0, 8(r6)
/* 8042E860  90 03 00 20 */	stw r0, 0x20(r3)
lbl_8042E864:
/* 8042E864  80 04 00 24 */	lwz r0, 0x24(r4)
/* 8042E868  2C 00 00 00 */	cmpwi r0, 0
/* 8042E86C  40 82 00 14 */	bne lbl_8042E880
/* 8042E870  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 8042E874  C0 03 00 04 */	lfs f0, 4(r3)
/* 8042E878  EC 01 00 2A */	fadds f0, f1, f0
/* 8042E87C  D0 03 00 14 */	stfs f0, 0x14(r3)
lbl_8042E880:
/* 8042E880  3C 80 80 64 */	lis r4, lit_639@ha /* 0x80644190@ha */
/* 8042E884  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 8042E888  C0 04 41 90 */	lfs f0, lit_639@l(r4)  /* 0x80644190@l */
/* 8042E88C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8042E890  40 81 00 0C */	ble lbl_8042E89C
/* 8042E894  EC 01 00 28 */	fsubs f0, f1, f0
/* 8042E898  D0 03 00 14 */	stfs f0, 0x14(r3)
lbl_8042E89C:
/* 8042E89C  38 21 00 10 */	addi r1, r1, 0x10
/* 8042E8A0  4E 80 00 20 */	blr 