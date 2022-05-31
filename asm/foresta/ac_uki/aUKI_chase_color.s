lbl_804AD7B4:
/* 804AD7B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804AD7B8  80 E3 00 00 */	lwz r7, 0(r3)
/* 804AD7BC  7C 07 20 40 */	cmplw r7, r4
/* 804AD7C0  41 82 00 88 */	beq lbl_804AD848
/* 804AD7C4  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 804AD7C8  3C 00 43 30 */	lis r0, 0x4330
/* 804AD7CC  3C C0 80 64 */	lis r6, lit_486@ha /* 0x80645F44@ha */
/* 804AD7D0  90 A1 00 0C */	stw r5, 0xc(r1)
/* 804AD7D4  38 A6 5F 44 */	addi r5, r6, lit_486@l /* 0x80645F44@l */
/* 804AD7D8  90 01 00 08 */	stw r0, 8(r1)
/* 804AD7DC  3C C0 80 64 */	lis r6, lit_484@ha /* 0x80645F3C@ha */
/* 804AD7E0  C8 25 00 00 */	lfd f1, 0(r5)
/* 804AD7E4  C8 01 00 08 */	lfd f0, 8(r1)
/* 804AD7E8  C0 46 5F 3C */	lfs f2, lit_484@l(r6)  /* 0x80645F3C@l */
/* 804AD7EC  EC 00 08 28 */	fsubs f0, f0, f1
/* 804AD7F0  EC 02 00 32 */	fmuls f0, f2, f0
/* 804AD7F4  FC 00 00 1E */	fctiwz f0, f0
/* 804AD7F8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804AD7FC  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 804AD800  2C 05 00 00 */	cmpwi r5, 0
/* 804AD804  40 81 00 24 */	ble lbl_804AD828
/* 804AD808  7C 04 38 50 */	subf r0, r4, r7
/* 804AD80C  7C 00 28 00 */	cmpw r0, r5
/* 804AD810  40 81 00 10 */	ble lbl_804AD820
/* 804AD814  7C 07 2A 14 */	add r0, r7, r5
/* 804AD818  90 03 00 00 */	stw r0, 0(r3)
/* 804AD81C  48 00 00 2C */	b lbl_804AD848
lbl_804AD820:
/* 804AD820  90 83 00 00 */	stw r4, 0(r3)
/* 804AD824  48 00 00 24 */	b lbl_804AD848
lbl_804AD828:
/* 804AD828  7C 04 38 50 */	subf r0, r4, r7
/* 804AD82C  7C 00 28 00 */	cmpw r0, r5
/* 804AD830  40 80 00 14 */	bge lbl_804AD844
/* 804AD834  7C 05 00 D0 */	neg r0, r5
/* 804AD838  7C 00 38 50 */	subf r0, r0, r7
/* 804AD83C  90 03 00 00 */	stw r0, 0(r3)
/* 804AD840  48 00 00 08 */	b lbl_804AD848
lbl_804AD844:
/* 804AD844  90 83 00 00 */	stw r4, 0(r3)
lbl_804AD848:
/* 804AD848  38 21 00 20 */	addi r1, r1, 0x20
/* 804AD84C  4E 80 00 20 */	blr 
