lbl_805C91D4:
/* 805C91D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C91D8  7C 08 02 A6 */	mflr r0
/* 805C91DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C91E0  39 61 00 20 */	addi r11, r1, 0x20
/* 805C91E4  4B AD 1C F1 */	bl func_8009AED4
/* 805C91E8  7C 7D 1B 78 */	mr r29, r3
/* 805C91EC  38 00 00 00 */	li r0, 0
/* 805C91F0  7C 9E 23 78 */	mr r30, r4
/* 805C91F4  B0 03 50 88 */	sth r0, 0x5088(r3)
/* 805C91F8  7F C3 F3 78 */	mr r3, r30
/* 805C91FC  4B E1 E5 95 */	bl mRmTp_FtrItemNo2FtrIdx
/* 805C9200  B0 7D 00 00 */	sth r3, 0(r29)
/* 805C9204  7F A3 EB 78 */	mr r3, r29
/* 805C9208  4B FF FF 65 */	bl func_805C916C
/* 805C920C  7F A3 EB 78 */	mr r3, r29
/* 805C9210  7F C4 F3 78 */	mr r4, r30
/* 805C9214  4B FF FF 75 */	bl mCL_dma_furniture_bank
/* 805C9218  83 FD 50 80 */	lwz r31, 0x5080(r29)
/* 805C921C  38 60 00 00 */	li r3, 0
/* 805C9220  38 00 00 01 */	li r0, 1
/* 805C9224  B0 7D 08 10 */	sth r3, 0x810(r29)
/* 805C9228  98 1D 01 2C */	stb r0, 0x12c(r29)
/* 805C922C  88 1F 00 28 */	lbz r0, 0x28(r31)
/* 805C9230  28 00 00 00 */	cmplwi r0, 0
/* 805C9234  40 82 00 20 */	bne lbl_805C9254
/* 805C9238  3C 80 80 65 */	lis r4, data_8064AEA4@ha /* 0x8064AEA4@ha */
/* 805C923C  3C 60 80 65 */	lis r3, lit_522@ha /* 0x8064AEA8@ha */
/* 805C9240  C0 24 AE A4 */	lfs f1, data_8064AEA4@l(r4)  /* 0x8064AEA4@l */
/* 805C9244  C0 03 AE A8 */	lfs f0, lit_522@l(r3)  /* 0x8064AEA8@l */
/* 805C9248  D0 3D 00 08 */	stfs f1, 8(r29)
/* 805C924C  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 805C9250  48 00 00 80 */	b lbl_805C92D0
lbl_805C9254:
/* 805C9254  28 00 00 01 */	cmplwi r0, 1
/* 805C9258  40 82 00 20 */	bne lbl_805C9278
/* 805C925C  3C 80 80 65 */	lis r4, lit_523@ha /* 0x8064AEAC@ha */
/* 805C9260  3C 60 80 65 */	lis r3, data_8064AEA4@ha /* 0x8064AEA4@ha */
/* 805C9264  C0 24 AE AC */	lfs f1, lit_523@l(r4)  /* 0x8064AEAC@l */
/* 805C9268  C0 03 AE A4 */	lfs f0, data_8064AEA4@l(r3)  /* 0x8064AEA4@l */
/* 805C926C  D0 3D 00 08 */	stfs f1, 8(r29)
/* 805C9270  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 805C9274  48 00 00 5C */	b lbl_805C92D0
lbl_805C9278:
/* 805C9278  28 00 00 02 */	cmplwi r0, 2
/* 805C927C  40 82 00 20 */	bne lbl_805C929C
/* 805C9280  3C 80 80 65 */	lis r4, data_8064AEA4@ha /* 0x8064AEA4@ha */
/* 805C9284  3C 60 80 65 */	lis r3, lit_523@ha /* 0x8064AEAC@ha */
/* 805C9288  C0 24 AE A4 */	lfs f1, data_8064AEA4@l(r4)  /* 0x8064AEA4@l */
/* 805C928C  C0 03 AE AC */	lfs f0, lit_523@l(r3)  /* 0x8064AEAC@l */
/* 805C9290  D0 3D 00 08 */	stfs f1, 8(r29)
/* 805C9294  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 805C9298  48 00 00 38 */	b lbl_805C92D0
lbl_805C929C:
/* 805C929C  28 00 00 03 */	cmplwi r0, 3
/* 805C92A0  40 82 00 20 */	bne lbl_805C92C0
/* 805C92A4  3C 80 80 65 */	lis r4, lit_522@ha /* 0x8064AEA8@ha */
/* 805C92A8  3C 60 80 65 */	lis r3, data_8064AEA4@ha /* 0x8064AEA4@ha */
/* 805C92AC  C0 24 AE A8 */	lfs f1, lit_522@l(r4)  /* 0x8064AEA8@l */
/* 805C92B0  C0 03 AE A4 */	lfs f0, data_8064AEA4@l(r3)  /* 0x8064AEA4@l */
/* 805C92B4  D0 3D 00 08 */	stfs f1, 8(r29)
/* 805C92B8  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 805C92BC  48 00 00 14 */	b lbl_805C92D0
lbl_805C92C0:
/* 805C92C0  3C 60 80 65 */	lis r3, data_8064AEA4@ha /* 0x8064AEA4@ha */
/* 805C92C4  C0 03 AE A4 */	lfs f0, data_8064AEA4@l(r3)  /* 0x8064AEA4@l */
/* 805C92C8  D0 1D 00 08 */	stfs f0, 8(r29)
/* 805C92CC  D0 1D 00 10 */	stfs f0, 0x10(r29)
lbl_805C92D0:
/* 805C92D0  3C 80 80 65 */	lis r4, data_8064AEA4@ha /* 0x8064AEA4@ha */
/* 805C92D4  38 60 00 00 */	li r3, 0
/* 805C92D8  C0 04 AE A4 */	lfs f0, data_8064AEA4@l(r4)  /* 0x8064AEA4@l */
/* 805C92DC  38 00 00 0F */	li r0, 0xf
/* 805C92E0  D0 1D 00 34 */	stfs f0, 0x34(r29)
/* 805C92E4  90 7D 01 4C */	stw r3, 0x14c(r29)
/* 805C92E8  90 7D 01 50 */	stw r3, 0x150(r29)
/* 805C92EC  B0 1D 50 8A */	sth r0, 0x508a(r29)
/* 805C92F0  80 BF 00 18 */	lwz r5, 0x18(r31)
/* 805C92F4  28 05 00 00 */	cmplwi r5, 0
/* 805C92F8  41 82 00 44 */	beq lbl_805C933C
/* 805C92FC  80 85 00 00 */	lwz r4, 0(r5)
/* 805C9300  38 7D 01 34 */	addi r3, r29, 0x134
/* 805C9304  80 A5 00 04 */	lwz r5, 4(r5)
/* 805C9308  38 DD 01 A4 */	addi r6, r29, 0x1a4
/* 805C930C  38 FD 01 DA */	addi r7, r29, 0x1da
/* 805C9310  4B DA 77 85 */	bl cKF_SkeletonInfo_R_ct
/* 805C9314  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 805C9318  38 7D 01 34 */	addi r3, r29, 0x134
/* 805C931C  38 A0 00 00 */	li r5, 0
/* 805C9320  80 84 00 04 */	lwz r4, 4(r4)
/* 805C9324  4B DA 78 C1 */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 805C9328  38 7D 01 34 */	addi r3, r29, 0x134
/* 805C932C  4B DA 7C E9 */	bl cKF_SkeletonInfo_R_play
/* 805C9330  3C 60 80 65 */	lis r3, lit_524@ha /* 0x8064AEB0@ha */
/* 805C9334  C0 03 AE B0 */	lfs f0, lit_524@l(r3)  /* 0x8064AEB0@l */
/* 805C9338  D0 1D 01 40 */	stfs f0, 0x140(r29)
lbl_805C933C:
/* 805C933C  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 805C9340  28 03 00 00 */	cmplwi r3, 0
/* 805C9344  41 82 00 44 */	beq lbl_805C9388
/* 805C9348  81 83 00 00 */	lwz r12, 0(r3)
/* 805C934C  28 0C 00 00 */	cmplwi r12, 0
/* 805C9350  41 82 00 38 */	beq lbl_805C9388
/* 805C9354  7F A3 EB 78 */	mr r3, r29
/* 805C9358  80 9D 08 5C */	lwz r4, 0x85c(r29)
/* 805C935C  7D 89 03 A6 */	mtctr r12
/* 805C9360  4E 80 04 21 */	bctrl 
/* 805C9364  80 1D 01 4C */	lwz r0, 0x14c(r29)
/* 805C9368  28 00 00 00 */	cmplwi r0, 0
/* 805C936C  41 82 00 1C */	beq lbl_805C9388
/* 805C9370  80 1D 01 50 */	lwz r0, 0x150(r29)
/* 805C9374  28 00 00 00 */	cmplwi r0, 0
/* 805C9378  41 82 00 10 */	beq lbl_805C9388
/* 805C937C  3C 60 80 65 */	lis r3, lit_524@ha /* 0x8064AEB0@ha */
/* 805C9380  C0 03 AE B0 */	lfs f0, lit_524@l(r3)  /* 0x8064AEB0@l */
/* 805C9384  D0 1D 01 40 */	stfs f0, 0x140(r29)
lbl_805C9388:
/* 805C9388  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 805C938C  28 00 15 B0 */	cmplwi r0, 0x15b0
/* 805C9390  41 80 00 40 */	blt lbl_805C93D0
/* 805C9394  28 00 17 AB */	cmplwi r0, 0x17ab
/* 805C9398  41 81 00 38 */	bgt lbl_805C93D0
/* 805C939C  3C 60 80 65 */	lis r3, lit_525@ha /* 0x8064AEB4@ha */
/* 805C93A0  3C 80 80 65 */	lis r4, lit_526@ha /* 0x8064AEB8@ha */
/* 805C93A4  38 A3 AE B4 */	addi r5, r3, lit_525@l /* 0x8064AEB4@l */
/* 805C93A8  C0 24 AE B8 */	lfs f1, lit_526@l(r4)  /* 0x8064AEB8@l */
/* 805C93AC  C0 05 00 00 */	lfs f0, 0(r5)
/* 805C93B0  3C 60 80 65 */	lis r3, lit_527@ha /* 0x8064AEBC@ha */
/* 805C93B4  38 00 00 00 */	li r0, 0
/* 805C93B8  D0 1D 50 94 */	stfs f0, 0x5094(r29)
/* 805C93BC  C0 03 AE BC */	lfs f0, lit_527@l(r3)  /* 0x8064AEBC@l */
/* 805C93C0  D0 3D 50 90 */	stfs f1, 0x5090(r29)
/* 805C93C4  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 805C93C8  90 1D 50 8C */	stw r0, 0x508c(r29)
/* 805C93CC  48 00 03 E0 */	b lbl_805C97AC
lbl_805C93D0:
/* 805C93D0  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 805C93D4  28 00 17 AC */	cmplwi r0, 0x17ac
/* 805C93D8  41 80 00 B8 */	blt lbl_805C9490
/* 805C93DC  28 00 1B A7 */	cmplwi r0, 0x1ba7
/* 805C93E0  41 81 00 B0 */	bgt lbl_805C9490
/* 805C93E4  3C 60 80 65 */	lis r3, lit_525@ha /* 0x8064AEB4@ha */
/* 805C93E8  3C 80 80 65 */	lis r4, lit_526@ha /* 0x8064AEB8@ha */
/* 805C93EC  38 A3 AE B4 */	addi r5, r3, lit_525@l /* 0x8064AEB4@l */
/* 805C93F0  3C 60 80 65 */	lis r3, lit_528@ha /* 0x8064AEC0@ha */
/* 805C93F4  C0 05 00 00 */	lfs f0, 0(r5)
/* 805C93F8  38 A4 AE B8 */	addi r5, r4, lit_526@l /* 0x8064AEB8@l */
/* 805C93FC  38 83 AE C0 */	addi r4, r3, lit_528@l /* 0x8064AEC0@l */
/* 805C9400  C0 25 00 00 */	lfs f1, 0(r5)
/* 805C9404  D0 1D 50 94 */	stfs f0, 0x5094(r29)
/* 805C9408  7F C3 F3 78 */	mr r3, r30
/* 805C940C  C0 04 00 00 */	lfs f0, 0(r4)
/* 805C9410  38 80 00 00 */	li r4, 0
/* 805C9414  D0 3D 50 90 */	stfs f1, 0x5090(r29)
/* 805C9418  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 805C941C  4B E1 D1 09 */	bl mRmTp_FtrItemNo2Item1ItemNo
/* 805C9420  38 80 00 02 */	li r4, 2
/* 805C9424  7C 7E 1B 78 */	mr r30, r3
/* 805C9428  38 A0 00 00 */	li r5, 0
/* 805C942C  38 C0 00 00 */	li r6, 0
/* 805C9430  4B E1 F4 91 */	bl mSP_SearchItemCategoryPriority
/* 805C9434  2C 03 00 00 */	cmpwi r3, 0
/* 805C9438  40 82 00 3C */	bne lbl_805C9474
/* 805C943C  7F C3 F3 78 */	mr r3, r30
/* 805C9440  38 80 00 02 */	li r4, 2
/* 805C9444  38 A0 00 01 */	li r5, 1
/* 805C9448  38 C0 00 00 */	li r6, 0
/* 805C944C  4B E1 F4 75 */	bl mSP_SearchItemCategoryPriority
/* 805C9450  2C 03 00 00 */	cmpwi r3, 0
/* 805C9454  40 82 00 20 */	bne lbl_805C9474
/* 805C9458  7F C3 F3 78 */	mr r3, r30
/* 805C945C  38 80 00 02 */	li r4, 2
/* 805C9460  38 A0 00 02 */	li r5, 2
/* 805C9464  38 C0 00 00 */	li r6, 0
/* 805C9468  4B E1 F4 59 */	bl mSP_SearchItemCategoryPriority
/* 805C946C  2C 03 00 00 */	cmpwi r3, 0
/* 805C9470  41 82 00 14 */	beq lbl_805C9484
lbl_805C9474:
/* 805C9474  7F C3 F3 78 */	mr r3, r30
/* 805C9478  4B E1 F2 29 */	bl mSP_ItemNo2ItemPrice
/* 805C947C  90 7D 50 8C */	stw r3, 0x508c(r29)
/* 805C9480  48 00 03 2C */	b lbl_805C97AC
lbl_805C9484:
/* 805C9484  38 00 00 00 */	li r0, 0
/* 805C9488  90 1D 50 8C */	stw r0, 0x508c(r29)
/* 805C948C  48 00 03 20 */	b lbl_805C97AC
lbl_805C9490:
/* 805C9490  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 805C9494  28 00 1D 08 */	cmplwi r0, 0x1d08
/* 805C9498  41 80 00 4C */	blt lbl_805C94E4
/* 805C949C  28 00 1D 87 */	cmplwi r0, 0x1d87
/* 805C94A0  41 81 00 44 */	bgt lbl_805C94E4
/* 805C94A4  3C 60 80 65 */	lis r3, lit_529@ha /* 0x8064AEC4@ha */
/* 805C94A8  3C 80 80 65 */	lis r4, lit_526@ha /* 0x8064AEB8@ha */
/* 805C94AC  38 A3 AE C4 */	addi r5, r3, lit_529@l /* 0x8064AEC4@l */
/* 805C94B0  3C 60 80 65 */	lis r3, data_8064AEA4@ha /* 0x8064AEA4@ha */
/* 805C94B4  C0 05 00 00 */	lfs f0, 0(r5)
/* 805C94B8  38 A4 AE B8 */	addi r5, r4, lit_526@l /* 0x8064AEB8@l */
/* 805C94BC  38 83 AE A4 */	addi r4, r3, data_8064AEA4@l /* 0x8064AEA4@l */
/* 805C94C0  C0 25 00 00 */	lfs f1, 0(r5)
/* 805C94C4  D0 1D 50 94 */	stfs f0, 0x5094(r29)
/* 805C94C8  7F C3 F3 78 */	mr r3, r30
/* 805C94CC  C0 04 00 00 */	lfs f0, 0(r4)
/* 805C94D0  D0 3D 50 90 */	stfs f1, 0x5090(r29)
/* 805C94D4  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 805C94D8  4B E1 F1 C9 */	bl mSP_ItemNo2ItemPrice
/* 805C94DC  90 7D 50 8C */	stw r3, 0x508c(r29)
/* 805C94E0  48 00 02 CC */	b lbl_805C97AC
lbl_805C94E4:
/* 805C94E4  7F C3 F3 78 */	mr r3, r30
/* 805C94E8  4B E1 E2 A9 */	bl mRmTp_FtrItemNo2FtrIdx
/* 805C94EC  2C 03 03 FC */	cmpwi r3, 0x3fc
/* 805C94F0  41 80 00 14 */	blt lbl_805C9504
/* 805C94F4  7F C3 F3 78 */	mr r3, r30
/* 805C94F8  4B E1 E2 99 */	bl mRmTp_FtrItemNo2FtrIdx
/* 805C94FC  2C 03 04 03 */	cmpwi r3, 0x403
/* 805C9500  40 81 00 98 */	ble lbl_805C9598
lbl_805C9504:
/* 805C9504  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 805C9508  28 00 30 FC */	cmplwi r0, 0x30fc
/* 805C950C  41 80 00 0C */	blt lbl_805C9518
/* 805C9510  28 00 31 3B */	cmplwi r0, 0x313b
/* 805C9514  40 81 00 84 */	ble lbl_805C9598
lbl_805C9518:
/* 805C9518  7F C3 F3 78 */	mr r3, r30
/* 805C951C  4B E1 E2 75 */	bl mRmTp_FtrItemNo2FtrIdx
/* 805C9520  2C 03 04 53 */	cmpwi r3, 0x453
/* 805C9524  41 80 00 14 */	blt lbl_805C9538
/* 805C9528  7F C3 F3 78 */	mr r3, r30
/* 805C952C  4B E1 E2 65 */	bl mRmTp_FtrItemNo2FtrIdx
/* 805C9530  2C 03 04 5A */	cmpwi r3, 0x45a
/* 805C9534  40 81 00 64 */	ble lbl_805C9598
lbl_805C9538:
/* 805C9538  7F C3 F3 78 */	mr r3, r30
/* 805C953C  4B E1 E2 55 */	bl mRmTp_FtrItemNo2FtrIdx
/* 805C9540  2C 03 04 5B */	cmpwi r3, 0x45b
/* 805C9544  41 80 00 14 */	blt lbl_805C9558
/* 805C9548  7F C3 F3 78 */	mr r3, r30
/* 805C954C  4B E1 E2 45 */	bl mRmTp_FtrItemNo2FtrIdx
/* 805C9550  2C 03 04 62 */	cmpwi r3, 0x462
/* 805C9554  40 81 00 44 */	ble lbl_805C9598
lbl_805C9558:
/* 805C9558  7F C3 F3 78 */	mr r3, r30
/* 805C955C  4B E1 E2 35 */	bl mRmTp_FtrItemNo2FtrIdx
/* 805C9560  2C 03 04 4F */	cmpwi r3, 0x44f
/* 805C9564  41 80 00 14 */	blt lbl_805C9578
/* 805C9568  7F C3 F3 78 */	mr r3, r30
/* 805C956C  4B E1 E2 25 */	bl mRmTp_FtrItemNo2FtrIdx
/* 805C9570  2C 03 04 52 */	cmpwi r3, 0x452
/* 805C9574  40 81 00 24 */	ble lbl_805C9598
lbl_805C9578:
/* 805C9578  7F C3 F3 78 */	mr r3, r30
/* 805C957C  4B E1 E2 15 */	bl mRmTp_FtrItemNo2FtrIdx
/* 805C9580  2C 03 04 63 */	cmpwi r3, 0x463
/* 805C9584  41 80 00 54 */	blt lbl_805C95D8
/* 805C9588  7F C3 F3 78 */	mr r3, r30
/* 805C958C  4B E1 E2 05 */	bl mRmTp_FtrItemNo2FtrIdx
/* 805C9590  2C 03 04 66 */	cmpwi r3, 0x466
/* 805C9594  41 81 00 44 */	bgt lbl_805C95D8
lbl_805C9598:
/* 805C9598  3C 60 80 65 */	lis r3, lit_529@ha /* 0x8064AEC4@ha */
/* 805C959C  3C 80 80 65 */	lis r4, lit_526@ha /* 0x8064AEB8@ha */
/* 805C95A0  38 A3 AE C4 */	addi r5, r3, lit_529@l /* 0x8064AEC4@l */
/* 805C95A4  3C 60 80 65 */	lis r3, data_8064AEA4@ha /* 0x8064AEA4@ha */
/* 805C95A8  C0 05 00 00 */	lfs f0, 0(r5)
/* 805C95AC  38 A4 AE B8 */	addi r5, r4, lit_526@l /* 0x8064AEB8@l */
/* 805C95B0  38 83 AE A4 */	addi r4, r3, data_8064AEA4@l /* 0x8064AEA4@l */
/* 805C95B4  C0 25 00 00 */	lfs f1, 0(r5)
/* 805C95B8  D0 1D 50 94 */	stfs f0, 0x5094(r29)
/* 805C95BC  7F C3 F3 78 */	mr r3, r30
/* 805C95C0  C0 04 00 00 */	lfs f0, 0(r4)
/* 805C95C4  D0 3D 50 90 */	stfs f1, 0x5090(r29)
/* 805C95C8  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 805C95CC  4B E1 F0 D5 */	bl mSP_ItemNo2ItemPrice
/* 805C95D0  90 7D 50 8C */	stw r3, 0x508c(r29)
/* 805C95D4  48 00 01 D8 */	b lbl_805C97AC
lbl_805C95D8:
/* 805C95D8  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 805C95DC  28 00 1E EC */	cmplwi r0, 0x1eec
/* 805C95E0  41 80 00 60 */	blt lbl_805C9640
/* 805C95E4  28 00 1F 4F */	cmplwi r0, 0x1f4f
/* 805C95E8  41 81 00 58 */	bgt lbl_805C9640
/* 805C95EC  3C 60 80 65 */	lis r3, lit_530@ha /* 0x8064AEC8@ha */
/* 805C95F0  28 00 1F 04 */	cmplwi r0, 0x1f04
/* 805C95F4  C0 03 AE C8 */	lfs f0, lit_530@l(r3)  /* 0x8064AEC8@l */
/* 805C95F8  D0 1D 50 94 */	stfs f0, 0x5094(r29)
/* 805C95FC  40 82 00 20 */	bne lbl_805C961C
/* 805C9600  3C 80 80 65 */	lis r4, lit_524@ha /* 0x8064AEB0@ha */
/* 805C9604  3C 60 80 65 */	lis r3, lit_531@ha /* 0x8064AECC@ha */
/* 805C9608  C0 24 AE B0 */	lfs f1, lit_524@l(r4)  /* 0x8064AEB0@l */
/* 805C960C  C0 03 AE CC */	lfs f0, lit_531@l(r3)  /* 0x8064AECC@l */
/* 805C9610  D0 3D 50 90 */	stfs f1, 0x5090(r29)
/* 805C9614  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 805C9618  48 00 00 1C */	b lbl_805C9634
lbl_805C961C:
/* 805C961C  3C 80 80 65 */	lis r4, lit_532@ha /* 0x8064AED0@ha */
/* 805C9620  3C 60 80 65 */	lis r3, data_8064AEA4@ha /* 0x8064AEA4@ha */
/* 805C9624  C0 24 AE D0 */	lfs f1, lit_532@l(r4)  /* 0x8064AED0@l */
/* 805C9628  C0 03 AE A4 */	lfs f0, data_8064AEA4@l(r3)  /* 0x8064AEA4@l */
/* 805C962C  D0 3D 50 90 */	stfs f1, 0x5090(r29)
/* 805C9630  D0 1D 00 0C */	stfs f0, 0xc(r29)
lbl_805C9634:
/* 805C9634  38 00 00 00 */	li r0, 0
/* 805C9638  90 1D 50 8C */	stw r0, 0x508c(r29)
/* 805C963C  48 00 01 70 */	b lbl_805C97AC
lbl_805C9640:
/* 805C9640  3C 60 80 65 */	lis r3, lit_533@ha /* 0x8064AED4@ha */
/* 805C9644  3C 80 80 6D */	lis r4, mCL_furniture_list@ha /* 0x806CA578@ha */
/* 805C9648  C0 03 AE D4 */	lfs f0, lit_533@l(r3)  /* 0x8064AED4@l */
/* 805C964C  38 64 A5 78 */	addi r3, r4, mCL_furniture_list@l /* 0x806CA578@l */
/* 805C9650  38 00 02 59 */	li r0, 0x259
/* 805C9654  38 C0 00 00 */	li r6, 0
/* 805C9658  7C 65 1B 78 */	mr r5, r3
/* 805C965C  D0 1D 50 94 */	stfs f0, 0x5094(r29)
/* 805C9660  7C 09 03 A6 */	mtctr r0
lbl_805C9664:
/* 805C9664  A0 65 00 00 */	lhz r3, 0(r5)
/* 805C9668  A0 1D 00 00 */	lhz r0, 0(r29)
/* 805C966C  7C 03 00 40 */	cmplw r3, r0
/* 805C9670  40 82 00 34 */	bne lbl_805C96A4
/* 805C9674  A8 05 00 02 */	lha r0, 2(r5)
/* 805C9678  3C 60 80 6D */	lis r3, furniture_draw_data@ha /* 0x806CB564@ha */
/* 805C967C  38 83 B5 64 */	addi r4, r3, furniture_draw_data@l /* 0x806CB564@l */
/* 805C9680  54 00 18 38 */	slwi r0, r0, 3
/* 805C9684  7C 64 02 14 */	add r3, r4, r0
/* 805C9688  C0 03 00 04 */	lfs f0, 4(r3)
/* 805C968C  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 805C9690  A8 05 00 02 */	lha r0, 2(r5)
/* 805C9694  54 00 18 38 */	slwi r0, r0, 3
/* 805C9698  7C 04 04 2E */	lfsx f0, r4, r0
/* 805C969C  D0 1D 50 90 */	stfs f0, 0x5090(r29)
/* 805C96A0  48 00 00 10 */	b lbl_805C96B0
lbl_805C96A4:
/* 805C96A4  38 C6 00 01 */	addi r6, r6, 1
/* 805C96A8  38 A5 00 04 */	addi r5, r5, 4
/* 805C96AC  42 00 FF B8 */	bdnz lbl_805C9664
lbl_805C96B0:
/* 805C96B0  2C 06 02 59 */	cmpwi r6, 0x259
/* 805C96B4  40 82 00 1C */	bne lbl_805C96D0
/* 805C96B8  3C 60 80 6D */	lis r3, furniture_draw_data@ha /* 0x806CB564@ha */
/* 805C96BC  38 63 B5 64 */	addi r3, r3, furniture_draw_data@l /* 0x806CB564@l */
/* 805C96C0  C0 03 00 04 */	lfs f0, 4(r3)
/* 805C96C4  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 805C96C8  C0 03 00 00 */	lfs f0, 0(r3)
/* 805C96CC  D0 1D 50 90 */	stfs f0, 0x5090(r29)
lbl_805C96D0:
/* 805C96D0  7F C3 F3 78 */	mr r3, r30
/* 805C96D4  38 80 00 00 */	li r4, 0
/* 805C96D8  38 A0 00 00 */	li r5, 0
/* 805C96DC  38 C0 00 00 */	li r6, 0
/* 805C96E0  4B E1 F1 E1 */	bl mSP_SearchItemCategoryPriority
/* 805C96E4  2C 03 00 00 */	cmpwi r3, 0
/* 805C96E8  40 82 00 AC */	bne lbl_805C9794
/* 805C96EC  7F C3 F3 78 */	mr r3, r30
/* 805C96F0  38 80 00 00 */	li r4, 0
/* 805C96F4  38 A0 00 01 */	li r5, 1
/* 805C96F8  38 C0 00 00 */	li r6, 0
/* 805C96FC  4B E1 F1 C5 */	bl mSP_SearchItemCategoryPriority
/* 805C9700  2C 03 00 00 */	cmpwi r3, 0
/* 805C9704  40 82 00 90 */	bne lbl_805C9794
/* 805C9708  7F C3 F3 78 */	mr r3, r30
/* 805C970C  38 80 00 00 */	li r4, 0
/* 805C9710  38 A0 00 02 */	li r5, 2
/* 805C9714  38 C0 00 00 */	li r6, 0
/* 805C9718  4B E1 F1 A9 */	bl mSP_SearchItemCategoryPriority
/* 805C971C  2C 03 00 00 */	cmpwi r3, 0
/* 805C9720  40 82 00 74 */	bne lbl_805C9794
/* 805C9724  7F C3 F3 78 */	mr r3, r30
/* 805C9728  38 80 00 00 */	li r4, 0
/* 805C972C  38 A0 00 04 */	li r5, 4
/* 805C9730  38 C0 00 00 */	li r6, 0
/* 805C9734  4B E1 F1 8D */	bl mSP_SearchItemCategoryPriority
/* 805C9738  2C 03 00 00 */	cmpwi r3, 0
/* 805C973C  40 82 00 58 */	bne lbl_805C9794
/* 805C9740  7F C3 F3 78 */	mr r3, r30
/* 805C9744  38 80 00 00 */	li r4, 0
/* 805C9748  38 A0 00 03 */	li r5, 3
/* 805C974C  38 C0 00 00 */	li r6, 0
/* 805C9750  4B E1 F1 71 */	bl mSP_SearchItemCategoryPriority
/* 805C9754  2C 03 00 00 */	cmpwi r3, 0
/* 805C9758  40 82 00 3C */	bne lbl_805C9794
/* 805C975C  7F C3 F3 78 */	mr r3, r30
/* 805C9760  38 80 00 00 */	li r4, 0
/* 805C9764  38 A0 00 05 */	li r5, 5
/* 805C9768  38 C0 00 00 */	li r6, 0
/* 805C976C  4B E1 F1 55 */	bl mSP_SearchItemCategoryPriority
/* 805C9770  2C 03 00 00 */	cmpwi r3, 0
/* 805C9774  40 82 00 20 */	bne lbl_805C9794
/* 805C9778  7F C3 F3 78 */	mr r3, r30
/* 805C977C  38 80 00 00 */	li r4, 0
/* 805C9780  38 A0 00 12 */	li r5, 0x12
/* 805C9784  38 C0 00 00 */	li r6, 0
/* 805C9788  4B E1 F1 39 */	bl mSP_SearchItemCategoryPriority
/* 805C978C  2C 03 00 00 */	cmpwi r3, 0
/* 805C9790  41 82 00 14 */	beq lbl_805C97A4
lbl_805C9794:
/* 805C9794  7F C3 F3 78 */	mr r3, r30
/* 805C9798  4B E1 EF 09 */	bl mSP_ItemNo2ItemPrice
/* 805C979C  90 7D 50 8C */	stw r3, 0x508c(r29)
/* 805C97A0  48 00 00 0C */	b lbl_805C97AC
lbl_805C97A4:
/* 805C97A4  38 00 00 00 */	li r0, 0
/* 805C97A8  90 1D 50 8C */	stw r0, 0x508c(r29)
lbl_805C97AC:
/* 805C97AC  39 61 00 20 */	addi r11, r1, 0x20
/* 805C97B0  4B AD 17 71 */	bl func_8009AF20
/* 805C97B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C97B8  7C 08 03 A6 */	mtlr r0
/* 805C97BC  38 21 00 20 */	addi r1, r1, 0x20
/* 805C97C0  4E 80 00 20 */	blr 
