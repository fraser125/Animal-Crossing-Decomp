lbl_80373098:
/* 80373098  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8037309C  3C C0 80 64 */	lis r6, lit_479@ha /* 0x806411C4@ha */
/* 803730A0  39 26 11 C4 */	addi r9, r6, lit_479@l /* 0x806411C4@l */
/* 803730A4  39 40 00 00 */	li r10, 0
/* 803730A8  39 01 00 08 */	addi r8, r1, 8
/* 803730AC  38 C0 00 00 */	li r6, 0
/* 803730B0  48 00 00 7C */	b lbl_8037312C
lbl_803730B4:
/* 803730B4  7C 44 34 2E */	lfsx f2, r4, r6
/* 803730B8  39 60 00 00 */	li r11, 0
/* 803730BC  C0 69 00 00 */	lfs f3, 0(r9)
/* 803730C0  38 E0 00 00 */	li r7, 0
/* 803730C4  7D 49 03 A6 */	mtctr r10
/* 803730C8  2C 0A 00 00 */	cmpwi r10, 0
/* 803730CC  40 81 00 1C */	ble lbl_803730E8
lbl_803730D0:
/* 803730D0  7C 04 3C 2E */	lfsx f0, r4, r7
/* 803730D4  39 6B 00 01 */	addi r11, r11, 1
/* 803730D8  38 E7 00 04 */	addi r7, r7, 4
/* 803730DC  EC 02 00 28 */	fsubs f0, f2, f0
/* 803730E0  EC 63 00 32 */	fmuls f3, f3, f0
/* 803730E4  42 00 FF EC */	bdnz lbl_803730D0
lbl_803730E8:
/* 803730E8  39 6B 00 01 */	addi r11, r11, 1
/* 803730EC  7C 0B 18 50 */	subf r0, r11, r3
/* 803730F0  55 67 10 3A */	slwi r7, r11, 2
/* 803730F4  7C 09 03 A6 */	mtctr r0
/* 803730F8  7C 0B 18 00 */	cmpw r11, r3
/* 803730FC  40 80 00 1C */	bge lbl_80373118
lbl_80373100:
/* 80373100  7C 04 3C 2E */	lfsx f0, r4, r7
/* 80373104  39 6B 00 01 */	addi r11, r11, 1
/* 80373108  38 E7 00 04 */	addi r7, r7, 4
/* 8037310C  EC 02 00 28 */	fsubs f0, f2, f0
/* 80373110  EC 63 00 32 */	fmuls f3, f3, f0
/* 80373114  42 00 FF EC */	bdnz lbl_80373100
lbl_80373118:
/* 80373118  7C 05 34 2E */	lfsx f0, r5, r6
/* 8037311C  39 4A 00 01 */	addi r10, r10, 1
/* 80373120  EC 00 18 24 */	fdivs f0, f0, f3
/* 80373124  7C 08 35 2E */	stfsx f0, r8, r6
/* 80373128  38 C6 00 04 */	addi r6, r6, 4
lbl_8037312C:
/* 8037312C  7C 0A 18 00 */	cmpw r10, r3
/* 80373130  41 80 FF 84 */	blt lbl_803730B4
/* 80373134  3C C0 80 64 */	lis r6, lit_480@ha /* 0x806411C8@ha */
/* 80373138  3C A0 80 64 */	lis r5, lit_479@ha /* 0x806411C4@ha */
/* 8037313C  C0 66 11 C8 */	lfs f3, lit_480@l(r6)  /* 0x806411C8@l */
/* 80373140  39 05 11 C4 */	addi r8, r5, lit_479@l /* 0x806411C4@l */
/* 80373144  38 E1 00 08 */	addi r7, r1, 8
/* 80373148  39 20 00 00 */	li r9, 0
/* 8037314C  38 A0 00 00 */	li r5, 0
/* 80373150  48 00 00 78 */	b lbl_803731C8
lbl_80373154:
/* 80373154  C0 48 00 00 */	lfs f2, 0(r8)
/* 80373158  39 40 00 00 */	li r10, 0
/* 8037315C  38 C0 00 00 */	li r6, 0
/* 80373160  7D 29 03 A6 */	mtctr r9
/* 80373164  2C 09 00 00 */	cmpwi r9, 0
/* 80373168  40 81 00 1C */	ble lbl_80373184
lbl_8037316C:
/* 8037316C  7C 04 34 2E */	lfsx f0, r4, r6
/* 80373170  39 4A 00 01 */	addi r10, r10, 1
/* 80373174  38 C6 00 04 */	addi r6, r6, 4
/* 80373178  EC 01 00 28 */	fsubs f0, f1, f0
/* 8037317C  EC 42 00 32 */	fmuls f2, f2, f0
/* 80373180  42 00 FF EC */	bdnz lbl_8037316C
lbl_80373184:
/* 80373184  39 4A 00 01 */	addi r10, r10, 1
/* 80373188  7C 0A 18 50 */	subf r0, r10, r3
/* 8037318C  55 46 10 3A */	slwi r6, r10, 2
/* 80373190  7C 09 03 A6 */	mtctr r0
/* 80373194  7C 0A 18 00 */	cmpw r10, r3
/* 80373198  40 80 00 1C */	bge lbl_803731B4
lbl_8037319C:
/* 8037319C  7C 04 34 2E */	lfsx f0, r4, r6
/* 803731A0  39 4A 00 01 */	addi r10, r10, 1
/* 803731A4  38 C6 00 04 */	addi r6, r6, 4
/* 803731A8  EC 01 00 28 */	fsubs f0, f1, f0
/* 803731AC  EC 42 00 32 */	fmuls f2, f2, f0
/* 803731B0  42 00 FF EC */	bdnz lbl_8037319C
lbl_803731B4:
/* 803731B4  7C 07 2C 2E */	lfsx f0, r7, r5
/* 803731B8  39 29 00 01 */	addi r9, r9, 1
/* 803731BC  38 A5 00 04 */	addi r5, r5, 4
/* 803731C0  EC 02 00 32 */	fmuls f0, f2, f0
/* 803731C4  EC 63 00 2A */	fadds f3, f3, f0
lbl_803731C8:
/* 803731C8  7C 09 18 00 */	cmpw r9, r3
/* 803731CC  41 80 FF 88 */	blt lbl_80373154
/* 803731D0  FC 20 18 90 */	fmr f1, f3
/* 803731D4  38 21 00 D0 */	addi r1, r1, 0xd0
/* 803731D8  4E 80 00 20 */	blr 
