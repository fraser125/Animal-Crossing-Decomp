lbl_803F3F98:
/* 803F3F98  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803F3F9C  2C 04 00 00 */	cmpwi r4, 0
/* 803F3FA0  81 23 00 00 */	lwz r9, 0(r3)
/* 803F3FA4  40 82 00 24 */	bne lbl_803F3FC8
/* 803F3FA8  2C 05 00 00 */	cmpwi r5, 0
/* 803F3FAC  40 82 00 1C */	bne lbl_803F3FC8
/* 803F3FB0  2C 06 01 40 */	cmpwi r6, 0x140
/* 803F3FB4  40 82 00 14 */	bne lbl_803F3FC8
/* 803F3FB8  2C 07 00 F0 */	cmpwi r7, 0xf0
/* 803F3FBC  40 82 00 0C */	bne lbl_803F3FC8
/* 803F3FC0  54 C6 08 3C */	slwi r6, r6, 1
/* 803F3FC4  54 E7 08 3C */	slwi r7, r7, 1
lbl_803F3FC8:
/* 803F3FC8  3D 00 43 30 */	lis r8, 0x4330
/* 803F3FCC  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 803F3FD0  90 01 00 0C */	stw r0, 0xc(r1)
/* 803F3FD4  6C E0 80 00 */	xoris r0, r7, 0x8000
/* 803F3FD8  3C 80 80 64 */	lis r4, lit_439@ha /* 0x8064330C@ha */
/* 803F3FDC  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 803F3FE0  91 01 00 08 */	stw r8, 8(r1)
/* 803F3FE4  7D 27 4B 78 */	mr r7, r9
/* 803F3FE8  C8 64 33 0C */	lfd f3, lit_439@l(r4)  /* 0x8064330C@l */
/* 803F3FEC  6C C4 80 00 */	xoris r4, r6, 0x8000
/* 803F3FF0  C8 01 00 08 */	lfd f0, 8(r1)
/* 803F3FF4  3C C0 80 64 */	lis r6, lit_437@ha /* 0x80643308@ha */
/* 803F3FF8  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 803F3FFC  39 29 00 08 */	addi r9, r9, 8
/* 803F4000  EC 20 18 28 */	fsubs f1, f0, f3
/* 803F4004  C0 86 33 08 */	lfs f4, lit_437@l(r6)  /* 0x80643308@l */
/* 803F4008  91 01 00 18 */	stw r8, 0x18(r1)
/* 803F400C  EC 44 00 72 */	fmuls f2, f4, f1
/* 803F4010  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 803F4014  90 01 00 3C */	stw r0, 0x3c(r1)
/* 803F4018  EC 20 18 28 */	fsubs f1, f0, f3
/* 803F401C  91 01 00 38 */	stw r8, 0x38(r1)
/* 803F4020  FC 40 10 1E */	fctiwz f2, f2
/* 803F4024  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 803F4028  EC 24 00 72 */	fmuls f1, f4, f1
/* 803F402C  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 803F4030  EC 00 18 28 */	fsubs f0, f0, f3
/* 803F4034  FC 40 08 1E */	fctiwz f2, f1
/* 803F4038  90 81 00 2C */	stw r4, 0x2c(r1)
/* 803F403C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F4040  91 01 00 28 */	stw r8, 0x28(r1)
/* 803F4044  EC 04 00 32 */	fmuls f0, f4, f0
/* 803F4048  54 00 62 26 */	rlwinm r0, r0, 0xc, 8, 0x13
/* 803F404C  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 803F4050  64 05 ED 00 */	oris r5, r0, 0xed00
/* 803F4054  FC 00 00 1E */	fctiwz f0, f0
/* 803F4058  D8 41 00 20 */	stfd f2, 0x20(r1)
/* 803F405C  EC 21 18 28 */	fsubs f1, f1, f3
/* 803F4060  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F4064  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 803F4068  54 04 05 3E */	clrlwi r4, r0, 0x14
/* 803F406C  EC 04 00 72 */	fmuls f0, f4, f1
/* 803F4070  7C A4 23 78 */	or r4, r5, r4
/* 803F4074  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803F4078  90 87 00 00 */	stw r4, 0(r7)
/* 803F407C  FC 00 00 1E */	fctiwz f0, f0
/* 803F4080  54 00 05 3E */	clrlwi r0, r0, 0x14
/* 803F4084  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 803F4088  80 81 00 34 */	lwz r4, 0x34(r1)
/* 803F408C  50 80 62 26 */	rlwimi r0, r4, 0xc, 8, 0x13
/* 803F4090  90 07 00 04 */	stw r0, 4(r7)
/* 803F4094  91 23 00 00 */	stw r9, 0(r3)
/* 803F4098  38 21 00 50 */	addi r1, r1, 0x50
/* 803F409C  4E 80 00 20 */	blr 
