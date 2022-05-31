lbl_803B76D0:
/* 803B76D0  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 803B76D4  7C 08 02 A6 */	mflr r0
/* 803B76D8  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 803B76DC  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 803B76E0  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 803B76E4  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 803B76E8  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 803B76EC  39 61 00 90 */	addi r11, r1, 0x90
/* 803B76F0  4B CE 37 D9 */	bl func_8009AEC8
/* 803B76F4  FF C0 08 90 */	fmr f30, f1
/* 803B76F8  7C 7B 1B 78 */	mr r27, r3
/* 803B76FC  7C 9C 23 78 */	mr r28, r4
/* 803B7700  7C BD 2B 78 */	mr r29, r5
/* 803B7704  7C DE 33 78 */	mr r30, r6
/* 803B7708  7C FF 3B 78 */	mr r31, r7
/* 803B770C  4B FF EA 8D */	bl func_803B6198
/* 803B7710  FF E0 08 90 */	fmr f31, f1
/* 803B7714  7F 63 DB 78 */	mr r3, r27
/* 803B7718  4B FF FD AD */	bl mEnv_ChangeDiffuseVctlSet
/* 803B771C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B7720  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B7724  3C 63 00 02 */	addis r3, r3, 2
/* 803B7728  88 03 65 22 */	lbz r0, 0x6522(r3)
/* 803B772C  28 00 00 01 */	cmplwi r0, 1
/* 803B7730  40 82 00 AC */	bne lbl_803B77DC
/* 803B7734  3C 60 80 64 */	lis r3, lit_1020@ha /* 0x806424AC@ha */
/* 803B7738  3C 80 80 64 */	lis r4, lit_1021@ha /* 0x806424B4@ha */
/* 803B773C  38 A3 24 AC */	addi r5, r3, lit_1020@l /* 0x806424AC@l */
/* 803B7740  3C 60 80 64 */	lis r3, lit_545@ha /* 0x8064244C@ha */
/* 803B7744  C8 E5 00 00 */	lfd f7, 0(r5)
/* 803B7748  38 E4 24 B4 */	addi r7, r4, lit_1021@l /* 0x806424B4@l */
/* 803B774C  38 C3 24 4C */	addi r6, r3, lit_545@l /* 0x8064244C@l */
/* 803B7750  3C 80 80 64 */	lis r4, lit_778@ha /* 0x80642498@ha */
/* 803B7754  FC 20 38 34 */	frsqrte f1, f7
/* 803B7758  C8 C5 00 00 */	lfd f6, 0(r5)
/* 803B775C  3C 60 80 64 */	lis r3, lit_1022@ha /* 0x806424BC@ha */
/* 803B7760  38 A4 24 98 */	addi r5, r4, lit_778@l /* 0x80642498@l */
/* 803B7764  38 83 24 BC */	addi r4, r3, lit_1022@l /* 0x806424BC@l */
/* 803B7768  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B776C  FC 01 00 72 */	fmul f0, f1, f1
/* 803B7770  38 63 9B A0 */	addi r3, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B7774  C8 A7 00 00 */	lfd f5, 0(r7)
/* 803B7778  38 63 00 2C */	addi r3, r3, 0x2c
/* 803B777C  FC 46 00 72 */	fmul f2, f6, f1
/* 803B7780  C0 26 00 00 */	lfs f1, 0(r6)
/* 803B7784  FC 07 00 32 */	fmul f0, f7, f0
/* 803B7788  C0 65 00 00 */	lfs f3, 0(r5)
/* 803B778C  C0 84 00 00 */	lfs f4, 0(r4)
/* 803B7790  FC 05 00 28 */	fsub f0, f5, f0
/* 803B7794  FC 42 00 32 */	fmul f2, f2, f0
/* 803B7798  FC 02 00 B2 */	fmul f0, f2, f2
/* 803B779C  FC 46 00 B2 */	fmul f2, f6, f2
/* 803B77A0  FC 07 00 32 */	fmul f0, f7, f0
/* 803B77A4  FC 05 00 28 */	fsub f0, f5, f0
/* 803B77A8  FC 42 00 32 */	fmul f2, f2, f0
/* 803B77AC  FC 02 00 B2 */	fmul f0, f2, f2
/* 803B77B0  FC 46 00 B2 */	fmul f2, f6, f2
/* 803B77B4  FC 07 00 32 */	fmul f0, f7, f0
/* 803B77B8  FC 05 00 28 */	fsub f0, f5, f0
/* 803B77BC  FC 02 00 32 */	fmul f0, f2, f0
/* 803B77C0  FC 07 00 32 */	fmul f0, f7, f0
/* 803B77C4  FC 00 00 18 */	frsp f0, f0
/* 803B77C8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 803B77CC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 803B77D0  EC 41 00 28 */	fsubs f2, f1, f0
/* 803B77D4  48 00 39 DD */	bl add_calc
/* 803B77D8  48 00 00 B4 */	b lbl_803B788C
lbl_803B77DC:
/* 803B77DC  3C 60 80 64 */	lis r3, lit_1020@ha /* 0x806424AC@ha */
/* 803B77E0  3C 80 80 64 */	lis r4, lit_1021@ha /* 0x806424B4@ha */
/* 803B77E4  38 E3 24 AC */	addi r7, r3, lit_1020@l /* 0x806424AC@l */
/* 803B77E8  3C 60 80 64 */	lis r3, lit_545@ha /* 0x8064244C@ha */
/* 803B77EC  C9 07 00 00 */	lfd f8, 0(r7)
/* 803B77F0  39 24 24 B4 */	addi r9, r4, lit_1021@l /* 0x806424B4@l */
/* 803B77F4  38 C3 24 4C */	addi r6, r3, lit_545@l /* 0x8064244C@l */
/* 803B77F8  3C A0 80 64 */	lis r5, lit_544@ha /* 0x80642448@ha */
/* 803B77FC  FC 20 40 34 */	frsqrte f1, f8
/* 803B7800  C8 E7 00 00 */	lfd f7, 0(r7)
/* 803B7804  3C 80 80 64 */	lis r4, lit_778@ha /* 0x80642498@ha */
/* 803B7808  3C 60 80 64 */	lis r3, lit_1022@ha /* 0x806424BC@ha */
/* 803B780C  38 E5 24 48 */	addi r7, r5, lit_544@l /* 0x80642448@l */
/* 803B7810  3D 00 81 17 */	lis r8, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B7814  FC 01 00 72 */	fmul f0, f1, f1
/* 803B7818  38 A4 24 98 */	addi r5, r4, lit_778@l /* 0x80642498@l */
/* 803B781C  38 83 24 BC */	addi r4, r3, lit_1022@l /* 0x806424BC@l */
/* 803B7820  38 68 9B A0 */	addi r3, r8, data_81169BA0@l /* 0x81169BA0@l */
/* 803B7824  C8 C9 00 00 */	lfd f6, 0(r9)
/* 803B7828  FC A7 00 72 */	fmul f5, f7, f1
/* 803B782C  FC 48 00 32 */	fmul f2, f8, f0
/* 803B7830  C0 06 00 00 */	lfs f0, 0(r6)
/* 803B7834  C0 27 00 00 */	lfs f1, 0(r7)
/* 803B7838  38 63 00 2C */	addi r3, r3, 0x2c
/* 803B783C  C0 65 00 00 */	lfs f3, 0(r5)
/* 803B7840  C0 84 00 00 */	lfs f4, 0(r4)
/* 803B7844  FC 46 10 28 */	fsub f2, f6, f2
/* 803B7848  FC A5 00 B2 */	fmul f5, f5, f2
/* 803B784C  FC 45 01 72 */	fmul f2, f5, f5
/* 803B7850  FC A7 01 72 */	fmul f5, f7, f5
/* 803B7854  FC 48 00 B2 */	fmul f2, f8, f2
/* 803B7858  FC 46 10 28 */	fsub f2, f6, f2
/* 803B785C  FC A5 00 B2 */	fmul f5, f5, f2
/* 803B7860  FC 45 01 72 */	fmul f2, f5, f5
/* 803B7864  FC A7 01 72 */	fmul f5, f7, f5
/* 803B7868  FC 48 00 B2 */	fmul f2, f8, f2
/* 803B786C  FC 46 10 28 */	fsub f2, f6, f2
/* 803B7870  FC 45 00 B2 */	fmul f2, f5, f2
/* 803B7874  FC 48 00 B2 */	fmul f2, f8, f2
/* 803B7878  FC 40 10 18 */	frsp f2, f2
/* 803B787C  D0 41 00 08 */	stfs f2, 8(r1)
/* 803B7880  C0 41 00 08 */	lfs f2, 8(r1)
/* 803B7884  EC 40 10 28 */	fsubs f2, f0, f2
/* 803B7888  48 00 39 29 */	bl add_calc
lbl_803B788C:
/* 803B788C  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B7890  FC 20 F0 90 */	fmr f1, f30
/* 803B7894  3B 43 9B A0 */	addi r26, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B7898  38 7B 00 06 */	addi r3, r27, 6
/* 803B789C  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 803B78A0  38 9C 00 06 */	addi r4, r28, 6
/* 803B78A4  C0 5A 00 28 */	lfs f2, 0x28(r26)
/* 803B78A8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 803B78AC  38 BD 00 06 */	addi r5, r29, 6
/* 803B78B0  38 DE 00 06 */	addi r6, r30, 6
/* 803B78B4  38 FF 00 06 */	addi r7, r31, 6
/* 803B78B8  EC 42 00 32 */	fmuls f2, f2, f0
/* 803B78BC  4B FF FB 0D */	bl mEnv_ChangeRGBLight
/* 803B78C0  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 803B78C4  FC 20 F0 90 */	fmr f1, f30
/* 803B78C8  C0 5A 00 28 */	lfs f2, 0x28(r26)
/* 803B78CC  38 7B 00 0C */	addi r3, r27, 0xc
/* 803B78D0  EC 00 07 F2 */	fmuls f0, f0, f31
/* 803B78D4  38 9C 00 0C */	addi r4, r28, 0xc
/* 803B78D8  38 BD 00 0C */	addi r5, r29, 0xc
/* 803B78DC  38 DE 00 0C */	addi r6, r30, 0xc
/* 803B78E0  38 FF 00 0C */	addi r7, r31, 0xc
/* 803B78E4  EC 42 00 32 */	fmuls f2, f2, f0
/* 803B78E8  4B FF FA E1 */	bl mEnv_ChangeRGBLight
/* 803B78EC  48 02 F7 C1 */	bl mRmTp_GetNowSceneLightSwitchIndex
/* 803B78F0  2C 03 FF FF */	cmpwi r3, -1
/* 803B78F4  41 82 01 24 */	beq lbl_803B7A18
/* 803B78F8  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B78FC  3C 00 43 30 */	lis r0, 0x4330
/* 803B7900  38 A3 9B A0 */	addi r5, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B7904  3C 80 80 64 */	lis r4, lit_545@ha /* 0x8064244C@ha */
/* 803B7908  C0 64 24 4C */	lfs f3, lit_545@l(r4)  /* 0x8064244C@l */
/* 803B790C  3C 60 80 64 */	lis r3, lit_1033@ha /* 0x806424EC@ha */
/* 803B7910  C0 05 00 9C */	lfs f0, 0x9c(r5)
/* 803B7914  88 9B 00 06 */	lbz r4, 6(r27)
/* 803B7918  EC 40 18 28 */	fsubs f2, f0, f3
/* 803B791C  C0 05 00 00 */	lfs f0, 0(r5)
/* 803B7920  90 81 00 14 */	stw r4, 0x14(r1)
/* 803B7924  C8 23 24 EC */	lfd f1, lit_1033@l(r3)  /* 0x806424EC@l */
/* 803B7928  EC 42 00 32 */	fmuls f2, f2, f0
/* 803B792C  90 01 00 10 */	stw r0, 0x10(r1)
/* 803B7930  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803B7934  EC 43 10 2A */	fadds f2, f3, f2
/* 803B7938  90 01 00 20 */	stw r0, 0x20(r1)
/* 803B793C  EC 00 08 28 */	fsubs f0, f0, f1
/* 803B7940  90 01 00 30 */	stw r0, 0x30(r1)
/* 803B7944  EC 00 00 B2 */	fmuls f0, f0, f2
/* 803B7948  90 01 00 40 */	stw r0, 0x40(r1)
/* 803B794C  90 01 00 50 */	stw r0, 0x50(r1)
/* 803B7950  FC 00 00 1E */	fctiwz f0, f0
/* 803B7954  90 01 00 60 */	stw r0, 0x60(r1)
/* 803B7958  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 803B795C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803B7960  98 1B 00 06 */	stb r0, 6(r27)
/* 803B7964  88 1B 00 07 */	lbz r0, 7(r27)
/* 803B7968  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B796C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 803B7970  EC 00 08 28 */	fsubs f0, f0, f1
/* 803B7974  EC 00 00 B2 */	fmuls f0, f0, f2
/* 803B7978  FC 00 00 1E */	fctiwz f0, f0
/* 803B797C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 803B7980  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 803B7984  98 1B 00 07 */	stb r0, 7(r27)
/* 803B7988  88 1B 00 08 */	lbz r0, 8(r27)
/* 803B798C  90 01 00 34 */	stw r0, 0x34(r1)
/* 803B7990  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 803B7994  EC 00 08 28 */	fsubs f0, f0, f1
/* 803B7998  EC 00 00 B2 */	fmuls f0, f0, f2
/* 803B799C  FC 00 00 1E */	fctiwz f0, f0
/* 803B79A0  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 803B79A4  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 803B79A8  98 1B 00 08 */	stb r0, 8(r27)
/* 803B79AC  88 1B 00 0C */	lbz r0, 0xc(r27)
/* 803B79B0  90 01 00 44 */	stw r0, 0x44(r1)
/* 803B79B4  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 803B79B8  EC 00 08 28 */	fsubs f0, f0, f1
/* 803B79BC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 803B79C0  FC 00 00 1E */	fctiwz f0, f0
/* 803B79C4  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 803B79C8  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 803B79CC  98 1B 00 0C */	stb r0, 0xc(r27)
/* 803B79D0  88 1B 00 0D */	lbz r0, 0xd(r27)
/* 803B79D4  90 01 00 54 */	stw r0, 0x54(r1)
/* 803B79D8  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 803B79DC  EC 00 08 28 */	fsubs f0, f0, f1
/* 803B79E0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 803B79E4  FC 00 00 1E */	fctiwz f0, f0
/* 803B79E8  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 803B79EC  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 803B79F0  98 1B 00 0D */	stb r0, 0xd(r27)
/* 803B79F4  88 1B 00 0E */	lbz r0, 0xe(r27)
/* 803B79F8  90 01 00 64 */	stw r0, 0x64(r1)
/* 803B79FC  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 803B7A00  EC 00 08 28 */	fsubs f0, f0, f1
/* 803B7A04  EC 00 00 B2 */	fmuls f0, f0, f2
/* 803B7A08  FC 00 00 1E */	fctiwz f0, f0
/* 803B7A0C  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 803B7A10  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 803B7A14  98 1B 00 0E */	stb r0, 0xe(r27)
lbl_803B7A18:
/* 803B7A18  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 803B7A1C  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 803B7A20  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 803B7A24  39 61 00 90 */	addi r11, r1, 0x90
/* 803B7A28  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 803B7A2C  4B CE 34 E9 */	bl func_8009AF14
/* 803B7A30  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 803B7A34  7C 08 03 A6 */	mtlr r0
/* 803B7A38  38 21 00 B0 */	addi r1, r1, 0xb0
/* 803B7A3C  4E 80 00 20 */	blr 
