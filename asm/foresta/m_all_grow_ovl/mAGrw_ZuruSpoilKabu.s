lbl_80514DBC:
/* 80514DBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80514DC0  7C 08 02 A6 */	mflr r0
/* 80514DC4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80514DC8  7C 65 1B 78 */	mr r5, r3
/* 80514DCC  39 04 85 38 */	addi r8, r4, common_data@l /* 0x81138538@l */
/* 80514DD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80514DD4  3C 68 00 02 */	addis r3, r8, 2
/* 80514DD8  88 03 0F 1A */	lbz r0, 0xf1a(r3)
/* 80514DDC  28 00 00 01 */	cmplwi r0, 1
/* 80514DE0  40 82 00 48 */	bne lbl_80514E28
/* 80514DE4  A0 65 00 06 */	lhz r3, 6(r5)
/* 80514DE8  88 85 00 05 */	lbz r4, 5(r5)
/* 80514DEC  88 A5 00 03 */	lbz r5, 3(r5)
/* 80514DF0  A0 C8 00 10 */	lhz r6, 0x10(r8)
/* 80514DF4  88 E8 00 0F */	lbz r7, 0xf(r8)
/* 80514DF8  89 08 00 0D */	lbz r8, 0xd(r8)
/* 80514DFC  4B EF 19 F1 */	bl lbRTC_IsEqualDate
/* 80514E00  2C 03 00 00 */	cmpwi r3, 0
/* 80514E04  40 80 00 24 */	bge lbl_80514E28
/* 80514E08  4B FF FE 85 */	bl mAGrw_ZuruSpoilKabuFieldFgItem
/* 80514E0C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80514E10  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80514E14  3C 63 00 02 */	addis r3, r3, 2
/* 80514E18  38 63 25 40 */	addi r3, r3, 0x2540
/* 80514E1C  4B FF FF 0D */	bl mAGrw_ZuruSpoilKabuIslandFgItem
/* 80514E20  38 60 00 01 */	li r3, 1
/* 80514E24  4B FF F0 C1 */	bl mAGrw_SpoilAllPossession
lbl_80514E28:
/* 80514E28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80514E2C  7C 08 03 A6 */	mtlr r0
/* 80514E30  38 21 00 10 */	addi r1, r1, 0x10
/* 80514E34  4E 80 00 20 */	blr 
