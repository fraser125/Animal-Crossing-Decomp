lbl_803E182C:
/* 803E182C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803E1830  7C 08 02 A6 */	mflr r0
/* 803E1834  90 01 00 44 */	stw r0, 0x44(r1)
/* 803E1838  39 61 00 40 */	addi r11, r1, 0x40
/* 803E183C  4B CB 96 7D */	bl func_8009AEB8
/* 803E1840  7C FE 3B 78 */	mr r30, r7
/* 803E1844  3C E0 80 66 */	lis r7, data_8065BE00@ha /* 0x8065BE00@ha */
/* 803E1848  7C BC 2B 78 */	mr r28, r5
/* 803E184C  38 00 00 00 */	li r0, 0
/* 803E1850  2C 1E 00 02 */	cmpwi r30, 2
/* 803E1854  B0 05 00 00 */	sth r0, 0(r5)
/* 803E1858  7C 7A 1B 78 */	mr r26, r3
/* 803E185C  7C 9B 23 78 */	mr r27, r4
/* 803E1860  7C DD 33 78 */	mr r29, r6
/* 803E1864  7D 16 43 78 */	mr r22, r8
/* 803E1868  3B E7 BE 00 */	addi r31, r7, data_8065BE00@l /* 0x8065BE00@l */
/* 803E186C  3B 00 00 03 */	li r24, 3
/* 803E1870  41 81 00 0C */	bgt lbl_803E187C
/* 803E1874  3B 00 00 03 */	li r24, 3
/* 803E1878  48 00 00 30 */	b lbl_803E18A8
lbl_803E187C:
/* 803E187C  2C 1E 00 05 */	cmpwi r30, 5
/* 803E1880  41 81 00 0C */	bgt lbl_803E188C
/* 803E1884  3B 00 00 00 */	li r24, 0
/* 803E1888  48 00 00 20 */	b lbl_803E18A8
lbl_803E188C:
/* 803E188C  2C 1E 00 08 */	cmpwi r30, 8
/* 803E1890  41 81 00 0C */	bgt lbl_803E189C
/* 803E1894  3B 00 00 01 */	li r24, 1
/* 803E1898  48 00 00 10 */	b lbl_803E18A8
lbl_803E189C:
/* 803E189C  2C 1E 00 0B */	cmpwi r30, 0xb
/* 803E18A0  41 81 00 08 */	bgt lbl_803E18A8
/* 803E18A4  3B 00 00 02 */	li r24, 2
lbl_803E18A8:
/* 803E18A8  57 00 10 3A */	slwi r0, r24, 2
/* 803E18AC  38 7F 00 3C */	addi r3, r31, 0x3c
/* 803E18B0  7C 03 00 2E */	lwzx r0, r3, r0
/* 803E18B4  90 1B 00 00 */	stw r0, 0(r27)
/* 803E18B8  4B C7 B4 3D */	bl fqrand
/* 803E18BC  6E C3 80 00 */	xoris r3, r22, 0x8000
/* 803E18C0  3C 00 43 30 */	lis r0, 0x4330
/* 803E18C4  90 61 00 0C */	stw r3, 0xc(r1)
/* 803E18C8  3C 80 80 64 */	lis r4, lit_571@ha /* 0x806430F4@ha */
/* 803E18CC  C8 44 30 F4 */	lfd f2, lit_571@l(r4)  /* 0x806430F4@l */
/* 803E18D0  2C 1E 00 08 */	cmpwi r30, 8
/* 803E18D4  90 01 00 08 */	stw r0, 8(r1)
/* 803E18D8  3B 20 00 02 */	li r25, 2
/* 803E18DC  C8 01 00 08 */	lfd f0, 8(r1)
/* 803E18E0  EC 00 10 28 */	fsubs f0, f0, f2
/* 803E18E4  EC 00 00 72 */	fmuls f0, f0, f1
/* 803E18E8  FC 00 00 1E */	fctiwz f0, f0
/* 803E18EC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803E18F0  82 E1 00 14 */	lwz r23, 0x14(r1)
/* 803E18F4  40 82 00 08 */	bne lbl_803E18FC
/* 803E18F8  3B 20 00 08 */	li r25, 8
lbl_803E18FC:
/* 803E18FC  3A C0 00 00 */	li r22, 0
/* 803E1900  48 00 00 34 */	b lbl_803E1934
lbl_803E1904:
/* 803E1904  7F 43 D3 78 */	mr r3, r26
/* 803E1908  7F C4 F3 78 */	mr r4, r30
/* 803E190C  7E C5 B3 78 */	mr r5, r22
/* 803E1910  4B FF FD FD */	bl mPr_CheckMotherMailMonthly
/* 803E1914  2C 03 00 00 */	cmpwi r3, 0
/* 803E1918  40 82 00 18 */	bne lbl_803E1930
/* 803E191C  2C 17 00 00 */	cmpwi r23, 0
/* 803E1920  41 81 00 0C */	bgt lbl_803E192C
/* 803E1924  92 DD 00 00 */	stw r22, 0(r29)
/* 803E1928  48 00 00 14 */	b lbl_803E193C
lbl_803E192C:
/* 803E192C  3A F7 FF FF */	addi r23, r23, -1
lbl_803E1930:
/* 803E1930  3A D6 00 01 */	addi r22, r22, 1
lbl_803E1934:
/* 803E1934  7C 16 C8 00 */	cmpw r22, r25
/* 803E1938  41 80 FF CC */	blt lbl_803E1904
lbl_803E193C:
/* 803E193C  1C 78 00 03 */	mulli r3, r24, 3
/* 803E1940  38 1E FF FF */	addi r0, r30, -1
/* 803E1944  80 BB 00 00 */	lwz r5, 0(r27)
/* 803E1948  2C 1E 00 05 */	cmpwi r30, 5
/* 803E194C  80 9D 00 00 */	lwz r4, 0(r29)
/* 803E1950  7C 03 00 50 */	subf r0, r3, r0
/* 803E1954  54 00 08 3C */	slwi r0, r0, 1
/* 803E1958  7C 00 2A 14 */	add r0, r0, r5
/* 803E195C  7C 04 02 14 */	add r0, r4, r0
/* 803E1960  90 1B 00 00 */	stw r0, 0(r27)
/* 803E1964  40 82 00 34 */	bne lbl_803E1998
/* 803E1968  80 1D 00 00 */	lwz r0, 0(r29)
/* 803E196C  2C 00 00 01 */	cmpwi r0, 1
/* 803E1970  40 82 00 28 */	bne lbl_803E1998
/* 803E1974  4B C7 B3 81 */	bl fqrand
/* 803E1978  FC 00 08 1E */	fctiwz f0, f1
/* 803E197C  38 7F 00 4C */	addi r3, r31, 0x4c
/* 803E1980  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803E1984  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E1988  54 00 08 3C */	slwi r0, r0, 1
/* 803E198C  7C 03 02 2E */	lhzx r0, r3, r0
/* 803E1990  B0 1C 00 00 */	sth r0, 0(r28)
/* 803E1994  48 00 00 64 */	b lbl_803E19F8
lbl_803E1998:
/* 803E1998  2C 1E 00 0C */	cmpwi r30, 0xc
/* 803E199C  40 82 00 4C */	bne lbl_803E19E8
/* 803E19A0  80 1D 00 00 */	lwz r0, 0(r29)
/* 803E19A4  2C 00 00 00 */	cmpwi r0, 0
/* 803E19A8  40 82 00 10 */	bne lbl_803E19B8
/* 803E19AC  38 00 28 00 */	li r0, 0x2800
/* 803E19B0  B0 1C 00 00 */	sth r0, 0(r28)
/* 803E19B4  48 00 00 44 */	b lbl_803E19F8
lbl_803E19B8:
/* 803E19B8  4B C7 B3 3D */	bl fqrand
/* 803E19BC  3C 80 80 64 */	lis r4, lit_1240@ha /* 0x80643108@ha */
/* 803E19C0  38 7F 00 50 */	addi r3, r31, 0x50
/* 803E19C4  C0 04 31 08 */	lfs f0, lit_1240@l(r4)  /* 0x80643108@l */
/* 803E19C8  EC 00 00 72 */	fmuls f0, f0, f1
/* 803E19CC  FC 00 00 1E */	fctiwz f0, f0
/* 803E19D0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803E19D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E19D8  54 00 08 3C */	slwi r0, r0, 1
/* 803E19DC  7C 03 02 2E */	lhzx r0, r3, r0
/* 803E19E0  B0 1C 00 00 */	sth r0, 0(r28)
/* 803E19E4  48 00 00 14 */	b lbl_803E19F8
lbl_803E19E8:
/* 803E19E8  2C 1E 00 0B */	cmpwi r30, 0xb
/* 803E19EC  40 82 00 0C */	bne lbl_803E19F8
/* 803E19F0  38 00 28 05 */	li r0, 0x2805
/* 803E19F4  B0 1C 00 00 */	sth r0, 0(r28)
lbl_803E19F8:
/* 803E19F8  39 61 00 40 */	addi r11, r1, 0x40
/* 803E19FC  4B CB 95 09 */	bl func_8009AF04
/* 803E1A00  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803E1A04  7C 08 03 A6 */	mtlr r0
/* 803E1A08  38 21 00 40 */	addi r1, r1, 0x40
/* 803E1A0C  4E 80 00 20 */	blr 
