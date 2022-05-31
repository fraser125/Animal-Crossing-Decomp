lbl_80594EF0:
/* 80594EF0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80594EF4  7C 08 02 A6 */	mflr r0
/* 80594EF8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80594EFC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80594F00  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80594F04  39 61 00 30 */	addi r11, r1, 0x30
/* 80594F08  4B B0 5F CD */	bl func_8009AED4
/* 80594F0C  80 06 01 D0 */	lwz r0, 0x1d0(r6)
/* 80594F10  3C E0 80 65 */	lis r7, lit_708@ha /* 0x80649D50@ha */
/* 80594F14  3C C0 80 6C */	lis r6, catch_ME_data@ha /* 0x806C2FD8@ha */
/* 80594F18  83 E4 00 04 */	lwz r31, 4(r4)
/* 80594F1C  54 00 10 3A */	slwi r0, r0, 2
/* 80594F20  C3 E7 9D 50 */	lfs f31, lit_708@l(r7)  /* 0x80649D50@l */
/* 80594F24  38 86 2F D8 */	addi r4, r6, catch_ME_data@l /* 0x806C2FD8@l */
/* 80594F28  7C 7D 1B 78 */	mr r29, r3
/* 80594F2C  7C 04 04 2E */	lfsx f0, r4, r0
/* 80594F30  7C BE 2B 78 */	mr r30, r5
/* 80594F34  EF FF 00 2A */	fadds f31, f31, f0
/* 80594F38  48 00 01 28 */	b lbl_80595060
lbl_80594F3C:
/* 80594F3C  7F C3 F3 78 */	mr r3, r30
/* 80594F40  38 9F 00 28 */	addi r4, r31, 0x28
/* 80594F44  4B E2 60 91 */	bl search_position_distance
/* 80594F48  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80594F4C  40 80 01 10 */	bge lbl_8059505C
/* 80594F50  3C 80 80 65 */	lis r4, lit_709@ha /* 0x80649D54@ha */
/* 80594F54  3C 60 80 65 */	lis r3, lit_615@ha /* 0x80649D28@ha */
/* 80594F58  C0 44 9D 54 */	lfs f2, lit_709@l(r4)  /* 0x80649D54@l */
/* 80594F5C  C0 03 9D 28 */	lfs f0, lit_615@l(r3)  /* 0x80649D28@l */
/* 80594F60  EC 21 10 28 */	fsubs f1, f1, f2
/* 80594F64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80594F68  40 80 00 08 */	bge lbl_80594F70
/* 80594F6C  FC 20 00 90 */	fmr f1, f0
lbl_80594F70:
/* 80594F70  3C 60 80 65 */	lis r3, lit_709@ha /* 0x80649D54@ha */
/* 80594F74  38 00 00 14 */	li r0, 0x14
/* 80594F78  C0 03 9D 54 */	lfs f0, lit_709@l(r3)  /* 0x80649D54@l */
/* 80594F7C  EC 1F 00 28 */	fsubs f0, f31, f0
/* 80594F80  EC 00 08 28 */	fsubs f0, f0, f1
/* 80594F84  FC 00 00 1E */	fctiwz f0, f0
/* 80594F88  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80594F8C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80594F90  7C 03 03 D6 */	divw r0, r3, r0
/* 80594F94  2C 00 00 04 */	cmpwi r0, 4
/* 80594F98  40 81 00 08 */	ble lbl_80594FA0
/* 80594F9C  38 00 00 04 */	li r0, 4
lbl_80594FA0:
/* 80594FA0  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 80594FA4  3C 60 80 65 */	lis r3, lit_615@ha /* 0x80649D28@ha */
/* 80594FA8  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80594FAC  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80594FB0  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80594FB4  EC 63 00 28 */	fsubs f3, f3, f0
/* 80594FB8  C0 03 9D 28 */	lfs f0, lit_615@l(r3)  /* 0x80649D28@l */
/* 80594FBC  EC 22 08 28 */	fsubs f1, f2, f1
/* 80594FC0  EC 43 00 F2 */	fmuls f2, f3, f3
/* 80594FC4  EC 21 00 72 */	fmuls f1, f1, f1
/* 80594FC8  EC 82 08 2A */	fadds f4, f2, f1
/* 80594FCC  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80594FD0  40 81 00 68 */	ble lbl_80595038
/* 80594FD4  FC 20 20 34 */	frsqrte f1, f4
/* 80594FD8  3C 60 80 65 */	lis r3, lit_710@ha /* 0x80649D5C@ha */
/* 80594FDC  38 83 9D 5C */	addi r4, r3, lit_710@l /* 0x80649D5C@l */
/* 80594FE0  3C 60 80 65 */	lis r3, lit_711@ha /* 0x80649D64@ha */
/* 80594FE4  C8 64 00 00 */	lfd f3, 0(r4)
/* 80594FE8  FC 01 00 72 */	fmul f0, f1, f1
/* 80594FEC  C8 43 9D 64 */	lfd f2, lit_711@l(r3)  /* 0x80649D64@l */
/* 80594FF0  FC 23 00 72 */	fmul f1, f3, f1
/* 80594FF4  FC 04 00 32 */	fmul f0, f4, f0
/* 80594FF8  FC 02 00 28 */	fsub f0, f2, f0
/* 80594FFC  FC 21 00 32 */	fmul f1, f1, f0
/* 80595000  FC 01 00 72 */	fmul f0, f1, f1
/* 80595004  FC 23 00 72 */	fmul f1, f3, f1
/* 80595008  FC 04 00 32 */	fmul f0, f4, f0
/* 8059500C  FC 02 00 28 */	fsub f0, f2, f0
/* 80595010  FC 21 00 32 */	fmul f1, f1, f0
/* 80595014  FC 01 00 72 */	fmul f0, f1, f1
/* 80595018  FC 23 00 72 */	fmul f1, f3, f1
/* 8059501C  FC 04 00 32 */	fmul f0, f4, f0
/* 80595020  FC 02 00 28 */	fsub f0, f2, f0
/* 80595024  FC 01 00 32 */	fmul f0, f1, f0
/* 80595028  FC 04 00 32 */	fmul f0, f4, f0
/* 8059502C  FC 00 00 18 */	frsp f0, f0
/* 80595030  D0 01 00 08 */	stfs f0, 8(r1)
/* 80595034  C0 81 00 08 */	lfs f4, 8(r1)
lbl_80595038:
/* 80595038  3C 60 80 6C */	lis r3, calc_table@ha /* 0x806C307C@ha */
/* 8059503C  54 00 10 3A */	slwi r0, r0, 2
/* 80595040  38 63 30 7C */	addi r3, r3, calc_table@l /* 0x806C307C@l */
/* 80595044  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80595048  7C 23 04 2E */	lfsx f1, r3, r0
/* 8059504C  EC 21 01 32 */	fmuls f1, f1, f4
/* 80595050  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80595054  40 81 00 08 */	ble lbl_8059505C
/* 80595058  D0 3D 00 00 */	stfs f1, 0(r29)
lbl_8059505C:
/* 8059505C  83 FF 01 58 */	lwz r31, 0x158(r31)
lbl_80595060:
/* 80595060  28 1F 00 00 */	cmplwi r31, 0
/* 80595064  40 82 FE D8 */	bne lbl_80594F3C
/* 80595068  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8059506C  39 61 00 30 */	addi r11, r1, 0x30
/* 80595070  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80595074  4B B0 5E AD */	bl func_8009AF20
/* 80595078  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8059507C  7C 08 03 A6 */	mtlr r0
/* 80595080  38 21 00 40 */	addi r1, r1, 0x40
/* 80595084  4E 80 00 20 */	blr 
