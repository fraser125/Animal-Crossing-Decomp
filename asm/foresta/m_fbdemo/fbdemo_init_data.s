lbl_803A053C:
/* 803A053C  3C 80 80 64 */	lis r4, lit_327@ha /* 0x80641E6C@ha */
/* 803A0540  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A0544  38 A4 1E 6C */	addi r5, r4, lit_327@l /* 0x80641E6C@l */
/* 803A0548  39 80 00 00 */	li r12, 0
/* 803A054C  C8 25 00 00 */	lfd f1, 0(r5)
/* 803A0550  38 80 00 00 */	li r4, 0
/* 803A0554  3D 40 43 30 */	lis r10, 0x4330
/* 803A0558  48 00 00 94 */	b lbl_803A05EC
lbl_803A055C:
/* 803A055C  6C 89 80 00 */	xoris r9, r4, 0x8000
/* 803A0560  39 60 00 00 */	li r11, 0
/* 803A0564  38 A0 00 00 */	li r5, 0
/* 803A0568  38 C0 00 00 */	li r6, 0
/* 803A056C  48 00 00 68 */	b lbl_803A05D4
lbl_803A0570:
/* 803A0570  6C C8 80 00 */	xoris r8, r6, 0x8000
/* 803A0574  91 41 00 08 */	stw r10, 8(r1)
/* 803A0578  7C 0C 01 D6 */	mullw r0, r12, r0
/* 803A057C  80 E3 00 0C */	lwz r7, 0xc(r3)
/* 803A0580  91 01 00 0C */	stw r8, 0xc(r1)
/* 803A0584  39 6B 00 01 */	addi r11, r11, 1
/* 803A0588  38 C6 00 20 */	addi r6, r6, 0x20
/* 803A058C  C8 01 00 08 */	lfd f0, 8(r1)
/* 803A0590  54 00 18 38 */	slwi r0, r0, 3
/* 803A0594  EC 00 08 28 */	fsubs f0, f0, f1
/* 803A0598  7C 05 02 14 */	add r0, r5, r0
/* 803A059C  91 21 00 14 */	stw r9, 0x14(r1)
/* 803A05A0  7C 07 05 2E */	stfsx f0, r7, r0
/* 803A05A4  80 E3 00 00 */	lwz r7, 0(r3)
/* 803A05A8  91 41 00 10 */	stw r10, 0x10(r1)
/* 803A05AC  38 07 00 01 */	addi r0, r7, 1
/* 803A05B0  81 03 00 0C */	lwz r8, 0xc(r3)
/* 803A05B4  7C 0C 01 D6 */	mullw r0, r12, r0
/* 803A05B8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803A05BC  EC 00 08 28 */	fsubs f0, f0, f1
/* 803A05C0  54 00 18 38 */	slwi r0, r0, 3
/* 803A05C4  7C E5 02 14 */	add r7, r5, r0
/* 803A05C8  38 A5 00 08 */	addi r5, r5, 8
/* 803A05CC  38 07 00 04 */	addi r0, r7, 4
/* 803A05D0  7C 08 05 2E */	stfsx f0, r8, r0
lbl_803A05D4:
/* 803A05D4  80 E3 00 00 */	lwz r7, 0(r3)
/* 803A05D8  38 07 00 01 */	addi r0, r7, 1
/* 803A05DC  7C 0B 00 00 */	cmpw r11, r0
/* 803A05E0  41 80 FF 90 */	blt lbl_803A0570
/* 803A05E4  39 8C 00 01 */	addi r12, r12, 1
/* 803A05E8  38 84 00 20 */	addi r4, r4, 0x20
lbl_803A05EC:
/* 803A05EC  80 A3 00 04 */	lwz r5, 4(r3)
/* 803A05F0  38 05 00 01 */	addi r0, r5, 1
/* 803A05F4  7C 0C 00 00 */	cmpw r12, r0
/* 803A05F8  41 80 FF 64 */	blt lbl_803A055C
/* 803A05FC  38 21 00 20 */	addi r1, r1, 0x20
/* 803A0600  4E 80 00 20 */	blr 
