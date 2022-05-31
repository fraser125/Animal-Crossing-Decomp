lbl_803EC86C:
/* 803EC86C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EC870  7C 08 02 A6 */	mflr r0
/* 803EC874  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EC878  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EC87C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EC880  3C A3 00 02 */	addis r5, r3, 2
/* 803EC884  81 05 61 3C */	lwz r8, 0x613c(r5)
/* 803EC888  A0 65 61 26 */	lhz r3, 0x6126(r5)
/* 803EC88C  A0 C8 23 BE */	lhz r6, 0x23be(r8)
/* 803EC890  7C 03 30 40 */	cmplw r3, r6
/* 803EC894  41 82 00 0C */	beq lbl_803EC8A0
/* 803EC898  38 60 00 00 */	li r3, 0
/* 803EC89C  48 00 00 58 */	b lbl_803EC8F4
lbl_803EC8A0:
/* 803EC8A0  88 85 61 25 */	lbz r4, 0x6125(r5)
/* 803EC8A4  88 E8 23 C0 */	lbz r7, 0x23c0(r8)
/* 803EC8A8  88 A5 61 23 */	lbz r5, 0x6123(r5)
/* 803EC8AC  89 08 23 C1 */	lbz r8, 0x23c1(r8)
/* 803EC8B0  48 01 9F 3D */	bl lbRTC_IsEqualDate
/* 803EC8B4  2C 03 00 00 */	cmpwi r3, 0
/* 803EC8B8  41 82 00 28 */	beq lbl_803EC8E0
/* 803EC8BC  40 80 00 10 */	bge lbl_803EC8CC
/* 803EC8C0  2C 03 FF FF */	cmpwi r3, -1
/* 803EC8C4  40 80 00 14 */	bge lbl_803EC8D8
/* 803EC8C8  48 00 00 28 */	b lbl_803EC8F0
lbl_803EC8CC:
/* 803EC8CC  2C 03 00 02 */	cmpwi r3, 2
/* 803EC8D0  40 80 00 20 */	bge lbl_803EC8F0
/* 803EC8D4  48 00 00 14 */	b lbl_803EC8E8
lbl_803EC8D8:
/* 803EC8D8  38 60 00 00 */	li r3, 0
/* 803EC8DC  48 00 00 18 */	b lbl_803EC8F4
lbl_803EC8E0:
/* 803EC8E0  38 60 00 01 */	li r3, 1
/* 803EC8E4  48 00 00 10 */	b lbl_803EC8F4
lbl_803EC8E8:
/* 803EC8E8  38 60 00 02 */	li r3, 2
/* 803EC8EC  48 00 00 08 */	b lbl_803EC8F4
lbl_803EC8F0:
/* 803EC8F0  38 60 00 00 */	li r3, 0
lbl_803EC8F4:
/* 803EC8F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EC8F8  7C 08 03 A6 */	mtlr r0
/* 803EC8FC  38 21 00 10 */	addi r1, r1, 0x10
/* 803EC900  4E 80 00 20 */	blr 
