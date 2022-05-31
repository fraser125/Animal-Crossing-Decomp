lbl_804AE1BC:
/* 804AE1BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804AE1C0  7C 08 02 A6 */	mflr r0
/* 804AE1C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 804AE1C8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804AE1CC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804AE1D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804AE1D4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804AE1D8  7C 7F 1B 78 */	mr r31, r3
/* 804AE1DC  3C 60 80 69 */	lis r3, lit_524@ha /* 0x8068F95C@ha */
/* 804AE1E0  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 804AE1E4  38 03 F9 5C */	addi r0, r3, lit_524@l /* 0x8068F95C@l */
/* 804AE1E8  80 DF 00 2C */	lwz r6, 0x2c(r31)
/* 804AE1EC  7C 9E 23 78 */	mr r30, r4
/* 804AE1F0  7C 04 03 78 */	mr r4, r0
/* 804AE1F4  38 61 00 08 */	addi r3, r1, 8
/* 804AE1F8  90 A1 00 08 */	stw r5, 8(r1)
/* 804AE1FC  38 A0 03 04 */	li r5, 0x304
/* 804AE200  90 C1 00 0C */	stw r6, 0xc(r1)
/* 804AE204  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804AE208  90 01 00 10 */	stw r0, 0x10(r1)
/* 804AE20C  4B EE 5D AD */	bl mCoBG_GetWaterHeight_File
/* 804AE210  80 1F 02 88 */	lwz r0, 0x288(r31)
/* 804AE214  FF E0 08 90 */	fmr f31, f1
/* 804AE218  2C 00 00 02 */	cmpwi r0, 2
/* 804AE21C  40 82 00 F0 */	bne lbl_804AE30C
/* 804AE220  80 1F 02 8C */	lwz r0, 0x28c(r31)
/* 804AE224  2C 00 00 04 */	cmpwi r0, 4
/* 804AE228  40 82 00 74 */	bne lbl_804AE29C
/* 804AE22C  3C 60 80 64 */	lis r3, lit_714@ha /* 0x80645F8C@ha */
/* 804AE230  A8 1F 02 66 */	lha r0, 0x266(r31)
/* 804AE234  C0 03 5F 8C */	lfs f0, lit_714@l(r3)  /* 0x80645F8C@l */
/* 804AE238  2C 00 00 06 */	cmpwi r0, 6
/* 804AE23C  EF E0 F8 2A */	fadds f31, f0, f31
/* 804AE240  41 82 00 3C */	beq lbl_804AE27C
/* 804AE244  3C 80 80 64 */	lis r4, lit_564@ha /* 0x80645F70@ha */
/* 804AE248  3C 60 80 64 */	lis r3, lit_715@ha /* 0x80645F90@ha */
/* 804AE24C  C0 63 5F 90 */	lfs f3, lit_715@l(r3)  /* 0x80645F90@l */
/* 804AE250  FC 20 F8 90 */	fmr f1, f31
/* 804AE254  C0 44 5F 70 */	lfs f2, lit_564@l(r4)  /* 0x80645F70@l */
/* 804AE258  7F E3 FB 78 */	mr r3, r31
/* 804AE25C  4B FF FF 3D */	bl aUKI_vib_calc
/* 804AE260  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 804AE264  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 804AE268  4C 41 13 82 */	cror 2, 1, 2
/* 804AE26C  40 82 03 48 */	bne lbl_804AE5B4
/* 804AE270  38 00 00 06 */	li r0, 6
/* 804AE274  B0 1F 02 66 */	sth r0, 0x266(r31)
/* 804AE278  48 00 03 3C */	b lbl_804AE5B4
lbl_804AE27C:
/* 804AE27C  3C 80 80 64 */	lis r4, lit_716@ha /* 0x80645F94@ha */
/* 804AE280  3C 60 80 64 */	lis r3, lit_623@ha /* 0x80645F7C@ha */
/* 804AE284  C0 63 5F 7C */	lfs f3, lit_623@l(r3)  /* 0x80645F7C@l */
/* 804AE288  FC 20 F8 90 */	fmr f1, f31
/* 804AE28C  C0 44 5F 94 */	lfs f2, lit_716@l(r4)  /* 0x80645F94@l */
/* 804AE290  7F E3 FB 78 */	mr r3, r31
/* 804AE294  4B FF FF 05 */	bl aUKI_vib_calc
/* 804AE298  48 00 03 1C */	b lbl_804AE5B4
lbl_804AE29C:
/* 804AE29C  3C 60 80 64 */	lis r3, lit_714@ha /* 0x80645F8C@ha */
/* 804AE2A0  A8 1F 02 66 */	lha r0, 0x266(r31)
/* 804AE2A4  C0 03 5F 8C */	lfs f0, lit_714@l(r3)  /* 0x80645F8C@l */
/* 804AE2A8  2C 00 00 05 */	cmpwi r0, 5
/* 804AE2AC  EC 3F 00 28 */	fsubs f1, f31, f0
/* 804AE2B0  41 82 00 40 */	beq lbl_804AE2F0
/* 804AE2B4  3C 80 80 64 */	lis r4, lit_717@ha /* 0x80645F98@ha */
/* 804AE2B8  3C 60 80 64 */	lis r3, lit_484@ha /* 0x80645F3C@ha */
/* 804AE2BC  C0 63 5F 3C */	lfs f3, lit_484@l(r3)  /* 0x80645F3C@l */
/* 804AE2C0  7F E3 FB 78 */	mr r3, r31
/* 804AE2C4  C0 44 5F 98 */	lfs f2, lit_717@l(r4)  /* 0x80645F98@l */
/* 804AE2C8  4B FF FE D1 */	bl aUKI_vib_calc
/* 804AE2CC  3C 60 80 64 */	lis r3, lit_714@ha /* 0x80645F8C@ha */
/* 804AE2D0  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 804AE2D4  C0 03 5F 8C */	lfs f0, lit_714@l(r3)  /* 0x80645F8C@l */
/* 804AE2D8  EC 1F 00 28 */	fsubs f0, f31, f0
/* 804AE2DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AE2E0  40 80 02 D4 */	bge lbl_804AE5B4
/* 804AE2E4  38 00 00 05 */	li r0, 5
/* 804AE2E8  B0 1F 02 66 */	sth r0, 0x266(r31)
/* 804AE2EC  48 00 02 C8 */	b lbl_804AE5B4
lbl_804AE2F0:
/* 804AE2F0  3C 80 80 64 */	lis r4, lit_716@ha /* 0x80645F94@ha */
/* 804AE2F4  3C 60 80 64 */	lis r3, lit_623@ha /* 0x80645F7C@ha */
/* 804AE2F8  C0 63 5F 7C */	lfs f3, lit_623@l(r3)  /* 0x80645F7C@l */
/* 804AE2FC  7F E3 FB 78 */	mr r3, r31
/* 804AE300  C0 44 5F 94 */	lfs f2, lit_716@l(r4)  /* 0x80645F94@l */
/* 804AE304  4B FF FE 95 */	bl aUKI_vib_calc
/* 804AE308  48 00 02 AC */	b lbl_804AE5B4
lbl_804AE30C:
/* 804AE30C  2C 00 00 01 */	cmpwi r0, 1
/* 804AE310  40 82 01 00 */	bne lbl_804AE410
/* 804AE314  88 1F 02 60 */	lbz r0, 0x260(r31)
/* 804AE318  28 00 00 00 */	cmplwi r0, 0
/* 804AE31C  41 82 00 2C */	beq lbl_804AE348
/* 804AE320  38 60 00 00 */	li r3, 0
/* 804AE324  38 00 00 02 */	li r0, 2
/* 804AE328  98 7F 02 60 */	stb r3, 0x260(r31)
/* 804AE32C  7F E3 FB 78 */	mr r3, r31
/* 804AE330  7F C4 F3 78 */	mr r4, r30
/* 804AE334  38 A0 00 02 */	li r5, 2
/* 804AE338  B0 1F 02 66 */	sth r0, 0x266(r31)
/* 804AE33C  4B FF FB 61 */	bl aUKI_effect_hamon
/* 804AE340  7F E3 FB 78 */	mr r3, r31
/* 804AE344  4B FF F7 35 */	bl aUKI_touch_vib_proc
lbl_804AE348:
/* 804AE348  A8 1F 02 66 */	lha r0, 0x266(r31)
/* 804AE34C  2C 00 00 02 */	cmpwi r0, 2
/* 804AE350  41 82 00 44 */	beq lbl_804AE394
/* 804AE354  40 80 00 10 */	bge lbl_804AE364
/* 804AE358  2C 00 00 00 */	cmpwi r0, 0
/* 804AE35C  41 82 00 38 */	beq lbl_804AE394
/* 804AE360  48 00 02 54 */	b lbl_804AE5B4
lbl_804AE364:
/* 804AE364  2C 00 00 04 */	cmpwi r0, 4
/* 804AE368  41 82 00 0C */	beq lbl_804AE374
/* 804AE36C  40 80 02 48 */	bge lbl_804AE5B4
/* 804AE370  48 00 00 68 */	b lbl_804AE3D8
lbl_804AE374:
/* 804AE374  3C 80 80 64 */	lis r4, lit_716@ha /* 0x80645F94@ha */
/* 804AE378  3C 60 80 64 */	lis r3, lit_718@ha /* 0x80645F9C@ha */
/* 804AE37C  C0 63 5F 9C */	lfs f3, lit_718@l(r3)  /* 0x80645F9C@l */
/* 804AE380  FC 20 F8 90 */	fmr f1, f31
/* 804AE384  C0 44 5F 94 */	lfs f2, lit_716@l(r4)  /* 0x80645F94@l */
/* 804AE388  7F E3 FB 78 */	mr r3, r31
/* 804AE38C  4B FF FE 0D */	bl aUKI_vib_calc
/* 804AE390  48 00 02 24 */	b lbl_804AE5B4
lbl_804AE394:
/* 804AE394  3C 60 80 64 */	lis r3, lit_719@ha /* 0x80645FA0@ha */
/* 804AE398  3C 80 80 64 */	lis r4, lit_720@ha /* 0x80645FA4@ha */
/* 804AE39C  38 A3 5F A0 */	addi r5, r3, lit_719@l /* 0x80645FA0@l */
/* 804AE3A0  C0 44 5F A4 */	lfs f2, lit_720@l(r4)  /* 0x80645FA4@l */
/* 804AE3A4  C0 05 00 00 */	lfs f0, 0(r5)
/* 804AE3A8  3C 60 80 64 */	lis r3, lit_715@ha /* 0x80645F90@ha */
/* 804AE3AC  C0 63 5F 90 */	lfs f3, lit_715@l(r3)  /* 0x80645F90@l */
/* 804AE3B0  7F E3 FB 78 */	mr r3, r31
/* 804AE3B4  EF FF 00 28 */	fsubs f31, f31, f0
/* 804AE3B8  FC 20 F8 90 */	fmr f1, f31
/* 804AE3BC  4B FF FD DD */	bl aUKI_vib_calc
/* 804AE3C0  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 804AE3C4  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 804AE3C8  40 80 01 EC */	bge lbl_804AE5B4
/* 804AE3CC  38 00 00 03 */	li r0, 3
/* 804AE3D0  B0 1F 02 66 */	sth r0, 0x266(r31)
/* 804AE3D4  48 00 01 E0 */	b lbl_804AE5B4
lbl_804AE3D8:
/* 804AE3D8  3C 80 80 64 */	lis r4, lit_720@ha /* 0x80645FA4@ha */
/* 804AE3DC  3C 60 80 64 */	lis r3, lit_715@ha /* 0x80645F90@ha */
/* 804AE3E0  C0 63 5F 90 */	lfs f3, lit_715@l(r3)  /* 0x80645F90@l */
/* 804AE3E4  FC 20 F8 90 */	fmr f1, f31
/* 804AE3E8  C0 44 5F A4 */	lfs f2, lit_720@l(r4)  /* 0x80645FA4@l */
/* 804AE3EC  7F E3 FB 78 */	mr r3, r31
/* 804AE3F0  4B FF FD A9 */	bl aUKI_vib_calc
/* 804AE3F4  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 804AE3F8  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 804AE3FC  4C 41 13 82 */	cror 2, 1, 2
/* 804AE400  40 82 01 B4 */	bne lbl_804AE5B4
/* 804AE404  38 00 00 04 */	li r0, 4
/* 804AE408  B0 1F 02 66 */	sth r0, 0x266(r31)
/* 804AE40C  48 00 01 A8 */	b lbl_804AE5B4
lbl_804AE410:
/* 804AE410  A8 1F 01 D8 */	lha r0, 0x1d8(r31)
/* 804AE414  2C 00 00 04 */	cmpwi r0, 4
/* 804AE418  40 82 00 68 */	bne lbl_804AE480
/* 804AE41C  7F E3 FB 78 */	mr r3, r31
/* 804AE420  4B FF F9 61 */	bl aUKI_Get_flow_angle
/* 804AE424  7C 68 1B 78 */	mr r8, r3
/* 804AE428  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 804AE42C  7D 03 07 34 */	extsh r3, r8
/* 804AE430  7C 63 00 50 */	subf r3, r3, r0
/* 804AE434  7C 60 07 35 */	extsh. r0, r3
/* 804AE438  7C 60 07 34 */	extsh r0, r3
/* 804AE43C  7C E0 00 D0 */	neg r7, r0
/* 804AE440  41 80 00 08 */	blt lbl_804AE448
/* 804AE444  7C 07 03 78 */	mr r7, r0
lbl_804AE448:
/* 804AE448  38 00 40 00 */	li r0, 0x4000
/* 804AE44C  3C 80 80 69 */	lis r4, angl_add_table@ha /* 0x8068FAA8@ha */
/* 804AE450  7C E0 02 78 */	xor r0, r7, r0
/* 804AE454  38 7F 00 36 */	addi r3, r31, 0x36
/* 804AE458  7C 06 0E 70 */	srawi r6, r0, 1
/* 804AE45C  38 A4 FA A8 */	addi r5, r4, angl_add_table@l /* 0x8068FAA8@l */
/* 804AE460  7C 00 38 38 */	and r0, r0, r7
/* 804AE464  7D 04 07 34 */	extsh r4, r8
/* 804AE468  7C 00 30 50 */	subf r0, r0, r6
/* 804AE46C  54 00 17 BC */	rlwinm r0, r0, 2, 0x1e, 0x1e
/* 804AE470  7C A5 02 AE */	lhax r5, r5, r0
/* 804AE474  4B F0 C6 D1 */	bl chase_angle
/* 804AE478  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 804AE47C  B0 1F 00 DE */	sth r0, 0xde(r31)
lbl_804AE480:
/* 804AE480  80 1F 00 98 */	lwz r0, 0x98(r31)
/* 804AE484  54 00 AE BE */	rlwinm r0, r0, 0x15, 0x1a, 0x1f
/* 804AE488  28 00 00 0D */	cmplwi r0, 0xd
/* 804AE48C  40 82 00 B8 */	bne lbl_804AE544
/* 804AE490  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 804AE494  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 804AE498  40 80 00 50 */	bge lbl_804AE4E8
/* 804AE49C  A8 1F 02 66 */	lha r0, 0x266(r31)
/* 804AE4A0  2C 00 00 05 */	cmpwi r0, 5
/* 804AE4A4  40 82 00 24 */	bne lbl_804AE4C8
/* 804AE4A8  3C 80 80 64 */	lis r4, lit_720@ha /* 0x80645FA4@ha */
/* 804AE4AC  3C 60 80 64 */	lis r3, lit_715@ha /* 0x80645F90@ha */
/* 804AE4B0  C0 63 5F 90 */	lfs f3, lit_715@l(r3)  /* 0x80645F90@l */
/* 804AE4B4  FC 20 F8 90 */	fmr f1, f31
/* 804AE4B8  C0 44 5F A4 */	lfs f2, lit_720@l(r4)  /* 0x80645FA4@l */
/* 804AE4BC  7F E3 FB 78 */	mr r3, r31
/* 804AE4C0  4B FF FC D9 */	bl aUKI_vib_calc
/* 804AE4C4  48 00 00 3C */	b lbl_804AE500
lbl_804AE4C8:
/* 804AE4C8  3C 80 80 64 */	lis r4, lit_716@ha /* 0x80645F94@ha */
/* 804AE4CC  3C 60 80 64 */	lis r3, lit_718@ha /* 0x80645F9C@ha */
/* 804AE4D0  C0 63 5F 9C */	lfs f3, lit_718@l(r3)  /* 0x80645F9C@l */
/* 804AE4D4  FC 20 F8 90 */	fmr f1, f31
/* 804AE4D8  C0 44 5F 94 */	lfs f2, lit_716@l(r4)  /* 0x80645F94@l */
/* 804AE4DC  7F E3 FB 78 */	mr r3, r31
/* 804AE4E0  4B FF FC B9 */	bl aUKI_vib_calc
/* 804AE4E4  48 00 00 1C */	b lbl_804AE500
lbl_804AE4E8:
/* 804AE4E8  3C 80 80 64 */	lis r4, lit_721@ha /* 0x80645FA8@ha */
/* 804AE4EC  3C 60 80 64 */	lis r3, lit_722@ha /* 0x80645FAC@ha */
/* 804AE4F0  C0 24 5F A8 */	lfs f1, lit_721@l(r4)  /* 0x80645FA8@l */
/* 804AE4F4  C0 03 5F AC */	lfs f0, lit_722@l(r3)  /* 0x80645FAC@l */
/* 804AE4F8  D0 3F 00 7C */	stfs f1, 0x7c(r31)
/* 804AE4FC  D0 1F 00 78 */	stfs f0, 0x78(r31)
lbl_804AE500:
/* 804AE500  A8 1F 01 D8 */	lha r0, 0x1d8(r31)
/* 804AE504  2C 00 00 05 */	cmpwi r0, 5
/* 804AE508  41 82 00 AC */	beq lbl_804AE5B4
/* 804AE50C  40 80 00 10 */	bge lbl_804AE51C
/* 804AE510  2C 00 00 04 */	cmpwi r0, 4
/* 804AE514  40 80 00 10 */	bge lbl_804AE524
/* 804AE518  48 00 00 9C */	b lbl_804AE5B4
lbl_804AE51C:
/* 804AE51C  2C 00 00 08 */	cmpwi r0, 8
/* 804AE520  40 80 00 94 */	bge lbl_804AE5B4
lbl_804AE524:
/* 804AE524  3C 60 80 64 */	lis r3, data_80645F24@ha /* 0x80645F24@ha */
/* 804AE528  38 00 00 01 */	li r0, 1
/* 804AE52C  90 1F 02 8C */	stw r0, 0x28c(r31)
/* 804AE530  38 00 00 00 */	li r0, 0
/* 804AE534  C0 03 5F 24 */	lfs f0, data_80645F24@l(r3)  /* 0x80645F24@l */
/* 804AE538  D0 1F 00 6C */	stfs f0, 0x6c(r31)
/* 804AE53C  90 1F 02 88 */	stw r0, 0x288(r31)
/* 804AE540  48 00 00 74 */	b lbl_804AE5B4
lbl_804AE544:
/* 804AE544  A8 1F 02 66 */	lha r0, 0x266(r31)
/* 804AE548  2C 00 00 05 */	cmpwi r0, 5
/* 804AE54C  40 82 00 4C */	bne lbl_804AE598
/* 804AE550  3C 80 80 64 */	lis r4, lit_720@ha /* 0x80645FA4@ha */
/* 804AE554  3C 60 80 64 */	lis r3, lit_715@ha /* 0x80645F90@ha */
/* 804AE558  C0 63 5F 90 */	lfs f3, lit_715@l(r3)  /* 0x80645F90@l */
/* 804AE55C  FC 20 F8 90 */	fmr f1, f31
/* 804AE560  C0 44 5F A4 */	lfs f2, lit_720@l(r4)  /* 0x80645FA4@l */
/* 804AE564  7F E3 FB 78 */	mr r3, r31
/* 804AE568  4B FF FC 31 */	bl aUKI_vib_calc
/* 804AE56C  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 804AE570  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 804AE574  4C 41 13 82 */	cror 2, 1, 2
/* 804AE578  40 82 00 3C */	bne lbl_804AE5B4
/* 804AE57C  7F E3 FB 78 */	mr r3, r31
/* 804AE580  7F C4 F3 78 */	mr r4, r30
/* 804AE584  38 A0 00 01 */	li r5, 1
/* 804AE588  4B FF F9 15 */	bl aUKI_effect_hamon
/* 804AE58C  38 00 00 00 */	li r0, 0
/* 804AE590  B0 1F 02 66 */	sth r0, 0x266(r31)
/* 804AE594  48 00 00 20 */	b lbl_804AE5B4
lbl_804AE598:
/* 804AE598  3C 80 80 64 */	lis r4, lit_716@ha /* 0x80645F94@ha */
/* 804AE59C  3C 60 80 64 */	lis r3, lit_718@ha /* 0x80645F9C@ha */
/* 804AE5A0  C0 63 5F 9C */	lfs f3, lit_718@l(r3)  /* 0x80645F9C@l */
/* 804AE5A4  FC 20 F8 90 */	fmr f1, f31
/* 804AE5A8  C0 44 5F 94 */	lfs f2, lit_716@l(r4)  /* 0x80645F94@l */
/* 804AE5AC  7F E3 FB 78 */	mr r3, r31
/* 804AE5B0  4B FF FB E9 */	bl aUKI_vib_calc
lbl_804AE5B4:
/* 804AE5B4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804AE5B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804AE5BC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804AE5C0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804AE5C4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804AE5C8  7C 08 03 A6 */	mtlr r0
/* 804AE5CC  38 21 00 30 */	addi r1, r1, 0x30
/* 804AE5D0  4E 80 00 20 */	blr 
