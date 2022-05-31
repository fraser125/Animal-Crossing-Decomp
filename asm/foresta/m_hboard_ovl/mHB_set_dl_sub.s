lbl_805E0F04:
/* 805E0F04  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805E0F08  7C 08 02 A6 */	mflr r0
/* 805E0F0C  90 01 00 54 */	stw r0, 0x54(r1)
/* 805E0F10  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805E0F14  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805E0F18  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 805E0F1C  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 805E0F20  39 61 00 30 */	addi r11, r1, 0x30
/* 805E0F24  4B AB 9F B1 */	bl func_8009AED4
/* 805E0F28  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805E0F2C  7C 7E 1B 78 */	mr r30, r3
/* 805E0F30  FF C0 08 90 */	fmr f30, f1
/* 805E0F34  7C BF 2B 78 */	mr r31, r5
/* 805E0F38  81 86 09 50 */	lwz r12, 0x950(r6)
/* 805E0F3C  FF E0 10 90 */	fmr f31, f2
/* 805E0F40  7C 83 23 78 */	mr r3, r4
/* 805E0F44  83 A6 09 8C */	lwz r29, 0x98c(r6)
/* 805E0F48  7D 89 03 A6 */	mtctr r12
/* 805E0F4C  4E 80 04 21 */	bctrl 
/* 805E0F50  3C 80 80 65 */	lis r4, lit_529@ha /* 0x8064B3B4@ha */
/* 805E0F54  3C 60 80 65 */	lis r3, lit_530@ha /* 0x8064B3B8@ha */
/* 805E0F58  38 A4 B3 B4 */	addi r5, r4, lit_529@l /* 0x8064B3B4@l */
/* 805E0F5C  C0 03 B3 B8 */	lfs f0, lit_530@l(r3)  /* 0x8064B3B8@l */
/* 805E0F60  C0 25 00 00 */	lfs f1, 0(r5)
/* 805E0F64  3C 80 80 65 */	lis r4, lit_518@ha /* 0x8064B3A0@ha */
/* 805E0F68  3C 60 80 65 */	lis r3, lit_519@ha /* 0x8064B3A4@ha */
/* 805E0F6C  EF E0 F8 28 */	fsubs f31, f0, f31
/* 805E0F70  38 A4 B3 A0 */	addi r5, r4, lit_518@l /* 0x8064B3A0@l */
/* 805E0F74  EF C1 F0 2A */	fadds f30, f1, f30
/* 805E0F78  38 83 B3 A4 */	addi r4, r3, lit_519@l /* 0x8064B3A4@l */
/* 805E0F7C  C0 25 00 00 */	lfs f1, 0(r5)
/* 805E0F80  C0 04 00 00 */	lfs f0, 0(r4)
/* 805E0F84  EC 7E 08 28 */	fsubs f3, f30, f1
/* 805E0F88  7F A3 EB 78 */	mr r3, r29
/* 805E0F8C  EC 00 F8 28 */	fsubs f0, f0, f31
/* 805E0F90  7F E4 FB 78 */	mr r4, r31
/* 805E0F94  FC 20 F0 90 */	fmr f1, f30
/* 805E0F98  38 A1 00 0C */	addi r5, r1, 0xc
/* 805E0F9C  FC 40 F8 90 */	fmr f2, f31
/* 805E0FA0  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 805E0FA4  38 C1 00 08 */	addi r6, r1, 8
/* 805E0FA8  D0 01 00 08 */	stfs f0, 8(r1)
/* 805E0FAC  4B FF FD 11 */	bl mHB_set_character
/* 805E0FB0  28 1D 00 00 */	cmplwi r29, 0
/* 805E0FB4  41 82 00 A8 */	beq lbl_805E105C
/* 805E0FB8  A8 7D 00 26 */	lha r3, 0x26(r29)
/* 805E0FBC  3C E0 43 30 */	lis r7, 0x4330
/* 805E0FC0  3C A0 80 65 */	lis r5, lit_521@ha /* 0x8064B3AC@ha */
/* 805E0FC4  A8 1D 00 24 */	lha r0, 0x24(r29)
/* 805E0FC8  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 805E0FCC  C8 65 B3 AC */	lfd f3, lit_521@l(r5)  /* 0x8064B3AC@l */
/* 805E0FD0  90 81 00 14 */	stw r4, 0x14(r1)
/* 805E0FD4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805E0FD8  3C 60 80 65 */	lis r3, data_8064B394@ha /* 0x8064B394@ha */
/* 805E0FDC  80 BE 00 2C */	lwz r5, 0x2c(r30)
/* 805E0FE0  90 E1 00 10 */	stw r7, 0x10(r1)
/* 805E0FE4  38 C3 B3 94 */	addi r6, r3, data_8064B394@l /* 0x8064B394@l */
/* 805E0FE8  3C 60 80 65 */	lis r3, lit_531@ha /* 0x8064B3BC@ha */
/* 805E0FEC  80 A5 09 8C */	lwz r5, 0x98c(r5)
/* 805E0FF0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805E0FF4  39 03 B3 BC */	addi r8, r3, lit_531@l /* 0x8064B3BC@l */
/* 805E0FF8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805E0FFC  7F C3 F3 78 */	mr r3, r30
/* 805E1000  EC 00 18 28 */	fsubs f0, f0, f3
/* 805E1004  C0 46 00 00 */	lfs f2, 0(r6)
/* 805E1008  90 E1 00 18 */	stw r7, 0x18(r1)
/* 805E100C  7F E4 FB 78 */	mr r4, r31
/* 805E1010  C0 88 00 00 */	lfs f4, 0(r8)
/* 805E1014  EC 3E 00 2A */	fadds f1, f30, f0
/* 805E1018  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 805E101C  81 85 00 30 */	lwz r12, 0x30(r5)
/* 805E1020  EC 00 18 28 */	fsubs f0, f0, f3
/* 805E1024  EC 24 08 2A */	fadds f1, f4, f1
/* 805E1028  EC 02 00 32 */	fmuls f0, f2, f0
/* 805E102C  EC 5F 00 2A */	fadds f2, f31, f0
/* 805E1030  7D 89 03 A6 */	mtctr r12
/* 805E1034  4E 80 04 21 */	bctrl 
/* 805E1038  80 BE 00 2C */	lwz r5, 0x2c(r30)
/* 805E103C  7F C3 F3 78 */	mr r3, r30
/* 805E1040  7F E4 FB 78 */	mr r4, r31
/* 805E1044  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 805E1048  80 A5 09 8C */	lwz r5, 0x98c(r5)
/* 805E104C  C0 41 00 08 */	lfs f2, 8(r1)
/* 805E1050  81 85 00 2C */	lwz r12, 0x2c(r5)
/* 805E1054  7D 89 03 A6 */	mtctr r12
/* 805E1058  4E 80 04 21 */	bctrl 
lbl_805E105C:
/* 805E105C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805E1060  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805E1064  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 805E1068  39 61 00 30 */	addi r11, r1, 0x30
/* 805E106C  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 805E1070  4B AB 9E B1 */	bl func_8009AF20
/* 805E1074  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805E1078  7C 08 03 A6 */	mtlr r0
/* 805E107C  38 21 00 50 */	addi r1, r1, 0x50
/* 805E1080  4E 80 00 20 */	blr 
