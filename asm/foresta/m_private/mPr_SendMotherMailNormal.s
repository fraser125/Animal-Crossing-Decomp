lbl_803E1BF4:
/* 803E1BF4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803E1BF8  7C 08 02 A6 */	mflr r0
/* 803E1BFC  90 01 00 34 */	stw r0, 0x34(r1)
/* 803E1C00  39 61 00 30 */	addi r11, r1, 0x30
/* 803E1C04  4B CB 92 CD */	bl func_8009AED0
/* 803E1C08  38 A0 FF FF */	li r5, -1
/* 803E1C0C  38 00 00 00 */	li r0, 0
/* 803E1C10  90 A1 00 10 */	stw r5, 0x10(r1)
/* 803E1C14  7C 7E 1B 78 */	mr r30, r3
/* 803E1C18  7C 9F 23 78 */	mr r31, r4
/* 803E1C1C  3B A0 00 00 */	li r29, 0
/* 803E1C20  B0 01 00 08 */	sth r0, 8(r1)
/* 803E1C24  4B C7 B0 D1 */	bl fqrand
/* 803E1C28  3C 60 80 64 */	lis r3, lit_1312@ha /* 0x8064310C@ha */
/* 803E1C2C  C0 03 31 0C */	lfs f0, lit_1312@l(r3)  /* 0x8064310C@l */
/* 803E1C30  EC 00 00 72 */	fmuls f0, f0, f1
/* 803E1C34  FC 00 00 1E */	fctiwz f0, f0
/* 803E1C38  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 803E1C3C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803E1C40  2C 00 00 14 */	cmpwi r0, 0x14
/* 803E1C44  40 80 00 FC */	bge lbl_803E1D40
/* 803E1C48  38 7E 00 04 */	addi r3, r30, 4
/* 803E1C4C  4B FF FD C5 */	bl mPr_GetMotherMailNormalNotSendNum
/* 803E1C50  7C 7C 1B 79 */	or. r28, r3, r3
/* 803E1C54  40 82 00 20 */	bne lbl_803E1C74
/* 803E1C58  38 7E 00 04 */	addi r3, r30, 4
/* 803E1C5C  38 80 00 0A */	li r4, 0xa
/* 803E1C60  4B C7 B4 09 */	bl bzero
/* 803E1C64  88 9F 00 05 */	lbz r4, 5(r31)
/* 803E1C68  38 7E 00 04 */	addi r3, r30, 4
/* 803E1C6C  4B FF FA E9 */	bl mPr_GetMotherMailMonthlyNotSendNum
/* 803E1C70  7C 7D 1B 78 */	mr r29, r3
lbl_803E1C74:
/* 803E1C74  2C 1D 00 00 */	cmpwi r29, 0
/* 803E1C78  40 81 00 6C */	ble lbl_803E1CE4
/* 803E1C7C  88 FF 00 05 */	lbz r7, 5(r31)
/* 803E1C80  7F A8 EB 78 */	mr r8, r29
/* 803E1C84  38 7E 00 04 */	addi r3, r30, 4
/* 803E1C88  38 81 00 10 */	addi r4, r1, 0x10
/* 803E1C8C  38 A1 00 08 */	addi r5, r1, 8
/* 803E1C90  38 C1 00 0C */	addi r6, r1, 0xc
/* 803E1C94  4B FF FB 99 */	bl mPr_GetMotherMailMonthlyData
/* 803E1C98  88 7F 00 05 */	lbz r3, 5(r31)
/* 803E1C9C  88 9F 00 03 */	lbz r4, 3(r31)
/* 803E1CA0  4B FF F6 41 */	bl mPr_GetMotherMailPaperType
/* 803E1CA4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E1CA8  7C 66 1B 78 */	mr r6, r3
/* 803E1CAC  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803E1CB0  A0 A1 00 08 */	lhz r5, 8(r1)
/* 803E1CB4  3C 83 00 02 */	addis r4, r3, 2
/* 803E1CB8  80 E1 00 10 */	lwz r7, 0x10(r1)
/* 803E1CBC  80 64 61 3C */	lwz r3, 0x613c(r4)
/* 803E1CC0  88 84 60 03 */	lbz r4, 0x6003(r4)
/* 803E1CC4  4B FF F7 35 */	bl mPr_SendMotherMailPost
/* 803E1CC8  2C 03 00 01 */	cmpwi r3, 1
/* 803E1CCC  40 82 00 74 */	bne lbl_803E1D40
/* 803E1CD0  88 9F 00 05 */	lbz r4, 5(r31)
/* 803E1CD4  38 7E 00 04 */	addi r3, r30, 4
/* 803E1CD8  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 803E1CDC  4B FF FA F9 */	bl mPr_SetMotherMailMonthly
/* 803E1CE0  48 00 00 60 */	b lbl_803E1D40
lbl_803E1CE4:
/* 803E1CE4  7F 87 E3 78 */	mr r7, r28
/* 803E1CE8  38 7E 00 04 */	addi r3, r30, 4
/* 803E1CEC  38 81 00 10 */	addi r4, r1, 0x10
/* 803E1CF0  38 A1 00 08 */	addi r5, r1, 8
/* 803E1CF4  38 C1 00 0C */	addi r6, r1, 0xc
/* 803E1CF8  4B FF FD A9 */	bl mPr_GetMotherMailNormalData
/* 803E1CFC  88 7F 00 05 */	lbz r3, 5(r31)
/* 803E1D00  88 9F 00 03 */	lbz r4, 3(r31)
/* 803E1D04  4B FF F5 DD */	bl mPr_GetMotherMailPaperType
/* 803E1D08  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E1D0C  7C 66 1B 78 */	mr r6, r3
/* 803E1D10  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803E1D14  A0 A1 00 08 */	lhz r5, 8(r1)
/* 803E1D18  3C 83 00 02 */	addis r4, r3, 2
/* 803E1D1C  80 E1 00 10 */	lwz r7, 0x10(r1)
/* 803E1D20  80 64 61 3C */	lwz r3, 0x613c(r4)
/* 803E1D24  88 84 60 03 */	lbz r4, 0x6003(r4)
/* 803E1D28  4B FF F6 D1 */	bl mPr_SendMotherMailPost
/* 803E1D2C  2C 03 00 01 */	cmpwi r3, 1
/* 803E1D30  40 82 00 10 */	bne lbl_803E1D40
/* 803E1D34  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803E1D38  38 7E 00 04 */	addi r3, r30, 4
/* 803E1D3C  4B FF FD 1D */	bl mPr_SetMotherMailNormal
lbl_803E1D40:
/* 803E1D40  7F C3 F3 78 */	mr r3, r30
/* 803E1D44  7F E4 FB 78 */	mr r4, r31
/* 803E1D48  48 01 17 19 */	bl mTM_set_renew_time
/* 803E1D4C  39 61 00 30 */	addi r11, r1, 0x30
/* 803E1D50  4B CB 91 CD */	bl func_8009AF1C
/* 803E1D54  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803E1D58  7C 08 03 A6 */	mtlr r0
/* 803E1D5C  38 21 00 30 */	addi r1, r1, 0x30
/* 803E1D60  4E 80 00 20 */	blr 
