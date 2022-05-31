lbl_803F734C:
/* 803F734C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803F7350  7C 08 02 A6 */	mflr r0
/* 803F7354  90 01 00 44 */	stw r0, 0x44(r1)
/* 803F7358  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 803F735C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 803F7360  39 61 00 30 */	addi r11, r1, 0x30
/* 803F7364  4B CA 3B 6D */	bl func_8009AED0
/* 803F7368  7C 7C 1B 78 */	mr r28, r3
/* 803F736C  7C 9D 23 78 */	mr r29, r4
/* 803F7370  7C BE 2B 78 */	mr r30, r5
/* 803F7374  7C DF 33 78 */	mr r31, r6
/* 803F7378  7F 84 E3 78 */	mr r4, r28
/* 803F737C  38 60 00 07 */	li r3, 7
/* 803F7380  4B FA 2E E5 */	bl mDemo_Check
/* 803F7384  2C 03 00 00 */	cmpwi r3, 0
/* 803F7388  40 82 00 70 */	bne lbl_803F73F8
/* 803F738C  7F 83 E3 78 */	mr r3, r28
/* 803F7390  7F A4 EB 78 */	mr r4, r29
/* 803F7394  7F C5 F3 78 */	mr r5, r30
/* 803F7398  4B FF FB 9D */	bl mRlib_PSnowmanBreakCheck
/* 803F739C  2C 03 00 00 */	cmpwi r3, 0
/* 803F73A0  41 82 00 0C */	beq lbl_803F73AC
/* 803F73A4  38 60 00 00 */	li r3, 0
/* 803F73A8  48 00 00 E4 */	b lbl_803F748C
lbl_803F73AC:
/* 803F73AC  C3 FC 00 2C */	lfs f31, 0x2c(r28)
/* 803F73B0  3C 60 80 64 */	lis r3, data_806433EC@ha /* 0x806433EC@ha */
/* 803F73B4  80 BC 00 28 */	lwz r5, 0x28(r28)
/* 803F73B8  38 81 00 0C */	addi r4, r1, 0xc
/* 803F73BC  80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 803F73C0  C0 23 33 EC */	lfs f1, data_806433EC@l(r3)  /* 0x806433EC@l */
/* 803F73C4  38 60 00 00 */	li r3, 0
/* 803F73C8  90 A1 00 0C */	stw r5, 0xc(r1)
/* 803F73CC  90 01 00 10 */	stw r0, 0x10(r1)
/* 803F73D0  80 1C 00 30 */	lwz r0, 0x30(r28)
/* 803F73D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F73D8  4B F9 82 E1 */	bl func_8038F6B8
/* 803F73DC  D0 3C 00 2C */	stfs f1, 0x2c(r28)
/* 803F73E0  7F 84 E3 78 */	mr r4, r28
/* 803F73E4  7F E5 FB 78 */	mr r5, r31
/* 803F73E8  38 60 00 07 */	li r3, 7
/* 803F73EC  4B FA 2D 71 */	bl mDemo_Request
/* 803F73F0  D3 FC 00 2C */	stfs f31, 0x2c(r28)
/* 803F73F4  48 00 00 94 */	b lbl_803F7488
lbl_803F73F8:
/* 803F73F8  3C 60 80 64 */	lis r3, lit_597@ha /* 0x80643424@ha */
/* 803F73FC  3C 80 80 64 */	lis r4, lit_384@ha /* 0x806433F4@ha */
/* 803F7400  38 A3 34 24 */	addi r5, r3, lit_597@l /* 0x80643424@l */
/* 803F7404  C8 A4 33 F4 */	lfd f5, lit_384@l(r4)  /* 0x806433F4@l */
/* 803F7408  C8 C5 00 00 */	lfd f6, 0(r5)
/* 803F740C  3C 60 80 64 */	lis r3, lit_385@ha /* 0x806433FC@ha */
/* 803F7410  38 A3 33 FC */	addi r5, r3, lit_385@l /* 0x806433FC@l */
/* 803F7414  FC 60 30 34 */	frsqrte f3, f6
/* 803F7418  3C 60 80 64 */	lis r3, lit_598@ha /* 0x8064342C@ha */
/* 803F741C  38 83 34 2C */	addi r4, r3, lit_598@l /* 0x8064342C@l */
/* 803F7420  C8 85 00 00 */	lfd f4, 0(r5)
/* 803F7424  3C 60 80 64 */	lis r3, lit_599@ha /* 0x80643430@ha */
/* 803F7428  C0 04 00 00 */	lfs f0, 0(r4)
/* 803F742C  FC 23 00 F2 */	fmul f1, f3, f3
/* 803F7430  C0 43 34 30 */	lfs f2, lit_599@l(r3)  /* 0x80643430@l */
/* 803F7434  7F C3 F3 78 */	mr r3, r30
/* 803F7438  FC 65 00 F2 */	fmul f3, f5, f3
/* 803F743C  FC 26 00 72 */	fmul f1, f6, f1
/* 803F7440  FC 24 08 28 */	fsub f1, f4, f1
/* 803F7444  FC 63 00 72 */	fmul f3, f3, f1
/* 803F7448  FC 23 00 F2 */	fmul f1, f3, f3
/* 803F744C  FC 65 00 F2 */	fmul f3, f5, f3
/* 803F7450  FC 26 00 72 */	fmul f1, f6, f1
/* 803F7454  FC 24 08 28 */	fsub f1, f4, f1
/* 803F7458  FC 63 00 72 */	fmul f3, f3, f1
/* 803F745C  FC 23 00 F2 */	fmul f1, f3, f3
/* 803F7460  FC 65 00 F2 */	fmul f3, f5, f3
/* 803F7464  FC 26 00 72 */	fmul f1, f6, f1
/* 803F7468  FC 24 08 28 */	fsub f1, f4, f1
/* 803F746C  FC 23 00 72 */	fmul f1, f3, f1
/* 803F7470  FC 26 00 72 */	fmul f1, f6, f1
/* 803F7474  FC 20 08 18 */	frsp f1, f1
/* 803F7478  D0 21 00 08 */	stfs f1, 8(r1)
/* 803F747C  C0 21 00 08 */	lfs f1, 8(r1)
/* 803F7480  EC 20 08 28 */	fsubs f1, f0, f1
/* 803F7484  4B FC 3E 55 */	bl add_calc0
lbl_803F7488:
/* 803F7488  38 60 00 01 */	li r3, 1
lbl_803F748C:
/* 803F748C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 803F7490  39 61 00 30 */	addi r11, r1, 0x30
/* 803F7494  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 803F7498  4B CA 3A 85 */	bl func_8009AF1C
/* 803F749C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803F74A0  7C 08 03 A6 */	mtlr r0
/* 803F74A4  38 21 00 40 */	addi r1, r1, 0x40
/* 803F74A8  4E 80 00 20 */	blr 
