lbl_80633A20:
/* 80633A20  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80633A24  7C 08 02 A6 */	mflr r0
/* 80633A28  90 01 00 44 */	stw r0, 0x44(r1)
/* 80633A2C  39 61 00 40 */	addi r11, r1, 0x40
/* 80633A30  4B A6 74 A1 */	bl func_8009AED0
/* 80633A34  7C 7E 1B 78 */	mr r30, r3
/* 80633A38  7C BD 2B 78 */	mr r29, r5
/* 80633A3C  A8 03 08 2A */	lha r0, 0x82a(r3)
/* 80633A40  3B FE 01 34 */	addi r31, r30, 0x134
/* 80633A44  2C 00 00 01 */	cmpwi r0, 1
/* 80633A48  40 82 00 F8 */	bne lbl_80633B40
/* 80633A4C  A8 1E 00 3C */	lha r0, 0x3c(r30)
/* 80633A50  2C 00 00 0D */	cmpwi r0, 0xd
/* 80633A54  41 82 00 EC */	beq lbl_80633B40
/* 80633A58  2C 00 00 0E */	cmpwi r0, 0xe
/* 80633A5C  41 82 00 E4 */	beq lbl_80633B40
/* 80633A60  2C 00 00 0F */	cmpwi r0, 0xf
/* 80633A64  41 82 00 DC */	beq lbl_80633B40
/* 80633A68  2C 00 00 0C */	cmpwi r0, 0xc
/* 80633A6C  41 82 00 D4 */	beq lbl_80633B40
/* 80633A70  38 BE 00 08 */	addi r5, r30, 8
/* 80633A74  38 80 00 50 */	li r4, 0x50
/* 80633A78  4B FF A4 CD */	bl sAdo_OngenPos
/* 80633A7C  A8 7E 08 2E */	lha r3, 0x82e(r30)
/* 80633A80  2C 03 00 00 */	cmpwi r3, 0
/* 80633A84  40 80 00 B4 */	bge lbl_80633B38
/* 80633A88  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 80633A8C  3C 60 80 65 */	lis r3, lit_2428@ha /* 0x8064D34C@ha */
/* 80633A90  38 83 D3 4C */	addi r4, r3, lit_2428@l /* 0x8064D34C@l */
/* 80633A94  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80633A98  90 01 00 18 */	stw r0, 0x18(r1)
/* 80633A9C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80633AA0  83 9E 00 08 */	lwz r28, 8(r30)
/* 80633AA4  3C 63 00 02 */	addis r3, r3, 2
/* 80633AA8  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80633AAC  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80633AB0  C0 04 00 00 */	lfs f0, 0(r4)
/* 80633AB4  7F A7 EB 78 */	mr r7, r29
/* 80633AB8  83 BE 00 10 */	lwz r29, 0x10(r30)
/* 80633ABC  38 81 00 08 */	addi r4, r1, 8
/* 80633AC0  EC 01 00 2A */	fadds f0, f1, f0
/* 80633AC4  81 63 60 9C */	lwz r11, 0x609c(r3)
/* 80633AC8  93 81 00 08 */	stw r28, 8(r1)
/* 80633ACC  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80633AD0  38 60 00 71 */	li r3, 0x71
/* 80633AD4  38 A0 00 01 */	li r5, 1
/* 80633AD8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80633ADC  38 C0 00 00 */	li r6, 0
/* 80633AE0  39 20 00 06 */	li r9, 6
/* 80633AE4  39 40 00 00 */	li r10, 0
/* 80633AE8  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80633AEC  93 A1 00 10 */	stw r29, 0x10(r1)
/* 80633AF0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80633AF4  81 8B 00 00 */	lwz r12, 0(r11)
/* 80633AF8  93 81 00 14 */	stw r28, 0x14(r1)
/* 80633AFC  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 80633B00  7D 89 03 A6 */	mtctr r12
/* 80633B04  4E 80 04 21 */	bctrl 
/* 80633B08  4B A2 91 ED */	bl fqrand
/* 80633B0C  3C 80 80 65 */	lis r4, lit_1690@ha /* 0x8064D324@ha */
/* 80633B10  3C 60 80 65 */	lis r3, lit_627@ha /* 0x8064D290@ha */
/* 80633B14  C0 44 D3 24 */	lfs f2, lit_1690@l(r4)  /* 0x8064D324@l */
/* 80633B18  C0 03 D2 90 */	lfs f0, lit_627@l(r3)  /* 0x8064D290@l */
/* 80633B1C  EC 22 00 72 */	fmuls f1, f2, f1
/* 80633B20  EC 00 08 2A */	fadds f0, f0, f1
/* 80633B24  FC 00 00 1E */	fctiwz f0, f0
/* 80633B28  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80633B2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80633B30  B0 1E 08 2E */	sth r0, 0x82e(r30)
/* 80633B34  48 00 00 0C */	b lbl_80633B40
lbl_80633B38:
/* 80633B38  38 03 FF FF */	addi r0, r3, -1
/* 80633B3C  B0 1E 08 2E */	sth r0, 0x82e(r30)
lbl_80633B40:
/* 80633B40  88 1E 01 2D */	lbz r0, 0x12d(r30)
/* 80633B44  28 00 00 00 */	cmplwi r0, 0
/* 80633B48  41 82 01 04 */	beq lbl_80633C4C
/* 80633B4C  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 80633B50  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80633B54  C0 23 D2 78 */	lfs f1, lit_368@l(r3)  /* 0x8064D278@l */
/* 80633B58  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80633B5C  40 82 00 F0 */	bne lbl_80633C4C
/* 80633B60  A8 1E 08 30 */	lha r0, 0x830(r30)
/* 80633B64  2C 00 00 00 */	cmpwi r0, 0
/* 80633B68  40 82 00 E4 */	bne lbl_80633C4C
/* 80633B6C  A8 7E 08 2A */	lha r3, 0x82a(r30)
/* 80633B70  38 03 00 01 */	addi r0, r3, 1
/* 80633B74  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80633B78  B0 1E 08 2A */	sth r0, 0x82a(r30)
/* 80633B7C  A8 1E 08 2A */	lha r0, 0x82a(r30)
/* 80633B80  2C 00 00 00 */	cmpwi r0, 0
/* 80633B84  41 82 00 64 */	beq lbl_80633BE8
/* 80633B88  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 80633B8C  3C A0 80 F6 */	lis r5, cKF_ba_r_int_nog_nabe@ha /* 0x80F5AFC0@ha */
/* 80633B90  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 80633B94  3C 00 43 30 */	lis r0, 0x4330
/* 80633B98  3C 60 80 65 */	lis r3, lit_371@ha /* 0x8064D284@ha */
/* 80633B9C  38 C5 AF C0 */	addi r6, r5, cKF_ba_r_int_nog_nabe@l /* 0x80F5AFC0@l */
/* 80633BA0  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80633BA4  38 83 D2 84 */	addi r4, r3, lit_371@l /* 0x8064D284@l */
/* 80633BA8  C8 44 00 00 */	lfd f2, 0(r4)
/* 80633BAC  3C 60 80 65 */	lis r3, data_8064D274@ha /* 0x8064D274@ha */
/* 80633BB0  A8 C6 00 12 */	lha r6, 0x12(r6)
/* 80633BB4  38 A3 D2 74 */	addi r5, r3, data_8064D274@l /* 0x8064D274@l */
/* 80633BB8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80633BBC  38 9E 00 08 */	addi r4, r30, 8
/* 80633BC0  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 80633BC4  C0 05 00 00 */	lfs f0, 0(r5)
/* 80633BC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80633BCC  38 60 00 17 */	li r3, 0x17
/* 80633BD0  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 80633BD4  EC 21 10 28 */	fsubs f1, f1, f2
/* 80633BD8  D0 3F 00 00 */	stfs f1, 0(r31)
/* 80633BDC  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80633BE0  4B FF A3 C9 */	bl sAdo_OngenTrgStart
/* 80633BE4  48 00 00 60 */	b lbl_80633C44
lbl_80633BE8:
/* 80633BE8  3C 80 80 65 */	lis r4, lit_626@ha /* 0x8064D28C@ha */
/* 80633BEC  3C 00 43 30 */	lis r0, 0x4330
/* 80633BF0  38 A4 D2 8C */	addi r5, r4, lit_626@l /* 0x8064D28C@l */
/* 80633BF4  3C 60 80 65 */	lis r3, data_8064D274@ha /* 0x8064D274@ha */
/* 80633BF8  C0 05 00 00 */	lfs f0, 0(r5)
/* 80633BFC  38 A3 D2 74 */	addi r5, r3, data_8064D274@l /* 0x8064D274@l */
/* 80633C00  3C 60 80 65 */	lis r3, lit_371@ha /* 0x8064D284@ha */
/* 80633C04  3C 80 80 F6 */	lis r4, cKF_ba_r_int_nog_nabe@ha /* 0x80F5AFC0@ha */
/* 80633C08  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80633C0C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80633C10  38 A4 AF C0 */	addi r5, r4, cKF_ba_r_int_nog_nabe@l /* 0x80F5AFC0@l */
/* 80633C14  C8 23 D2 84 */	lfd f1, lit_371@l(r3)  /* 0x8064D284@l */
/* 80633C18  38 9E 00 08 */	addi r4, r30, 8
/* 80633C1C  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80633C20  38 60 00 16 */	li r3, 0x16
/* 80633C24  90 01 00 20 */	stw r0, 0x20(r1)
/* 80633C28  A8 05 00 12 */	lha r0, 0x12(r5)
/* 80633C2C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80633C30  90 01 00 24 */	stw r0, 0x24(r1)
/* 80633C34  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80633C38  EC 00 08 28 */	fsubs f0, f0, f1
/* 80633C3C  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80633C40  4B FF A3 69 */	bl sAdo_OngenTrgStart
lbl_80633C44:
/* 80633C44  38 00 00 13 */	li r0, 0x13
/* 80633C48  B0 1E 08 30 */	sth r0, 0x830(r30)
lbl_80633C4C:
/* 80633C4C  A8 1E 08 30 */	lha r0, 0x830(r30)
/* 80633C50  2C 00 00 00 */	cmpwi r0, 0
/* 80633C54  40 82 00 0C */	bne lbl_80633C60
/* 80633C58  A8 1E 08 2A */	lha r0, 0x82a(r30)
/* 80633C5C  B0 1E 08 2C */	sth r0, 0x82c(r30)
lbl_80633C60:
/* 80633C60  7F E3 FB 78 */	mr r3, r31
/* 80633C64  4B D3 D3 B1 */	bl cKF_SkeletonInfo_R_play
/* 80633C68  2C 03 00 01 */	cmpwi r3, 1
/* 80633C6C  40 82 00 10 */	bne lbl_80633C7C
/* 80633C70  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 80633C74  C0 03 D2 78 */	lfs f0, lit_368@l(r3)  /* 0x8064D278@l */
/* 80633C78  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_80633C7C:
/* 80633C7C  A8 7E 08 30 */	lha r3, 0x830(r30)
/* 80633C80  2C 03 00 00 */	cmpwi r3, 0
/* 80633C84  40 81 00 0C */	ble lbl_80633C90
/* 80633C88  38 03 FF FF */	addi r0, r3, -1
/* 80633C8C  B0 1E 08 30 */	sth r0, 0x830(r30)
lbl_80633C90:
/* 80633C90  39 61 00 40 */	addi r11, r1, 0x40
/* 80633C94  4B A6 72 89 */	bl func_8009AF1C
/* 80633C98  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80633C9C  7C 08 03 A6 */	mtlr r0
/* 80633CA0  38 21 00 40 */	addi r1, r1, 0x40
/* 80633CA4  4E 80 00 20 */	blr 
