lbl_803F66FC:
/* 803F66FC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 803F6700  7C 08 02 A6 */	mflr r0
/* 803F6704  90 01 00 84 */	stw r0, 0x84(r1)
/* 803F6708  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 803F670C  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 803F6710  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 803F6714  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 803F6718  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 803F671C  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 803F6720  39 61 00 50 */	addi r11, r1, 0x50
/* 803F6724  4B CA 47 A9 */	bl func_8009AECC
/* 803F6728  7C 7B 1B 78 */	mr r27, r3
/* 803F672C  7C 9F 23 78 */	mr r31, r4
/* 803F6730  38 61 00 08 */	addi r3, r1, 8
/* 803F6734  38 9B 00 28 */	addi r4, r27, 0x28
/* 803F6738  4B F9 A7 BD */	bl mCoBG_CheckAttribute_BallRolling
/* 803F673C  2C 03 00 00 */	cmpwi r3, 0
/* 803F6740  41 82 00 F0 */	beq lbl_803F6830
/* 803F6744  3C 80 80 64 */	lis r4, data_806433EC@ha /* 0x806433EC@ha */
/* 803F6748  3C 60 80 64 */	lis r3, lit_408@ha /* 0x80643404@ha */
/* 803F674C  C3 C4 33 EC */	lfs f30, data_806433EC@l(r4)  /* 0x806433EC@l */
/* 803F6750  3B A1 00 08 */	addi r29, r1, 8
/* 803F6754  C3 E3 34 04 */	lfs f31, lit_408@l(r3)  /* 0x80643404@l */
/* 803F6758  3B 80 00 00 */	li r28, 0
/* 803F675C  3B C0 00 00 */	li r30, 0
lbl_803F6760:
/* 803F6760  7C 7D F2 AE */	lhax r3, r29, r30
/* 803F6764  38 9B 00 28 */	addi r4, r27, 0x28
/* 803F6768  4B F9 AA 6D */	bl mCoBG_CheckBallRollingArea
/* 803F676C  FF A0 08 90 */	fmr f29, f1
/* 803F6770  FC 1D F0 40 */	fcmpo cr0, f29, f30
/* 803F6774  40 81 00 AC */	ble lbl_803F6820
/* 803F6778  FC 1D F8 40 */	fcmpo cr0, f29, f31
/* 803F677C  40 80 00 A4 */	bge lbl_803F6820
/* 803F6780  80 7F 00 00 */	lwz r3, 0(r31)
/* 803F6784  80 1F 00 04 */	lwz r0, 4(r31)
/* 803F6788  7C 9D F2 AE */	lhax r4, r29, r30
/* 803F678C  90 61 00 0C */	stw r3, 0xc(r1)
/* 803F6790  38 64 40 00 */	addi r3, r4, 0x4000
/* 803F6794  90 01 00 10 */	stw r0, 0x10(r1)
/* 803F6798  7C 7C 07 34 */	extsh r28, r3
/* 803F679C  7F 83 E3 78 */	mr r3, r28
/* 803F67A0  80 1F 00 08 */	lwz r0, 8(r31)
/* 803F67A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F67A8  4B FC 43 49 */	bl sin_s
/* 803F67AC  3C 60 80 64 */	lis r3, data_806433EC@ha /* 0x806433EC@ha */
/* 803F67B0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 803F67B4  38 83 33 EC */	addi r4, r3, data_806433EC@l /* 0x806433EC@l */
/* 803F67B8  7F 83 E3 78 */	mr r3, r28
/* 803F67BC  C0 04 00 00 */	lfs f0, 0(r4)
/* 803F67C0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 803F67C4  4B FC 42 D9 */	bl cos_s
/* 803F67C8  3C 60 80 64 */	lis r3, lit_408@ha /* 0x80643404@ha */
/* 803F67CC  3C 80 80 64 */	lis r4, lit_425@ha /* 0x8064340C@ha */
/* 803F67D0  C0 03 34 04 */	lfs f0, lit_408@l(r3)  /* 0x80643404@l */
/* 803F67D4  3C A0 80 64 */	lis r5, lit_424@ha /* 0x80643408@ha */
/* 803F67D8  C0 44 34 0C */	lfs f2, lit_425@l(r4)  /* 0x8064340C@l */
/* 803F67DC  38 81 00 18 */	addi r4, r1, 0x18
/* 803F67E0  EC 00 E8 28 */	fsubs f0, f0, f29
/* 803F67E4  C0 65 34 08 */	lfs f3, lit_424@l(r5)  /* 0x80643408@l */
/* 803F67E8  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 803F67EC  38 A0 00 00 */	li r5, 0
/* 803F67F0  EC 02 00 32 */	fmuls f0, f2, f0
/* 803F67F4  EC 03 00 32 */	fmuls f0, f3, f0
/* 803F67F8  FC 00 00 1E */	fctiwz f0, f0
/* 803F67FC  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 803F6800  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 803F6804  7C 03 07 34 */	extsh r3, r0
/* 803F6808  48 01 76 E5 */	bl Matrix_RotateVector
/* 803F680C  7F E4 FB 78 */	mr r4, r31
/* 803F6810  38 61 00 0C */	addi r3, r1, 0xc
/* 803F6814  48 01 6B F1 */	bl Matrix_Position
/* 803F6818  38 60 00 01 */	li r3, 1
/* 803F681C  48 00 00 18 */	b lbl_803F6834
lbl_803F6820:
/* 803F6820  3B 9C 00 01 */	addi r28, r28, 1
/* 803F6824  3B DE 00 02 */	addi r30, r30, 2
/* 803F6828  2C 1C 00 02 */	cmpwi r28, 2
/* 803F682C  41 80 FF 34 */	blt lbl_803F6760
lbl_803F6830:
/* 803F6830  38 60 00 00 */	li r3, 0
lbl_803F6834:
/* 803F6834  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 803F6838  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 803F683C  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 803F6840  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 803F6844  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 803F6848  39 61 00 50 */	addi r11, r1, 0x50
/* 803F684C  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 803F6850  4B CA 46 C9 */	bl func_8009AF18
/* 803F6854  80 01 00 84 */	lwz r0, 0x84(r1)
/* 803F6858  7C 08 03 A6 */	mtlr r0
/* 803F685C  38 21 00 80 */	addi r1, r1, 0x80
/* 803F6860  4E 80 00 20 */	blr 
