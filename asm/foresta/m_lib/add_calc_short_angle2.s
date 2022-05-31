lbl_803BB310:
/* 803BB310  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BB314  7C 80 07 34 */	extsh r0, r4
/* 803BB318  A9 43 00 00 */	lha r10, 0(r3)
/* 803BB31C  7C 0A 00 00 */	cmpw r10, r0
/* 803BB320  7C EA 00 50 */	subf r7, r10, r0
/* 803BB324  7C EB 07 34 */	extsh r11, r7
/* 803BB328  41 82 01 00 */	beq lbl_803BB428
/* 803BB32C  6D 67 80 00 */	xoris r7, r11, 0x8000
/* 803BB330  3D 00 43 30 */	lis r8, 0x4330
/* 803BB334  90 E1 00 0C */	stw r7, 0xc(r1)
/* 803BB338  3D 20 80 64 */	lis r9, lit_401@ha /* 0x8064255C@ha */
/* 803BB33C  C8 49 25 5C */	lfd f2, lit_401@l(r9)  /* 0x8064255C@l */
/* 803BB340  7C C7 07 34 */	extsh r7, r6
/* 803BB344  91 01 00 08 */	stw r8, 8(r1)
/* 803BB348  C8 01 00 08 */	lfd f0, 8(r1)
/* 803BB34C  EC 00 10 28 */	fsubs f0, f0, f2
/* 803BB350  EC 00 00 72 */	fmuls f0, f0, f1
/* 803BB354  FC 00 00 1E */	fctiwz f0, f0
/* 803BB358  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803BB35C  81 21 00 14 */	lwz r9, 0x14(r1)
/* 803BB360  7D 28 07 34 */	extsh r8, r9
/* 803BB364  7C 08 38 00 */	cmpw r8, r7
/* 803BB368  41 81 00 10 */	bgt lbl_803BB378
/* 803BB36C  7C E7 00 D0 */	neg r7, r7
/* 803BB370  7C 08 38 00 */	cmpw r8, r7
/* 803BB374  40 80 00 70 */	bge lbl_803BB3E4
lbl_803BB378:
/* 803BB378  7D 27 07 34 */	extsh r7, r9
/* 803BB37C  7C A6 07 34 */	extsh r6, r5
/* 803BB380  7C 07 30 00 */	cmpw r7, r6
/* 803BB384  40 81 00 0C */	ble lbl_803BB390
/* 803BB388  7C A9 2B 78 */	mr r9, r5
/* 803BB38C  48 00 00 14 */	b lbl_803BB3A0
lbl_803BB390:
/* 803BB390  7C A6 00 D0 */	neg r5, r6
/* 803BB394  7C 07 28 00 */	cmpw r7, r5
/* 803BB398  40 80 00 08 */	bge lbl_803BB3A0
/* 803BB39C  7C A9 07 34 */	extsh r9, r5
lbl_803BB3A0:
/* 803BB3A0  A8 C3 00 00 */	lha r6, 0(r3)
/* 803BB3A4  7D 25 07 35 */	extsh. r5, r9
/* 803BB3A8  7C A6 4A 14 */	add r5, r6, r9
/* 803BB3AC  B0 A3 00 00 */	sth r5, 0(r3)
/* 803BB3B0  40 81 00 1C */	ble lbl_803BB3CC
/* 803BB3B4  A8 A3 00 00 */	lha r5, 0(r3)
/* 803BB3B8  7C A5 00 50 */	subf r5, r5, r0
/* 803BB3BC  7C A5 07 35 */	extsh. r5, r5
/* 803BB3C0  40 80 00 68 */	bge lbl_803BB428
/* 803BB3C4  B0 83 00 00 */	sth r4, 0(r3)
/* 803BB3C8  48 00 00 60 */	b lbl_803BB428
lbl_803BB3CC:
/* 803BB3CC  A8 A3 00 00 */	lha r5, 0(r3)
/* 803BB3D0  7C A5 00 50 */	subf r5, r5, r0
/* 803BB3D4  7C A5 07 35 */	extsh. r5, r5
/* 803BB3D8  40 81 00 50 */	ble lbl_803BB428
/* 803BB3DC  B0 83 00 00 */	sth r4, 0(r3)
/* 803BB3E0  48 00 00 48 */	b lbl_803BB428
lbl_803BB3E4:
/* 803BB3E4  7D 65 07 35 */	extsh. r5, r11
/* 803BB3E8  41 80 00 24 */	blt lbl_803BB40C
/* 803BB3EC  7C AA 32 14 */	add r5, r10, r6
/* 803BB3F0  B0 A3 00 00 */	sth r5, 0(r3)
/* 803BB3F4  A8 A3 00 00 */	lha r5, 0(r3)
/* 803BB3F8  7C A5 00 50 */	subf r5, r5, r0
/* 803BB3FC  7C A5 07 35 */	extsh. r5, r5
/* 803BB400  40 80 00 28 */	bge lbl_803BB428
/* 803BB404  B0 83 00 00 */	sth r4, 0(r3)
/* 803BB408  48 00 00 20 */	b lbl_803BB428
lbl_803BB40C:
/* 803BB40C  7C A6 50 50 */	subf r5, r6, r10
/* 803BB410  B0 A3 00 00 */	sth r5, 0(r3)
/* 803BB414  A8 A3 00 00 */	lha r5, 0(r3)
/* 803BB418  7C A5 00 50 */	subf r5, r5, r0
/* 803BB41C  7C A5 07 35 */	extsh. r5, r5
/* 803BB420  40 81 00 08 */	ble lbl_803BB428
/* 803BB424  B0 83 00 00 */	sth r4, 0(r3)
lbl_803BB428:
/* 803BB428  A8 63 00 00 */	lha r3, 0(r3)
/* 803BB42C  7C 03 00 50 */	subf r0, r3, r0
/* 803BB430  7C 03 07 34 */	extsh r3, r0
/* 803BB434  38 21 00 20 */	addi r1, r1, 0x20
/* 803BB438  4E 80 00 20 */	blr 
