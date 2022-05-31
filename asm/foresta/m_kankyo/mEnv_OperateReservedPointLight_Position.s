lbl_803B99D4:
/* 803B99D4  2C 03 00 00 */	cmpwi r3, 0
/* 803B99D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B99DC  41 80 00 5C */	blt lbl_803B9A38
/* 803B99E0  2C 03 00 04 */	cmpwi r3, 4
/* 803B99E4  40 80 00 54 */	bge lbl_803B9A38
/* 803B99E8  C0 04 00 00 */	lfs f0, 0(r4)
/* 803B99EC  3C A0 81 17 */	lis r5, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B99F0  1C 63 00 0E */	mulli r3, r3, 0xe
/* 803B99F4  FC 00 00 1E */	fctiwz f0, f0
/* 803B99F8  38 05 9B A0 */	addi r0, r5, data_81169BA0@l /* 0x81169BA0@l */
/* 803B99FC  7C 60 1A 14 */	add r3, r0, r3
/* 803B9A00  D8 01 00 08 */	stfd f0, 8(r1)
/* 803B9A04  38 63 00 54 */	addi r3, r3, 0x54
/* 803B9A08  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803B9A0C  B0 03 00 02 */	sth r0, 2(r3)
/* 803B9A10  C0 04 00 04 */	lfs f0, 4(r4)
/* 803B9A14  FC 00 00 1E */	fctiwz f0, f0
/* 803B9A18  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803B9A1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B9A20  B0 03 00 04 */	sth r0, 4(r3)
/* 803B9A24  C0 04 00 08 */	lfs f0, 8(r4)
/* 803B9A28  FC 00 00 1E */	fctiwz f0, f0
/* 803B9A2C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 803B9A30  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803B9A34  B0 03 00 06 */	sth r0, 6(r3)
lbl_803B9A38:
/* 803B9A38  38 21 00 20 */	addi r1, r1, 0x20
/* 803B9A3C  4E 80 00 20 */	blr 
