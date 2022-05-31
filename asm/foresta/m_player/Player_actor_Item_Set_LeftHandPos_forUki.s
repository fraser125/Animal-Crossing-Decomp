lbl_804E0EE0:
/* 804E0EE0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E0EE4  7C 08 02 A6 */	mflr r0
/* 804E0EE8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E0EEC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804E0EF0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804E0EF4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804E0EF8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804E0EFC  83 E3 0F 30 */	lwz r31, 0xf30(r3)
/* 804E0F00  28 1F 00 00 */	cmplwi r31, 0
/* 804E0F04  41 82 00 D4 */	beq lbl_804E0FD8
/* 804E0F08  2C 04 00 38 */	cmpwi r4, 0x38
/* 804E0F0C  40 80 00 B4 */	bge lbl_804E0FC0
/* 804E0F10  2C 04 00 35 */	cmpwi r4, 0x35
/* 804E0F14  40 80 00 08 */	bge lbl_804E0F1C
/* 804E0F18  48 00 00 A8 */	b lbl_804E0FC0
lbl_804E0F1C:
/* 804E0F1C  80 A3 00 28 */	lwz r5, 0x28(r3)
/* 804E0F20  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 804E0F24  80 03 00 30 */	lwz r0, 0x30(r3)
/* 804E0F28  AB C3 00 DE */	lha r30, 0xde(r3)
/* 804E0F2C  90 A1 00 08 */	stw r5, 8(r1)
/* 804E0F30  7F C3 F3 78 */	mr r3, r30
/* 804E0F34  90 81 00 0C */	stw r4, 0xc(r1)
/* 804E0F38  90 01 00 10 */	stw r0, 0x10(r1)
/* 804E0F3C  4B ED 9B 61 */	bl cos_s
/* 804E0F40  FF E0 08 90 */	fmr f31, f1
/* 804E0F44  7F C3 F3 78 */	mr r3, r30
/* 804E0F48  4B ED 9B A9 */	bl sin_s
/* 804E0F4C  3C 60 80 64 */	lis r3, lit_1375@ha /* 0x80646A30@ha */
/* 804E0F50  3C 80 80 64 */	lis r4, lit_4467@ha /* 0x80647B18@ha */
/* 804E0F54  38 A3 6A 30 */	addi r5, r3, lit_1375@l /* 0x80646A30@l */
/* 804E0F58  C0 C4 7B 18 */	lfs f6, lit_4467@l(r4)  /* 0x80647B18@l */
/* 804E0F5C  C0 E5 00 00 */	lfs f7, 0(r5)
/* 804E0F60  3C 60 80 64 */	lis r3, lit_5992@ha /* 0x80647DCC@ha */
/* 804E0F64  EC 86 07 F2 */	fmuls f4, f6, f31
/* 804E0F68  C0 A1 00 08 */	lfs f5, 8(r1)
/* 804E0F6C  EC 67 00 72 */	fmuls f3, f7, f1
/* 804E0F70  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 804E0F74  C0 03 7D CC */	lfs f0, lit_5992@l(r3)  /* 0x80647DCC@l */
/* 804E0F78  EC E7 07 F2 */	fmuls f7, f7, f31
/* 804E0F7C  EC 64 18 2A */	fadds f3, f4, f3
/* 804E0F80  C1 01 00 10 */	lfs f8, 0x10(r1)
/* 804E0F84  EC 86 00 72 */	fmuls f4, f6, f1
/* 804E0F88  EC 02 00 2A */	fadds f0, f2, f0
/* 804E0F8C  EC 25 18 2A */	fadds f1, f5, f3
/* 804E0F90  EC 47 20 28 */	fsubs f2, f7, f4
/* 804E0F94  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804E0F98  D0 21 00 08 */	stfs f1, 8(r1)
/* 804E0F9C  EC 08 10 2A */	fadds f0, f8, f2
/* 804E0FA0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 804E0FA4  80 01 00 08 */	lwz r0, 8(r1)
/* 804E0FA8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804E0FAC  90 1F 02 54 */	stw r0, 0x254(r31)
/* 804E0FB0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 804E0FB4  90 7F 02 58 */	stw r3, 0x258(r31)
/* 804E0FB8  90 1F 02 5C */	stw r0, 0x25c(r31)
/* 804E0FBC  48 00 00 1C */	b lbl_804E0FD8
lbl_804E0FC0:
/* 804E0FC0  80 83 10 5C */	lwz r4, 0x105c(r3)
/* 804E0FC4  80 03 10 60 */	lwz r0, 0x1060(r3)
/* 804E0FC8  90 9F 02 54 */	stw r4, 0x254(r31)
/* 804E0FCC  90 1F 02 58 */	stw r0, 0x258(r31)
/* 804E0FD0  80 03 10 64 */	lwz r0, 0x1064(r3)
/* 804E0FD4  90 1F 02 5C */	stw r0, 0x25c(r31)
lbl_804E0FD8:
/* 804E0FD8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804E0FDC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E0FE0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804E0FE4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804E0FE8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804E0FEC  7C 08 03 A6 */	mtlr r0
/* 804E0FF0  38 21 00 30 */	addi r1, r1, 0x30
/* 804E0FF4  4E 80 00 20 */	blr 
