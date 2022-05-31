lbl_8042BB38:
/* 8042BB38  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8042BB3C  7C 08 02 A6 */	mflr r0
/* 8042BB40  90 01 00 44 */	stw r0, 0x44(r1)
/* 8042BB44  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8042BB48  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8042BB4C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8042BB50  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8042BB54  7C 60 07 34 */	extsh r0, r3
/* 8042BB58  7C 84 07 34 */	extsh r4, r4
/* 8042BB5C  7C 00 20 00 */	cmpw r0, r4
/* 8042BB60  41 81 01 1C */	bgt lbl_8042BC7C
/* 8042BB64  40 82 00 08 */	bne lbl_8042BB6C
/* 8042BB68  48 00 01 14 */	b lbl_8042BC7C
lbl_8042BB6C:
/* 8042BB6C  7C A7 07 34 */	extsh r7, r5
/* 8042BB70  7C 07 00 00 */	cmpw r7, r0
/* 8042BB74  41 81 00 08 */	bgt lbl_8042BB7C
/* 8042BB78  48 00 01 04 */	b lbl_8042BC7C
lbl_8042BB7C:
/* 8042BB7C  7C 07 20 00 */	cmpw r7, r4
/* 8042BB80  41 80 00 0C */	blt lbl_8042BB8C
/* 8042BB84  FC 20 10 90 */	fmr f1, f2
/* 8042BB88  48 00 00 F4 */	b lbl_8042BC7C
lbl_8042BB8C:
/* 8042BB8C  3C 60 80 64 */	lis r3, lit_557@ha /* 0x80644094@ha */
/* 8042BB90  EC 01 10 2A */	fadds f0, f1, f2
/* 8042BB94  C0 63 40 94 */	lfs f3, lit_557@l(r3)  /* 0x80644094@l */
/* 8042BB98  3C A0 43 30 */	lis r5, 0x4330
/* 8042BB9C  3C 60 80 64 */	lis r3, lit_533@ha /* 0x8064408C@ha */
/* 8042BBA0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8042BBA4  EF C3 00 32 */	fmuls f30, f3, f0
/* 8042BBA8  38 C3 40 8C */	addi r6, r3, lit_533@l /* 0x8064408C@l */
/* 8042BBAC  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8042BBB0  3C 60 80 64 */	lis r3, lit_497@ha /* 0x80644078@ha */
/* 8042BBB4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8042BBB8  EF E2 F0 28 */	fsubs f31, f2, f30
/* 8042BBBC  90 A1 00 08 */	stw r5, 8(r1)
/* 8042BBC0  6C E0 80 00 */	xoris r0, r7, 0x8000
/* 8042BBC4  C0 03 40 78 */	lfs f0, lit_497@l(r3)  /* 0x80644078@l */
/* 8042BBC8  90 81 00 14 */	stw r4, 0x14(r1)
/* 8042BBCC  C8 86 00 00 */	lfd f4, 0(r6)
/* 8042BBD0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8042BBD4  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8042BBD8  C8 61 00 08 */	lfd f3, 8(r1)
/* 8042BBDC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8042BBE0  EC A3 20 28 */	fsubs f5, f3, f4
/* 8042BBE4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8042BBE8  EC 60 20 28 */	fsubs f3, f0, f4
/* 8042BBEC  90 A1 00 18 */	stw r5, 0x18(r1)
/* 8042BBF0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8042BBF4  EC 63 28 28 */	fsubs f3, f3, f5
/* 8042BBF8  EC 00 20 28 */	fsubs f0, f0, f4
/* 8042BBFC  4C 41 13 82 */	cror 2, 1, 2
/* 8042BC00  40 82 00 08 */	bne lbl_8042BC08
/* 8042BC04  48 00 00 08 */	b lbl_8042BC0C
lbl_8042BC08:
/* 8042BC08  FF E0 F8 50 */	fneg f31, f31
lbl_8042BC0C:
/* 8042BC0C  3C 60 80 64 */	lis r3, lit_531@ha /* 0x80644084@ha */
/* 8042BC10  EC 00 28 28 */	fsubs f0, f0, f5
/* 8042BC14  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8042BC18  C0 23 40 84 */	lfs f1, lit_531@l(r3)  /* 0x80644084@l */
/* 8042BC1C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8042BC20  EC 20 18 24 */	fdivs f1, f0, f3
/* 8042BC24  4C 41 13 82 */	cror 2, 1, 2
/* 8042BC28  40 82 00 2C */	bne lbl_8042BC54
/* 8042BC2C  3C 60 80 64 */	lis r3, lit_530@ha /* 0x80644080@ha */
/* 8042BC30  C0 03 40 80 */	lfs f0, lit_530@l(r3)  /* 0x80644080@l */
/* 8042BC34  EC 00 00 72 */	fmuls f0, f0, f1
/* 8042BC38  FC 00 00 1E */	fctiwz f0, f0
/* 8042BC3C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8042BC40  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8042BC44  4B F8 EE 59 */	bl cos_s
/* 8042BC48  EC 1F 00 72 */	fmuls f0, f31, f1
/* 8042BC4C  EC 3E 00 2A */	fadds f1, f30, f0
/* 8042BC50  48 00 00 2C */	b lbl_8042BC7C
lbl_8042BC54:
/* 8042BC54  3C 60 80 64 */	lis r3, lit_530@ha /* 0x80644080@ha */
/* 8042BC58  C0 03 40 80 */	lfs f0, lit_530@l(r3)  /* 0x80644080@l */
/* 8042BC5C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8042BC60  FC 00 00 1E */	fctiwz f0, f0
/* 8042BC64  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8042BC68  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8042BC6C  4B F8 EE 31 */	bl cos_s
/* 8042BC70  FC 00 F8 50 */	fneg f0, f31
/* 8042BC74  EC 00 00 72 */	fmuls f0, f0, f1
/* 8042BC78  EC 3E 00 2A */	fadds f1, f30, f0
lbl_8042BC7C:
/* 8042BC7C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8042BC80  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8042BC84  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8042BC88  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8042BC8C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8042BC90  7C 08 03 A6 */	mtlr r0
/* 8042BC94  38 21 00 40 */	addi r1, r1, 0x40
/* 8042BC98  4E 80 00 20 */	blr 
