lbl_803BCAE4:
/* 803BCAE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BCAE8  7C 08 02 A6 */	mflr r0
/* 803BCAEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BCAF0  39 61 00 20 */	addi r11, r1, 0x20
/* 803BCAF4  4B CD E3 DD */	bl func_8009AED0
/* 803BCAF8  7C 7C 1B 78 */	mr r28, r3
/* 803BCAFC  88 03 00 14 */	lbz r0, 0x14(r3)
/* 803BCB00  28 00 00 00 */	cmplwi r0, 0
/* 803BCB04  41 82 00 0C */	beq lbl_803BCB10
/* 803BCB08  38 60 FF FF */	li r3, -1
/* 803BCB0C  48 00 00 4C */	b lbl_803BCB58
lbl_803BCB10:
/* 803BCB10  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803BCB14  3B A0 00 00 */	li r29, 0
/* 803BCB18  3B C3 85 38 */	addi r30, r3, common_data@l /* 0x81138538@l */
/* 803BCB1C  3B E0 00 00 */	li r31, 0
lbl_803BCB20:
/* 803BCB20  7C 7E FA 14 */	add r3, r30, r31
/* 803BCB24  7F 84 E3 78 */	mr r4, r28
/* 803BCB28  3C 63 00 01 */	addis r3, r3, 1
/* 803BCB2C  38 63 9C E8 */	addi r3, r3, -25368
/* 803BCB30  48 02 36 15 */	bl mPr_CheckCmpPersonalID
/* 803BCB34  2C 03 00 01 */	cmpwi r3, 1
/* 803BCB38  40 82 00 0C */	bne lbl_803BCB44
/* 803BCB3C  7F A3 EB 78 */	mr r3, r29
/* 803BCB40  48 00 00 18 */	b lbl_803BCB58
lbl_803BCB44:
/* 803BCB44  3B BD 00 01 */	addi r29, r29, 1
/* 803BCB48  3B FF 26 B0 */	addi r31, r31, 0x26b0
/* 803BCB4C  2C 1D 00 04 */	cmpwi r29, 4
/* 803BCB50  41 80 FF D0 */	blt lbl_803BCB20
/* 803BCB54  38 60 FF FF */	li r3, -1
lbl_803BCB58:
/* 803BCB58  39 61 00 20 */	addi r11, r1, 0x20
/* 803BCB5C  4B CD E3 C1 */	bl func_8009AF1C
/* 803BCB60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BCB64  7C 08 03 A6 */	mtlr r0
/* 803BCB68  38 21 00 20 */	addi r1, r1, 0x20
/* 803BCB6C  4E 80 00 20 */	blr 
