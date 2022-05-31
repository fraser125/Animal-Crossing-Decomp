lbl_803B9638:
/* 803B9638  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803B963C  7C 08 02 A6 */	mflr r0
/* 803B9640  90 01 00 44 */	stw r0, 0x44(r1)
/* 803B9644  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 803B9648  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 803B964C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 803B9650  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 803B9654  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803B9658  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803B965C  3C C0 80 64 */	lis r6, lit_1502@ha /* 0x80642524@ha */
/* 803B9660  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803B9664  3C A0 80 64 */	lis r5, lit_544@ha /* 0x80642448@ha */
/* 803B9668  3C 84 00 02 */	addis r4, r4, 2
/* 803B966C  C3 E6 25 24 */	lfs f31, lit_1502@l(r6)  /* 0x80642524@l */
/* 803B9670  88 04 60 02 */	lbz r0, 0x6002(r4)
/* 803B9674  7C 7F 1B 78 */	mr r31, r3
/* 803B9678  C3 C5 24 48 */	lfs f30, lit_544@l(r5)  /* 0x80642448@l */
/* 803B967C  28 00 00 01 */	cmplwi r0, 1
/* 803B9680  40 82 01 AC */	bne lbl_803B982C
/* 803B9684  48 02 DA 29 */	bl mRmTp_GetNowSceneLightSwitchIndex
/* 803B9688  2C 1F 00 00 */	cmpwi r31, 0
/* 803B968C  40 82 00 24 */	bne lbl_803B96B0
/* 803B9690  3C 80 80 64 */	lis r4, lit_544@ha /* 0x80642448@ha */
/* 803B9694  3C A0 81 17 */	lis r5, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B9698  38 C4 24 48 */	addi r6, r4, lit_544@l /* 0x80642448@l */
/* 803B969C  C0 06 00 00 */	lfs f0, 0(r6)
/* 803B96A0  3C 80 80 64 */	lis r4, lit_545@ha /* 0x8064244C@ha */
/* 803B96A4  38 A5 9B A0 */	addi r5, r5, data_81169BA0@l /* 0x81169BA0@l */
/* 803B96A8  C3 E4 24 4C */	lfs f31, lit_545@l(r4)  /* 0x8064244C@l */
/* 803B96AC  D0 05 00 34 */	stfs f0, 0x34(r5)
lbl_803B96B0:
/* 803B96B0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803B96B4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803B96B8  3C 84 00 02 */	addis r4, r4, 2
/* 803B96BC  80 A4 61 1C */	lwz r5, 0x611c(r4)
/* 803B96C0  7C A0 07 35 */	extsh. r0, r5
/* 803B96C4  7C A0 07 34 */	extsh r0, r5
/* 803B96C8  7C 80 00 D0 */	neg r4, r0
/* 803B96CC  41 80 00 08 */	blt lbl_803B96D4
/* 803B96D0  7C 04 03 78 */	mr r4, r0
lbl_803B96D4:
/* 803B96D4  2C 04 00 78 */	cmpwi r4, 0x78
/* 803B96D8  41 80 00 4C */	blt lbl_803B9724
/* 803B96DC  3C 85 FF FF */	addis r4, r5, 0xffff
/* 803B96E0  38 84 AE 80 */	addi r4, r4, -20864
/* 803B96E4  7C 80 07 35 */	extsh. r0, r4
/* 803B96E8  7C 80 07 34 */	extsh r0, r4
/* 803B96EC  7C 80 00 D0 */	neg r4, r0
/* 803B96F0  41 80 00 08 */	blt lbl_803B96F8
/* 803B96F4  7C 04 03 78 */	mr r4, r0
lbl_803B96F8:
/* 803B96F8  2C 04 00 78 */	cmpwi r4, 0x78
/* 803B96FC  41 80 00 28 */	blt lbl_803B9724
/* 803B9700  3C 85 FF FF */	addis r4, r5, 0xffff
/* 803B9704  38 84 57 40 */	addi r4, r4, 0x5740
/* 803B9708  7C 80 07 35 */	extsh. r0, r4
/* 803B970C  7C 80 07 34 */	extsh r0, r4
/* 803B9710  7C 80 00 D0 */	neg r4, r0
/* 803B9714  41 80 00 08 */	blt lbl_803B971C
/* 803B9718  7C 04 03 78 */	mr r4, r0
lbl_803B971C:
/* 803B971C  2C 04 00 78 */	cmpwi r4, 0x78
/* 803B9720  40 80 00 10 */	bge lbl_803B9730
lbl_803B9724:
/* 803B9724  3C 60 80 64 */	lis r3, lit_544@ha /* 0x80642448@ha */
/* 803B9728  C3 C3 24 48 */	lfs f30, lit_544@l(r3)  /* 0x80642448@l */
/* 803B972C  48 00 00 5C */	b lbl_803B9788
lbl_803B9730:
/* 803B9730  2C 03 FF FF */	cmpwi r3, -1
/* 803B9734  41 82 00 34 */	beq lbl_803B9768
/* 803B9738  3C 80 80 64 */	lis r4, lit_545@ha /* 0x8064244C@ha */
/* 803B973C  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B9740  C0 24 24 4C */	lfs f1, lit_545@l(r4)  /* 0x8064244C@l */
/* 803B9744  3C A0 80 64 */	lis r5, lit_1804@ha /* 0x80642544@ha */
/* 803B9748  C0 03 9B A0 */	lfs f0, data_81169BA0@l(r3)  /* 0x81169BA0@l */
/* 803B974C  3C 80 80 64 */	lis r4, lit_1803@ha /* 0x80642540@ha */
/* 803B9750  C0 45 25 44 */	lfs f2, lit_1804@l(r5)  /* 0x80642544@l */
/* 803B9754  EC 01 00 28 */	fsubs f0, f1, f0
/* 803B9758  C0 24 25 40 */	lfs f1, lit_1803@l(r4)  /* 0x80642540@l */
/* 803B975C  EC 02 00 32 */	fmuls f0, f2, f0
/* 803B9760  EF C1 00 2A */	fadds f30, f1, f0
/* 803B9764  48 00 00 24 */	b lbl_803B9788
lbl_803B9768:
/* 803B9768  2C 05 46 50 */	cmpwi r5, 0x4650
/* 803B976C  41 80 00 1C */	blt lbl_803B9788
/* 803B9770  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FD20@ha */
/* 803B9774  38 03 FD 20 */	addi r0, r3, 0xFD20 /* 0x0000FD20@l */
/* 803B9778  7C 05 00 00 */	cmpw r5, r0
/* 803B977C  40 80 00 0C */	bge lbl_803B9788
/* 803B9780  3C 60 80 64 */	lis r3, lit_545@ha /* 0x8064244C@ha */
/* 803B9784  C3 C3 24 4C */	lfs f30, lit_545@l(r3)  /* 0x8064244C@l */
lbl_803B9788:
/* 803B9788  3C 60 80 64 */	lis r3, lit_1805@ha /* 0x8064254C@ha */
/* 803B978C  3C 80 80 64 */	lis r4, lit_1020@ha /* 0x806424AC@ha */
/* 803B9790  38 A3 25 4C */	addi r5, r3, lit_1805@l /* 0x8064254C@l */
/* 803B9794  C8 E4 24 AC */	lfd f7, lit_1020@l(r4)  /* 0x806424AC@l */
/* 803B9798  C9 05 00 00 */	lfd f8, 0(r5)
/* 803B979C  3C 60 80 64 */	lis r3, lit_1021@ha /* 0x806424B4@ha */
/* 803B97A0  38 A3 24 B4 */	addi r5, r3, lit_1021@l /* 0x806424B4@l */
/* 803B97A4  FC 40 40 34 */	frsqrte f2, f8
/* 803B97A8  3C 60 80 64 */	lis r3, lit_936@ha /* 0x8064249C@ha */
/* 803B97AC  38 83 24 9C */	addi r4, r3, lit_936@l /* 0x8064249C@l */
/* 803B97B0  C8 C5 00 00 */	lfd f6, 0(r5)
/* 803B97B4  C0 04 00 00 */	lfs f0, 0(r4)
/* 803B97B8  3C 80 81 17 */	lis r4, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B97BC  FC 22 00 B2 */	fmul f1, f2, f2
/* 803B97C0  3C 60 80 64 */	lis r3, lit_545@ha /* 0x8064244C@ha */
/* 803B97C4  38 84 9B A0 */	addi r4, r4, data_81169BA0@l /* 0x81169BA0@l */
/* 803B97C8  EC 60 07 F2 */	fmuls f3, f0, f31
/* 803B97CC  C0 03 24 4C */	lfs f0, lit_545@l(r3)  /* 0x8064244C@l */
/* 803B97D0  FC 87 00 B2 */	fmul f4, f7, f2
/* 803B97D4  FC 28 00 72 */	fmul f1, f8, f1
/* 803B97D8  38 64 00 34 */	addi r3, r4, 0x34
/* 803B97DC  FC 46 08 28 */	fsub f2, f6, f1
/* 803B97E0  FC 20 F0 90 */	fmr f1, f30
/* 803B97E4  FC A4 00 B2 */	fmul f5, f4, f2
/* 803B97E8  FC 80 18 90 */	fmr f4, f3
/* 803B97EC  FC 45 01 72 */	fmul f2, f5, f5
/* 803B97F0  FC A7 01 72 */	fmul f5, f7, f5
/* 803B97F4  FC 48 00 B2 */	fmul f2, f8, f2
/* 803B97F8  FC 46 10 28 */	fsub f2, f6, f2
/* 803B97FC  FC A5 00 B2 */	fmul f5, f5, f2
/* 803B9800  FC 45 01 72 */	fmul f2, f5, f5
/* 803B9804  FC A7 01 72 */	fmul f5, f7, f5
/* 803B9808  FC 48 00 B2 */	fmul f2, f8, f2
/* 803B980C  FC 46 10 28 */	fsub f2, f6, f2
/* 803B9810  FC 45 00 B2 */	fmul f2, f5, f2
/* 803B9814  FC 48 00 B2 */	fmul f2, f8, f2
/* 803B9818  FC 40 10 18 */	frsp f2, f2
/* 803B981C  D0 41 00 08 */	stfs f2, 8(r1)
/* 803B9820  C0 41 00 08 */	lfs f2, 8(r1)
/* 803B9824  EC 40 10 28 */	fsubs f2, f0, f2
/* 803B9828  48 00 19 89 */	bl add_calc
lbl_803B982C:
/* 803B982C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 803B9830  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 803B9834  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 803B9838  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 803B983C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803B9840  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803B9844  7C 08 03 A6 */	mtlr r0
/* 803B9848  38 21 00 40 */	addi r1, r1, 0x40
/* 803B984C  4E 80 00 20 */	blr 
