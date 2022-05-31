lbl_80381C3C:
/* 80381C3C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80381C40  7C 08 02 A6 */	mflr r0
/* 80381C44  90 01 00 44 */	stw r0, 0x44(r1)
/* 80381C48  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80381C4C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80381C50  39 61 00 30 */	addi r11, r1, 0x30
/* 80381C54  4B D1 92 79 */	bl func_8009AECC
/* 80381C58  2C 05 00 00 */	cmpwi r5, 0
/* 80381C5C  7C 9D 23 78 */	mr r29, r4
/* 80381C60  3B E3 1B C0 */	addi r31, r3, 0x1bc0
/* 80381C64  3B C3 1B C6 */	addi r30, r3, 0x1bc6
/* 80381C68  40 82 00 30 */	bne lbl_80381C98
/* 80381C6C  A8 7D 00 00 */	lha r3, 0(r29)
/* 80381C70  38 00 00 00 */	li r0, 0
/* 80381C74  B0 7F 00 00 */	sth r3, 0(r31)
/* 80381C78  A8 7D 00 02 */	lha r3, 2(r29)
/* 80381C7C  B0 7F 00 02 */	sth r3, 2(r31)
/* 80381C80  A8 7D 00 04 */	lha r3, 4(r29)
/* 80381C84  B0 7F 00 04 */	sth r3, 4(r31)
/* 80381C88  B0 1E 00 00 */	sth r0, 0(r30)
/* 80381C8C  B0 1E 00 02 */	sth r0, 2(r30)
/* 80381C90  B0 1E 00 04 */	sth r0, 4(r30)
/* 80381C94  48 00 00 B0 */	b lbl_80381D44
lbl_80381C98:
/* 80381C98  6C A3 80 00 */	xoris r3, r5, 0x8000
/* 80381C9C  3C 00 43 30 */	lis r0, 0x4330
/* 80381CA0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80381CA4  3C 80 80 64 */	lis r4, lit_487@ha /* 0x80641364@ha */
/* 80381CA8  A0 1F 00 04 */	lhz r0, 4(r31)
/* 80381CAC  90 61 00 14 */	stw r3, 0x14(r1)
/* 80381CB0  38 64 13 64 */	addi r3, r4, lit_487@l /* 0x80641364@l */
/* 80381CB4  C8 23 00 00 */	lfd f1, 0(r3)
/* 80381CB8  3C 80 80 64 */	lis r4, lit_508@ha /* 0x8064136C@ha */
/* 80381CBC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80381CC0  7F E3 FB 78 */	mr r3, r31
/* 80381CC4  C0 44 13 6C */	lfs f2, lit_508@l(r4)  /* 0x8064136C@l */
/* 80381CC8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80381CCC  80 9F 00 00 */	lwz r4, 0(r31)
/* 80381CD0  A8 BD 00 00 */	lha r5, 0(r29)
/* 80381CD4  90 81 00 08 */	stw r4, 8(r1)
/* 80381CD8  EF E2 00 24 */	fdivs f31, f2, f0
/* 80381CDC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80381CE0  A8 81 00 08 */	lha r4, 8(r1)
/* 80381CE4  FC 20 F8 90 */	fmr f1, f31
/* 80381CE8  4B FE EC 3D */	bl cKF_SkeletonInfo_subRotInterpolation
/* 80381CEC  AB 81 00 0A */	lha r28, 0xa(r1)
/* 80381CF0  FC 20 F8 90 */	fmr f1, f31
/* 80381CF4  A8 BD 00 02 */	lha r5, 2(r29)
/* 80381CF8  38 7F 00 02 */	addi r3, r31, 2
/* 80381CFC  7F 84 E3 78 */	mr r4, r28
/* 80381D00  4B FE EC 25 */	bl cKF_SkeletonInfo_subRotInterpolation
/* 80381D04  AB 61 00 0C */	lha r27, 0xc(r1)
/* 80381D08  FC 20 F8 90 */	fmr f1, f31
/* 80381D0C  A8 BD 00 04 */	lha r5, 4(r29)
/* 80381D10  38 7F 00 04 */	addi r3, r31, 4
/* 80381D14  7F 64 DB 78 */	mr r4, r27
/* 80381D18  4B FE EC 0D */	bl cKF_SkeletonInfo_subRotInterpolation
/* 80381D1C  A8 61 00 08 */	lha r3, 8(r1)
/* 80381D20  A8 1F 00 00 */	lha r0, 0(r31)
/* 80381D24  7C 03 00 50 */	subf r0, r3, r0
/* 80381D28  B0 1E 00 04 */	sth r0, 4(r30)
/* 80381D2C  A8 1F 00 02 */	lha r0, 2(r31)
/* 80381D30  7C 1C 00 50 */	subf r0, r28, r0
/* 80381D34  B0 1E 00 02 */	sth r0, 2(r30)
/* 80381D38  A8 1F 00 04 */	lha r0, 4(r31)
/* 80381D3C  7C 1B 00 50 */	subf r0, r27, r0
/* 80381D40  B0 1E 00 04 */	sth r0, 4(r30)
lbl_80381D44:
/* 80381D44  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80381D48  39 61 00 30 */	addi r11, r1, 0x30
/* 80381D4C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80381D50  4B D1 91 C9 */	bl func_8009AF18
/* 80381D54  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80381D58  7C 08 03 A6 */	mtlr r0
/* 80381D5C  38 21 00 40 */	addi r1, r1, 0x40
/* 80381D60  4E 80 00 20 */	blr 
