lbl_803CAC84:
/* 803CAC84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CAC88  7C 08 02 A6 */	mflr r0
/* 803CAC8C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803CAC90  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CAC94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803CAC98  7C 9F 23 78 */	mr r31, r4
/* 803CAC9C  93 C1 00 08 */	stw r30, 8(r1)
/* 803CACA0  7C 7E 1B 78 */	mr r30, r3
/* 803CACA4  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 803CACA8  3C 83 00 03 */	addis r4, r3, 3
/* 803CACAC  88 04 DB 40 */	lbz r0, -0x24c0(r4)
/* 803CACB0  28 00 00 00 */	cmplwi r0, 0
/* 803CACB4  40 82 00 7C */	bne lbl_803CAD30
/* 803CACB8  3C 80 80 64 */	lis r4, data_806432C4@ha /* 0x806432C4@ha */
/* 803CACBC  3C 63 00 02 */	addis r3, r3, 2
/* 803CACC0  38 84 32 C4 */	addi r4, r4, data_806432C4@l /* 0x806432C4@l */
/* 803CACC4  38 A0 00 7F */	li r5, 0x7f
/* 803CACC8  38 63 41 A0 */	addi r3, r3, 0x41a0
/* 803CACCC  48 03 BB 6D */	bl lbRTC_IsEqualTime
/* 803CACD0  2C 03 00 01 */	cmpwi r3, 1
/* 803CACD4  40 82 00 30 */	bne lbl_803CAD04
/* 803CACD8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CACDC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803CACE0  3C 83 00 02 */	addis r4, r3, 2
/* 803CACE4  88 64 61 25 */	lbz r3, 0x6125(r4)
/* 803CACE8  88 04 61 23 */	lbz r0, 0x6123(r4)
/* 803CACEC  54 63 40 2E */	slwi r3, r3, 8
/* 803CACF0  7C 03 02 14 */	add r0, r3, r0
/* 803CACF4  B0 1E 00 00 */	sth r0, 0(r30)
/* 803CACF8  A0 04 61 26 */	lhz r0, 0x6126(r4)
/* 803CACFC  B0 1F 00 00 */	sth r0, 0(r31)
/* 803CAD00  48 00 00 4C */	b lbl_803CAD4C
lbl_803CAD04:
/* 803CAD04  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CAD08  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803CAD0C  3C 83 00 02 */	addis r4, r3, 2
/* 803CAD10  88 64 41 A5 */	lbz r3, 0x41a5(r4)
/* 803CAD14  88 04 41 A3 */	lbz r0, 0x41a3(r4)
/* 803CAD18  54 63 40 2E */	slwi r3, r3, 8
/* 803CAD1C  7C 03 02 14 */	add r0, r3, r0
/* 803CAD20  B0 1E 00 00 */	sth r0, 0(r30)
/* 803CAD24  A0 04 41 A6 */	lhz r0, 0x41a6(r4)
/* 803CAD28  B0 1F 00 00 */	sth r0, 0(r31)
/* 803CAD2C  48 00 00 20 */	b lbl_803CAD4C
lbl_803CAD30:
/* 803CAD30  88 64 DB DD */	lbz r3, -0x2423(r4)
/* 803CAD34  88 04 DB DB */	lbz r0, -0x2425(r4)
/* 803CAD38  54 63 40 2E */	slwi r3, r3, 8
/* 803CAD3C  7C 03 02 14 */	add r0, r3, r0
/* 803CAD40  B0 1E 00 00 */	sth r0, 0(r30)
/* 803CAD44  A0 04 DB DE */	lhz r0, -0x2422(r4)
/* 803CAD48  B0 1F 00 00 */	sth r0, 0(r31)
lbl_803CAD4C:
/* 803CAD4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CAD50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CAD54  83 C1 00 08 */	lwz r30, 8(r1)
/* 803CAD58  7C 08 03 A6 */	mtlr r0
/* 803CAD5C  38 21 00 10 */	addi r1, r1, 0x10
/* 803CAD60  4E 80 00 20 */	blr 
