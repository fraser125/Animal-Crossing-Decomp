lbl_803FDDD0:
/* 803FDDD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FDDD4  7C 08 02 A6 */	mflr r0
/* 803FDDD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FDDDC  39 61 00 20 */	addi r11, r1, 0x20
/* 803FDDE0  4B C9 D0 F5 */	bl func_8009AED4
/* 803FDDE4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803FDDE8  7C 7F 1B 78 */	mr r31, r3
/* 803FDDEC  3B C4 85 38 */	addi r30, r4, common_data@l /* 0x81138538@l */
/* 803FDDF0  83 BE 00 14 */	lwz r29, 0x14(r30)
/* 803FDDF4  4B FF FB A9 */	bl mCD_LoadLand
/* 803FDDF8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FDDFC  93 BE 00 14 */	stw r29, 0x14(r30)
/* 803FDE00  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803FDE04  3C 63 00 03 */	addis r3, r3, 3
/* 803FDE08  88 03 88 7C */	lbz r0, -0x7784(r3)
/* 803FDE0C  2C 00 00 00 */	cmpwi r0, 0
/* 803FDE10  41 82 00 08 */	beq lbl_803FDE18
/* 803FDE14  48 00 00 0C */	b lbl_803FDE20
lbl_803FDE18:
/* 803FDE18  38 00 00 01 */	li r0, 1
/* 803FDE1C  48 00 00 08 */	b lbl_803FDE24
lbl_803FDE20:
/* 803FDE20  38 00 00 00 */	li r0, 0
lbl_803FDE24:
/* 803FDE24  2C 00 00 00 */	cmpwi r0, 0
/* 803FDE28  40 82 00 28 */	bne lbl_803FDE50
/* 803FDE2C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FDE30  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 803FDE34  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803FDE38  3B C0 00 1C */	li r30, 0x1c
/* 803FDE3C  38 04 FF FF */	addi r0, r4, 0xFFFF /* 0x0000FFFF@l */
/* 803FDE40  3C 63 00 02 */	addis r3, r3, 2
/* 803FDE44  B0 03 65 1C */	sth r0, 0x651c(r3)
/* 803FDE48  B0 03 65 1E */	sth r0, 0x651e(r3)
/* 803FDE4C  48 00 00 5C */	b lbl_803FDEA8
lbl_803FDE50:
/* 803FDE50  4B FA E7 A5 */	bl mFRm_CheckSaveData
/* 803FDE54  2C 03 00 00 */	cmpwi r3, 0
/* 803FDE58  40 82 00 28 */	bne lbl_803FDE80
/* 803FDE5C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FDE60  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 803FDE64  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803FDE68  3B C0 00 13 */	li r30, 0x13
/* 803FDE6C  38 04 FF FF */	addi r0, r4, 0xFFFF /* 0x0000FFFF@l */
/* 803FDE70  3C 63 00 02 */	addis r3, r3, 2
/* 803FDE74  B0 03 65 1C */	sth r0, 0x651c(r3)
/* 803FDE78  B0 03 65 1E */	sth r0, 0x651e(r3)
/* 803FDE7C  48 00 00 2C */	b lbl_803FDEA8
lbl_803FDE80:
/* 803FDE80  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FDE84  38 00 00 01 */	li r0, 1
/* 803FDE88  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803FDE8C  3F C3 00 02 */	addis r30, r3, 2
/* 803FDE90  83 BE 61 30 */	lwz r29, 0x6130(r30)
/* 803FDE94  90 1E 61 30 */	stw r0, 0x6130(r30)
/* 803FDE98  4B FF 5E 7D */	bl mTM_rtcTime_limit_check
/* 803FDE9C  93 BE 61 30 */	stw r29, 0x6130(r30)
/* 803FDEA0  3B C0 00 1B */	li r30, 0x1b
/* 803FDEA4  4B F9 CA 85 */	bl mEv_ClearEventInfo
lbl_803FDEA8:
/* 803FDEA8  93 DF 20 08 */	stw r30, 0x2008(r31)
/* 803FDEAC  39 61 00 20 */	addi r11, r1, 0x20
/* 803FDEB0  4B C9 D0 71 */	bl func_8009AF20
/* 803FDEB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FDEB8  7C 08 03 A6 */	mtlr r0
/* 803FDEBC  38 21 00 20 */	addi r1, r1, 0x20
/* 803FDEC0  4E 80 00 20 */	blr 
