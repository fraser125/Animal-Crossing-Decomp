lbl_8037CFB4:
/* 8037CFB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037CFB8  7C 08 02 A6 */	mflr r0
/* 8037CFBC  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037CFC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037CFC4  38 00 01 68 */	li r0, 0x168
/* 8037CFC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037CFCC  3B E3 51 C0 */	addi r31, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037CFD0  93 C1 00 08 */	stw r30, 8(r1)
/* 8037CFD4  3B DF 01 64 */	addi r30, r31, 0x164
/* 8037CFD8  7F C4 F3 78 */	mr r4, r30
/* 8037CFDC  80 7F 02 7C */	lwz r3, 0x27c(r31)
/* 8037CFE0  7C 69 03 A6 */	mtctr r3
/* 8037CFE4  2C 03 00 00 */	cmpwi r3, 0
/* 8037CFE8  40 81 00 1C */	ble lbl_8037D004
lbl_8037CFEC:
/* 8037CFEC  A0 64 00 0E */	lhz r3, 0xe(r4)
/* 8037CFF0  60 63 00 01 */	ori r3, r3, 1
/* 8037CFF4  B0 64 00 0E */	sth r3, 0xe(r4)
/* 8037CFF8  B0 04 00 04 */	sth r0, 4(r4)
/* 8037CFFC  38 84 00 14 */	addi r4, r4, 0x14
/* 8037D000  42 00 FF EC */	bdnz lbl_8037CFEC
lbl_8037D004:
/* 8037D004  80 1E 01 1C */	lwz r0, 0x11c(r30)
/* 8037D008  2C 00 00 00 */	cmpwi r0, 0
/* 8037D00C  41 82 00 08 */	beq lbl_8037D014
/* 8037D010  4B FF F6 F1 */	bl mBGMPsComp_volume_fishing_end
lbl_8037D014:
/* 8037D014  80 1E 01 20 */	lwz r0, 0x120(r30)
/* 8037D018  2C 00 00 00 */	cmpwi r0, 0
/* 8037D01C  41 82 00 08 */	beq lbl_8037D024
/* 8037D020  4B FF F7 09 */	bl mBGMPsComp_volume_collect_insects_end
lbl_8037D024:
/* 8037D024  80 1E 01 24 */	lwz r0, 0x124(r30)
/* 8037D028  2C 00 00 00 */	cmpwi r0, 0
/* 8037D02C  41 82 00 08 */	beq lbl_8037D034
/* 8037D030  4B FF F7 21 */	bl mBGMPsComp_volume_talk_end
lbl_8037D034:
/* 8037D034  80 1E 01 28 */	lwz r0, 0x128(r30)
/* 8037D038  2C 00 00 00 */	cmpwi r0, 0
/* 8037D03C  41 82 00 08 */	beq lbl_8037D044
/* 8037D040  4B FF F7 31 */	bl mBGMPsComp_volume_boat_end
lbl_8037D044:
/* 8037D044  80 1E 01 2C */	lwz r0, 0x12c(r30)
/* 8037D048  2C 00 00 00 */	cmpwi r0, 0
/* 8037D04C  41 82 00 0C */	beq lbl_8037D058
/* 8037D050  38 60 00 05 */	li r3, 5
/* 8037D054  4B FF F7 3D */	bl mBGMPsComp_pause
lbl_8037D058:
/* 8037D058  38 7F 00 08 */	addi r3, r31, 8
/* 8037D05C  4B FF BC 61 */	bl mBGMDemo_ct
/* 8037D060  38 7F 00 14 */	addi r3, r31, 0x14
/* 8037D064  4B FF C1 45 */	bl mBGMRoom_ct
/* 8037D068  38 7F 00 28 */	addi r3, r31, 0x28
/* 8037D06C  4B FF C3 E1 */	bl mBGMTime_ct
/* 8037D070  38 7F 00 30 */	addi r3, r31, 0x30
/* 8037D074  4B FF C5 FD */	bl mBGMFieldSuddenEv_ct
/* 8037D078  38 7F 00 38 */	addi r3, r31, 0x38
/* 8037D07C  4B FF D4 95 */	bl mBGMFieldSchedEv_ct
/* 8037D080  38 7F 01 58 */	addi r3, r31, 0x158
/* 8037D084  4B FF D6 B5 */	bl mBGMFieldNorm_ct
/* 8037D088  38 7F 02 FC */	addi r3, r31, 0x2fc
/* 8037D08C  4B FF FA 1D */	bl mBGMForce_ct
/* 8037D090  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037D094  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037D098  83 C1 00 08 */	lwz r30, 8(r1)
/* 8037D09C  7C 08 03 A6 */	mtlr r0
/* 8037D0A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8037D0A4  4E 80 00 20 */	blr 
