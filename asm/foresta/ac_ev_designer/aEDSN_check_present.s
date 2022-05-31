lbl_8051D068:
/* 8051D068  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051D06C  7C 08 02 A6 */	mflr r0
/* 8051D070  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051D074  39 61 00 20 */	addi r11, r1, 0x20
/* 8051D078  4B B7 DE 5D */	bl func_8009AED4
/* 8051D07C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8051D080  3B A0 00 00 */	li r29, 0
/* 8051D084  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8051D088  3F C3 00 02 */	addis r30, r3, 2
/* 8051D08C  7F DF F3 78 */	mr r31, r30
/* 8051D090  3B DE 04 A4 */	addi r30, r30, 0x4a4
lbl_8051D094:
/* 8051D094  80 9F 61 3C */	lwz r4, 0x613c(r31)
/* 8051D098  7F C3 F3 78 */	mr r3, r30
/* 8051D09C  4B EC 30 A9 */	bl mPr_CheckCmpPersonalID
/* 8051D0A0  2C 03 00 01 */	cmpwi r3, 1
/* 8051D0A4  40 82 00 0C */	bne lbl_8051D0B0
/* 8051D0A8  7F A3 EB 78 */	mr r3, r29
/* 8051D0AC  48 00 00 18 */	b lbl_8051D0C4
lbl_8051D0B0:
/* 8051D0B0  3B BD 00 01 */	addi r29, r29, 1
/* 8051D0B4  3B DE 00 14 */	addi r30, r30, 0x14
/* 8051D0B8  2C 1D 00 03 */	cmpwi r29, 3
/* 8051D0BC  41 80 FF D8 */	blt lbl_8051D094
/* 8051D0C0  38 60 FF FF */	li r3, -1
lbl_8051D0C4:
/* 8051D0C4  39 61 00 20 */	addi r11, r1, 0x20
/* 8051D0C8  4B B7 DE 59 */	bl func_8009AF20
/* 8051D0CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051D0D0  7C 08 03 A6 */	mtlr r0
/* 8051D0D4  38 21 00 20 */	addi r1, r1, 0x20
/* 8051D0D8  4E 80 00 20 */	blr 
