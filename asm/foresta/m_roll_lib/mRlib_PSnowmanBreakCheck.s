lbl_803F6F34:
/* 803F6F34  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803F6F38  7C 08 02 A6 */	mflr r0
/* 803F6F3C  90 01 00 64 */	stw r0, 0x64(r1)
/* 803F6F40  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 803F6F44  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 803F6F48  39 61 00 50 */	addi r11, r1, 0x50
/* 803F6F4C  4B CA 3F 89 */	bl func_8009AED4
/* 803F6F50  7C 7D 1B 78 */	mr r29, r3
/* 803F6F54  7C BF 2B 78 */	mr r31, r5
/* 803F6F58  7C 83 23 78 */	mr r3, r4
/* 803F6F5C  4B FE 26 E5 */	bl get_player_actor_withoutCheck
/* 803F6F60  C3 FD 00 2C */	lfs f31, 0x2c(r29)
/* 803F6F64  3C 80 80 64 */	lis r4, data_806433EC@ha /* 0x806433EC@ha */
/* 803F6F68  80 BD 00 28 */	lwz r5, 0x28(r29)
/* 803F6F6C  7C 7E 1B 78 */	mr r30, r3
/* 803F6F70  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 803F6F74  38 61 00 14 */	addi r3, r1, 0x14
/* 803F6F78  C0 24 33 EC */	lfs f1, data_806433EC@l(r4)  /* 0x806433EC@l */
/* 803F6F7C  90 A1 00 14 */	stw r5, 0x14(r1)
/* 803F6F80  90 01 00 18 */	stw r0, 0x18(r1)
/* 803F6F84  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 803F6F88  90 01 00 1C */	stw r0, 0x1c(r1)
/* 803F6F8C  4B F9 8A 0D */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 803F6F90  D0 3D 00 2C */	stfs f1, 0x2c(r29)
/* 803F6F94  38 7D 00 28 */	addi r3, r29, 0x28
/* 803F6F98  38 9E 00 28 */	addi r4, r30, 0x28
/* 803F6F9C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 803F6FA0  4B FC 3F D9 */	bl xyz_t_sub
/* 803F6FA4  D3 FD 00 2C */	stfs f31, 0x2c(r29)
/* 803F6FA8  38 61 00 2C */	addi r3, r1, 0x2c
/* 803F6FAC  4B FF FE E9 */	bl mRlib_PSnowmanTouchCheck
/* 803F6FB0  2C 03 00 00 */	cmpwi r3, 0
/* 803F6FB4  41 82 01 B4 */	beq lbl_803F7168
/* 803F6FB8  38 61 00 2C */	addi r3, r1, 0x2c
/* 803F6FBC  48 01 19 A1 */	bl func_8040895C
/* 803F6FC0  3C 60 80 64 */	lis r3, data_806433EC@ha /* 0x806433EC@ha */
/* 803F6FC4  C0 83 33 EC */	lfs f4, data_806433EC@l(r3)  /* 0x806433EC@l */
/* 803F6FC8  FC 01 20 00 */	fcmpu cr0, f1, f4
/* 803F6FCC  41 82 01 08 */	beq lbl_803F70D4
/* 803F6FD0  80 7E 00 68 */	lwz r3, 0x68(r30)
/* 803F6FD4  80 1E 00 70 */	lwz r0, 0x70(r30)
/* 803F6FD8  90 61 00 20 */	stw r3, 0x20(r1)
/* 803F6FDC  80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 803F6FE0  90 01 00 28 */	stw r0, 0x28(r1)
/* 803F6FE4  C0 61 00 2C */	lfs f3, 0x2c(r1)
/* 803F6FE8  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 803F6FEC  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 803F6FF0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 803F6FF4  EC 43 00 B2 */	fmuls f2, f3, f2
/* 803F6FF8  90 61 00 24 */	stw r3, 0x24(r1)
/* 803F6FFC  EC 01 00 32 */	fmuls f0, f1, f0
/* 803F7000  EC 42 00 2A */	fadds f2, f2, f0
/* 803F7004  FC 02 20 40 */	fcmpo cr0, f2, f4
/* 803F7008  40 81 00 20 */	ble lbl_803F7028
/* 803F700C  3C 60 80 64 */	lis r3, lit_408@ha /* 0x80643404@ha */
/* 803F7010  C0 3F 00 00 */	lfs f1, 0(r31)
/* 803F7014  C0 03 34 04 */	lfs f0, lit_408@l(r3)  /* 0x80643404@l */
/* 803F7018  EC 00 00 B2 */	fmuls f0, f0, f2
/* 803F701C  EC 01 00 2A */	fadds f0, f1, f0
/* 803F7020  D0 1F 00 00 */	stfs f0, 0(r31)
/* 803F7024  48 00 00 94 */	b lbl_803F70B8
lbl_803F7028:
/* 803F7028  3C 60 80 64 */	lis r3, lit_597@ha /* 0x80643424@ha */
/* 803F702C  3C 80 80 64 */	lis r4, lit_384@ha /* 0x806433F4@ha */
/* 803F7030  38 A3 34 24 */	addi r5, r3, lit_597@l /* 0x80643424@l */
/* 803F7034  C8 A4 33 F4 */	lfd f5, lit_384@l(r4)  /* 0x806433F4@l */
/* 803F7038  C8 C5 00 00 */	lfd f6, 0(r5)
/* 803F703C  3C 60 80 64 */	lis r3, lit_385@ha /* 0x806433FC@ha */
/* 803F7040  38 A3 33 FC */	addi r5, r3, lit_385@l /* 0x806433FC@l */
/* 803F7044  FC 60 30 34 */	frsqrte f3, f6
/* 803F7048  3C 60 80 64 */	lis r3, lit_598@ha /* 0x8064342C@ha */
/* 803F704C  38 83 34 2C */	addi r4, r3, lit_598@l /* 0x8064342C@l */
/* 803F7050  C8 85 00 00 */	lfd f4, 0(r5)
/* 803F7054  3C 60 80 64 */	lis r3, lit_599@ha /* 0x80643430@ha */
/* 803F7058  C0 04 00 00 */	lfs f0, 0(r4)
/* 803F705C  FC 23 00 F2 */	fmul f1, f3, f3
/* 803F7060  C0 43 34 30 */	lfs f2, lit_599@l(r3)  /* 0x80643430@l */
/* 803F7064  7F E3 FB 78 */	mr r3, r31
/* 803F7068  FC 65 00 F2 */	fmul f3, f5, f3
/* 803F706C  FC 26 00 72 */	fmul f1, f6, f1
/* 803F7070  FC 24 08 28 */	fsub f1, f4, f1
/* 803F7074  FC 63 00 72 */	fmul f3, f3, f1
/* 803F7078  FC 23 00 F2 */	fmul f1, f3, f3
/* 803F707C  FC 65 00 F2 */	fmul f3, f5, f3
/* 803F7080  FC 26 00 72 */	fmul f1, f6, f1
/* 803F7084  FC 24 08 28 */	fsub f1, f4, f1
/* 803F7088  FC 63 00 72 */	fmul f3, f3, f1
/* 803F708C  FC 23 00 F2 */	fmul f1, f3, f3
/* 803F7090  FC 65 00 F2 */	fmul f3, f5, f3
/* 803F7094  FC 26 00 72 */	fmul f1, f6, f1
/* 803F7098  FC 24 08 28 */	fsub f1, f4, f1
/* 803F709C  FC 23 00 72 */	fmul f1, f3, f1
/* 803F70A0  FC 26 00 72 */	fmul f1, f6, f1
/* 803F70A4  FC 20 08 18 */	frsp f1, f1
/* 803F70A8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 803F70AC  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 803F70B0  EC 20 08 28 */	fsubs f1, f0, f1
/* 803F70B4  4B FC 42 25 */	bl add_calc0
lbl_803F70B8:
/* 803F70B8  3C 60 80 64 */	lis r3, lit_600@ha /* 0x80643434@ha */
/* 803F70BC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 803F70C0  C0 03 34 34 */	lfs f0, lit_600@l(r3)  /* 0x80643434@l */
/* 803F70C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803F70C8  40 81 01 30 */	ble lbl_803F71F8
/* 803F70CC  38 60 00 01 */	li r3, 1
/* 803F70D0  48 00 01 2C */	b lbl_803F71FC
lbl_803F70D4:
/* 803F70D4  3C 60 80 64 */	lis r3, lit_597@ha /* 0x80643424@ha */
/* 803F70D8  3C 80 80 64 */	lis r4, lit_384@ha /* 0x806433F4@ha */
/* 803F70DC  38 A3 34 24 */	addi r5, r3, lit_597@l /* 0x80643424@l */
/* 803F70E0  C8 A4 33 F4 */	lfd f5, lit_384@l(r4)  /* 0x806433F4@l */
/* 803F70E4  C8 C5 00 00 */	lfd f6, 0(r5)
/* 803F70E8  3C 60 80 64 */	lis r3, lit_385@ha /* 0x806433FC@ha */
/* 803F70EC  38 A3 33 FC */	addi r5, r3, lit_385@l /* 0x806433FC@l */
/* 803F70F0  FC 60 30 34 */	frsqrte f3, f6
/* 803F70F4  3C 60 80 64 */	lis r3, lit_598@ha /* 0x8064342C@ha */
/* 803F70F8  38 83 34 2C */	addi r4, r3, lit_598@l /* 0x8064342C@l */
/* 803F70FC  C8 85 00 00 */	lfd f4, 0(r5)
/* 803F7100  3C 60 80 64 */	lis r3, lit_599@ha /* 0x80643430@ha */
/* 803F7104  C0 04 00 00 */	lfs f0, 0(r4)
/* 803F7108  FC 23 00 F2 */	fmul f1, f3, f3
/* 803F710C  C0 43 34 30 */	lfs f2, lit_599@l(r3)  /* 0x80643430@l */
/* 803F7110  7F E3 FB 78 */	mr r3, r31
/* 803F7114  FC 65 00 F2 */	fmul f3, f5, f3
/* 803F7118  FC 26 00 72 */	fmul f1, f6, f1
/* 803F711C  FC 24 08 28 */	fsub f1, f4, f1
/* 803F7120  FC 63 00 72 */	fmul f3, f3, f1
/* 803F7124  FC 23 00 F2 */	fmul f1, f3, f3
/* 803F7128  FC 65 00 F2 */	fmul f3, f5, f3
/* 803F712C  FC 26 00 72 */	fmul f1, f6, f1
/* 803F7130  FC 24 08 28 */	fsub f1, f4, f1
/* 803F7134  FC 63 00 72 */	fmul f3, f3, f1
/* 803F7138  FC 23 00 F2 */	fmul f1, f3, f3
/* 803F713C  FC 65 00 F2 */	fmul f3, f5, f3
/* 803F7140  FC 26 00 72 */	fmul f1, f6, f1
/* 803F7144  FC 24 08 28 */	fsub f1, f4, f1
/* 803F7148  FC 23 00 72 */	fmul f1, f3, f1
/* 803F714C  FC 26 00 72 */	fmul f1, f6, f1
/* 803F7150  FC 20 08 18 */	frsp f1, f1
/* 803F7154  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 803F7158  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 803F715C  EC 20 08 28 */	fsubs f1, f0, f1
/* 803F7160  4B FC 41 79 */	bl add_calc0
/* 803F7164  48 00 00 94 */	b lbl_803F71F8
lbl_803F7168:
/* 803F7168  3C 60 80 64 */	lis r3, lit_597@ha /* 0x80643424@ha */
/* 803F716C  3C 80 80 64 */	lis r4, lit_384@ha /* 0x806433F4@ha */
/* 803F7170  38 A3 34 24 */	addi r5, r3, lit_597@l /* 0x80643424@l */
/* 803F7174  C8 A4 33 F4 */	lfd f5, lit_384@l(r4)  /* 0x806433F4@l */
/* 803F7178  C8 C5 00 00 */	lfd f6, 0(r5)
/* 803F717C  3C 60 80 64 */	lis r3, lit_385@ha /* 0x806433FC@ha */
/* 803F7180  38 A3 33 FC */	addi r5, r3, lit_385@l /* 0x806433FC@l */
/* 803F7184  FC 60 30 34 */	frsqrte f3, f6
/* 803F7188  3C 60 80 64 */	lis r3, lit_598@ha /* 0x8064342C@ha */
/* 803F718C  38 83 34 2C */	addi r4, r3, lit_598@l /* 0x8064342C@l */
/* 803F7190  C8 85 00 00 */	lfd f4, 0(r5)
/* 803F7194  3C 60 80 64 */	lis r3, lit_599@ha /* 0x80643430@ha */
/* 803F7198  C0 04 00 00 */	lfs f0, 0(r4)
/* 803F719C  FC 23 00 F2 */	fmul f1, f3, f3
/* 803F71A0  C0 43 34 30 */	lfs f2, lit_599@l(r3)  /* 0x80643430@l */
/* 803F71A4  7F E3 FB 78 */	mr r3, r31
/* 803F71A8  FC 65 00 F2 */	fmul f3, f5, f3
/* 803F71AC  FC 26 00 72 */	fmul f1, f6, f1
/* 803F71B0  FC 24 08 28 */	fsub f1, f4, f1
/* 803F71B4  FC 63 00 72 */	fmul f3, f3, f1
/* 803F71B8  FC 23 00 F2 */	fmul f1, f3, f3
/* 803F71BC  FC 65 00 F2 */	fmul f3, f5, f3
/* 803F71C0  FC 26 00 72 */	fmul f1, f6, f1
/* 803F71C4  FC 24 08 28 */	fsub f1, f4, f1
/* 803F71C8  FC 63 00 72 */	fmul f3, f3, f1
/* 803F71CC  FC 23 00 F2 */	fmul f1, f3, f3
/* 803F71D0  FC 65 00 F2 */	fmul f3, f5, f3
/* 803F71D4  FC 26 00 72 */	fmul f1, f6, f1
/* 803F71D8  FC 24 08 28 */	fsub f1, f4, f1
/* 803F71DC  FC 23 00 72 */	fmul f1, f3, f1
/* 803F71E0  FC 26 00 72 */	fmul f1, f6, f1
/* 803F71E4  FC 20 08 18 */	frsp f1, f1
/* 803F71E8  D0 21 00 08 */	stfs f1, 8(r1)
/* 803F71EC  C0 21 00 08 */	lfs f1, 8(r1)
/* 803F71F0  EC 20 08 28 */	fsubs f1, f0, f1
/* 803F71F4  4B FC 40 E5 */	bl add_calc0
lbl_803F71F8:
/* 803F71F8  38 60 00 00 */	li r3, 0
lbl_803F71FC:
/* 803F71FC  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 803F7200  39 61 00 50 */	addi r11, r1, 0x50
/* 803F7204  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 803F7208  4B CA 3D 19 */	bl func_8009AF20
/* 803F720C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803F7210  7C 08 03 A6 */	mtlr r0
/* 803F7214  38 21 00 60 */	addi r1, r1, 0x60
/* 803F7218  4E 80 00 20 */	blr 
