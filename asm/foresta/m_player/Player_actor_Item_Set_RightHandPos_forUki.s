lbl_804E0DC8:
/* 804E0DC8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E0DCC  7C 08 02 A6 */	mflr r0
/* 804E0DD0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E0DD4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804E0DD8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804E0DDC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804E0DE0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804E0DE4  83 E3 0F 30 */	lwz r31, 0xf30(r3)
/* 804E0DE8  28 1F 00 00 */	cmplwi r31, 0
/* 804E0DEC  41 82 00 D4 */	beq lbl_804E0EC0
/* 804E0DF0  2C 04 00 38 */	cmpwi r4, 0x38
/* 804E0DF4  40 80 00 B4 */	bge lbl_804E0EA8
/* 804E0DF8  2C 04 00 35 */	cmpwi r4, 0x35
/* 804E0DFC  40 80 00 08 */	bge lbl_804E0E04
/* 804E0E00  48 00 00 A8 */	b lbl_804E0EA8
lbl_804E0E04:
/* 804E0E04  80 A3 00 28 */	lwz r5, 0x28(r3)
/* 804E0E08  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 804E0E0C  80 03 00 30 */	lwz r0, 0x30(r3)
/* 804E0E10  AB C3 00 DE */	lha r30, 0xde(r3)
/* 804E0E14  90 A1 00 08 */	stw r5, 8(r1)
/* 804E0E18  7F C3 F3 78 */	mr r3, r30
/* 804E0E1C  90 81 00 0C */	stw r4, 0xc(r1)
/* 804E0E20  90 01 00 10 */	stw r0, 0x10(r1)
/* 804E0E24  4B ED 9C 79 */	bl cos_s
/* 804E0E28  FF E0 08 90 */	fmr f31, f1
/* 804E0E2C  7F C3 F3 78 */	mr r3, r30
/* 804E0E30  4B ED 9C C1 */	bl sin_s
/* 804E0E34  3C 60 80 64 */	lis r3, lit_2697@ha /* 0x80646C50@ha */
/* 804E0E38  3C 80 80 64 */	lis r4, lit_5979@ha /* 0x80647DC4@ha */
/* 804E0E3C  38 A3 6C 50 */	addi r5, r3, lit_2697@l /* 0x80646C50@l */
/* 804E0E40  C0 C4 7D C4 */	lfs f6, lit_5979@l(r4)  /* 0x80647DC4@l */
/* 804E0E44  C0 E5 00 00 */	lfs f7, 0(r5)
/* 804E0E48  3C 60 80 64 */	lis r3, lit_5980@ha /* 0x80647DC8@ha */
/* 804E0E4C  EC 86 07 F2 */	fmuls f4, f6, f31
/* 804E0E50  C0 A1 00 08 */	lfs f5, 8(r1)
/* 804E0E54  EC 67 00 72 */	fmuls f3, f7, f1
/* 804E0E58  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 804E0E5C  C0 03 7D C8 */	lfs f0, lit_5980@l(r3)  /* 0x80647DC8@l */
/* 804E0E60  EC E7 07 F2 */	fmuls f7, f7, f31
/* 804E0E64  EC 64 18 2A */	fadds f3, f4, f3
/* 804E0E68  C1 01 00 10 */	lfs f8, 0x10(r1)
/* 804E0E6C  EC 86 00 72 */	fmuls f4, f6, f1
/* 804E0E70  EC 02 00 2A */	fadds f0, f2, f0
/* 804E0E74  EC 25 18 2A */	fadds f1, f5, f3
/* 804E0E78  EC 47 20 28 */	fsubs f2, f7, f4
/* 804E0E7C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804E0E80  D0 21 00 08 */	stfs f1, 8(r1)
/* 804E0E84  EC 08 10 2A */	fadds f0, f8, f2
/* 804E0E88  80 61 00 0C */	lwz r3, 0xc(r1)
/* 804E0E8C  80 01 00 08 */	lwz r0, 8(r1)
/* 804E0E90  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804E0E94  90 1F 02 18 */	stw r0, 0x218(r31)
/* 804E0E98  80 01 00 10 */	lwz r0, 0x10(r1)
/* 804E0E9C  90 7F 02 1C */	stw r3, 0x21c(r31)
/* 804E0EA0  90 1F 02 20 */	stw r0, 0x220(r31)
/* 804E0EA4  48 00 00 1C */	b lbl_804E0EC0
lbl_804E0EA8:
/* 804E0EA8  80 83 10 44 */	lwz r4, 0x1044(r3)
/* 804E0EAC  80 03 10 48 */	lwz r0, 0x1048(r3)
/* 804E0EB0  90 9F 02 18 */	stw r4, 0x218(r31)
/* 804E0EB4  90 1F 02 1C */	stw r0, 0x21c(r31)
/* 804E0EB8  80 03 10 4C */	lwz r0, 0x104c(r3)
/* 804E0EBC  90 1F 02 20 */	stw r0, 0x220(r31)
lbl_804E0EC0:
/* 804E0EC0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804E0EC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E0EC8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804E0ECC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804E0ED0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804E0ED4  7C 08 03 A6 */	mtlr r0
/* 804E0ED8  38 21 00 30 */	addi r1, r1, 0x30
/* 804E0EDC  4E 80 00 20 */	blr 
