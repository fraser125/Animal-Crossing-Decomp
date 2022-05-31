lbl_803EDBA4:
/* 803EDBA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803EDBA8  7C 08 02 A6 */	mflr r0
/* 803EDBAC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EDBB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803EDBB4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EDBB8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803EDBBC  3F E3 00 02 */	addis r31, r3, 2
/* 803EDBC0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803EDBC4  3B DF 61 20 */	addi r30, r31, 0x6120
/* 803EDBC8  88 1F 60 03 */	lbz r0, 0x6003(r31)
/* 803EDBCC  28 00 00 04 */	cmplwi r0, 4
/* 803EDBD0  41 80 00 0C */	blt lbl_803EDBDC
/* 803EDBD4  38 60 00 00 */	li r3, 0
/* 803EDBD8  48 00 00 8C */	b lbl_803EDC64
lbl_803EDBDC:
/* 803EDBDC  4B FA D0 59 */	bl mEv_CheckFirstJob
/* 803EDBE0  2C 03 00 00 */	cmpwi r3, 0
/* 803EDBE4  41 82 00 0C */	beq lbl_803EDBF0
/* 803EDBE8  38 60 00 00 */	li r3, 0
/* 803EDBEC  48 00 00 78 */	b lbl_803EDC64
lbl_803EDBF0:
/* 803EDBF0  7F C4 F3 78 */	mr r4, r30
/* 803EDBF4  38 61 00 08 */	addi r3, r1, 8
/* 803EDBF8  48 01 96 3D */	bl lbRTC_TimeCopy
/* 803EDBFC  88 1F 41 6F */	lbz r0, 0x416f(r31)
/* 803EDC00  28 00 00 00 */	cmplwi r0, 0
/* 803EDC04  40 82 00 0C */	bne lbl_803EDC10
/* 803EDC08  38 60 00 00 */	li r3, 0
/* 803EDC0C  48 00 00 58 */	b lbl_803EDC64
lbl_803EDC10:
/* 803EDC10  38 61 00 08 */	addi r3, r1, 8
/* 803EDC14  4B FF FA 29 */	bl mSC_LightHouse_get_period
/* 803EDC18  2C 03 00 01 */	cmpwi r3, 1
/* 803EDC1C  41 82 00 0C */	beq lbl_803EDC28
/* 803EDC20  38 60 00 00 */	li r3, 0
/* 803EDC24  48 00 00 40 */	b lbl_803EDC64
lbl_803EDC28:
/* 803EDC28  88 01 00 0A */	lbz r0, 0xa(r1)
/* 803EDC2C  28 00 00 12 */	cmplwi r0, 0x12
/* 803EDC30  41 80 00 0C */	blt lbl_803EDC3C
/* 803EDC34  28 00 00 16 */	cmplwi r0, 0x16
/* 803EDC38  41 80 00 0C */	blt lbl_803EDC44
lbl_803EDC3C:
/* 803EDC3C  38 60 00 00 */	li r3, 0
/* 803EDC40  48 00 00 24 */	b lbl_803EDC64
lbl_803EDC44:
/* 803EDC44  38 61 00 08 */	addi r3, r1, 8
/* 803EDC48  4B FF FB 0D */	bl mSC_LightHouse_day
/* 803EDC4C  38 00 00 01 */	li r0, 1
/* 803EDC50  88 9F 41 70 */	lbz r4, 0x4170(r31)
/* 803EDC54  7C 00 18 30 */	slw r0, r0, r3
/* 803EDC58  7C 80 00 38 */	and r0, r4, r0
/* 803EDC5C  7C 00 00 34 */	cntlzw r0, r0
/* 803EDC60  54 03 D9 7E */	srwi r3, r0, 5
lbl_803EDC64:
/* 803EDC64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803EDC68  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803EDC6C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803EDC70  7C 08 03 A6 */	mtlr r0
/* 803EDC74  38 21 00 20 */	addi r1, r1, 0x20
/* 803EDC78  4E 80 00 20 */	blr 
