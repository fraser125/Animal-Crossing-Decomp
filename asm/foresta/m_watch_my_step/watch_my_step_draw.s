lbl_803F531C:
/* 803F531C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803F5320  7C 08 02 A6 */	mflr r0
/* 803F5324  90 01 00 34 */	stw r0, 0x34(r1)
/* 803F5328  39 61 00 30 */	addi r11, r1, 0x30
/* 803F532C  4B CA 5B 9D */	bl func_8009AEC8
/* 803F5330  7C 7A 1B 78 */	mr r26, r3
/* 803F5334  83 83 00 00 */	lwz r28, 0(r3)
/* 803F5338  7F 5D D3 78 */	mr r29, r26
/* 803F533C  80 9C 02 D4 */	lwz r4, 0x2d4(r28)
/* 803F5340  38 04 FF C0 */	addi r0, r4, -64
/* 803F5344  90 1C 02 D4 */	stw r0, 0x2d4(r28)
/* 803F5348  7C 1B 03 78 */	mr r27, r0
/* 803F534C  48 00 07 85 */	bl navigate_camera_draw
/* 803F5350  7F 43 D3 78 */	mr r3, r26
/* 803F5354  48 00 0E 35 */	bl mWt_mybell_confirmation_draw
/* 803F5358  3C 60 81 17 */	lis r3, data_81171558@ha /* 0x81171558@ha */
/* 803F535C  38 63 15 58 */	addi r3, r3, data_81171558@l /* 0x81171558@l */
/* 803F5360  88 03 00 2D */	lbz r0, 0x2d(r3)
/* 803F5364  28 00 00 00 */	cmplwi r0, 0
/* 803F5368  41 82 04 94 */	beq lbl_803F57FC
/* 803F536C  28 1B 00 00 */	cmplwi r27, 0
/* 803F5370  41 82 00 28 */	beq lbl_803F5398
/* 803F5374  7F 63 DB 78 */	mr r3, r27
/* 803F5378  4B FB AD 69 */	bl mFont_CulcOrthoMatrix
/* 803F537C  80 9C 02 F0 */	lwz r4, 0x2f0(r28)
/* 803F5380  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380007@ha */
/* 803F5384  38 03 00 07 */	addi r0, r3, 0x0007 /* 0xDA380007@l */
/* 803F5388  38 64 00 08 */	addi r3, r4, 8
/* 803F538C  90 7C 02 F0 */	stw r3, 0x2f0(r28)
/* 803F5390  90 04 00 00 */	stw r0, 0(r4)
/* 803F5394  93 64 00 04 */	stw r27, 4(r4)
lbl_803F5398:
/* 803F5398  3C 80 80 64 */	lis r4, lit_623@ha /* 0x80643384@ha */
/* 803F539C  38 60 00 00 */	li r3, 0
/* 803F53A0  C0 24 33 84 */	lfs f1, lit_623@l(r4)  /* 0x80643384@l */
/* 803F53A4  FC 40 08 90 */	fmr f2, f1
/* 803F53A8  FC 60 08 90 */	fmr f3, f1
/* 803F53AC  48 01 70 41 */	bl Matrix_scale
/* 803F53B0  3C 60 81 17 */	lis r3, data_81171558@ha /* 0x81171558@ha */
/* 803F53B4  3C 80 80 64 */	lis r4, data_8064331C@ha /* 0x8064331C@ha */
/* 803F53B8  3B C3 15 58 */	addi r30, r3, data_81171558@l /* 0x81171558@l */
/* 803F53BC  C0 64 33 1C */	lfs f3, data_8064331C@l(r4)  /* 0x8064331C@l */
/* 803F53C0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 803F53C4  38 60 00 01 */	li r3, 1
/* 803F53C8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 803F53CC  FC 40 00 50 */	fneg f2, f0
/* 803F53D0  48 01 6F 31 */	bl Matrix_translate
/* 803F53D4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 803F53D8  83 7C 02 F0 */	lwz r27, 0x2f0(r28)
/* 803F53DC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 803F53E0  7F 83 E3 78 */	mr r3, r28
/* 803F53E4  90 1B 00 00 */	stw r0, 0(r27)
/* 803F53E8  48 01 7F ED */	bl _Matrix_to_Mtx_new
/* 803F53EC  90 7B 00 04 */	stw r3, 4(r27)
/* 803F53F0  3C 00 DE 00 */	lis r0, 0xde00
/* 803F53F4  3C A0 E2 00 */	lis r5, 0xE200 /* 0xE200001C@ha */
/* 803F53F8  3C 60 80 EE */	lis r3, fki_win_mode@ha /* 0x80EE5018@ha */
/* 803F53FC  90 1B 00 08 */	stw r0, 8(r27)
/* 803F5400  38 03 50 18 */	addi r0, r3, fki_win_mode@l /* 0x80EE5018@l */
/* 803F5404  3C 60 81 17 */	lis r3, data_81171558@ha /* 0x81171558@ha */
/* 803F5408  38 A5 00 1C */	addi r5, r5, 0x001C /* 0xE200001C@l */
/* 803F540C  90 1B 00 0C */	stw r0, 0xc(r27)
/* 803F5410  3C 80 00 50 */	lis r4, 0x0050 /* 0x00504340@ha */
/* 803F5414  38 04 43 40 */	addi r0, r4, 0x4340 /* 0x00504340@l */
/* 803F5418  3B E3 15 58 */	addi r31, r3, data_81171558@l /* 0x81171558@l */
/* 803F541C  90 BB 00 10 */	stw r5, 0x10(r27)
/* 803F5420  90 1B 00 14 */	stw r0, 0x14(r27)
/* 803F5424  3B 7B 00 18 */	addi r27, r27, 0x18
/* 803F5428  88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 803F542C  2C 00 00 03 */	cmpwi r0, 3
/* 803F5430  41 82 00 24 */	beq lbl_803F5454
/* 803F5434  40 80 00 14 */	bge lbl_803F5448
/* 803F5438  2C 00 00 01 */	cmpwi r0, 1
/* 803F543C  41 82 01 18 */	beq lbl_803F5554
/* 803F5440  40 80 00 9C */	bge lbl_803F54DC
/* 803F5444  48 00 02 54 */	b lbl_803F5698
lbl_803F5448:
/* 803F5448  2C 00 00 05 */	cmpwi r0, 5
/* 803F544C  40 80 02 4C */	bge lbl_803F5698
/* 803F5450  48 00 01 80 */	b lbl_803F55D0
lbl_803F5454:
/* 803F5454  48 01 6D 81 */	bl Matrix_push
/* 803F5458  3C 60 81 17 */	lis r3, data_81171558@ha /* 0x81171558@ha */
/* 803F545C  3C 80 80 64 */	lis r4, lit_624@ha /* 0x80643388@ha */
/* 803F5460  38 A3 15 58 */	addi r5, r3, data_81171558@l /* 0x81171558@l */
/* 803F5464  C0 24 33 88 */	lfs f1, lit_624@l(r4)  /* 0x80643388@l */
/* 803F5468  3C 60 80 64 */	lis r3, lit_626@ha /* 0x80643390@ha */
/* 803F546C  C0 65 00 14 */	lfs f3, 0x14(r5)
/* 803F5470  C0 03 33 90 */	lfs f0, lit_626@l(r3)  /* 0x80643390@l */
/* 803F5474  3C 80 80 64 */	lis r4, lit_545@ha /* 0x80643338@ha */
/* 803F5478  3C 60 80 64 */	lis r3, lit_625@ha /* 0x8064338C@ha */
/* 803F547C  EC 41 00 F2 */	fmuls f2, f1, f3
/* 803F5480  EC 00 00 F2 */	fmuls f0, f0, f3
/* 803F5484  C0 23 33 8C */	lfs f1, lit_625@l(r3)  /* 0x8064338C@l */
/* 803F5488  C0 84 33 38 */	lfs f4, lit_545@l(r4)  /* 0x80643338@l */
/* 803F548C  38 60 00 01 */	li r3, 1
/* 803F5490  C0 65 00 08 */	lfs f3, 8(r5)
/* 803F5494  EC 44 10 2A */	fadds f2, f4, f2
/* 803F5498  EC 01 00 2A */	fadds f0, f1, f0
/* 803F549C  EC 23 00 B2 */	fmuls f1, f3, f2
/* 803F54A0  EC 43 00 32 */	fmuls f2, f3, f0
/* 803F54A4  48 01 6F 49 */	bl Matrix_scale
/* 803F54A8  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 803F54AC  7F 83 E3 78 */	mr r3, r28
/* 803F54B0  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 803F54B4  90 1B 00 00 */	stw r0, 0(r27)
/* 803F54B8  48 01 7F 1D */	bl _Matrix_to_Mtx_new
/* 803F54BC  90 7B 00 04 */	stw r3, 4(r27)
/* 803F54C0  48 01 6D 55 */	bl Matrix_pull
/* 803F54C4  3C 00 DE 00 */	lis r0, 0xde00
/* 803F54C8  3C 60 80 EE */	lis r3, fki_win_w3T_model@ha /* 0x80EE4F70@ha */
/* 803F54CC  90 1B 00 08 */	stw r0, 8(r27)
/* 803F54D0  38 03 4F 70 */	addi r0, r3, fki_win_w3T_model@l /* 0x80EE4F70@l */
/* 803F54D4  90 1B 00 0C */	stw r0, 0xc(r27)
/* 803F54D8  3B 7B 00 10 */	addi r27, r27, 0x10
lbl_803F54DC:
/* 803F54DC  48 01 6C F9 */	bl Matrix_push
/* 803F54E0  3C 60 81 17 */	lis r3, data_81171558@ha /* 0x81171558@ha */
/* 803F54E4  3C 80 80 64 */	lis r4, lit_553@ha /* 0x80643358@ha */
/* 803F54E8  38 A3 15 58 */	addi r5, r3, data_81171558@l /* 0x81171558@l */
/* 803F54EC  38 C4 33 58 */	addi r6, r4, lit_553@l /* 0x80643358@l */
/* 803F54F0  3C 60 80 64 */	lis r3, lit_627@ha /* 0x80643394@ha */
/* 803F54F4  38 83 33 94 */	addi r4, r3, lit_627@l /* 0x80643394@l */
/* 803F54F8  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 803F54FC  C0 66 00 00 */	lfs f3, 0(r6)
/* 803F5500  3C 60 80 64 */	lis r3, data_8064331C@ha /* 0x8064331C@ha */
/* 803F5504  C0 44 00 00 */	lfs f2, 0(r4)
/* 803F5508  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 803F550C  EC 23 00 72 */	fmuls f1, f3, f1
/* 803F5510  C0 63 33 1C */	lfs f3, data_8064331C@l(r3)  /* 0x8064331C@l */
/* 803F5514  38 60 00 01 */	li r3, 1
/* 803F5518  EC 42 00 32 */	fmuls f2, f2, f0
/* 803F551C  48 01 6D E5 */	bl Matrix_translate
/* 803F5520  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 803F5524  7F 83 E3 78 */	mr r3, r28
/* 803F5528  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 803F552C  90 1B 00 00 */	stw r0, 0(r27)
/* 803F5530  48 01 7E A5 */	bl _Matrix_to_Mtx_new
/* 803F5534  90 7B 00 04 */	stw r3, 4(r27)
/* 803F5538  48 01 6C DD */	bl Matrix_pull
/* 803F553C  3C 00 DE 00 */	lis r0, 0xde00
/* 803F5540  3C 60 80 EE */	lis r3, fki_win_w2T_model@ha /* 0x80EE4FE0@ha */
/* 803F5544  90 1B 00 08 */	stw r0, 8(r27)
/* 803F5548  38 03 4F E0 */	addi r0, r3, fki_win_w2T_model@l /* 0x80EE4FE0@l */
/* 803F554C  90 1B 00 0C */	stw r0, 0xc(r27)
/* 803F5550  3B 7B 00 10 */	addi r27, r27, 0x10
lbl_803F5554:
/* 803F5554  48 01 6C 81 */	bl Matrix_push
/* 803F5558  3C 60 81 17 */	lis r3, data_81171558@ha /* 0x81171558@ha */
/* 803F555C  3C 80 80 64 */	lis r4, lit_628@ha /* 0x80643398@ha */
/* 803F5560  38 A3 15 58 */	addi r5, r3, data_81171558@l /* 0x81171558@l */
/* 803F5564  38 C4 33 98 */	addi r6, r4, lit_628@l /* 0x80643398@l */
/* 803F5568  3C 60 80 64 */	lis r3, lit_629@ha /* 0x8064339C@ha */
/* 803F556C  38 83 33 9C */	addi r4, r3, lit_629@l /* 0x8064339C@l */
/* 803F5570  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 803F5574  C0 66 00 00 */	lfs f3, 0(r6)
/* 803F5578  3C 60 80 64 */	lis r3, data_8064331C@ha /* 0x8064331C@ha */
/* 803F557C  C0 44 00 00 */	lfs f2, 0(r4)
/* 803F5580  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 803F5584  EC 23 00 72 */	fmuls f1, f3, f1
/* 803F5588  C0 63 33 1C */	lfs f3, data_8064331C@l(r3)  /* 0x8064331C@l */
/* 803F558C  38 60 00 01 */	li r3, 1
/* 803F5590  EC 42 00 32 */	fmuls f2, f2, f0
/* 803F5594  48 01 6D 6D */	bl Matrix_translate
/* 803F5598  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 803F559C  7F 83 E3 78 */	mr r3, r28
/* 803F55A0  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 803F55A4  90 1B 00 00 */	stw r0, 0(r27)
/* 803F55A8  48 01 7E 2D */	bl _Matrix_to_Mtx_new
/* 803F55AC  90 7B 00 04 */	stw r3, 4(r27)
/* 803F55B0  48 01 6C 65 */	bl Matrix_pull
/* 803F55B4  3C 00 DE 00 */	lis r0, 0xde00
/* 803F55B8  3C 60 80 EE */	lis r3, fki_win_w1T_model@ha /* 0x80EE4FA8@ha */
/* 803F55BC  90 1B 00 08 */	stw r0, 8(r27)
/* 803F55C0  38 03 4F A8 */	addi r0, r3, fki_win_w1T_model@l /* 0x80EE4FA8@l */
/* 803F55C4  90 1B 00 0C */	stw r0, 0xc(r27)
/* 803F55C8  3B 7B 00 10 */	addi r27, r27, 0x10
/* 803F55CC  48 00 00 CC */	b lbl_803F5698
lbl_803F55D0:
/* 803F55D0  3C 60 80 64 */	lis r3, lit_630@ha /* 0x806433A0@ha */
/* 803F55D4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 803F55D8  C0 23 33 A0 */	lfs f1, lit_630@l(r3)  /* 0x806433A0@l */
/* 803F55DC  EC 01 00 32 */	fmuls f0, f1, f0
/* 803F55E0  FC 00 00 1E */	fctiwz f0, f0
/* 803F55E4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803F55E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F55EC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 803F55F0  64 03 FA 00 */	oris r3, r0, 0xfa00
/* 803F55F4  64 00 FF FF */	oris r0, r0, 0xffff
/* 803F55F8  90 7B 00 00 */	stw r3, 0(r27)
/* 803F55FC  60 00 D7 00 */	ori r0, r0, 0xd700
/* 803F5600  90 1B 00 04 */	stw r0, 4(r27)
/* 803F5604  3B 7B 00 08 */	addi r27, r27, 8
/* 803F5608  48 01 6B CD */	bl Matrix_push
/* 803F560C  3C A0 81 17 */	lis r5, data_81171558@ha /* 0x81171558@ha */
/* 803F5610  3C 80 80 64 */	lis r4, lit_624@ha /* 0x80643388@ha */
/* 803F5614  38 E5 15 58 */	addi r7, r5, data_81171558@l /* 0x81171558@l */
/* 803F5618  3C 60 80 64 */	lis r3, lit_626@ha /* 0x80643390@ha */
/* 803F561C  38 A4 33 88 */	addi r5, r4, lit_624@l /* 0x80643388@l */
/* 803F5620  C0 03 33 90 */	lfs f0, lit_626@l(r3)  /* 0x80643390@l */
/* 803F5624  C0 47 00 14 */	lfs f2, 0x14(r7)
/* 803F5628  3C 80 80 64 */	lis r4, lit_625@ha /* 0x8064338C@ha */
/* 803F562C  C0 25 00 00 */	lfs f1, 0(r5)
/* 803F5630  3C C0 80 64 */	lis r6, lit_545@ha /* 0x80643338@ha */
/* 803F5634  38 A4 33 8C */	addi r5, r4, lit_625@l /* 0x8064338C@l */
/* 803F5638  EC 00 00 B2 */	fmuls f0, f0, f2
/* 803F563C  EC 21 00 B2 */	fmuls f1, f1, f2
/* 803F5640  C0 66 33 38 */	lfs f3, lit_545@l(r6)  /* 0x80643338@l */
/* 803F5644  C0 45 00 00 */	lfs f2, 0(r5)
/* 803F5648  3C 60 80 64 */	lis r3, lit_544@ha /* 0x80643334@ha */
/* 803F564C  38 83 33 34 */	addi r4, r3, lit_544@l /* 0x80643334@l */
/* 803F5650  EC 23 08 2A */	fadds f1, f3, f1
/* 803F5654  EC 42 00 2A */	fadds f2, f2, f0
/* 803F5658  C0 64 00 00 */	lfs f3, 0(r4)
/* 803F565C  38 60 00 01 */	li r3, 1
/* 803F5660  48 01 6D 8D */	bl Matrix_scale
/* 803F5664  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 803F5668  7F 83 E3 78 */	mr r3, r28
/* 803F566C  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 803F5670  90 1B 00 00 */	stw r0, 0(r27)
/* 803F5674  48 01 7D 61 */	bl _Matrix_to_Mtx_new
/* 803F5678  90 7B 00 04 */	stw r3, 4(r27)
/* 803F567C  48 01 6B 99 */	bl Matrix_pull
/* 803F5680  3C 00 DE 00 */	lis r0, 0xde00
/* 803F5684  3C 60 80 EE */	lis r3, fki_win_w4_model@ha /* 0x80EE4F40@ha */
/* 803F5688  90 1B 00 08 */	stw r0, 8(r27)
/* 803F568C  38 03 4F 40 */	addi r0, r3, fki_win_w4_model@l /* 0x80EE4F40@l */
/* 803F5690  90 1B 00 0C */	stw r0, 0xc(r27)
/* 803F5694  3B 7B 00 10 */	addi r27, r27, 0x10
lbl_803F5698:
/* 803F5698  3C 80 80 64 */	lis r4, lit_544@ha /* 0x80643334@ha */
/* 803F569C  38 60 00 00 */	li r3, 0
/* 803F56A0  C0 24 33 34 */	lfs f1, lit_544@l(r4)  /* 0x80643334@l */
/* 803F56A4  FC 40 08 90 */	fmr f2, f1
/* 803F56A8  FC 60 08 90 */	fmr f3, f1
/* 803F56AC  48 01 6D 41 */	bl Matrix_scale
/* 803F56B0  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 803F56B4  7F 7A DB 78 */	mr r26, r27
/* 803F56B8  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 803F56BC  7F 83 E3 78 */	mr r3, r28
/* 803F56C0  90 1B 00 00 */	stw r0, 0(r27)
/* 803F56C4  3B 7B 00 08 */	addi r27, r27, 8
/* 803F56C8  48 01 7D 0D */	bl _Matrix_to_Mtx_new
/* 803F56CC  90 7A 00 04 */	stw r3, 4(r26)
/* 803F56D0  93 7C 02 F0 */	stw r27, 0x2f0(r28)
/* 803F56D4  88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 803F56D8  28 00 00 03 */	cmplwi r0, 3
/* 803F56DC  41 80 01 20 */	blt lbl_803F57FC
/* 803F56E0  3C 80 81 17 */	lis r4, data_81171558@ha /* 0x81171558@ha */
/* 803F56E4  3C 60 80 64 */	lis r3, lit_632@ha /* 0x806433A8@ha */
/* 803F56E8  38 84 15 58 */	addi r4, r4, data_81171558@l /* 0x81171558@l */
/* 803F56EC  C0 A3 33 A8 */	lfs f5, lit_632@l(r3)  /* 0x806433A8@l */
/* 803F56F0  C0 04 00 08 */	lfs f0, 8(r4)
/* 803F56F4  3C A0 80 64 */	lis r5, lit_631@ha /* 0x806433A4@ha */
/* 803F56F8  C0 45 33 A4 */	lfs f2, lit_631@l(r5)  /* 0x806433A4@l */
/* 803F56FC  3C 60 80 64 */	lis r3, data_8064331C@ha /* 0x8064331C@ha */
/* 803F5700  EC 20 28 28 */	fsubs f1, f0, f5
/* 803F5704  C0 03 33 1C */	lfs f0, data_8064331C@l(r3)  /* 0x8064331C@l */
/* 803F5708  EC E2 00 72 */	fmuls f7, f2, f1
/* 803F570C  FC 07 00 40 */	fcmpo cr0, f7, f0
/* 803F5710  40 81 00 EC */	ble lbl_803F57FC
/* 803F5714  3C 60 80 64 */	lis r3, lit_638@ha /* 0x806433C0@ha */
/* 803F5718  3C C0 80 64 */	lis r6, lit_554@ha /* 0x8064335C@ha */
/* 803F571C  C0 03 33 C0 */	lfs f0, lit_638@l(r3)  /* 0x806433C0@l */
/* 803F5720  3C A0 80 64 */	lis r5, lit_637@ha /* 0x806433BC@ha */
/* 803F5724  C1 44 00 14 */	lfs f10, 0x14(r4)
/* 803F5728  38 00 00 01 */	li r0, 1
/* 803F572C  C0 C6 33 5C */	lfs f6, lit_554@l(r6)  /* 0x8064335C@l */
/* 803F5730  3C C0 80 64 */	lis r6, lit_635@ha /* 0x806433B4@ha */
/* 803F5734  C0 25 33 BC */	lfs f1, lit_637@l(r5)  /* 0x806433BC@l */
/* 803F5738  EC 00 02 B2 */	fmuls f0, f0, f10
/* 803F573C  3C 60 80 64 */	lis r3, lit_634@ha /* 0x806433B0@ha */
/* 803F5740  EC 46 02 B2 */	fmuls f2, f6, f10
/* 803F5744  90 01 00 08 */	stw r0, 8(r1)
/* 803F5748  3D 00 80 64 */	lis r8, lit_544@ha /* 0x80643334@ha */
/* 803F574C  EC 21 00 2A */	fadds f1, f1, f0
/* 803F5750  C0 03 33 B0 */	lfs f0, lit_634@l(r3)  /* 0x806433B0@l */
/* 803F5754  3C 60 80 64 */	lis r3, lit_556@ha /* 0x80643364@ha */
/* 803F5758  38 E3 33 64 */	addi r7, r3, lit_556@l /* 0x80643364@l */
/* 803F575C  C0 86 33 B4 */	lfs f4, lit_635@l(r6)  /* 0x806433B4@l */
/* 803F5760  3C 60 80 64 */	lis r3, lit_630@ha /* 0x806433A0@ha */
/* 803F5764  EC 60 10 2A */	fadds f3, f0, f2
/* 803F5768  C0 03 33 A0 */	lfs f0, lit_630@l(r3)  /* 0x806433A0@l */
/* 803F576C  90 01 00 0C */	stw r0, 0xc(r1)
/* 803F5770  EC 25 00 72 */	fmuls f1, f5, f1
/* 803F5774  EC 00 01 F2 */	fmuls f0, f0, f7
/* 803F5778  C1 07 00 00 */	lfs f8, 0(r7)
/* 803F577C  C0 E4 00 00 */	lfs f7, 0(r4)
/* 803F5780  3C A0 80 64 */	lis r5, lit_636@ha /* 0x806433B8@ha */
/* 803F5784  FC 00 00 1E */	fctiwz f0, f0
/* 803F5788  C0 5E 00 04 */	lfs f2, 4(r30)
/* 803F578C  EC A5 00 F2 */	fmuls f5, f5, f3
/* 803F5790  C1 28 33 34 */	lfs f9, lit_544@l(r8)  /* 0x80643334@l */
/* 803F5794  EC E8 38 2A */	fadds f7, f8, f7
/* 803F5798  3C C0 80 64 */	lis r6, lit_633@ha /* 0x806433AC@ha */
/* 803F579C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803F57A0  EC 02 08 28 */	fsubs f0, f2, f1
/* 803F57A4  C0 25 33 B8 */	lfs f1, lit_636@l(r5)  /* 0x806433B8@l */
/* 803F57A8  EC 44 02 B2 */	fmuls f2, f4, f10
/* 803F57AC  EC 87 28 28 */	fsubs f4, f7, f5
/* 803F57B0  C1 06 33 AC */	lfs f8, lit_633@l(r6)  /* 0x806433AC@l */
/* 803F57B4  EC 01 00 2A */	fadds f0, f1, f0
/* 803F57B8  3C 60 80 64 */	lis r3, lit_559@ha /* 0x80643370@ha */
/* 803F57BC  EC A9 50 28 */	fsubs f5, f9, f10
/* 803F57C0  EC 28 20 2A */	fadds f1, f8, f4
/* 803F57C4  C0 63 33 70 */	lfs f3, lit_559@l(r3)  /* 0x80643370@l */
/* 803F57C8  EC 02 00 2A */	fadds f0, f2, f0
/* 803F57CC  81 21 00 14 */	lwz r9, 0x14(r1)
/* 803F57D0  7F A3 EB 78 */	mr r3, r29
/* 803F57D4  FC 80 18 90 */	fmr f4, f3
/* 803F57D8  EC 25 08 2A */	fadds f1, f5, f1
/* 803F57DC  38 84 00 1D */	addi r4, r4, 0x1d
/* 803F57E0  EC 46 00 2A */	fadds f2, f6, f0
/* 803F57E4  38 A0 00 10 */	li r5, 0x10
/* 803F57E8  38 C0 00 2D */	li r6, 0x2d
/* 803F57EC  38 E0 00 2D */	li r7, 0x2d
/* 803F57F0  39 00 00 23 */	li r8, 0x23
/* 803F57F4  39 40 00 00 */	li r10, 0
/* 803F57F8  4B FB A8 B1 */	bl mFont_SetLineStrings
lbl_803F57FC:
/* 803F57FC  39 61 00 30 */	addi r11, r1, 0x30
/* 803F5800  4B CA 57 15 */	bl func_8009AF14
/* 803F5804  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803F5808  7C 08 03 A6 */	mtlr r0
/* 803F580C  38 21 00 30 */	addi r1, r1, 0x30
/* 803F5810  4E 80 00 20 */	blr 
