lbl_803AAD38:
/* 803AAD38  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803AAD3C  7C 08 02 A6 */	mflr r0
/* 803AAD40  90 01 00 64 */	stw r0, 0x64(r1)
/* 803AAD44  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 803AAD48  7C 7F 1B 78 */	mr r31, r3
/* 803AAD4C  38 61 00 40 */	addi r3, r1, 0x40
/* 803AAD50  80 BF 00 00 */	lwz r5, 0(r31)
/* 803AAD54  80 9F 00 04 */	lwz r4, 4(r31)
/* 803AAD58  80 1F 00 08 */	lwz r0, 8(r31)
/* 803AAD5C  90 A1 00 40 */	stw r5, 0x40(r1)
/* 803AAD60  90 81 00 44 */	stw r4, 0x44(r1)
/* 803AAD64  90 01 00 48 */	stw r0, 0x48(r1)
/* 803AAD68  4B FF BF E5 */	bl mFI_BGDisplayListRefresh
/* 803AAD6C  4B FF B2 31 */	bl mFI_DmaBg
/* 803AAD70  80 BF 00 00 */	lwz r5, 0(r31)
/* 803AAD74  38 61 00 34 */	addi r3, r1, 0x34
/* 803AAD78  80 9F 00 04 */	lwz r4, 4(r31)
/* 803AAD7C  80 1F 00 08 */	lwz r0, 8(r31)
/* 803AAD80  90 A1 00 34 */	stw r5, 0x34(r1)
/* 803AAD84  90 81 00 38 */	stw r4, 0x38(r1)
/* 803AAD88  90 01 00 3C */	stw r0, 0x3c(r1)
/* 803AAD8C  4B FF C2 D9 */	bl mFI_SetPlayerBlockKind
/* 803AAD90  80 BF 00 00 */	lwz r5, 0(r31)
/* 803AAD94  38 61 00 28 */	addi r3, r1, 0x28
/* 803AAD98  80 9F 00 04 */	lwz r4, 4(r31)
/* 803AAD9C  80 1F 00 08 */	lwz r0, 8(r31)
/* 803AADA0  90 A1 00 28 */	stw r5, 0x28(r1)
/* 803AADA4  90 81 00 2C */	stw r4, 0x2c(r1)
/* 803AADA8  90 01 00 30 */	stw r0, 0x30(r1)
/* 803AADAC  4B FF FE AD */	bl mFI_SetShell
/* 803AADB0  80 BF 00 00 */	lwz r5, 0(r31)
/* 803AADB4  38 61 00 1C */	addi r3, r1, 0x1c
/* 803AADB8  80 9F 00 04 */	lwz r4, 4(r31)
/* 803AADBC  80 1F 00 08 */	lwz r0, 8(r31)
/* 803AADC0  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 803AADC4  90 81 00 20 */	stw r4, 0x20(r1)
/* 803AADC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803AADCC  48 01 E0 59 */	bl mMsr_SetMushroom
/* 803AADD0  48 00 1A 75 */	bl mFRm_save_data_check
/* 803AADD4  4B FF 9E BD */	bl mFI_CheckFieldData
/* 803AADD8  2C 03 00 01 */	cmpwi r3, 1
/* 803AADDC  40 82 00 6C */	bne lbl_803AAE48
/* 803AADE0  80 FF 00 00 */	lwz r7, 0(r31)
/* 803AADE4  38 61 00 0C */	addi r3, r1, 0xc
/* 803AADE8  80 DF 00 04 */	lwz r6, 4(r31)
/* 803AADEC  38 81 00 08 */	addi r4, r1, 8
/* 803AADF0  80 1F 00 08 */	lwz r0, 8(r31)
/* 803AADF4  38 A1 00 10 */	addi r5, r1, 0x10
/* 803AADF8  90 E1 00 10 */	stw r7, 0x10(r1)
/* 803AADFC  90 C1 00 14 */	stw r6, 0x14(r1)
/* 803AAE00  90 01 00 18 */	stw r0, 0x18(r1)
/* 803AAE04  4B FF A9 5D */	bl mFI_Wpos2BlockNum
/* 803AAE08  2C 03 00 01 */	cmpwi r3, 1
/* 803AAE0C  40 82 00 3C */	bne lbl_803AAE48
/* 803AAE10  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803AAE14  80 81 00 08 */	lwz r4, 8(r1)
/* 803AAE18  4B FF A3 A1 */	bl mFI_GetBlockNum
/* 803AAE1C  3C 80 81 16 */	lis r4, g_fdinfo@ha /* 0x81167A58@ha */
/* 803AAE20  38 84 7A 58 */	addi r4, r4, g_fdinfo@l /* 0x81167A58@l */
/* 803AAE24  80 84 00 00 */	lwz r4, 0(r4)
/* 803AAE28  1C 03 06 14 */	mulli r0, r3, 0x614
/* 803AAE2C  80 64 00 74 */	lwz r3, 0x74(r4)
/* 803AAE30  7C 63 02 15 */	add. r3, r3, r0
/* 803AAE34  41 82 00 14 */	beq lbl_803AAE48
/* 803AAE38  A0 03 00 00 */	lhz r0, 0(r3)
/* 803AAE3C  3C 60 81 16 */	lis r3, mFI_now_bg_num@ha /* 0x81167CFC@ha */
/* 803AAE40  54 00 F4 BE */	rlwinm r0, r0, 0x1e, 0x12, 0x1f
/* 803AAE44  90 03 7C FC */	stw r0, mFI_now_bg_num@l(r3)  /* 0x81167CFC@l */
lbl_803AAE48:
/* 803AAE48  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803AAE4C  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 803AAE50  7C 08 03 A6 */	mtlr r0
/* 803AAE54  38 21 00 60 */	addi r1, r1, 0x60
/* 803AAE58  4E 80 00 20 */	blr 
