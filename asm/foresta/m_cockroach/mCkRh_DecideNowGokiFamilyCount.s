lbl_80385614:
/* 80385614  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80385618  7C 08 02 A6 */	mflr r0
/* 8038561C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80385620  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80385624  93 C1 00 08 */	stw r30, 8(r1)
/* 80385628  7C 7E 1B 78 */	mr r30, r3
/* 8038562C  2C 1E 00 04 */	cmpwi r30, 4
/* 80385630  40 80 00 58 */	bge lbl_80385688
/* 80385634  4B FF FE E1 */	bl mCkRh_DaysGapCompareWithSaveTime
/* 80385638  7C 60 1B 78 */	mr r0, r3
/* 8038563C  7F C3 F3 78 */	mr r3, r30
/* 80385640  7C 1E 03 78 */	mr r30, r0
/* 80385644  48 02 DF 75 */	bl mHS_get_arrange_idx
/* 80385648  2C 1E 00 06 */	cmpwi r30, 6
/* 8038564C  54 65 07 BE */	clrlwi r5, r3, 0x1e
/* 80385650  40 81 00 38 */	ble lbl_80385688
/* 80385654  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80385658  38 1E FF FA */	addi r0, r30, -6
/* 8038565C  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80385660  1C 65 26 B0 */	mulli r3, r5, 0x26b0
/* 80385664  3C 84 00 01 */	addis r4, r4, 1
/* 80385668  7F E4 1A 14 */	add r31, r4, r3
/* 8038566C  8C 7F C3 68 */	lbzu r3, -0x3c98(r31)
/* 80385670  2C 03 00 00 */	cmpwi r3, 0
/* 80385674  40 81 00 08 */	ble lbl_8038567C
/* 80385678  7F C0 F3 78 */	mr r0, r30
lbl_8038567C:
/* 8038567C  7C 60 1A 14 */	add r3, r0, r3
/* 80385680  4B FF FC C9 */	bl func_80385348
/* 80385684  98 7F 00 00 */	stb r3, 0(r31)
lbl_80385688:
/* 80385688  4B FF FF 1D */	bl mCkRh_DaysGapCompareWithCottageSaveTime
/* 8038568C  2C 03 00 06 */	cmpwi r3, 6
/* 80385690  40 81 00 30 */	ble lbl_803856C0
/* 80385694  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80385698  38 03 FF FA */	addi r0, r3, -6
/* 8038569C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803856A0  3F C4 00 02 */	addis r30, r4, 2
/* 803856A4  88 9E 32 10 */	lbz r4, 0x3210(r30)
/* 803856A8  2C 04 00 00 */	cmpwi r4, 0
/* 803856AC  40 81 00 08 */	ble lbl_803856B4
/* 803856B0  7C 60 1B 78 */	mr r0, r3
lbl_803856B4:
/* 803856B4  7C 60 22 14 */	add r3, r0, r4
/* 803856B8  4B FF FC 91 */	bl func_80385348
/* 803856BC  98 7E 32 10 */	stb r3, 0x3210(r30)
lbl_803856C0:
/* 803856C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803856C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803856C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 803856CC  7C 08 03 A6 */	mtlr r0
/* 803856D0  38 21 00 10 */	addi r1, r1, 0x10
/* 803856D4  4E 80 00 20 */	blr 
