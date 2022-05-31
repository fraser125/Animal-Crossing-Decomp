lbl_804A7254:
/* 804A7254  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804A7258  7C 08 02 A6 */	mflr r0
/* 804A725C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804A7260  38 81 00 0C */	addi r4, r1, 0xc
/* 804A7264  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804A7268  7C 7F 1B 78 */	mr r31, r3
/* 804A726C  38 61 00 18 */	addi r3, r1, 0x18
/* 804A7270  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 804A7274  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804A7278  90 A1 00 0C */	stw r5, 0xc(r1)
/* 804A727C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804A7280  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804A7284  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A7288  4B EF E2 B5 */	bl mFI_Wpos2UtCenterWpos
/* 804A728C  38 7F 00 28 */	addi r3, r31, 0x28
/* 804A7290  38 81 00 18 */	addi r4, r1, 0x18
/* 804A7294  38 BF 01 98 */	addi r5, r31, 0x198
/* 804A7298  4B F1 3C E1 */	bl xyz_t_sub
/* 804A729C  3C 80 80 64 */	lis r4, lit_1432@ha /* 0x80645DAC@ha */
/* 804A72A0  38 7F 01 98 */	addi r3, r31, 0x198
/* 804A72A4  C0 24 5D AC */	lfs f1, lit_1432@l(r4)  /* 0x80645DAC@l */
/* 804A72A8  4B F1 3D 05 */	bl xyz_t_mult_v
/* 804A72AC  C0 BF 01 98 */	lfs f5, 0x198(r31)
/* 804A72B0  3C 60 80 64 */	lis r3, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A72B4  C0 DF 01 A0 */	lfs f6, 0x1a0(r31)
/* 804A72B8  EC 45 01 72 */	fmuls f2, f5, f5
/* 804A72BC  C0 03 5C 8C */	lfs f0, data_80645C8C@l(r3)  /* 0x80645C8C@l */
/* 804A72C0  EC 26 01 B2 */	fmuls f1, f6, f6
/* 804A72C4  EC 82 08 2A */	fadds f4, f2, f1
/* 804A72C8  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 804A72CC  40 81 00 68 */	ble lbl_804A7334
/* 804A72D0  FC 20 20 34 */	frsqrte f1, f4
/* 804A72D4  3C 60 80 64 */	lis r3, lit_681@ha /* 0x80645CDC@ha */
/* 804A72D8  38 83 5C DC */	addi r4, r3, lit_681@l /* 0x80645CDC@l */
/* 804A72DC  3C 60 80 64 */	lis r3, lit_682@ha /* 0x80645CE4@ha */
/* 804A72E0  C8 64 00 00 */	lfd f3, 0(r4)
/* 804A72E4  FC 01 00 72 */	fmul f0, f1, f1
/* 804A72E8  C8 43 5C E4 */	lfd f2, lit_682@l(r3)  /* 0x80645CE4@l */
/* 804A72EC  FC 23 00 72 */	fmul f1, f3, f1
/* 804A72F0  FC 04 00 32 */	fmul f0, f4, f0
/* 804A72F4  FC 02 00 28 */	fsub f0, f2, f0
/* 804A72F8  FC 21 00 32 */	fmul f1, f1, f0
/* 804A72FC  FC 01 00 72 */	fmul f0, f1, f1
/* 804A7300  FC 23 00 72 */	fmul f1, f3, f1
/* 804A7304  FC 04 00 32 */	fmul f0, f4, f0
/* 804A7308  FC 02 00 28 */	fsub f0, f2, f0
/* 804A730C  FC 21 00 32 */	fmul f1, f1, f0
/* 804A7310  FC 01 00 72 */	fmul f0, f1, f1
/* 804A7314  FC 23 00 72 */	fmul f1, f3, f1
/* 804A7318  FC 04 00 32 */	fmul f0, f4, f0
/* 804A731C  FC 02 00 28 */	fsub f0, f2, f0
/* 804A7320  FC 01 00 32 */	fmul f0, f1, f0
/* 804A7324  FC 04 00 32 */	fmul f0, f4, f0
/* 804A7328  FC 00 00 18 */	frsp f0, f0
/* 804A732C  D0 01 00 08 */	stfs f0, 8(r1)
/* 804A7330  C0 81 00 08 */	lfs f4, 8(r1)
lbl_804A7334:
/* 804A7334  FC 20 30 50 */	fneg f1, f6
/* 804A7338  D0 9F 01 CC */	stfs f4, 0x1cc(r31)
/* 804A733C  FC 40 28 50 */	fneg f2, f5
/* 804A7340  4B F6 4C C1 */	bl atans_table
/* 804A7344  B0 7F 00 36 */	sth r3, 0x36(r31)
/* 804A7348  3C 80 80 64 */	lis r4, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A734C  38 00 00 00 */	li r0, 0
/* 804A7350  C0 04 5C 8C */	lfs f0, data_80645C8C@l(r4)  /* 0x80645C8C@l */
/* 804A7354  B0 1F 01 FA */	sth r0, 0x1fa(r31)
/* 804A7358  3C 60 80 4A */	lis r3, aSMAN_process_combine_body@ha /* 0x804A7384@ha */
/* 804A735C  38 03 73 84 */	addi r0, r3, aSMAN_process_combine_body@l /* 0x804A7384@l */
/* 804A7360  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 804A7364  D0 1F 01 C8 */	stfs f0, 0x1c8(r31)
/* 804A7368  D0 1F 01 C4 */	stfs f0, 0x1c4(r31)
/* 804A736C  90 1F 01 90 */	stw r0, 0x190(r31)
/* 804A7370  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804A7374  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804A7378  7C 08 03 A6 */	mtlr r0
/* 804A737C  38 21 00 30 */	addi r1, r1, 0x30
/* 804A7380  4E 80 00 20 */	blr 
