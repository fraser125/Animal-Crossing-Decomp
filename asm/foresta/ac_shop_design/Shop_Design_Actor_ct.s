lbl_8049CD08:
/* 8049CD08  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8049CD0C  7C 08 02 A6 */	mflr r0
/* 8049CD10  90 01 00 34 */	stw r0, 0x34(r1)
/* 8049CD14  39 61 00 30 */	addi r11, r1, 0x30
/* 8049CD18  4B BF E1 B9 */	bl func_8009AED0
/* 8049CD1C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8049CD20  7C 7E 1B 78 */	mr r30, r3
/* 8049CD24  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 8049CD28  38 00 FF FF */	li r0, -1
/* 8049CD2C  83 A3 00 14 */	lwz r29, 0x14(r3)
/* 8049CD30  2C 1D 00 09 */	cmpwi r29, 9
/* 8049CD34  B0 1E 00 24 */	sth r0, 0x24(r30)
/* 8049CD38  40 82 00 10 */	bne lbl_8049CD48
/* 8049CD3C  38 00 00 00 */	li r0, 0
/* 8049CD40  B0 1E 00 24 */	sth r0, 0x24(r30)
/* 8049CD44  48 00 00 3C */	b lbl_8049CD80
lbl_8049CD48:
/* 8049CD48  2C 1D 00 17 */	cmpwi r29, 0x17
/* 8049CD4C  40 82 00 10 */	bne lbl_8049CD5C
/* 8049CD50  38 00 00 01 */	li r0, 1
/* 8049CD54  B0 1E 00 24 */	sth r0, 0x24(r30)
/* 8049CD58  48 00 00 28 */	b lbl_8049CD80
lbl_8049CD5C:
/* 8049CD5C  2C 1D 00 18 */	cmpwi r29, 0x18
/* 8049CD60  40 82 00 10 */	bne lbl_8049CD70
/* 8049CD64  38 00 00 02 */	li r0, 2
/* 8049CD68  B0 1E 00 24 */	sth r0, 0x24(r30)
/* 8049CD6C  48 00 00 14 */	b lbl_8049CD80
lbl_8049CD70:
/* 8049CD70  2C 1D 00 19 */	cmpwi r29, 0x19
/* 8049CD74  40 82 00 0C */	bne lbl_8049CD80
/* 8049CD78  38 00 00 03 */	li r0, 3
/* 8049CD7C  B0 1E 00 24 */	sth r0, 0x24(r30)
lbl_8049CD80:
/* 8049CD80  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049CD84  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8049CD88  3F E3 00 03 */	addis r31, r3, 3
/* 8049CD8C  80 1F 88 9C */	lwz r0, -0x7764(r31)
/* 8049CD90  2C 00 00 03 */	cmpwi r0, 3
/* 8049CD94  40 82 00 68 */	bne lbl_8049CDFC
/* 8049CD98  A8 BE 00 24 */	lha r5, 0x24(r30)
/* 8049CD9C  2C 05 FF FF */	cmpwi r5, -1
/* 8049CDA0  41 82 00 5C */	beq lbl_8049CDFC
/* 8049CDA4  39 20 FF FF */	li r9, -1
/* 8049CDA8  3C 60 80 69 */	lis r3, garagara_set_table@ha /* 0x8068E2F0@ha */
/* 8049CDAC  91 21 00 08 */	stw r9, 8(r1)
/* 8049CDB0  38 00 00 00 */	li r0, 0
/* 8049CDB4  1F 85 00 0C */	mulli r28, r5, 0xc
/* 8049CDB8  39 83 E2 F0 */	addi r12, r3, garagara_set_table@l /* 0x8068E2F0@l */
/* 8049CDBC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8049CDC0  38 64 1D A8 */	addi r3, r4, 0x1da8
/* 8049CDC4  38 A0 00 95 */	li r5, 0x95
/* 8049CDC8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8049CDCC  7D 6C E2 14 */	add r11, r12, r28
/* 8049CDD0  38 C0 00 00 */	li r6, 0
/* 8049CDD4  91 21 00 14 */	stw r9, 0x14(r1)
/* 8049CDD8  38 E0 00 00 */	li r7, 0
/* 8049CDDC  39 00 00 00 */	li r8, 0
/* 8049CDE0  39 40 FF FF */	li r10, -1
/* 8049CDE4  91 21 00 18 */	stw r9, 0x18(r1)
/* 8049CDE8  39 20 FF FF */	li r9, -1
/* 8049CDEC  7C 2C E4 2E */	lfsx f1, r12, r28
/* 8049CDF0  C0 4B 00 04 */	lfs f2, 4(r11)
/* 8049CDF4  C0 6B 00 08 */	lfs f3, 8(r11)
/* 8049CDF8  4B ED 89 51 */	bl Actor_info_make_actor
lbl_8049CDFC:
/* 8049CDFC  2C 1D 00 09 */	cmpwi r29, 9
/* 8049CE00  41 82 00 18 */	beq lbl_8049CE18
/* 8049CE04  38 1D FF E9 */	addi r0, r29, -23
/* 8049CE08  28 00 00 02 */	cmplwi r0, 2
/* 8049CE0C  40 81 00 0C */	ble lbl_8049CE18
/* 8049CE10  2C 1D 00 1D */	cmpwi r29, 0x1d
/* 8049CE14  40 82 00 84 */	bne lbl_8049CE98
lbl_8049CE18:
/* 8049CE18  7F C3 F3 78 */	mr r3, r30
/* 8049CE1C  4B FF FD E9 */	bl aSD_GetGoodsInfo
/* 8049CE20  80 1F 88 9C */	lwz r0, -0x7764(r31)
/* 8049CE24  2C 00 00 03 */	cmpwi r0, 3
/* 8049CE28  40 82 00 1C */	bne lbl_8049CE44
/* 8049CE2C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049CE30  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8049CE34  3C 63 00 02 */	addis r3, r3, 2
/* 8049CE38  38 63 04 5E */	addi r3, r3, 0x45e
/* 8049CE3C  4B FF FD 1D */	bl aSD_MakeLotteryGoodsFg
/* 8049CE40  48 00 00 48 */	b lbl_8049CE88
lbl_8049CE44:
/* 8049CE44  80 7E 01 74 */	lwz r3, 0x174(r30)
/* 8049CE48  80 9E 01 78 */	lwz r4, 0x178(r30)
/* 8049CE4C  4B FF FC 69 */	bl aSD_MakeGoodsFg
/* 8049CE50  80 1F 88 9C */	lwz r0, -0x7764(r31)
/* 8049CE54  2C 00 00 01 */	cmpwi r0, 1
/* 8049CE58  41 82 00 30 */	beq lbl_8049CE88
/* 8049CE5C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049CE60  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8049CE64  3C 63 00 02 */	addis r3, r3, 2
/* 8049CE68  A0 63 04 5C */	lhz r3, 0x45c(r3)
/* 8049CE6C  4B FF FC BD */	bl aSD_MakeReaGoodsFg
/* 8049CE70  80 1F 88 9C */	lwz r0, -0x7764(r31)
/* 8049CE74  2C 00 00 04 */	cmpwi r0, 4
/* 8049CE78  40 82 00 0C */	bne lbl_8049CE84
/* 8049CE7C  4B FF FA 69 */	bl aSD_MakeHukubukuroFg
/* 8049CE80  48 00 00 08 */	b lbl_8049CE88
lbl_8049CE84:
/* 8049CE84  4B FF FB F1 */	bl aSD_MakePlantFg
lbl_8049CE88:
/* 8049CE88  4B FF FE 25 */	bl aSD_SetReservedPointFill000
/* 8049CE8C  7F C3 F3 78 */	mr r3, r30
/* 8049CE90  38 80 00 00 */	li r4, 0
/* 8049CE94  4B FF FD 1D */	bl aSD_SetClipProc
lbl_8049CE98:
/* 8049CE98  39 61 00 30 */	addi r11, r1, 0x30
/* 8049CE9C  4B BF E0 81 */	bl func_8009AF1C
/* 8049CEA0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8049CEA4  7C 08 03 A6 */	mtlr r0
/* 8049CEA8  38 21 00 30 */	addi r1, r1, 0x30
/* 8049CEAC  4E 80 00 20 */	blr 
