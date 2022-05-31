lbl_804D6ED4:
/* 804D6ED4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804D6ED8  7C 08 02 A6 */	mflr r0
/* 804D6EDC  90 01 00 54 */	stw r0, 0x54(r1)
/* 804D6EE0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 804D6EE4  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 804D6EE8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804D6EEC  80 C4 00 00 */	lwz r6, 0(r4)
/* 804D6EF0  7C 7F 1B 78 */	mr r31, r3
/* 804D6EF4  80 A4 00 04 */	lwz r5, 4(r4)
/* 804D6EF8  38 61 00 20 */	addi r3, r1, 0x20
/* 804D6EFC  80 04 00 08 */	lwz r0, 8(r4)
/* 804D6F00  38 81 00 08 */	addi r4, r1, 8
/* 804D6F04  90 C1 00 08 */	stw r6, 8(r1)
/* 804D6F08  90 A1 00 0C */	stw r5, 0xc(r1)
/* 804D6F0C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804D6F10  4B EB 8B 45 */	bl mCoBG_GetBgNorm_FromWpos
/* 804D6F14  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804D6F18  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804D6F1C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804D6F20  C0 23 65 68 */	lfs f1, lit_604@l(r3)  /* 0x80646568@l */
/* 804D6F24  C3 E4 65 64 */	lfs f31, lit_603@l(r4)  /* 0x80646564@l */
/* 804D6F28  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804D6F2C  40 82 00 10 */	bne lbl_804D6F3C
/* 804D6F30  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804D6F34  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804D6F38  41 82 00 70 */	beq lbl_804D6FA8
lbl_804D6F3C:
/* 804D6F3C  AB FF 00 36 */	lha r31, 0x36(r31)
/* 804D6F40  7F E3 FB 78 */	mr r3, r31
/* 804D6F44  4B EE 3B AD */	bl sin_s
/* 804D6F48  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 804D6F4C  7F E3 FB 78 */	mr r3, r31
/* 804D6F50  4B EE 3B 4D */	bl cos_s
/* 804D6F54  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804D6F58  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 804D6F5C  C0 A3 65 68 */	lfs f5, lit_604@l(r3)  /* 0x80646568@l */
/* 804D6F60  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 804D6F64  FC 05 00 00 */	fcmpu cr0, f5, f0
/* 804D6F68  41 82 00 40 */	beq lbl_804D6FA8
/* 804D6F6C  FC 20 08 18 */	frsp f1, f1
/* 804D6F70  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 804D6F74  C0 81 00 20 */	lfs f4, 0x20(r1)
/* 804D6F78  FC 00 00 50 */	fneg f0, f0
/* 804D6F7C  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 804D6F80  EC 22 00 72 */	fmuls f1, f2, f1
/* 804D6F84  EC 44 00 F2 */	fmuls f2, f4, f3
/* 804D6F88  EC 22 08 2A */	fadds f1, f2, f1
/* 804D6F8C  EC 01 00 24 */	fdivs f0, f1, f0
/* 804D6F90  FC 00 28 40 */	fcmpo cr0, f0, f5
/* 804D6F94  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804D6F98  40 81 00 10 */	ble lbl_804D6FA8
/* 804D6F9C  38 61 00 14 */	addi r3, r1, 0x14
/* 804D6FA0  4B F3 1E 59 */	bl Math3DVecLengthSquare
/* 804D6FA4  FF E0 08 90 */	fmr f31, f1
lbl_804D6FA8:
/* 804D6FA8  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804D6FAC  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804D6FB0  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 804D6FB4  40 82 00 0C */	bne lbl_804D6FC0
/* 804D6FB8  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804D6FBC  C3 E3 65 64 */	lfs f31, lit_603@l(r3)  /* 0x80646564@l */
lbl_804D6FC0:
/* 804D6FC0  FC 20 F8 90 */	fmr f1, f31
/* 804D6FC4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 804D6FC8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804D6FCC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 804D6FD0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804D6FD4  7C 08 03 A6 */	mtlr r0
/* 804D6FD8  38 21 00 50 */	addi r1, r1, 0x50
/* 804D6FDC  4E 80 00 20 */	blr 
