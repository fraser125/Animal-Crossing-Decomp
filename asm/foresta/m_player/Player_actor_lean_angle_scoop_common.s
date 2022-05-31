lbl_804F79A4:
/* 804F79A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804F79A8  7C 08 02 A6 */	mflr r0
/* 804F79AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 804F79B0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804F79B4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804F79B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804F79BC  7C 7F 1B 78 */	mr r31, r3
/* 804F79C0  38 60 00 00 */	li r3, 0
/* 804F79C4  C0 1F 01 84 */	lfs f0, 0x184(r31)
/* 804F79C8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804F79CC  40 80 00 4C */	bge lbl_804F7A18
/* 804F79D0  C0 24 00 00 */	lfs f1, 0(r4)
/* 804F79D4  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 804F79D8  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 804F79DC  C0 84 00 04 */	lfs f4, 4(r4)
/* 804F79E0  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 804F79E4  EC 21 00 28 */	fsubs f1, f1, f0
/* 804F79E8  C0 05 65 68 */	lfs f0, lit_604@l(r5)  /* 0x80646568@l */
/* 804F79EC  EF E4 10 28 */	fsubs f31, f4, f2
/* 804F79F0  C0 64 00 08 */	lfs f3, 8(r4)
/* 804F79F4  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 804F79F8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 804F79FC  EC 43 10 28 */	fsubs f2, f3, f2
/* 804F7A00  40 82 00 0C */	bne lbl_804F7A0C
/* 804F7A04  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 804F7A08  41 82 00 10 */	beq lbl_804F7A18
lbl_804F7A0C:
/* 804F7A0C  4B F1 12 9D */	bl Math3DVecLength2D
/* 804F7A10  FC 40 F8 50 */	fneg f2, f31
/* 804F7A14  4B F1 45 ED */	bl atans_table
lbl_804F7A18:
/* 804F7A18  3C 80 80 64 */	lis r4, lit_1027@ha /* 0x806469F4@ha */
/* 804F7A1C  3C A0 80 64 */	lis r5, lit_1028@ha /* 0x806469FC@ha */
/* 804F7A20  38 C4 69 F4 */	addi r6, r4, lit_1027@l /* 0x806469F4@l */
/* 804F7A24  C8 65 69 FC */	lfd f3, lit_1028@l(r5)  /* 0x806469FC@l */
/* 804F7A28  C8 A6 00 00 */	lfd f5, 0(r6)
/* 804F7A2C  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804F7A30  C8 86 00 00 */	lfd f4, 0(r6)
/* 804F7A34  38 A0 01 11 */	li r5, 0x111
/* 804F7A38  FC 40 28 34 */	frsqrte f2, f5
/* 804F7A3C  C0 04 65 64 */	lfs f0, lit_603@l(r4)  /* 0x80646564@l */
/* 804F7A40  7C 64 1B 78 */	mr r4, r3
/* 804F7A44  38 7F 00 DC */	addi r3, r31, 0xdc
/* 804F7A48  38 C0 00 00 */	li r6, 0
/* 804F7A4C  FC 22 00 B2 */	fmul f1, f2, f2
/* 804F7A50  FC 44 00 B2 */	fmul f2, f4, f2
/* 804F7A54  FC 25 00 72 */	fmul f1, f5, f1
/* 804F7A58  FC 23 08 28 */	fsub f1, f3, f1
/* 804F7A5C  FC 42 00 72 */	fmul f2, f2, f1
/* 804F7A60  FC 22 00 B2 */	fmul f1, f2, f2
/* 804F7A64  FC 44 00 B2 */	fmul f2, f4, f2
/* 804F7A68  FC 25 00 72 */	fmul f1, f5, f1
/* 804F7A6C  FC 23 08 28 */	fsub f1, f3, f1
/* 804F7A70  FC 42 00 72 */	fmul f2, f2, f1
/* 804F7A74  FC 22 00 B2 */	fmul f1, f2, f2
/* 804F7A78  FC 44 00 B2 */	fmul f2, f4, f2
/* 804F7A7C  FC 25 00 72 */	fmul f1, f5, f1
/* 804F7A80  FC 23 08 28 */	fsub f1, f3, f1
/* 804F7A84  FC 22 00 72 */	fmul f1, f2, f1
/* 804F7A88  FC 25 00 72 */	fmul f1, f5, f1
/* 804F7A8C  FC 20 08 18 */	frsp f1, f1
/* 804F7A90  D0 21 00 08 */	stfs f1, 8(r1)
/* 804F7A94  C0 21 00 08 */	lfs f1, 8(r1)
/* 804F7A98  EC 20 08 28 */	fsubs f1, f0, f1
/* 804F7A9C  4B EC 38 75 */	bl add_calc_short_angle2
/* 804F7AA0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804F7AA4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804F7AA8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804F7AAC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804F7AB0  7C 08 03 A6 */	mtlr r0
/* 804F7AB4  38 21 00 30 */	addi r1, r1, 0x30
/* 804F7AB8  4E 80 00 20 */	blr 
