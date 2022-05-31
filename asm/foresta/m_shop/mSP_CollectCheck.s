lbl_803E7CE4:
/* 803E7CE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E7CE8  7C 08 02 A6 */	mflr r0
/* 803E7CEC  38 80 00 00 */	li r4, 0
/* 803E7CF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E7CF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E7CF8  93 C1 00 08 */	stw r30, 8(r1)
/* 803E7CFC  4B FF E5 A9 */	bl mRmTp_Item1ItemNo2FtrItemNo_AtPlayerRoom
/* 803E7D00  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 803E7D04  3B E0 00 00 */	li r31, 0
/* 803E7D08  2C 00 00 02 */	cmpwi r0, 2
/* 803E7D0C  54 65 04 3E */	clrlwi r5, r3, 0x10
/* 803E7D10  41 82 00 3C */	beq lbl_803E7D4C
/* 803E7D14  40 80 00 10 */	bge lbl_803E7D24
/* 803E7D18  2C 00 00 01 */	cmpwi r0, 1
/* 803E7D1C  40 80 00 10 */	bge lbl_803E7D2C
/* 803E7D20  48 00 00 E8 */	b lbl_803E7E08
lbl_803E7D24:
/* 803E7D24  2C 00 00 04 */	cmpwi r0, 4
/* 803E7D28  40 80 00 E0 */	bge lbl_803E7E08
lbl_803E7D2C:
/* 803E7D2C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E7D30  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803E7D34  3C 84 00 02 */	addis r4, r4, 2
/* 803E7D38  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 803E7D3C  3B E4 11 08 */	addi r31, r4, 0x1108
/* 803E7D40  4B FF FA 51 */	bl mRmTp_FtrItemNo2FtrIdx
/* 803E7D44  7C 7E 1B 78 */	mr r30, r3
/* 803E7D48  48 00 00 C0 */	b lbl_803E7E08
lbl_803E7D4C:
/* 803E7D4C  54 A0 C7 3E */	rlwinm r0, r5, 0x18, 0x1c, 0x1f
/* 803E7D50  2C 00 00 07 */	cmpwi r0, 7
/* 803E7D54  41 82 00 5C */	beq lbl_803E7DB0
/* 803E7D58  40 80 00 1C */	bge lbl_803E7D74
/* 803E7D5C  2C 00 00 00 */	cmpwi r0, 0
/* 803E7D60  41 82 00 20 */	beq lbl_803E7D80
/* 803E7D64  41 80 00 A4 */	blt lbl_803E7E08
/* 803E7D68  2C 00 00 06 */	cmpwi r0, 6
/* 803E7D6C  40 80 00 60 */	bge lbl_803E7DCC
/* 803E7D70  48 00 00 98 */	b lbl_803E7E08
lbl_803E7D74:
/* 803E7D74  2C 00 00 0A */	cmpwi r0, 0xa
/* 803E7D78  41 82 00 70 */	beq lbl_803E7DE8
/* 803E7D7C  48 00 00 8C */	b lbl_803E7E08
lbl_803E7D80:
/* 803E7D80  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E7D84  38 65 E0 00 */	addi r3, r5, -8192
/* 803E7D88  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803E7D8C  3C 84 00 02 */	addis r4, r4, 2
/* 803E7D90  54 60 D0 0A */	slwi r0, r3, 0x1a
/* 803E7D94  54 63 0F FE */	srwi r3, r3, 0x1f
/* 803E7D98  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 803E7D9C  7C 03 00 50 */	subf r0, r3, r0
/* 803E7DA0  54 00 30 3E */	rotlwi r0, r0, 6
/* 803E7DA4  3B E4 11 CC */	addi r31, r4, 0x11cc
/* 803E7DA8  7F C0 1A 14 */	add r30, r0, r3
/* 803E7DAC  48 00 00 5C */	b lbl_803E7E08
lbl_803E7DB0:
/* 803E7DB0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E7DB4  3B C5 D9 00 */	addi r30, r5, -9984
/* 803E7DB8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E7DBC  3C 63 00 02 */	addis r3, r3, 2
/* 803E7DC0  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 803E7DC4  3B E3 11 B4 */	addi r31, r3, 0x11b4
/* 803E7DC8  48 00 00 40 */	b lbl_803E7E08
lbl_803E7DCC:
/* 803E7DCC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E7DD0  3B C5 DA 00 */	addi r30, r5, -9728
/* 803E7DD4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E7DD8  3C 63 00 02 */	addis r3, r3, 2
/* 803E7DDC  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 803E7DE0  3B E3 11 C0 */	addi r31, r3, 0x11c0
/* 803E7DE4  48 00 00 24 */	b lbl_803E7E08
lbl_803E7DE8:
/* 803E7DE8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E7DEC  38 05 D6 00 */	addi r0, r5, -10752
/* 803E7DF0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E7DF4  3C 63 00 02 */	addis r3, r3, 2
/* 803E7DF8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803E7DFC  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 803E7E00  7C 1E 03 78 */	mr r30, r0
/* 803E7E04  3B E3 11 D4 */	addi r31, r3, 0x11d4
lbl_803E7E08:
/* 803E7E08  28 1F 00 00 */	cmplwi r31, 0
/* 803E7E0C  40 82 00 0C */	bne lbl_803E7E18
/* 803E7E10  38 60 00 00 */	li r3, 0
/* 803E7E14  48 00 00 28 */	b lbl_803E7E3C
lbl_803E7E18:
/* 803E7E18  7F C0 2E 70 */	srawi r0, r30, 5
/* 803E7E1C  57 C3 06 FE */	clrlwi r3, r30, 0x1b
/* 803E7E20  54 00 10 3A */	slwi r0, r0, 2
/* 803E7E24  38 80 00 01 */	li r4, 1
/* 803E7E28  7C 1F 00 2E */	lwzx r0, r31, r0
/* 803E7E2C  7C 83 18 30 */	slw r3, r4, r3
/* 803E7E30  7C 63 00 38 */	and r3, r3, r0
/* 803E7E34  30 03 FF FF */	addic r0, r3, -1
/* 803E7E38  7C 60 19 10 */	subfe r3, r0, r3
lbl_803E7E3C:
/* 803E7E3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E7E40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E7E44  83 C1 00 08 */	lwz r30, 8(r1)
/* 803E7E48  7C 08 03 A6 */	mtlr r0
/* 803E7E4C  38 21 00 10 */	addi r1, r1, 0x10
/* 803E7E50  4E 80 00 20 */	blr 
