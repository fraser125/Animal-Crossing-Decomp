lbl_8060760C:
/* 8060760C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80607610  7C 08 02 A6 */	mflr r0
/* 80607614  90 01 00 34 */	stw r0, 0x34(r1)
/* 80607618  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8060761C  7C 7F 1B 78 */	mr r31, r3
/* 80607620  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80607624  7C 9E 23 78 */	mr r30, r4
/* 80607628  A8 03 00 00 */	lha r0, 0(r3)
/* 8060762C  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 80607630  40 82 00 C4 */	bne lbl_806076F4
/* 80607634  4B FF FF 45 */	bl eCar_Blight_light_control
/* 80607638  1C A3 00 0C */	mulli r5, r3, 0xc
/* 8060763C  3C 80 80 6D */	lis r4, data_806D1E98@ha /* 0x806D1E98@ha */
/* 80607640  3C 60 80 65 */	lis r3, lit_411@ha /* 0x8064BD1C@ha */
/* 80607644  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80607648  38 04 1E 98 */	addi r0, r4, data_806D1E98@l /* 0x806D1E98@l */
/* 8060764C  C0 43 BD 1C */	lfs f2, lit_411@l(r3)  /* 0x8064BD1C@l */
/* 80607650  7C C0 2A 14 */	add r6, r0, r5
/* 80607654  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80607658  80 A6 00 00 */	lwz r5, 0(r6)
/* 8060765C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80607660  80 86 00 04 */	lwz r4, 4(r6)
/* 80607664  EC 21 10 28 */	fsubs f1, f1, f2
/* 80607668  80 06 00 08 */	lwz r0, 8(r6)
/* 8060766C  EC 02 00 2A */	fadds f0, f2, f0
/* 80607670  90 81 00 18 */	stw r4, 0x18(r1)
/* 80607674  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80607678  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 8060767C  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80607680  3C A3 00 02 */	addis r5, r3, 2
/* 80607684  C0 61 00 18 */	lfs f3, 0x18(r1)
/* 80607688  7F C7 F3 78 */	mr r7, r30
/* 8060768C  C0 81 00 14 */	lfs f4, 0x14(r1)
/* 80607690  38 81 00 08 */	addi r4, r1, 8
/* 80607694  EC 43 10 2A */	fadds f2, f3, f2
/* 80607698  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8060769C  EC 84 08 2A */	fadds f4, f4, f1
/* 806076A0  80 A5 60 9C */	lwz r5, 0x609c(r5)
/* 806076A4  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 806076A8  38 60 00 5C */	li r3, 0x5c
/* 806076AC  EC 01 00 2A */	fadds f0, f1, f0
/* 806076B0  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 806076B4  38 C0 00 00 */	li r6, 0
/* 806076B8  39 20 00 00 */	li r9, 0
/* 806076BC  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 806076C0  39 40 00 00 */	li r10, 0
/* 806076C4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806076C8  81 61 00 14 */	lwz r11, 0x14(r1)
/* 806076CC  81 01 00 18 */	lwz r8, 0x18(r1)
/* 806076D0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 806076D4  91 61 00 08 */	stw r11, 8(r1)
/* 806076D8  91 01 00 0C */	stw r8, 0xc(r1)
/* 806076DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 806076E0  81 85 00 00 */	lwz r12, 0(r5)
/* 806076E4  88 BF 00 0E */	lbz r5, 0xe(r31)
/* 806076E8  A1 1F 00 0C */	lhz r8, 0xc(r31)
/* 806076EC  7D 89 03 A6 */	mtctr r12
/* 806076F0  4E 80 04 21 */	bctrl 
lbl_806076F4:
/* 806076F4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806076F8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 806076FC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80607700  7C 08 03 A6 */	mtlr r0
/* 80607704  38 21 00 30 */	addi r1, r1, 0x30
/* 80607708  4E 80 00 20 */	blr 
