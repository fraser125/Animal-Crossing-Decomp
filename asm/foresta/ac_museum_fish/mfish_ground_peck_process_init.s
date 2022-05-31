lbl_80433ABC:
/* 80433ABC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80433AC0  7C 08 02 A6 */	mflr r0
/* 80433AC4  3C 80 80 68 */	lis r4, suisou_pos@ha /* 0x80684E7C@ha */
/* 80433AC8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80433ACC  38 04 4E 7C */	addi r0, r4, suisou_pos@l /* 0x80684E7C@l */
/* 80433AD0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80433AD4  7C 7F 1B 78 */	mr r31, r3
/* 80433AD8  38 9F 05 A0 */	addi r4, r31, 0x5a0
/* 80433ADC  A8 A3 06 30 */	lha r5, 0x630(r3)
/* 80433AE0  38 61 00 08 */	addi r3, r1, 8
/* 80433AE4  1C C5 00 0C */	mulli r6, r5, 0xc
/* 80433AE8  7C 65 1B 78 */	mr r5, r3
/* 80433AEC  7D 00 32 14 */	add r8, r0, r6
/* 80433AF0  80 E8 00 00 */	lwz r7, 0(r8)
/* 80433AF4  80 C8 00 04 */	lwz r6, 4(r8)
/* 80433AF8  80 08 00 08 */	lwz r0, 8(r8)
/* 80433AFC  90 E1 00 08 */	stw r7, 8(r1)
/* 80433B00  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80433B04  90 01 00 10 */	stw r0, 0x10(r1)
/* 80433B08  4B F8 74 71 */	bl xyz_t_sub
/* 80433B0C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80433B10  C0 A1 00 10 */	lfs f5, 0x10(r1)
/* 80433B14  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80433B18  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 80433B1C  4C 41 13 82 */	cror 2, 1, 2
/* 80433B20  40 82 00 0C */	bne lbl_80433B2C
/* 80433B24  FC 60 28 90 */	fmr f3, f5
/* 80433B28  48 00 00 08 */	b lbl_80433B30
lbl_80433B2C:
/* 80433B2C  FC 60 28 50 */	fneg f3, f5
lbl_80433B30:
/* 80433B30  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80433B34  C0 C1 00 08 */	lfs f6, 8(r1)
/* 80433B38  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80433B3C  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 80433B40  4C 41 13 82 */	cror 2, 1, 2
/* 80433B44  40 82 00 0C */	bne lbl_80433B50
/* 80433B48  FC 80 30 90 */	fmr f4, f6
/* 80433B4C  48 00 00 08 */	b lbl_80433B54
lbl_80433B50:
/* 80433B50  FC 80 30 50 */	fneg f4, f6
lbl_80433B54:
/* 80433B54  3C 60 80 64 */	lis r3, lit_1071@ha /* 0x80644314@ha */
/* 80433B58  3C A0 80 64 */	lis r5, lit_1099@ha /* 0x8064431C@ha */
/* 80433B5C  38 83 43 14 */	addi r4, r3, lit_1071@l /* 0x80644314@l */
/* 80433B60  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80433B64  C0 24 00 00 */	lfs f1, 0(r4)
/* 80433B68  3C 60 80 64 */	lis r3, lit_1100@ha /* 0x80644320@ha */
/* 80433B6C  C0 45 43 1C */	lfs f2, lit_1099@l(r5)  /* 0x8064431C@l */
/* 80433B70  FC 04 18 40 */	fcmpo cr0, f4, f3
/* 80433B74  EC 01 00 32 */	fmuls f0, f1, f0
/* 80433B78  C0 23 43 20 */	lfs f1, lit_1100@l(r3)  /* 0x80644320@l */
/* 80433B7C  EC 62 00 2A */	fadds f3, f2, f0
/* 80433B80  40 81 00 24 */	ble lbl_80433BA4
/* 80433B84  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80433B88  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80433B8C  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 80433B90  4C 41 13 82 */	cror 2, 1, 2
/* 80433B94  40 82 00 08 */	bne lbl_80433B9C
/* 80433B98  48 00 00 2C */	b lbl_80433BC4
lbl_80433B9C:
/* 80433B9C  FC C0 30 50 */	fneg f6, f6
/* 80433BA0  48 00 00 24 */	b lbl_80433BC4
lbl_80433BA4:
/* 80433BA4  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80433BA8  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80433BAC  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 80433BB0  4C 41 13 82 */	cror 2, 1, 2
/* 80433BB4  40 82 00 0C */	bne lbl_80433BC0
/* 80433BB8  FC C0 28 90 */	fmr f6, f5
/* 80433BBC  48 00 00 08 */	b lbl_80433BC4
lbl_80433BC0:
/* 80433BC0  FC C0 28 50 */	fneg f6, f5
lbl_80433BC4:
/* 80433BC4  EC 41 01 B2 */	fmuls f2, f1, f6
/* 80433BC8  3C 60 80 64 */	lis r3, lit_568@ha /* 0x80644284@ha */
/* 80433BCC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80433BD0  38 00 2A AA */	li r0, 0x2aaa
/* 80433BD4  C0 23 42 84 */	lfs f1, lit_568@l(r3)  /* 0x80644284@l */
/* 80433BD8  EC 43 10 28 */	fsubs f2, f3, f2
/* 80433BDC  EC 02 00 28 */	fsubs f0, f2, f0
/* 80433BE0  D0 1F 05 F4 */	stfs f0, 0x5f4(r31)
/* 80433BE4  B0 1F 06 12 */	sth r0, 0x612(r31)
/* 80433BE8  4B FF DA 01 */	bl func_804315E8
/* 80433BEC  3C 80 80 64 */	lis r4, lit_1101@ha /* 0x80644324@ha */
/* 80433BF0  3C 60 80 43 */	lis r3, mfish_ground_peck_process@ha /* 0x80433C88@ha */
/* 80433BF4  C0 04 43 24 */	lfs f0, lit_1101@l(r4)  /* 0x80644324@l */
/* 80433BF8  38 03 3C 88 */	addi r0, r3, mfish_ground_peck_process@l /* 0x80433C88@l */
/* 80433BFC  EC 00 08 2A */	fadds f0, f0, f1
/* 80433C00  FC 00 00 1E */	fctiwz f0, f0
/* 80433C04  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80433C08  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80433C0C  54 63 08 3C */	slwi r3, r3, 1
/* 80433C10  B0 7F 06 26 */	sth r3, 0x626(r31)
/* 80433C14  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80433C18  7C 03 00 40 */	cmplw r3, r0
/* 80433C1C  41 82 00 34 */	beq lbl_80433C50
/* 80433C20  4B C2 90 D5 */	bl fqrand
/* 80433C24  3C 80 80 64 */	lis r4, data_80644244@ha /* 0x80644244@ha */
/* 80433C28  3C 60 80 64 */	lis r3, lit_840@ha /* 0x806442D8@ha */
/* 80433C2C  C0 44 42 44 */	lfs f2, data_80644244@l(r4)  /* 0x80644244@l */
/* 80433C30  C0 03 42 D8 */	lfs f0, lit_840@l(r3)  /* 0x806442D8@l */
/* 80433C34  EC 22 00 72 */	fmuls f1, f2, f1
/* 80433C38  EC 00 08 2A */	fadds f0, f0, f1
/* 80433C3C  FC 00 00 1E */	fctiwz f0, f0
/* 80433C40  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80433C44  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80433C48  B0 1F 06 3E */	sth r0, 0x63e(r31)
/* 80433C4C  48 00 00 10 */	b lbl_80433C5C
lbl_80433C50:
/* 80433C50  A8 7F 06 3E */	lha r3, 0x63e(r31)
/* 80433C54  38 03 FF FF */	addi r0, r3, -1
/* 80433C58  B0 1F 06 3E */	sth r0, 0x63e(r31)
lbl_80433C5C:
/* 80433C5C  3C 80 80 64 */	lis r4, lit_471@ha /* 0x8064425C@ha */
/* 80433C60  3C 60 80 43 */	lis r3, mfish_ground_peck_process@ha /* 0x80433C88@ha */
/* 80433C64  C0 04 42 5C */	lfs f0, lit_471@l(r4)  /* 0x8064425C@l */
/* 80433C68  38 03 3C 88 */	addi r0, r3, mfish_ground_peck_process@l /* 0x80433C88@l */
/* 80433C6C  D0 1F 05 F0 */	stfs f0, 0x5f0(r31)
/* 80433C70  90 1F 00 34 */	stw r0, 0x34(r31)
/* 80433C74  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80433C78  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80433C7C  7C 08 03 A6 */	mtlr r0
/* 80433C80  38 21 00 30 */	addi r1, r1, 0x30
/* 80433C84  4E 80 00 20 */	blr 
