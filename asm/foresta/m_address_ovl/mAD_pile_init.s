lbl_805C2168:
/* 805C2168  88 03 00 01 */	lbz r0, 1(r3)
/* 805C216C  28 00 00 02 */	cmplwi r0, 2
/* 805C2170  40 82 00 4C */	bne lbl_805C21BC
/* 805C2174  2C 05 00 00 */	cmpwi r5, 0
/* 805C2178  40 82 00 24 */	bne lbl_805C219C
/* 805C217C  3C A0 80 65 */	lis r5, data_8064ACDC@ha /* 0x8064ACDC@ha */
/* 805C2180  3C 60 80 65 */	lis r3, lit_458@ha /* 0x8064ACE0@ha */
/* 805C2184  C0 25 AC DC */	lfs f1, data_8064ACDC@l(r5)  /* 0x8064ACDC@l */
/* 805C2188  C0 03 AC E0 */	lfs f0, lit_458@l(r3)  /* 0x8064ACE0@l */
/* 805C218C  D0 24 00 00 */	stfs f1, 0(r4)
/* 805C2190  D0 04 00 04 */	stfs f0, 4(r4)
/* 805C2194  D0 24 00 08 */	stfs f1, 8(r4)
/* 805C2198  4E 80 00 20 */	blr 
lbl_805C219C:
/* 805C219C  3C A0 80 65 */	lis r5, lit_458@ha /* 0x8064ACE0@ha */
/* 805C21A0  3C 60 80 65 */	lis r3, data_8064ACDC@ha /* 0x8064ACDC@ha */
/* 805C21A4  C0 25 AC E0 */	lfs f1, lit_458@l(r5)  /* 0x8064ACE0@l */
/* 805C21A8  C0 03 AC DC */	lfs f0, data_8064ACDC@l(r3)  /* 0x8064ACDC@l */
/* 805C21AC  D0 24 00 00 */	stfs f1, 0(r4)
/* 805C21B0  D0 04 00 04 */	stfs f0, 4(r4)
/* 805C21B4  D0 24 00 08 */	stfs f1, 8(r4)
/* 805C21B8  4E 80 00 20 */	blr 
lbl_805C21BC:
/* 805C21BC  28 00 00 03 */	cmplwi r0, 3
/* 805C21C0  40 82 00 68 */	bne lbl_805C2228
/* 805C21C4  39 25 00 01 */	addi r9, r5, 1
/* 805C21C8  39 00 00 03 */	li r8, 3
/* 805C21CC  7C E9 43 D6 */	divw r7, r9, r8
/* 805C21D0  38 65 00 02 */	addi r3, r5, 2
/* 805C21D4  3D 40 80 65 */	lis r10, data_8064ACDC@ha /* 0x8064ACDC@ha */
/* 805C21D8  3C C0 80 65 */	lis r6, lit_458@ha /* 0x8064ACE0@ha */
/* 805C21DC  39 6A AC DC */	addi r11, r10, data_8064ACDC@l /* 0x8064ACDC@l */
/* 805C21E0  39 46 AC E0 */	addi r10, r6, lit_458@l /* 0x8064ACE0@l */
/* 805C21E4  7C 03 43 D6 */	divw r0, r3, r8
/* 805C21E8  3C C0 80 65 */	lis r6, lit_459@ha /* 0x8064ACE4@ha */
/* 805C21EC  C0 0B 00 00 */	lfs f0, 0(r11)
/* 805C21F0  54 AB 10 3A */	slwi r11, r5, 2
/* 805C21F4  38 A6 AC E4 */	addi r5, r6, lit_459@l /* 0x8064ACE4@l */
/* 805C21F8  C0 2A 00 00 */	lfs f1, 0(r10)
/* 805C21FC  7C C7 41 D6 */	mullw r6, r7, r8
/* 805C2200  7C 04 5D 2E */	stfsx f0, r4, r11
/* 805C2204  C0 05 00 00 */	lfs f0, 0(r5)
/* 805C2208  7C 00 41 D6 */	mullw r0, r0, r8
/* 805C220C  7C A6 48 50 */	subf r5, r6, r9
/* 805C2210  54 A5 10 3A */	slwi r5, r5, 2
/* 805C2214  7C 24 2D 2E */	stfsx f1, r4, r5
/* 805C2218  7C 00 18 50 */	subf r0, r0, r3
/* 805C221C  54 00 10 3A */	slwi r0, r0, 2
/* 805C2220  7C 04 05 2E */	stfsx f0, r4, r0
/* 805C2224  4E 80 00 20 */	blr 
lbl_805C2228:
/* 805C2228  3C 60 80 65 */	lis r3, data_8064ACDC@ha /* 0x8064ACDC@ha */
/* 805C222C  C0 03 AC DC */	lfs f0, data_8064ACDC@l(r3)  /* 0x8064ACDC@l */
/* 805C2230  D0 04 00 00 */	stfs f0, 0(r4)
/* 805C2234  D0 04 00 04 */	stfs f0, 4(r4)
/* 805C2238  D0 04 00 08 */	stfs f0, 8(r4)
/* 805C223C  4E 80 00 20 */	blr 
