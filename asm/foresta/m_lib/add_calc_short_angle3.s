lbl_803BB43C:
/* 803BB43C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BB440  7C 80 07 34 */	extsh r0, r4
/* 803BB444  A9 03 00 00 */	lha r8, 0(r3)
/* 803BB448  7C 00 40 00 */	cmpw r0, r8
/* 803BB44C  41 82 00 C8 */	beq lbl_803BB514
/* 803BB450  54 87 04 3E */	clrlwi r7, r4, 0x10
/* 803BB454  55 09 04 3E */	clrlwi r9, r8, 0x10
/* 803BB458  7C 09 38 00 */	cmpw r9, r7
/* 803BB45C  7C EA 3B 78 */	mr r10, r7
/* 803BB460  40 81 00 08 */	ble lbl_803BB468
/* 803BB464  3D 47 00 01 */	addis r10, r7, 1
lbl_803BB468:
/* 803BB468  7C 09 50 50 */	subf r0, r9, r10
/* 803BB46C  3C E0 43 30 */	lis r7, 0x4330
/* 803BB470  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803BB474  3D 00 80 64 */	lis r8, lit_401@ha /* 0x8064255C@ha */
/* 803BB478  90 01 00 0C */	stw r0, 0xc(r1)
/* 803BB47C  7C A0 07 34 */	extsh r0, r5
/* 803BB480  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803BB484  C8 68 25 5C */	lfd f3, lit_401@l(r8)  /* 0x8064255C@l */
/* 803BB488  90 E1 00 08 */	stw r7, 8(r1)
/* 803BB48C  C8 01 00 08 */	lfd f0, 8(r1)
/* 803BB490  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BB494  EC 40 18 28 */	fsubs f2, f0, f3
/* 803BB498  90 E1 00 10 */	stw r7, 0x10(r1)
/* 803BB49C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803BB4A0  EC 21 00 B2 */	fmuls f1, f1, f2
/* 803BB4A4  EC 00 18 28 */	fsubs f0, f0, f3
/* 803BB4A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803BB4AC  40 81 00 18 */	ble lbl_803BB4C4
/* 803BB4B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BB4B4  90 E1 00 10 */	stw r7, 0x10(r1)
/* 803BB4B8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803BB4BC  EC 20 18 28 */	fsubs f1, f0, f3
/* 803BB4C0  48 00 00 34 */	b lbl_803BB4F4
lbl_803BB4C4:
/* 803BB4C4  7C C0 07 34 */	extsh r0, r6
/* 803BB4C8  90 E1 00 10 */	stw r7, 0x10(r1)
/* 803BB4CC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803BB4D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BB4D4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803BB4D8  EC 00 18 28 */	fsubs f0, f0, f3
/* 803BB4DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803BB4E0  40 80 00 14 */	bge lbl_803BB4F4
/* 803BB4E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BB4E8  90 E1 00 10 */	stw r7, 0x10(r1)
/* 803BB4EC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803BB4F0  EC 20 18 28 */	fsubs f1, f0, f3
lbl_803BB4F4:
/* 803BB4F4  FC 00 08 1E */	fctiwz f0, f1
/* 803BB4F8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803BB4FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BB500  7C 09 02 14 */	add r0, r9, r0
/* 803BB504  7C 00 50 00 */	cmpw r0, r10
/* 803BB508  40 81 00 08 */	ble lbl_803BB510
/* 803BB50C  7D 40 53 78 */	mr r0, r10
lbl_803BB510:
/* 803BB510  B0 03 00 00 */	sth r0, 0(r3)
lbl_803BB514:
/* 803BB514  A8 03 00 00 */	lha r0, 0(r3)
/* 803BB518  7C 00 20 50 */	subf r0, r0, r4
/* 803BB51C  7C 03 07 34 */	extsh r3, r0
/* 803BB520  38 21 00 20 */	addi r1, r1, 0x20
/* 803BB524  4E 80 00 20 */	blr 
