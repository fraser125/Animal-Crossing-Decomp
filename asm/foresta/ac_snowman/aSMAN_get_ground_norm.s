lbl_804A3F14:
/* 804A3F14  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804A3F18  7C 08 02 A6 */	mflr r0
/* 804A3F1C  90 01 00 64 */	stw r0, 0x64(r1)
/* 804A3F20  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 804A3F24  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 804A3F28  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 804A3F2C  93 C1 00 48 */	stw r30, 0x48(r1)
/* 804A3F30  80 C5 00 00 */	lwz r6, 0(r5)
/* 804A3F34  7C 9F 23 78 */	mr r31, r4
/* 804A3F38  80 05 00 04 */	lwz r0, 4(r5)
/* 804A3F3C  7C 7E 1B 78 */	mr r30, r3
/* 804A3F40  7F E3 FB 78 */	mr r3, r31
/* 804A3F44  38 81 00 18 */	addi r4, r1, 0x18
/* 804A3F48  90 C1 00 18 */	stw r6, 0x18(r1)
/* 804A3F4C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804A3F50  80 05 00 08 */	lwz r0, 8(r5)
/* 804A3F54  90 01 00 20 */	stw r0, 0x20(r1)
/* 804A3F58  4B EE BA FD */	bl mCoBG_GetBgNorm_FromWpos
/* 804A3F5C  7F E3 FB 78 */	mr r3, r31
/* 804A3F60  4B F6 49 FD */	bl func_8040895C
/* 804A3F64  3C 60 80 64 */	lis r3, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A3F68  C0 03 5C 8C */	lfs f0, data_80645C8C@l(r3)  /* 0x80645C8C@l */
/* 804A3F6C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804A3F70  41 82 02 F0 */	beq lbl_804A4260
/* 804A3F74  3C 60 80 64 */	lis r3, lit_680@ha /* 0x80645CD8@ha */
/* 804A3F78  3C 80 80 64 */	lis r4, lit_640@ha /* 0x80645CB4@ha */
/* 804A3F7C  C0 23 5C D8 */	lfs f1, lit_680@l(r3)  /* 0x80645CD8@l */
/* 804A3F80  7F C3 F3 78 */	mr r3, r30
/* 804A3F84  C0 1E 01 D0 */	lfs f0, 0x1d0(r30)
/* 804A3F88  38 A1 00 14 */	addi r5, r1, 0x14
/* 804A3F8C  C0 44 5C B4 */	lfs f2, lit_640@l(r4)  /* 0x80645CB4@l */
/* 804A3F90  7F E4 FB 78 */	mr r4, r31
/* 804A3F94  EC 01 00 32 */	fmuls f0, f1, f0
/* 804A3F98  38 C1 00 08 */	addi r6, r1, 8
/* 804A3F9C  38 E1 00 0A */	addi r7, r1, 0xa
/* 804A3FA0  EC 22 00 28 */	fsubs f1, f2, f0
/* 804A3FA4  4B F5 2D 61 */	bl mRlib_Get_ground_norm_inHole
/* 804A3FA8  2C 03 00 00 */	cmpwi r3, 0
/* 804A3FAC  41 82 02 10 */	beq lbl_804A41BC
/* 804A3FB0  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 804A3FB4  7F C3 F3 78 */	mr r3, r30
/* 804A3FB8  4B FF FD E9 */	bl aSMAN_get_hole_offset
/* 804A3FBC  A8 1E 01 F8 */	lha r0, 0x1f8(r30)
/* 804A3FC0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 804A3FC4  40 82 02 94 */	bne lbl_804A4258
/* 804A3FC8  A8 61 00 08 */	lha r3, 8(r1)
/* 804A3FCC  4B F1 6A D1 */	bl cos_s
/* 804A3FD0  FF E0 08 90 */	fmr f31, f1
/* 804A3FD4  A8 61 00 08 */	lha r3, 8(r1)
/* 804A3FD8  4B F1 6B 19 */	bl sin_s
/* 804A3FDC  A8 7E 01 F6 */	lha r3, 0x1f6(r30)
/* 804A3FE0  3C 80 43 30 */	lis r4, 0x4330
/* 804A3FE4  3C C0 80 64 */	lis r6, lit_739@ha /* 0x80645D04@ha */
/* 804A3FE8  A8 1E 01 F2 */	lha r0, 0x1f2(r30)
/* 804A3FEC  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 804A3FF0  90 81 00 28 */	stw r4, 0x28(r1)
/* 804A3FF4  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 804A3FF8  C8 66 5D 04 */	lfd f3, lit_739@l(r6)  /* 0x80645D04@l */
/* 804A3FFC  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 804A4000  38 00 40 00 */	li r0, 0x4000
/* 804A4004  A8 A1 00 0A */	lha r5, 0xa(r1)
/* 804A4008  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 804A400C  90 61 00 34 */	stw r3, 0x34(r1)
/* 804A4010  EC 40 18 28 */	fsubs f2, f0, f3
/* 804A4014  90 81 00 30 */	stw r4, 0x30(r1)
/* 804A4018  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804A401C  EC 42 00 72 */	fmuls f2, f2, f1
/* 804A4020  EC 00 18 28 */	fsubs f0, f0, f3
/* 804A4024  EC 21 00 B2 */	fmuls f1, f1, f2
/* 804A4028  EC 00 07 F2 */	fmuls f0, f0, f31
/* 804A402C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 804A4030  EC 01 00 2A */	fadds f0, f1, f0
/* 804A4034  FC 00 00 1E */	fctiwz f0, f0
/* 804A4038  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 804A403C  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 804A4040  7C 65 1A 14 */	add r3, r5, r3
/* 804A4044  7C 64 07 34 */	extsh r4, r3
/* 804A4048  B0 61 00 0A */	sth r3, 0xa(r1)
/* 804A404C  2C 04 40 00 */	cmpwi r4, 0x4000
/* 804A4050  40 80 00 08 */	bge lbl_804A4058
/* 804A4054  7C 80 23 78 */	mr r0, r4
lbl_804A4058:
/* 804A4058  2C 00 C0 00 */	cmpwi r0, -16384
/* 804A405C  40 81 00 18 */	ble lbl_804A4074
/* 804A4060  2C 04 40 00 */	cmpwi r4, 0x4000
/* 804A4064  38 00 40 00 */	li r0, 0x4000
/* 804A4068  40 80 00 10 */	bge lbl_804A4078
/* 804A406C  7C 80 23 78 */	mr r0, r4
/* 804A4070  48 00 00 08 */	b lbl_804A4078
lbl_804A4074:
/* 804A4074  38 00 C0 00 */	li r0, -16384
lbl_804A4078:
/* 804A4078  B0 01 00 0A */	sth r0, 0xa(r1)
/* 804A407C  3C 60 80 64 */	lis r3, lit_680@ha /* 0x80645CD8@ha */
/* 804A4080  C0 03 5C D8 */	lfs f0, lit_680@l(r3)  /* 0x80645CD8@l */
/* 804A4084  C0 3E 01 D0 */	lfs f1, 0x1d0(r30)
/* 804A4088  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A408C  40 80 00 28 */	bge lbl_804A40B4
/* 804A4090  3C 60 80 64 */	lis r3, lit_735@ha /* 0x80645CF4@ha */
/* 804A4094  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 804A4098  C0 23 5C F4 */	lfs f1, lit_735@l(r3)  /* 0x80645CF4@l */
/* 804A409C  EC 00 00 72 */	fmuls f0, f0, f1
/* 804A40A0  D0 1E 00 68 */	stfs f0, 0x68(r30)
/* 804A40A4  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 804A40A8  EC 00 00 72 */	fmuls f0, f0, f1
/* 804A40AC  D0 1E 00 70 */	stfs f0, 0x70(r30)
/* 804A40B0  48 00 00 3C */	b lbl_804A40EC
lbl_804A40B4:
/* 804A40B4  A8 1E 01 F2 */	lha r0, 0x1f2(r30)
/* 804A40B8  2C 00 00 00 */	cmpwi r0, 0
/* 804A40BC  40 82 00 30 */	bne lbl_804A40EC
/* 804A40C0  A8 1E 01 F6 */	lha r0, 0x1f6(r30)
/* 804A40C4  2C 00 00 00 */	cmpwi r0, 0
/* 804A40C8  40 82 00 24 */	bne lbl_804A40EC
/* 804A40CC  3C 60 80 64 */	lis r3, lit_736@ha /* 0x80645CF8@ha */
/* 804A40D0  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 804A40D4  C0 23 5C F8 */	lfs f1, lit_736@l(r3)  /* 0x80645CF8@l */
/* 804A40D8  EC 00 00 72 */	fmuls f0, f0, f1
/* 804A40DC  D0 1E 00 68 */	stfs f0, 0x68(r30)
/* 804A40E0  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 804A40E4  EC 00 00 72 */	fmuls f0, f0, f1
/* 804A40E8  D0 1E 00 70 */	stfs f0, 0x70(r30)
lbl_804A40EC:
/* 804A40EC  A8 61 00 0A */	lha r3, 0xa(r1)
/* 804A40F0  4B F1 69 AD */	bl cos_s
/* 804A40F4  FC 00 08 50 */	fneg f0, f1
/* 804A40F8  7F E3 FB 78 */	mr r3, r31
/* 804A40FC  38 81 00 10 */	addi r4, r1, 0x10
/* 804A4100  38 A1 00 08 */	addi r5, r1, 8
/* 804A4104  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804A4108  4B F5 24 3D */	bl mRlib_spdF_Angle_to_spdXZ
/* 804A410C  A8 61 00 0A */	lha r3, 0xa(r1)
/* 804A4110  4B F1 69 E1 */	bl sin_s
/* 804A4114  D0 3F 00 04 */	stfs f1, 4(r31)
/* 804A4118  3C 60 80 64 */	lis r3, lit_640@ha /* 0x80645CB4@ha */
/* 804A411C  C0 03 5C B4 */	lfs f0, lit_640@l(r3)  /* 0x80645CB4@l */
/* 804A4120  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 804A4124  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A4128  40 80 01 30 */	bge lbl_804A4258
/* 804A412C  3C 60 80 64 */	lis r3, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A4130  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 804A4134  C0 03 5C 8C */	lfs f0, data_80645C8C@l(r3)  /* 0x80645C8C@l */
/* 804A4138  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A413C  4C 41 13 82 */	cror 2, 1, 2
/* 804A4140  40 82 00 08 */	bne lbl_804A4148
/* 804A4144  48 00 00 08 */	b lbl_804A414C
lbl_804A4148:
/* 804A4148  FC 20 08 50 */	fneg f1, f1
lbl_804A414C:
/* 804A414C  3C 60 80 64 */	lis r3, lit_640@ha /* 0x80645CB4@ha */
/* 804A4150  C0 03 5C B4 */	lfs f0, lit_640@l(r3)  /* 0x80645CB4@l */
/* 804A4154  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A4158  40 80 01 00 */	bge lbl_804A4258
/* 804A415C  3C 60 80 64 */	lis r3, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A4160  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 804A4164  C0 03 5C 8C */	lfs f0, data_80645C8C@l(r3)  /* 0x80645C8C@l */
/* 804A4168  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A416C  4C 41 13 82 */	cror 2, 1, 2
/* 804A4170  40 82 00 08 */	bne lbl_804A4178
/* 804A4174  48 00 00 08 */	b lbl_804A417C
lbl_804A4178:
/* 804A4178  FC 20 08 50 */	fneg f1, f1
lbl_804A417C:
/* 804A417C  3C 60 80 64 */	lis r3, lit_640@ha /* 0x80645CB4@ha */
/* 804A4180  C0 03 5C B4 */	lfs f0, lit_640@l(r3)  /* 0x80645CB4@l */
/* 804A4184  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A4188  40 80 00 D0 */	bge lbl_804A4258
/* 804A418C  A8 9E 01 F8 */	lha r4, 0x1f8(r30)
/* 804A4190  3C 60 80 64 */	lis r3, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A4194  C0 03 5C 8C */	lfs f0, data_80645C8C@l(r3)  /* 0x80645C8C@l */
/* 804A4198  38 00 00 FE */	li r0, 0xfe
/* 804A419C  60 84 00 08 */	ori r4, r4, 8
/* 804A41A0  B0 9E 01 F8 */	sth r4, 0x1f8(r30)
/* 804A41A4  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 804A41A8  54 63 07 34 */	rlwinm r3, r3, 0, 0x1c, 0x1a
/* 804A41AC  90 7E 00 20 */	stw r3, 0x20(r30)
/* 804A41B0  98 1E 00 D6 */	stb r0, 0xd6(r30)
/* 804A41B4  D0 1E 00 74 */	stfs f0, 0x74(r30)
/* 804A41B8  48 00 00 A0 */	b lbl_804A4258
lbl_804A41BC:
/* 804A41BC  7F C3 F3 78 */	mr r3, r30
/* 804A41C0  7F E4 FB 78 */	mr r4, r31
/* 804A41C4  4B F5 25 39 */	bl mRlib_Get_norm_Clif
/* 804A41C8  3C 60 80 64 */	lis r3, lit_681@ha /* 0x80645CDC@ha */
/* 804A41CC  3C 80 80 64 */	lis r4, lit_682@ha /* 0x80645CE4@ha */
/* 804A41D0  38 E3 5C DC */	addi r7, r3, lit_681@l /* 0x80645CDC@l */
/* 804A41D4  3C 60 80 64 */	lis r3, lit_640@ha /* 0x80645CB4@ha */
/* 804A41D8  C8 C7 00 00 */	lfd f6, 0(r7)
/* 804A41DC  38 C4 5C E4 */	addi r6, r4, lit_682@l /* 0x80645CE4@l */
/* 804A41E0  38 A3 5C B4 */	addi r5, r3, lit_640@l /* 0x80645CB4@l */
/* 804A41E4  3C 60 80 64 */	lis r3, lit_737@ha /* 0x80645CFC@ha */
/* 804A41E8  FC 60 30 34 */	frsqrte f3, f6
/* 804A41EC  C8 A7 00 00 */	lfd f5, 0(r7)
/* 804A41F0  38 83 5C FC */	addi r4, r3, lit_737@l /* 0x80645CFC@l */
/* 804A41F4  C8 86 00 00 */	lfd f4, 0(r6)
/* 804A41F8  C0 05 00 00 */	lfs f0, 0(r5)
/* 804A41FC  38 7E 01 BC */	addi r3, r30, 0x1bc
/* 804A4200  FC 23 00 F2 */	fmul f1, f3, f3
/* 804A4204  C0 44 00 00 */	lfs f2, 0(r4)
/* 804A4208  FC 65 00 F2 */	fmul f3, f5, f3
/* 804A420C  FC 26 00 72 */	fmul f1, f6, f1
/* 804A4210  FC 24 08 28 */	fsub f1, f4, f1
/* 804A4214  FC 63 00 72 */	fmul f3, f3, f1
/* 804A4218  FC 23 00 F2 */	fmul f1, f3, f3
/* 804A421C  FC 65 00 F2 */	fmul f3, f5, f3
/* 804A4220  FC 26 00 72 */	fmul f1, f6, f1
/* 804A4224  FC 24 08 28 */	fsub f1, f4, f1
/* 804A4228  FC 63 00 72 */	fmul f3, f3, f1
/* 804A422C  FC 23 00 F2 */	fmul f1, f3, f3
/* 804A4230  FC 65 00 F2 */	fmul f3, f5, f3
/* 804A4234  FC 26 00 72 */	fmul f1, f6, f1
/* 804A4238  FC 24 08 28 */	fsub f1, f4, f1
/* 804A423C  FC 23 00 72 */	fmul f1, f3, f1
/* 804A4240  FC 26 00 72 */	fmul f1, f6, f1
/* 804A4244  FC 20 08 18 */	frsp f1, f1
/* 804A4248  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804A424C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 804A4250  EC 20 08 28 */	fsubs f1, f0, f1
/* 804A4254  4B F1 70 85 */	bl add_calc0
lbl_804A4258:
/* 804A4258  38 60 00 01 */	li r3, 1
/* 804A425C  48 00 00 08 */	b lbl_804A4264
lbl_804A4260:
/* 804A4260  38 60 00 00 */	li r3, 0
lbl_804A4264:
/* 804A4264  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 804A4268  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804A426C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 804A4270  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 804A4274  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 804A4278  7C 08 03 A6 */	mtlr r0
/* 804A427C  38 21 00 60 */	addi r1, r1, 0x60
/* 804A4280  4E 80 00 20 */	blr 
