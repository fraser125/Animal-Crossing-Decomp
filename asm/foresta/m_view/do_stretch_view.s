lbl_803F41E4:
/* 803F41E4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 803F41E8  7C 08 02 A6 */	mflr r0
/* 803F41EC  90 01 00 84 */	stw r0, 0x84(r1)
/* 803F41F0  39 61 00 80 */	addi r11, r1, 0x80
/* 803F41F4  4B CA 6C D9 */	bl func_8009AECC
/* 803F41F8  3C A0 80 64 */	lis r5, lit_385@ha /* 0x806432FC@ha */
/* 803F41FC  C0 43 00 F8 */	lfs f2, 0xf8(r3)
/* 803F4200  C0 25 32 FC */	lfs f1, lit_385@l(r5)  /* 0x806432FC@l */
/* 803F4204  7C 7B 1B 78 */	mr r27, r3
/* 803F4208  7C 9C 23 78 */	mr r28, r4
/* 803F420C  FC 01 10 00 */	fcmpu cr0, f1, f2
/* 803F4210  40 82 00 0C */	bne lbl_803F421C
/* 803F4214  38 60 00 00 */	li r3, 0
/* 803F4218  48 00 01 BC */	b lbl_803F43D4
lbl_803F421C:
/* 803F421C  3C 60 80 64 */	lis r3, lit_384@ha /* 0x806432F8@ha */
/* 803F4220  C0 03 32 F8 */	lfs f0, lit_384@l(r3)  /* 0x806432F8@l */
/* 803F4224  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 803F4228  40 82 00 3C */	bne lbl_803F4264
/* 803F422C  80 7B 00 E0 */	lwz r3, 0xe0(r27)
/* 803F4230  80 1B 00 E4 */	lwz r0, 0xe4(r27)
/* 803F4234  90 7B 00 FC */	stw r3, 0xfc(r27)
/* 803F4238  90 1B 01 00 */	stw r0, 0x100(r27)
/* 803F423C  80 1B 00 E8 */	lwz r0, 0xe8(r27)
/* 803F4240  90 1B 01 04 */	stw r0, 0x104(r27)
/* 803F4244  80 7B 00 EC */	lwz r3, 0xec(r27)
/* 803F4248  80 1B 00 F0 */	lwz r0, 0xf0(r27)
/* 803F424C  90 7B 01 08 */	stw r3, 0x108(r27)
/* 803F4250  90 1B 01 0C */	stw r0, 0x10c(r27)
/* 803F4254  80 1B 00 F4 */	lwz r0, 0xf4(r27)
/* 803F4258  90 1B 01 10 */	stw r0, 0x110(r27)
/* 803F425C  D0 3B 00 F8 */	stfs f1, 0xf8(r27)
/* 803F4260  48 00 00 A8 */	b lbl_803F4308
lbl_803F4264:
/* 803F4264  C0 3B 00 FC */	lfs f1, 0xfc(r27)
/* 803F4268  C0 1B 00 E0 */	lfs f0, 0xe0(r27)
/* 803F426C  EC 00 08 28 */	fsubs f0, f0, f1
/* 803F4270  EC 02 00 32 */	fmuls f0, f2, f0
/* 803F4274  EC 01 00 2A */	fadds f0, f1, f0
/* 803F4278  D0 1B 00 FC */	stfs f0, 0xfc(r27)
/* 803F427C  C0 5B 01 00 */	lfs f2, 0x100(r27)
/* 803F4280  C0 1B 00 E4 */	lfs f0, 0xe4(r27)
/* 803F4284  C0 3B 00 F8 */	lfs f1, 0xf8(r27)
/* 803F4288  EC 00 10 28 */	fsubs f0, f0, f2
/* 803F428C  EC 01 00 32 */	fmuls f0, f1, f0
/* 803F4290  EC 02 00 2A */	fadds f0, f2, f0
/* 803F4294  D0 1B 01 00 */	stfs f0, 0x100(r27)
/* 803F4298  C0 5B 01 04 */	lfs f2, 0x104(r27)
/* 803F429C  C0 1B 00 E8 */	lfs f0, 0xe8(r27)
/* 803F42A0  C0 3B 00 F8 */	lfs f1, 0xf8(r27)
/* 803F42A4  EC 00 10 28 */	fsubs f0, f0, f2
/* 803F42A8  EC 01 00 32 */	fmuls f0, f1, f0
/* 803F42AC  EC 02 00 2A */	fadds f0, f2, f0
/* 803F42B0  D0 1B 01 04 */	stfs f0, 0x104(r27)
/* 803F42B4  C0 5B 01 08 */	lfs f2, 0x108(r27)
/* 803F42B8  C0 1B 00 EC */	lfs f0, 0xec(r27)
/* 803F42BC  C0 3B 00 F8 */	lfs f1, 0xf8(r27)
/* 803F42C0  EC 00 10 28 */	fsubs f0, f0, f2
/* 803F42C4  EC 01 00 32 */	fmuls f0, f1, f0
/* 803F42C8  EC 02 00 2A */	fadds f0, f2, f0
/* 803F42CC  D0 1B 01 08 */	stfs f0, 0x108(r27)
/* 803F42D0  C0 5B 01 0C */	lfs f2, 0x10c(r27)
/* 803F42D4  C0 1B 00 F0 */	lfs f0, 0xf0(r27)
/* 803F42D8  C0 3B 00 F8 */	lfs f1, 0xf8(r27)
/* 803F42DC  EC 00 10 28 */	fsubs f0, f0, f2
/* 803F42E0  EC 01 00 32 */	fmuls f0, f1, f0
/* 803F42E4  EC 02 00 2A */	fadds f0, f2, f0
/* 803F42E8  D0 1B 01 0C */	stfs f0, 0x10c(r27)
/* 803F42EC  C0 5B 01 10 */	lfs f2, 0x110(r27)
/* 803F42F0  C0 1B 00 F4 */	lfs f0, 0xf4(r27)
/* 803F42F4  C0 3B 00 F8 */	lfs f1, 0xf8(r27)
/* 803F42F8  EC 00 10 28 */	fsubs f0, f0, f2
/* 803F42FC  EC 01 00 32 */	fmuls f0, f1, f0
/* 803F4300  EC 02 00 2A */	fadds f0, f2, f0
/* 803F4304  D0 1B 01 10 */	stfs f0, 0x110(r27)
lbl_803F4308:
/* 803F4308  3C 60 80 64 */	lis r3, lit_490@ha /* 0x80643314@ha */
/* 803F430C  C0 5B 00 FC */	lfs f2, 0xfc(r27)
/* 803F4310  C0 63 33 14 */	lfs f3, lit_490@l(r3)  /* 0x80643314@l */
/* 803F4314  7F 83 E3 78 */	mr r3, r28
/* 803F4318  C0 3B 01 00 */	lfs f1, 0x100(r27)
/* 803F431C  38 81 00 08 */	addi r4, r1, 8
/* 803F4320  C0 1B 01 04 */	lfs f0, 0x104(r27)
/* 803F4324  EC 43 00 B2 */	fmuls f2, f3, f2
/* 803F4328  EC 23 00 72 */	fmuls f1, f3, f1
/* 803F432C  EC 03 00 32 */	fmuls f0, f3, f0
/* 803F4330  FC 40 10 1E */	fctiwz f2, f2
/* 803F4334  FC 20 08 1E */	fctiwz f1, f1
/* 803F4338  FC 00 00 1E */	fctiwz f0, f0
/* 803F433C  D8 41 00 48 */	stfd f2, 0x48(r1)
/* 803F4340  D8 21 00 50 */	stfd f1, 0x50(r1)
/* 803F4344  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 803F4348  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 803F434C  83 C1 00 54 */	lwz r30, 0x54(r1)
/* 803F4350  83 A1 00 5C */	lwz r29, 0x5c(r1)
/* 803F4354  48 01 92 AD */	bl Matrix_MtxtoMtxF
/* 803F4358  38 61 00 08 */	addi r3, r1, 8
/* 803F435C  48 01 7E FD */	bl Matrix_put
/* 803F4360  7F E3 FB 78 */	mr r3, r31
/* 803F4364  38 80 00 01 */	li r4, 1
/* 803F4368  48 01 81 51 */	bl Matrix_RotateX
/* 803F436C  7F C3 F3 78 */	mr r3, r30
/* 803F4370  38 80 00 01 */	li r4, 1
/* 803F4374  48 01 82 E9 */	bl Matrix_RotateY
/* 803F4378  7F A3 EB 78 */	mr r3, r29
/* 803F437C  38 80 00 01 */	li r4, 1
/* 803F4380  48 01 84 71 */	bl Matrix_RotateZ
/* 803F4384  C0 3B 01 08 */	lfs f1, 0x108(r27)
/* 803F4388  38 60 00 01 */	li r3, 1
/* 803F438C  C0 5B 01 0C */	lfs f2, 0x10c(r27)
/* 803F4390  C0 7B 01 10 */	lfs f3, 0x110(r27)
/* 803F4394  48 01 80 59 */	bl Matrix_scale
/* 803F4398  7C 1D 00 D0 */	neg r0, r29
/* 803F439C  38 80 00 01 */	li r4, 1
/* 803F43A0  7C 03 07 34 */	extsh r3, r0
/* 803F43A4  48 01 84 4D */	bl Matrix_RotateZ
/* 803F43A8  7C 1E 00 D0 */	neg r0, r30
/* 803F43AC  38 80 00 01 */	li r4, 1
/* 803F43B0  7C 03 07 34 */	extsh r3, r0
/* 803F43B4  48 01 82 A9 */	bl Matrix_RotateY
/* 803F43B8  7C 1F 00 D0 */	neg r0, r31
/* 803F43BC  38 80 00 01 */	li r4, 1
/* 803F43C0  7C 03 07 34 */	extsh r3, r0
/* 803F43C4  48 01 80 F5 */	bl Matrix_RotateX
/* 803F43C8  7F 83 E3 78 */	mr r3, r28
/* 803F43CC  48 01 8F D9 */	bl _Matrix_to_Mtx
/* 803F43D0  38 60 00 01 */	li r3, 1
lbl_803F43D4:
/* 803F43D4  39 61 00 80 */	addi r11, r1, 0x80
/* 803F43D8  4B CA 6B 41 */	bl func_8009AF18
/* 803F43DC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 803F43E0  7C 08 03 A6 */	mtlr r0
/* 803F43E4  38 21 00 80 */	addi r1, r1, 0x80
/* 803F43E8  4E 80 00 20 */	blr 
