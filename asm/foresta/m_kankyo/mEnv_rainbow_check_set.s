lbl_803B6924:
/* 803B6924  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B6928  7C 08 02 A6 */	mflr r0
/* 803B692C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B6930  4B FE E3 61 */	bl mFI_CheckFieldData
/* 803B6934  2C 03 00 00 */	cmpwi r3, 0
/* 803B6938  41 82 01 10 */	beq lbl_803B6A48
/* 803B693C  4B FE E3 91 */	bl mFI_GetFieldId
/* 803B6940  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 803B6944  40 82 01 04 */	bne lbl_803B6A48
/* 803B6948  4B FE 45 71 */	bl mEv_CheckTitleDemo
/* 803B694C  2C 03 00 00 */	cmpwi r3, 0
/* 803B6950  41 81 00 F8 */	bgt lbl_803B6A48
/* 803B6954  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B6958  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 803B695C  3C 85 00 02 */	addis r4, r5, 2
/* 803B6960  88 04 41 87 */	lbz r0, 0x4187(r4)
/* 803B6964  28 00 00 00 */	cmplwi r0, 0
/* 803B6968  41 82 00 74 */	beq lbl_803B69DC
/* 803B696C  88 64 61 25 */	lbz r3, 0x6125(r4)
/* 803B6970  88 04 41 85 */	lbz r0, 0x4185(r4)
/* 803B6974  7C 03 00 40 */	cmplw r3, r0
/* 803B6978  40 82 00 58 */	bne lbl_803B69D0
/* 803B697C  88 64 61 23 */	lbz r3, 0x6123(r4)
/* 803B6980  88 04 41 86 */	lbz r0, 0x4186(r4)
/* 803B6984  7C 03 00 40 */	cmplw r3, r0
/* 803B6988  40 82 00 48 */	bne lbl_803B69D0
/* 803B698C  80 C4 61 1C */	lwz r6, 0x611c(r4)
/* 803B6990  2C 06 7E 90 */	cmpwi r6, 0x7e90
/* 803B6994  41 80 00 B4 */	blt lbl_803B6A48
/* 803B6998  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D2F0@ha */
/* 803B699C  38 03 D2 F0 */	addi r0, r3, 0xD2F0 /* 0x0000D2F0@l */
/* 803B69A0  7C 06 00 00 */	cmpw r6, r0
/* 803B69A4  40 80 00 A4 */	bge lbl_803B6A48
/* 803B69A8  80 04 61 10 */	lwz r0, 0x6110(r4)
/* 803B69AC  38 60 00 00 */	li r3, 0
/* 803B69B0  98 64 41 87 */	stb r3, 0x4187(r4)
/* 803B69B4  28 00 00 01 */	cmplwi r0, 1
/* 803B69B8  40 82 00 90 */	bne lbl_803B6A48
/* 803B69BC  3C 80 80 64 */	lis r4, lit_545@ha /* 0x8064244C@ha */
/* 803B69C0  3C 65 00 03 */	addis r3, r5, 3
/* 803B69C4  C0 04 24 4C */	lfs f0, lit_545@l(r4)  /* 0x8064244C@l */
/* 803B69C8  D0 03 DB B4 */	stfs f0, -0x244c(r3)
/* 803B69CC  48 00 00 7C */	b lbl_803B6A48
lbl_803B69D0:
/* 803B69D0  38 00 00 00 */	li r0, 0
/* 803B69D4  98 04 41 87 */	stb r0, 0x4187(r4)
/* 803B69D8  48 00 00 70 */	b lbl_803B6A48
lbl_803B69DC:
/* 803B69DC  3C 60 80 64 */	lis r3, lit_544@ha /* 0x80642448@ha */
/* 803B69E0  3C C5 00 03 */	addis r6, r5, 3
/* 803B69E4  C0 26 DB B4 */	lfs f1, -0x244c(r6)
/* 803B69E8  C0 03 24 48 */	lfs f0, lit_544@l(r3)  /* 0x80642448@l */
/* 803B69EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803B69F0  40 81 00 58 */	ble lbl_803B6A48
/* 803B69F4  88 64 61 25 */	lbz r3, 0x6125(r4)
/* 803B69F8  88 04 41 85 */	lbz r0, 0x4185(r4)
/* 803B69FC  7C 03 00 40 */	cmplw r3, r0
/* 803B6A00  40 82 00 3C */	bne lbl_803B6A3C
/* 803B6A04  88 64 61 23 */	lbz r3, 0x6123(r4)
/* 803B6A08  88 04 41 86 */	lbz r0, 0x4186(r4)
/* 803B6A0C  7C 03 00 40 */	cmplw r3, r0
/* 803B6A10  40 82 00 2C */	bne lbl_803B6A3C
/* 803B6A14  80 A4 61 1C */	lwz r5, 0x611c(r4)
/* 803B6A18  2C 05 7E 90 */	cmpwi r5, 0x7e90
/* 803B6A1C  41 80 00 20 */	blt lbl_803B6A3C
/* 803B6A20  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D9F8@ha */
/* 803B6A24  38 03 D9 F8 */	addi r0, r3, 0xD9F8 /* 0x0000D9F8@l */
/* 803B6A28  7C 05 00 00 */	cmpw r5, r0
/* 803B6A2C  40 80 00 10 */	bge lbl_803B6A3C
/* 803B6A30  80 04 61 10 */	lwz r0, 0x6110(r4)
/* 803B6A34  28 00 00 01 */	cmplwi r0, 1
/* 803B6A38  41 82 00 10 */	beq lbl_803B6A48
lbl_803B6A3C:
/* 803B6A3C  3C 60 80 64 */	lis r3, lit_544@ha /* 0x80642448@ha */
/* 803B6A40  C0 03 24 48 */	lfs f0, lit_544@l(r3)  /* 0x80642448@l */
/* 803B6A44  D0 06 DB B4 */	stfs f0, -0x244c(r6)
lbl_803B6A48:
/* 803B6A48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B6A4C  7C 08 03 A6 */	mtlr r0
/* 803B6A50  38 21 00 10 */	addi r1, r1, 0x10
/* 803B6A54  4E 80 00 20 */	blr 
