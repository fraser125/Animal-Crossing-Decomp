lbl_80389AEC:
/* 80389AEC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80389AF0  7C 08 02 A6 */	mflr r0
/* 80389AF4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80389AF8  A8 03 00 00 */	lha r0, 0(r3)
/* 80389AFC  2C 00 00 87 */	cmpwi r0, 0x87
/* 80389B00  40 82 00 B8 */	bne lbl_80389BB8
/* 80389B04  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80389B08  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80389B0C  80 04 00 14 */	lwz r0, 0x14(r4)
/* 80389B10  2C 00 00 14 */	cmpwi r0, 0x14
/* 80389B14  40 82 00 30 */	bne lbl_80389B44
/* 80389B18  3C 80 80 64 */	lis r4, lit_2008@ha /* 0x80641A74@ha */
/* 80389B1C  FC 60 08 90 */	fmr f3, f1
/* 80389B20  C0 24 1A 74 */	lfs f1, lit_2008@l(r4)  /* 0x80641A74@l */
/* 80389B24  FC 80 10 90 */	fmr f4, f2
/* 80389B28  3C A0 80 65 */	lis r5, base_pos@ha /* 0x806510FC@ha */
/* 80389B2C  7C 64 1B 78 */	mr r4, r3
/* 80389B30  FC 40 08 90 */	fmr f2, f1
/* 80389B34  38 A5 10 FC */	addi r5, r5, base_pos@l /* 0x806510FC@l */
/* 80389B38  38 61 00 20 */	addi r3, r1, 0x20
/* 80389B3C  48 00 87 7D */	bl mCoBG_ScopeWallCheck
/* 80389B40  48 00 00 78 */	b lbl_80389BB8
lbl_80389B44:
/* 80389B44  2C 00 00 15 */	cmpwi r0, 0x15
/* 80389B48  41 82 00 0C */	beq lbl_80389B54
/* 80389B4C  2C 00 00 29 */	cmpwi r0, 0x29
/* 80389B50  40 82 00 30 */	bne lbl_80389B80
lbl_80389B54:
/* 80389B54  3C 80 80 64 */	lis r4, lit_4968@ha /* 0x80641BE4@ha */
/* 80389B58  FC 60 08 90 */	fmr f3, f1
/* 80389B5C  C0 24 1B E4 */	lfs f1, lit_4968@l(r4)  /* 0x80641BE4@l */
/* 80389B60  FC 80 10 90 */	fmr f4, f2
/* 80389B64  3C A0 80 65 */	lis r5, base_pos@ha /* 0x806510FC@ha */
/* 80389B68  7C 64 1B 78 */	mr r4, r3
/* 80389B6C  FC 40 08 90 */	fmr f2, f1
/* 80389B70  38 A5 10 FC */	addi r5, r5, base_pos@l /* 0x806510FC@l */
/* 80389B74  38 61 00 14 */	addi r3, r1, 0x14
/* 80389B78  48 00 87 41 */	bl mCoBG_ScopeWallCheck
/* 80389B7C  48 00 00 3C */	b lbl_80389BB8
lbl_80389B80:
/* 80389B80  2C 00 00 16 */	cmpwi r0, 0x16
/* 80389B84  41 82 00 0C */	beq lbl_80389B90
/* 80389B88  2C 00 00 28 */	cmpwi r0, 0x28
/* 80389B8C  40 82 00 2C */	bne lbl_80389BB8
lbl_80389B90:
/* 80389B90  3C 80 80 64 */	lis r4, lit_4969@ha /* 0x80641BE8@ha */
/* 80389B94  FC 60 08 90 */	fmr f3, f1
/* 80389B98  C0 24 1B E8 */	lfs f1, lit_4969@l(r4)  /* 0x80641BE8@l */
/* 80389B9C  FC 80 10 90 */	fmr f4, f2
/* 80389BA0  3C A0 80 65 */	lis r5, base_pos@ha /* 0x806510FC@ha */
/* 80389BA4  7C 64 1B 78 */	mr r4, r3
/* 80389BA8  FC 40 08 90 */	fmr f2, f1
/* 80389BAC  38 A5 10 FC */	addi r5, r5, base_pos@l /* 0x806510FC@l */
/* 80389BB0  38 61 00 08 */	addi r3, r1, 8
/* 80389BB4  48 00 87 05 */	bl mCoBG_ScopeWallCheck
lbl_80389BB8:
/* 80389BB8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80389BBC  7C 08 03 A6 */	mtlr r0
/* 80389BC0  38 21 00 30 */	addi r1, r1, 0x30
/* 80389BC4  4E 80 00 20 */	blr 
