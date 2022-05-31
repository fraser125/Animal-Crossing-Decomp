lbl_803AAC58:
/* 803AAC58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803AAC5C  7C 08 02 A6 */	mflr r0
/* 803AAC60  90 01 00 24 */	stw r0, 0x24(r1)
/* 803AAC64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803AAC68  7C 7F 1B 78 */	mr r31, r3
/* 803AAC6C  4B FF F7 FD */	bl mFI_CheckSetShell
/* 803AAC70  2C 03 00 01 */	cmpwi r3, 1
/* 803AAC74  40 82 00 38 */	bne lbl_803AACAC
/* 803AAC78  3C 60 81 16 */	lis r3, set_flag@ha /* 0x81167CF8@ha */
/* 803AAC7C  38 A3 7C F8 */	addi r5, r3, set_flag@l /* 0x81167CF8@l */
/* 803AAC80  80 05 00 00 */	lwz r0, 0(r5)
/* 803AAC84  2C 00 00 00 */	cmpwi r0, 0
/* 803AAC88  40 82 00 30 */	bne lbl_803AACB8
/* 803AAC8C  3C 60 81 16 */	lis r3, l_reserve_set_shell@ha /* 0x81167CDC@ha */
/* 803AAC90  38 00 00 01 */	li r0, 1
/* 803AAC94  38 83 7C DC */	addi r4, r3, l_reserve_set_shell@l /* 0x81167CDC@l */
/* 803AAC98  90 05 00 00 */	stw r0, 0(r5)
/* 803AAC9C  80 64 00 00 */	lwz r3, 0(r4)
/* 803AACA0  38 03 00 01 */	addi r0, r3, 1
/* 803AACA4  90 04 00 00 */	stw r0, 0(r4)
/* 803AACA8  48 00 00 10 */	b lbl_803AACB8
lbl_803AACAC:
/* 803AACAC  3C 60 81 16 */	lis r3, set_flag@ha /* 0x81167CF8@ha */
/* 803AACB0  38 00 00 00 */	li r0, 0
/* 803AACB4  90 03 7C F8 */	stw r0, set_flag@l(r3)  /* 0x81167CF8@l */
lbl_803AACB8:
/* 803AACB8  4B FF 9F D9 */	bl mFI_CheckFieldData
/* 803AACBC  2C 03 00 01 */	cmpwi r3, 1
/* 803AACC0  40 82 00 64 */	bne lbl_803AAD24
/* 803AACC4  4B FF A0 09 */	bl mFI_GetFieldId
/* 803AACC8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803AACCC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803AACD0  80 04 00 14 */	lwz r0, 0x14(r4)
/* 803AACD4  2C 00 00 07 */	cmpwi r0, 7
/* 803AACD8  40 82 00 4C */	bne lbl_803AAD24
/* 803AACDC  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 803AACE0  40 82 00 44 */	bne lbl_803AAD24
/* 803AACE4  3C 60 81 16 */	lis r3, l_reserve_set_shell@ha /* 0x81167CDC@ha */
/* 803AACE8  38 63 7C DC */	addi r3, r3, l_reserve_set_shell@l /* 0x81167CDC@l */
/* 803AACEC  80 63 00 00 */	lwz r3, 0(r3)
/* 803AACF0  2C 03 00 00 */	cmpwi r3, 0
/* 803AACF4  40 81 00 30 */	ble lbl_803AAD24
/* 803AACF8  80 DF 00 00 */	lwz r6, 0(r31)
/* 803AACFC  38 81 00 08 */	addi r4, r1, 8
/* 803AAD00  80 BF 00 04 */	lwz r5, 4(r31)
/* 803AAD04  80 1F 00 08 */	lwz r0, 8(r31)
/* 803AAD08  90 C1 00 08 */	stw r6, 8(r1)
/* 803AAD0C  90 A1 00 0C */	stw r5, 0xc(r1)
/* 803AAD10  90 01 00 10 */	stw r0, 0x10(r1)
/* 803AAD14  4B FF FE 65 */	bl mFI_SetShellWave
/* 803AAD18  3C 60 81 16 */	lis r3, l_reserve_set_shell@ha /* 0x81167CDC@ha */
/* 803AAD1C  38 00 00 00 */	li r0, 0
/* 803AAD20  90 03 7C DC */	stw r0, l_reserve_set_shell@l(r3)  /* 0x81167CDC@l */
lbl_803AAD24:
/* 803AAD24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803AAD28  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803AAD2C  7C 08 03 A6 */	mtlr r0
/* 803AAD30  38 21 00 20 */	addi r1, r1, 0x20
/* 803AAD34  4E 80 00 20 */	blr 
