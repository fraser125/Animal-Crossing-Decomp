lbl_805DD1B0:
/* 805DD1B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805DD1B4  7C 08 02 A6 */	mflr r0
/* 805DD1B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DD1BC  39 61 00 20 */	addi r11, r1, 0x20
/* 805DD1C0  4B AB DD 0D */	bl func_8009AECC
/* 805DD1C4  7C 7B 1B 78 */	mr r27, r3
/* 805DD1C8  7C FD 3B 78 */	mr r29, r7
/* 805DD1CC  80 E3 00 2C */	lwz r7, 0x2c(r3)
/* 805DD1D0  7C 9F 23 78 */	mr r31, r4
/* 805DD1D4  7C BC 2B 78 */	mr r28, r5
/* 805DD1D8  A3 DD 02 34 */	lhz r30, 0x234(r29)
/* 805DD1DC  80 E7 09 7C */	lwz r7, 0x97c(r7)
/* 805DD1E0  81 87 02 D8 */	lwz r12, 0x2d8(r7)
/* 805DD1E4  7D 89 03 A6 */	mtctr r12
/* 805DD1E8  4E 80 04 21 */	bctrl 
/* 805DD1EC  2C 1C 00 10 */	cmpwi r28, 0x10
/* 805DD1F0  40 82 00 2C */	bne lbl_805DD21C
/* 805DD1F4  3C 80 80 65 */	lis r4, lit_474@ha /* 0x8064B2A4@ha */
/* 805DD1F8  3C 60 80 65 */	lis r3, lit_475@ha /* 0x8064B2A8@ha */
/* 805DD1FC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805DD200  C0 24 B2 A4 */	lfs f1, lit_474@l(r4)  /* 0x8064B2A4@l */
/* 805DD204  C0 03 B2 A8 */	lfs f0, lit_475@l(r3)  /* 0x8064B2A8@l */
/* 805DD208  EC 22 08 2A */	fadds f1, f2, f1
/* 805DD20C  D0 3F 00 00 */	stfs f1, 0(r31)
/* 805DD210  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805DD214  EC 01 00 2A */	fadds f0, f1, f0
/* 805DD218  D0 1F 00 04 */	stfs f0, 4(r31)
lbl_805DD21C:
/* 805DD21C  2C 1C 00 11 */	cmpwi r28, 0x11
/* 805DD220  40 82 00 80 */	bne lbl_805DD2A0
/* 805DD224  28 1E 00 00 */	cmplwi r30, 0
/* 805DD228  41 82 00 78 */	beq lbl_805DD2A0
/* 805DD22C  28 1E FE 20 */	cmplwi r30, 0xfe20
/* 805DD230  41 80 00 0C */	blt lbl_805DD23C
/* 805DD234  28 1E FE 27 */	cmplwi r30, 0xfe27
/* 805DD238  40 81 00 68 */	ble lbl_805DD2A0
lbl_805DD23C:
/* 805DD23C  28 1E 22 24 */	cmplwi r30, 0x2224
/* 805DD240  41 80 00 0C */	blt lbl_805DD24C
/* 805DD244  28 1E 22 2B */	cmplwi r30, 0x222b
/* 805DD248  40 81 00 58 */	ble lbl_805DD2A0
lbl_805DD24C:
/* 805DD24C  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 805DD250  80 03 07 04 */	lwz r0, 0x704(r3)
/* 805DD254  2C 00 00 00 */	cmpwi r0, 0
/* 805DD258  40 82 00 30 */	bne lbl_805DD288
/* 805DD25C  3C 80 80 65 */	lis r4, lit_476@ha /* 0x8064B2AC@ha */
/* 805DD260  3C 60 80 65 */	lis r3, lit_477@ha /* 0x8064B2B0@ha */
/* 805DD264  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805DD268  C0 24 B2 AC */	lfs f1, lit_476@l(r4)  /* 0x8064B2AC@l */
/* 805DD26C  C0 03 B2 B0 */	lfs f0, lit_477@l(r3)  /* 0x8064B2B0@l */
/* 805DD270  EC 22 08 2A */	fadds f1, f2, f1
/* 805DD274  D0 3F 00 00 */	stfs f1, 0(r31)
/* 805DD278  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805DD27C  EC 01 00 2A */	fadds f0, f1, f0
/* 805DD280  D0 1F 00 04 */	stfs f0, 4(r31)
/* 805DD284  48 00 00 DC */	b lbl_805DD360
lbl_805DD288:
/* 805DD288  3C 60 80 65 */	lis r3, lit_477@ha /* 0x8064B2B0@ha */
/* 805DD28C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805DD290  C0 03 B2 B0 */	lfs f0, lit_477@l(r3)  /* 0x8064B2B0@l */
/* 805DD294  EC 01 00 2A */	fadds f0, f1, f0
/* 805DD298  D0 1F 00 04 */	stfs f0, 4(r31)
/* 805DD29C  48 00 00 C4 */	b lbl_805DD360
lbl_805DD2A0:
/* 805DD2A0  38 1C FF E9 */	addi r0, r28, -23
/* 805DD2A4  28 00 00 03 */	cmplwi r0, 3
/* 805DD2A8  40 81 00 14 */	ble lbl_805DD2BC
/* 805DD2AC  2C 1C 00 12 */	cmpwi r28, 0x12
/* 805DD2B0  41 82 00 0C */	beq lbl_805DD2BC
/* 805DD2B4  2C 1C 00 14 */	cmpwi r28, 0x14
/* 805DD2B8  40 82 00 38 */	bne lbl_805DD2F0
lbl_805DD2BC:
/* 805DD2BC  28 1E 00 00 */	cmplwi r30, 0
/* 805DD2C0  41 82 00 30 */	beq lbl_805DD2F0
/* 805DD2C4  3C 80 80 65 */	lis r4, lit_478@ha /* 0x8064B2B4@ha */
/* 805DD2C8  3C 60 80 65 */	lis r3, lit_479@ha /* 0x8064B2B8@ha */
/* 805DD2CC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805DD2D0  C0 24 B2 B4 */	lfs f1, lit_478@l(r4)  /* 0x8064B2B4@l */
/* 805DD2D4  C0 03 B2 B8 */	lfs f0, lit_479@l(r3)  /* 0x8064B2B8@l */
/* 805DD2D8  EC 22 08 2A */	fadds f1, f2, f1
/* 805DD2DC  D0 3F 00 00 */	stfs f1, 0(r31)
/* 805DD2E0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805DD2E4  EC 01 00 2A */	fadds f0, f1, f0
/* 805DD2E8  D0 1F 00 04 */	stfs f0, 4(r31)
/* 805DD2EC  48 00 00 74 */	b lbl_805DD360
lbl_805DD2F0:
/* 805DD2F0  28 1E 00 00 */	cmplwi r30, 0
/* 805DD2F4  41 82 00 24 */	beq lbl_805DD318
/* 805DD2F8  28 1E FE 20 */	cmplwi r30, 0xfe20
/* 805DD2FC  41 80 00 0C */	blt lbl_805DD308
/* 805DD300  28 1E FE 27 */	cmplwi r30, 0xfe27
/* 805DD304  40 81 00 14 */	ble lbl_805DD318
lbl_805DD308:
/* 805DD308  28 1E 22 24 */	cmplwi r30, 0x2224
/* 805DD30C  41 80 00 1C */	blt lbl_805DD328
/* 805DD310  28 1E 22 2B */	cmplwi r30, 0x222b
/* 805DD314  41 81 00 14 */	bgt lbl_805DD328
lbl_805DD318:
/* 805DD318  38 7D 02 36 */	addi r3, r29, 0x236
/* 805DD31C  4B DD F4 85 */	bl mMl_check_not_used_mail
/* 805DD320  2C 03 00 00 */	cmpwi r3, 0
/* 805DD324  40 82 00 3C */	bne lbl_805DD360
lbl_805DD328:
/* 805DD328  2C 1C 00 0A */	cmpwi r28, 0xa
/* 805DD32C  41 82 00 34 */	beq lbl_805DD360
/* 805DD330  2C 1C 00 15 */	cmpwi r28, 0x15
/* 805DD334  41 82 00 2C */	beq lbl_805DD360
/* 805DD338  3C 80 80 65 */	lis r4, lit_480@ha /* 0x8064B2BC@ha */
/* 805DD33C  3C 60 80 65 */	lis r3, lit_481@ha /* 0x8064B2C0@ha */
/* 805DD340  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805DD344  C0 24 B2 BC */	lfs f1, lit_480@l(r4)  /* 0x8064B2BC@l */
/* 805DD348  C0 03 B2 C0 */	lfs f0, lit_481@l(r3)  /* 0x8064B2C0@l */
/* 805DD34C  EC 22 08 2A */	fadds f1, f2, f1
/* 805DD350  D0 3F 00 00 */	stfs f1, 0(r31)
/* 805DD354  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805DD358  EC 01 00 2A */	fadds f0, f1, f0
/* 805DD35C  D0 1F 00 04 */	stfs f0, 4(r31)
lbl_805DD360:
/* 805DD360  39 61 00 20 */	addi r11, r1, 0x20
/* 805DD364  4B AB DB B5 */	bl func_8009AF18
/* 805DD368  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DD36C  7C 08 03 A6 */	mtlr r0
/* 805DD370  38 21 00 20 */	addi r1, r1, 0x20
/* 805DD374  4E 80 00 20 */	blr 
