lbl_805EEDDC:
/* 805EEDDC  80 E3 00 04 */	lwz r7, 4(r3)
/* 805EEDE0  3C 80 80 6D */	lis r4, data_table@ha /* 0x806CF604@ha */
/* 805EEDE4  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805EEDE8  38 04 F6 04 */	addi r0, r4, data_table@l /* 0x806CF604@l */
/* 805EEDEC  1C A7 00 48 */	mulli r5, r7, 0x48
/* 805EEDF0  54 E4 20 36 */	slwi r4, r7, 4
/* 805EEDF4  2C 07 00 01 */	cmpwi r7, 1
/* 805EEDF8  7C 80 22 14 */	add r4, r0, r4
/* 805EEDFC  38 A5 00 54 */	addi r5, r5, 0x54
/* 805EEE00  38 00 00 00 */	li r0, 0
/* 805EEE04  7C A6 2A 14 */	add r5, r6, r5
/* 805EEE08  90 E5 00 00 */	stw r7, 0(r5)
/* 805EEE0C  C0 04 00 00 */	lfs f0, 0(r4)
/* 805EEE10  D0 05 00 18 */	stfs f0, 0x18(r5)
/* 805EEE14  C0 04 00 04 */	lfs f0, 4(r4)
/* 805EEE18  D0 05 00 1C */	stfs f0, 0x1c(r5)
/* 805EEE1C  C0 04 00 08 */	lfs f0, 8(r4)
/* 805EEE20  D0 05 00 20 */	stfs f0, 0x20(r5)
/* 805EEE24  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 805EEE28  D0 05 00 24 */	stfs f0, 0x24(r5)
/* 805EEE2C  80 83 00 10 */	lwz r4, 0x10(r3)
/* 805EEE30  90 85 00 38 */	stw r4, 0x38(r5)
/* 805EEE34  80 83 00 14 */	lwz r4, 0x14(r3)
/* 805EEE38  90 85 00 3C */	stw r4, 0x3c(r5)
/* 805EEE3C  80 83 00 18 */	lwz r4, 0x18(r3)
/* 805EEE40  90 85 00 40 */	stw r4, 0x40(r5)
/* 805EEE44  80 83 00 1C */	lwz r4, 0x1c(r3)
/* 805EEE48  90 85 00 44 */	stw r4, 0x44(r5)
/* 805EEE4C  B0 05 00 36 */	sth r0, 0x36(r5)
/* 805EEE50  40 82 00 1C */	bne lbl_805EEE6C
/* 805EEE54  80 03 00 10 */	lwz r0, 0x10(r3)
/* 805EEE58  2C 00 00 0E */	cmpwi r0, 0xe
/* 805EEE5C  40 82 00 10 */	bne lbl_805EEE6C
/* 805EEE60  3C 80 80 65 */	lis r4, lit_943@ha /* 0x8064B800@ha */
/* 805EEE64  C0 04 B8 00 */	lfs f0, lit_943@l(r4)  /* 0x8064B800@l */
/* 805EEE68  D0 05 00 18 */	stfs f0, 0x18(r5)
lbl_805EEE6C:
/* 805EEE6C  2C 07 00 17 */	cmpwi r7, 0x17
/* 805EEE70  4C 82 00 20 */	bnelr 
/* 805EEE74  80 03 00 10 */	lwz r0, 0x10(r3)
/* 805EEE78  2C 00 00 02 */	cmpwi r0, 2
/* 805EEE7C  4C 82 00 20 */	bnelr 
/* 805EEE80  3C 60 80 65 */	lis r3, lit_943@ha /* 0x8064B800@ha */
/* 805EEE84  C0 03 B8 00 */	lfs f0, lit_943@l(r3)  /* 0x8064B800@l */
/* 805EEE88  D0 05 00 18 */	stfs f0, 0x18(r5)
/* 805EEE8C  4E 80 00 20 */	blr 
