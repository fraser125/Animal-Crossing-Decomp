lbl_803B1820:
/* 803B1820  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B1824  7C 08 02 A6 */	mflr r0
/* 803B1828  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B182C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B1830  7C 9F 23 78 */	mr r31, r4
/* 803B1834  4B FE 94 01 */	bl mEv_CheckFirstJob
/* 803B1838  2C 03 00 00 */	cmpwi r3, 0
/* 803B183C  40 82 00 18 */	bne lbl_803B1854
/* 803B1840  2C 1F 00 04 */	cmpwi r31, 4
/* 803B1844  41 82 00 10 */	beq lbl_803B1854
/* 803B1848  7F E3 FB 78 */	mr r3, r31
/* 803B184C  48 12 06 A9 */	bl mHsRm_HuusuiRoomOvl
/* 803B1850  48 00 00 1C */	b lbl_803B186C
lbl_803B1854:
/* 803B1854  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B1858  38 00 00 00 */	li r0, 0
/* 803B185C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B1860  3C 63 00 03 */	addis r3, r3, 3
/* 803B1864  B0 03 85 2C */	sth r0, -0x7ad4(r3)
/* 803B1868  B0 03 85 2E */	sth r0, -0x7ad2(r3)
lbl_803B186C:
/* 803B186C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B1870  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B1874  7C 08 03 A6 */	mtlr r0
/* 803B1878  38 21 00 10 */	addi r1, r1, 0x10
/* 803B187C  4E 80 00 20 */	blr 
