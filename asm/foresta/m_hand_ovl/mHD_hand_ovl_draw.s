lbl_805DF2E4:
/* 805DF2E4  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 805DF2E8  7C 08 02 A6 */	mflr r0
/* 805DF2EC  90 01 00 94 */	stw r0, 0x94(r1)
/* 805DF2F0  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 805DF2F4  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 805DF2F8  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 805DF2FC  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 805DF300  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 805DF304  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 805DF308  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 805DF30C  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 805DF310  DB 61 00 40 */	stfd f27, 0x40(r1)
/* 805DF314  F3 61 00 48 */	psq_st f27, 72(r1), 0, 0 /* qr0 */
/* 805DF318  DB 41 00 30 */	stfd f26, 0x30(r1)
/* 805DF31C  F3 41 00 38 */	psq_st f26, 56(r1), 0, 0 /* qr0 */
/* 805DF320  39 61 00 30 */	addi r11, r1, 0x30
/* 805DF324  4B AB BB AD */	bl func_8009AED0
/* 805DF328  7C 7C 1B 78 */	mr r28, r3
/* 805DF32C  7C 9D 23 78 */	mr r29, r4
/* 805DF330  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805DF334  83 C4 00 00 */	lwz r30, 0(r4)
/* 805DF338  83 E3 09 80 */	lwz r31, 0x980(r3)
/* 805DF33C  80 1F 00 00 */	lwz r0, 0(r31)
/* 805DF340  2C 00 00 00 */	cmpwi r0, 0
/* 805DF344  41 82 03 30 */	beq lbl_805DF674
/* 805DF348  38 60 A0 00 */	li r3, -24576
/* 805DF34C  4B DD B7 51 */	bl cos_s
/* 805DF350  FF 40 08 90 */	fmr f26, f1
/* 805DF354  38 60 32 00 */	li r3, 0x3200
/* 805DF358  4B DD B7 99 */	bl sin_s
/* 805DF35C  FF C0 08 90 */	fmr f30, f1
/* 805DF360  38 60 32 00 */	li r3, 0x3200
/* 805DF364  4B DD B7 39 */	bl cos_s
/* 805DF368  FF E0 08 90 */	fmr f31, f1
/* 805DF36C  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 805DF370  FC 40 D0 50 */	fneg f2, f26
/* 805DF374  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805DF378  EC 03 07 B2 */	fmuls f0, f3, f30
/* 805DF37C  C0 9F 00 04 */	lfs f4, 4(r31)
/* 805DF380  EC 63 07 F2 */	fmuls f3, f3, f31
/* 805DF384  C0 BF 00 10 */	lfs f5, 0x10(r31)
/* 805DF388  EF 62 07 B2 */	fmuls f27, f2, f30
/* 805DF38C  3C 60 80 65 */	lis r3, lit_474@ha /* 0x8064B2A4@ha */
/* 805DF390  EF 5A 07 F2 */	fmuls f26, f26, f31
/* 805DF394  EC 64 18 2A */	fadds f3, f4, f3
/* 805DF398  EC 45 06 F2 */	fmuls f2, f5, f27
/* 805DF39C  C0 83 B2 A4 */	lfs f4, lit_474@l(r3)  /* 0x8064B2A4@l */
/* 805DF3A0  EC 21 00 2A */	fadds f1, f1, f0
/* 805DF3A4  EC 05 06 B2 */	fmuls f0, f5, f26
/* 805DF3A8  EC 43 10 2A */	fadds f2, f3, f2
/* 805DF3AC  EC 01 00 2A */	fadds f0, f1, f0
/* 805DF3B0  EF A4 10 2A */	fadds f29, f4, f2
/* 805DF3B4  EF 80 20 28 */	fsubs f28, f0, f4
/* 805DF3B8  4B E2 CE 1D */	bl Matrix_push
/* 805DF3BC  3C 80 80 65 */	lis r4, lit_544@ha /* 0x8064B2CC@ha */
/* 805DF3C0  3C 60 80 65 */	lis r3, lit_1272@ha /* 0x8064B30C@ha */
/* 805DF3C4  C0 24 B2 CC */	lfs f1, lit_544@l(r4)  /* 0x8064B2CC@l */
/* 805DF3C8  3C A0 80 65 */	lis r5, lit_474@ha /* 0x8064B2A4@ha */
/* 805DF3CC  C0 03 B3 0C */	lfs f0, lit_1272@l(r3)  /* 0x8064B30C@l */
/* 805DF3D0  3C 80 80 65 */	lis r4, lit_1273@ha /* 0x8064B310@ha */
/* 805DF3D4  EC 21 E8 2A */	fadds f1, f1, f29
/* 805DF3D8  C0 85 B2 A4 */	lfs f4, lit_474@l(r5)  /* 0x8064B2A4@l */
/* 805DF3DC  EC 00 E0 28 */	fsubs f0, f0, f28
/* 805DF3E0  3C A0 80 65 */	lis r5, lit_481@ha /* 0x8064B2C0@ha */
/* 805DF3E4  C0 45 B2 C0 */	lfs f2, lit_481@l(r5)  /* 0x8064B2C0@l */
/* 805DF3E8  3C A0 80 65 */	lis r5, lit_1271@ha /* 0x8064B308@ha */
/* 805DF3EC  EC 61 20 28 */	fsubs f3, f1, f4
/* 805DF3F0  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 805DF3F4  EC 24 00 2A */	fadds f1, f4, f0
/* 805DF3F8  C0 04 B3 10 */	lfs f0, lit_1273@l(r4)  /* 0x8064B310@l */
/* 805DF3FC  81 83 09 6C */	lwz r12, 0x96c(r3)
/* 805DF400  3C 80 80 65 */	lis r4, data_8064B29C@ha /* 0x8064B29C@ha */
/* 805DF404  EC 43 10 28 */	fsubs f2, f3, f2
/* 805DF408  7F C3 F3 78 */	mr r3, r30
/* 805DF40C  EC 01 00 28 */	fsubs f0, f1, f0
/* 805DF410  C0 25 B3 08 */	lfs f1, lit_1271@l(r5)  /* 0x8064B308@l */
/* 805DF414  38 A0 00 40 */	li r5, 0x40
/* 805DF418  38 C0 00 40 */	li r6, 0x40
/* 805DF41C  EC 64 00 B2 */	fmuls f3, f4, f2
/* 805DF420  C0 44 B2 9C */	lfs f2, data_8064B29C@l(r4)  /* 0x8064B29C@l */
/* 805DF424  EC 84 00 32 */	fmuls f4, f4, f0
/* 805DF428  38 80 00 00 */	li r4, 0
/* 805DF42C  7D 89 03 A6 */	mtctr r12
/* 805DF430  4E 80 04 21 */	bctrl 
/* 805DF434  7F 83 E3 78 */	mr r3, r28
/* 805DF438  7F A4 EB 78 */	mr r4, r29
/* 805DF43C  38 A0 00 01 */	li r5, 1
/* 805DF440  4B FF FC 61 */	bl mHD_hand_shape_draw
/* 805DF444  80 DC 00 2C */	lwz r6, 0x2c(r28)
/* 805DF448  7F 83 E3 78 */	mr r3, r28
/* 805DF44C  7F C4 F3 78 */	mr r4, r30
/* 805DF450  38 A0 00 00 */	li r5, 0
/* 805DF454  81 86 09 64 */	lwz r12, 0x964(r6)
/* 805DF458  7D 89 03 A6 */	mtctr r12
/* 805DF45C  4E 80 04 21 */	bctrl 
/* 805DF460  4B E2 CD B5 */	bl Matrix_pull
/* 805DF464  3C 80 80 65 */	lis r4, lit_1275@ha /* 0x8064B318@ha */
/* 805DF468  3C 60 80 65 */	lis r3, lit_1276@ha /* 0x8064B31C@ha */
/* 805DF46C  C0 24 B3 18 */	lfs f1, lit_1275@l(r4)  /* 0x8064B318@l */
/* 805DF470  3C A0 80 65 */	lis r5, lit_1274@ha /* 0x8064B314@ha */
/* 805DF474  C0 63 B3 1C */	lfs f3, lit_1276@l(r3)  /* 0x8064B31C@l */
/* 805DF478  3C 60 80 65 */	lis r3, lit_1277@ha /* 0x8064B320@ha */
/* 805DF47C  EC 41 07 B2 */	fmuls f2, f1, f30
/* 805DF480  C0 A5 B3 14 */	lfs f5, lit_1274@l(r5)  /* 0x8064B314@l */
/* 805DF484  EC 03 06 B2 */	fmuls f0, f3, f26
/* 805DF488  80 9C 00 2C */	lwz r4, 0x2c(r28)
/* 805DF48C  EC 81 07 F2 */	fmuls f4, f1, f31
/* 805DF490  C0 23 B3 20 */	lfs f1, lit_1277@l(r3)  /* 0x8064B320@l */
/* 805DF494  EC 63 06 F2 */	fmuls f3, f3, f27
/* 805DF498  3C 60 80 65 */	lis r3, data_8064B29C@ha /* 0x8064B29C@ha */
/* 805DF49C  EC 42 00 2A */	fadds f2, f2, f0
/* 805DF4A0  80 84 09 7C */	lwz r4, 0x97c(r4)
/* 805DF4A4  EF BD 28 28 */	fsubs f29, f29, f5
/* 805DF4A8  C0 03 B2 9C */	lfs f0, data_8064B29C@l(r3)  /* 0x8064B29C@l */
/* 805DF4AC  EC 64 18 2A */	fadds f3, f4, f3
/* 805DF4B0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805DF4B4  EC 22 08 28 */	fsubs f1, f2, f1
/* 805DF4B8  EF 9C 28 2A */	fadds f28, f28, f5
/* 805DF4BC  EC 5D 18 2A */	fadds f2, f29, f3
/* 805DF4C0  EC 1C 08 2A */	fadds f0, f28, f1
/* 805DF4C4  D0 41 00 08 */	stfs f2, 8(r1)
/* 805DF4C8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805DF4CC  80 84 00 40 */	lwz r4, 0x40(r4)
/* 805DF4D0  2C 04 00 12 */	cmpwi r4, 0x12
/* 805DF4D4  41 82 00 28 */	beq lbl_805DF4FC
/* 805DF4D8  40 80 00 18 */	bge lbl_805DF4F0
/* 805DF4DC  2C 04 00 0B */	cmpwi r4, 0xb
/* 805DF4E0  40 80 00 B8 */	bge lbl_805DF598
/* 805DF4E4  2C 04 00 09 */	cmpwi r4, 9
/* 805DF4E8  40 80 00 14 */	bge lbl_805DF4FC
/* 805DF4EC  48 00 00 AC */	b lbl_805DF598
lbl_805DF4F0:
/* 805DF4F0  2C 04 00 15 */	cmpwi r4, 0x15
/* 805DF4F4  41 82 00 08 */	beq lbl_805DF4FC
/* 805DF4F8  48 00 00 A0 */	b lbl_805DF598
lbl_805DF4FC:
/* 805DF4FC  A8 7F 02 30 */	lha r3, 0x230(r31)
/* 805DF500  7C 60 07 35 */	extsh. r0, r3
/* 805DF504  41 82 00 0C */	beq lbl_805DF510
/* 805DF508  2C 03 00 06 */	cmpwi r3, 6
/* 805DF50C  40 82 00 10 */	bne lbl_805DF51C
lbl_805DF510:
/* 805DF510  3C 60 80 65 */	lis r3, lit_543@ha /* 0x8064B2C8@ha */
/* 805DF514  C0 83 B2 C8 */	lfs f4, lit_543@l(r3)  /* 0x8064B2C8@l */
/* 805DF518  48 00 00 50 */	b lbl_805DF568
lbl_805DF51C:
/* 805DF51C  2C 03 00 05 */	cmpwi r3, 5
/* 805DF520  41 82 00 1C */	beq lbl_805DF53C
/* 805DF524  2C 03 00 04 */	cmpwi r3, 4
/* 805DF528  40 82 00 38 */	bne lbl_805DF560
/* 805DF52C  2C 04 00 0A */	cmpwi r4, 0xa
/* 805DF530  41 82 00 0C */	beq lbl_805DF53C
/* 805DF534  2C 04 00 15 */	cmpwi r4, 0x15
/* 805DF538  40 82 00 28 */	bne lbl_805DF560
lbl_805DF53C:
/* 805DF53C  3C 60 80 6D */	lis r3, data_806CCFA0@ha /* 0x806CCFA0@ha */
/* 805DF540  3C 80 80 65 */	lis r4, lit_543@ha /* 0x8064B2C8@ha */
/* 805DF544  38 63 CF A0 */	addi r3, r3, data_806CCFA0@l /* 0x806CCFA0@l */
/* 805DF548  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 805DF54C  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 805DF550  C0 44 B2 C8 */	lfs f2, lit_543@l(r4)  /* 0x8064B2C8@l */
/* 805DF554  EC 01 00 24 */	fdivs f0, f1, f0
/* 805DF558  EC 82 00 28 */	fsubs f4, f2, f0
/* 805DF55C  48 00 00 0C */	b lbl_805DF568
lbl_805DF560:
/* 805DF560  3C 60 80 65 */	lis r3, data_8064B29C@ha /* 0x8064B29C@ha */
/* 805DF564  C0 83 B2 9C */	lfs f4, data_8064B29C@l(r3)  /* 0x8064B29C@l */
lbl_805DF568:
/* 805DF568  3C 80 80 65 */	lis r4, lit_475@ha /* 0x8064B2A8@ha */
/* 805DF56C  3C 60 80 65 */	lis r3, lit_1278@ha /* 0x8064B324@ha */
/* 805DF570  C0 24 B2 A8 */	lfs f1, lit_475@l(r4)  /* 0x8064B2A8@l */
/* 805DF574  C0 03 B3 24 */	lfs f0, lit_1278@l(r3)  /* 0x8064B324@l */
/* 805DF578  EC 41 01 32 */	fmuls f2, f1, f4
/* 805DF57C  C0 61 00 08 */	lfs f3, 8(r1)
/* 805DF580  EC 00 01 32 */	fmuls f0, f0, f4
/* 805DF584  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 805DF588  EC 43 10 2A */	fadds f2, f3, f2
/* 805DF58C  EC 01 00 2A */	fadds f0, f1, f0
/* 805DF590  D0 41 00 08 */	stfs f2, 8(r1)
/* 805DF594  D0 01 00 0C */	stfs f0, 0xc(r1)
lbl_805DF598:
/* 805DF598  7F 83 E3 78 */	mr r3, r28
/* 805DF59C  7F C4 F3 78 */	mr r4, r30
/* 805DF5A0  38 A1 00 08 */	addi r5, r1, 8
/* 805DF5A4  4B FF F7 55 */	bl mHD_draw_item
/* 805DF5A8  7F 83 E3 78 */	mr r3, r28
/* 805DF5AC  7F C4 F3 78 */	mr r4, r30
/* 805DF5B0  38 A1 00 08 */	addi r5, r1, 8
/* 805DF5B4  4B FF F8 C1 */	bl mHD_draw_mail
/* 805DF5B8  7F 83 E3 78 */	mr r3, r28
/* 805DF5BC  7F C4 F3 78 */	mr r4, r30
/* 805DF5C0  38 A1 00 08 */	addi r5, r1, 8
/* 805DF5C4  4B FF F9 C9 */	bl mHD_draw_original
/* 805DF5C8  4B E2 CC 0D */	bl Matrix_push
/* 805DF5CC  3C 80 80 65 */	lis r4, lit_544@ha /* 0x8064B2CC@ha */
/* 805DF5D0  3C 60 80 65 */	lis r3, lit_1272@ha /* 0x8064B30C@ha */
/* 805DF5D4  C0 24 B2 CC */	lfs f1, lit_544@l(r4)  /* 0x8064B2CC@l */
/* 805DF5D8  3C A0 80 65 */	lis r5, lit_474@ha /* 0x8064B2A4@ha */
/* 805DF5DC  C0 03 B3 0C */	lfs f0, lit_1272@l(r3)  /* 0x8064B30C@l */
/* 805DF5E0  3C 80 80 65 */	lis r4, lit_1273@ha /* 0x8064B310@ha */
/* 805DF5E4  EC 21 E8 2A */	fadds f1, f1, f29
/* 805DF5E8  C0 85 B2 A4 */	lfs f4, lit_474@l(r5)  /* 0x8064B2A4@l */
/* 805DF5EC  EC 00 E0 28 */	fsubs f0, f0, f28
/* 805DF5F0  3C A0 80 65 */	lis r5, lit_481@ha /* 0x8064B2C0@ha */
/* 805DF5F4  C0 45 B2 C0 */	lfs f2, lit_481@l(r5)  /* 0x8064B2C0@l */
/* 805DF5F8  3C A0 80 65 */	lis r5, lit_1271@ha /* 0x8064B308@ha */
/* 805DF5FC  EC 61 20 28 */	fsubs f3, f1, f4
/* 805DF600  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 805DF604  EC 24 00 2A */	fadds f1, f4, f0
/* 805DF608  C0 04 B3 10 */	lfs f0, lit_1273@l(r4)  /* 0x8064B310@l */
/* 805DF60C  81 83 09 6C */	lwz r12, 0x96c(r3)
/* 805DF610  3C 80 80 65 */	lis r4, data_8064B29C@ha /* 0x8064B29C@ha */
/* 805DF614  EC 43 10 28 */	fsubs f2, f3, f2
/* 805DF618  7F C3 F3 78 */	mr r3, r30
/* 805DF61C  EC 01 00 28 */	fsubs f0, f1, f0
/* 805DF620  C0 25 B3 08 */	lfs f1, lit_1271@l(r5)  /* 0x8064B308@l */
/* 805DF624  38 A0 00 40 */	li r5, 0x40
/* 805DF628  38 C0 00 40 */	li r6, 0x40
/* 805DF62C  EC 64 00 B2 */	fmuls f3, f4, f2
/* 805DF630  C0 44 B2 9C */	lfs f2, data_8064B29C@l(r4)  /* 0x8064B29C@l */
/* 805DF634  EC 84 00 32 */	fmuls f4, f4, f0
/* 805DF638  38 80 00 00 */	li r4, 0
/* 805DF63C  7D 89 03 A6 */	mtctr r12
/* 805DF640  4E 80 04 21 */	bctrl 
/* 805DF644  7F 83 E3 78 */	mr r3, r28
/* 805DF648  7F A4 EB 78 */	mr r4, r29
/* 805DF64C  38 A0 00 00 */	li r5, 0
/* 805DF650  4B FF FA 51 */	bl mHD_hand_shape_draw
/* 805DF654  80 DC 00 2C */	lwz r6, 0x2c(r28)
/* 805DF658  7F 83 E3 78 */	mr r3, r28
/* 805DF65C  7F C4 F3 78 */	mr r4, r30
/* 805DF660  38 A0 00 00 */	li r5, 0
/* 805DF664  81 86 09 64 */	lwz r12, 0x964(r6)
/* 805DF668  7D 89 03 A6 */	mtctr r12
/* 805DF66C  4E 80 04 21 */	bctrl 
/* 805DF670  4B E2 CB A5 */	bl Matrix_pull
lbl_805DF674:
/* 805DF674  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 805DF678  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 805DF67C  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 805DF680  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 805DF684  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 805DF688  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 805DF68C  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 805DF690  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 805DF694  E3 61 00 48 */	psq_l f27, 72(r1), 0, 0 /* qr0 */
/* 805DF698  CB 61 00 40 */	lfd f27, 0x40(r1)
/* 805DF69C  E3 41 00 38 */	psq_l f26, 56(r1), 0, 0 /* qr0 */
/* 805DF6A0  39 61 00 30 */	addi r11, r1, 0x30
/* 805DF6A4  CB 41 00 30 */	lfd f26, 0x30(r1)
/* 805DF6A8  4B AB B8 75 */	bl func_8009AF1C
/* 805DF6AC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 805DF6B0  7C 08 03 A6 */	mtlr r0
/* 805DF6B4  38 21 00 90 */	addi r1, r1, 0x90
/* 805DF6B8  4E 80 00 20 */	blr 
