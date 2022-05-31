lbl_805B37DC:
/* 805B37DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B37E0  7C 08 02 A6 */	mflr r0
/* 805B37E4  3C 80 81 20 */	lis r4, staffroll_info@ha /* 0x811FA1D0@ha */
/* 805B37E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B37EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B37F0  7C 7F 1B 78 */	mr r31, r3
/* 805B37F4  38 64 A1 D0 */	addi r3, r4, staffroll_info@l /* 0x811FA1D0@l */
/* 805B37F8  48 07 AC 59 */	bl sAdos_GetStaffRollInfo
/* 805B37FC  3C 60 81 20 */	lis r3, staffroll_info@ha /* 0x811FA1D0@ha */
/* 805B3800  AC 03 A1 D0 */	lhau r0, staffroll_info@l(r3)  /* 0x811FA1D0@l */
/* 805B3804  2C 00 00 04 */	cmpwi r0, 4
/* 805B3808  40 82 00 24 */	bne lbl_805B382C
/* 805B380C  7F E3 FB 78 */	mr r3, r31
/* 805B3810  4B FF FE FD */	bl aMKBC_anime_stop
/* 805B3814  88 1F 09 AA */	lbz r0, 0x9aa(r31)
/* 805B3818  28 00 00 00 */	cmplwi r0, 0
/* 805B381C  41 82 01 34 */	beq lbl_805B3950
/* 805B3820  7F E3 FB 78 */	mr r3, r31
/* 805B3824  4B FF FF 39 */	bl aMKBC_clip_head_up
/* 805B3828  48 00 01 28 */	b lbl_805B3950
lbl_805B382C:
/* 805B382C  88 03 00 10 */	lbz r0, 0x10(r3)
/* 805B3830  98 1F 07 34 */	stb r0, 0x734(r31)
/* 805B3834  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805B3838  7C 00 07 75 */	extsb. r0, r0
/* 805B383C  41 82 00 18 */	beq lbl_805B3854
/* 805B3840  7F E3 FB 78 */	mr r3, r31
/* 805B3844  4B FF FF 19 */	bl aMKBC_clip_head_up
/* 805B3848  38 00 00 01 */	li r0, 1
/* 805B384C  98 1F 09 AA */	stb r0, 0x9aa(r31)
/* 805B3850  48 00 00 0C */	b lbl_805B385C
lbl_805B3854:
/* 805B3854  38 00 00 00 */	li r0, 0
/* 805B3858  98 1F 09 AA */	stb r0, 0x9aa(r31)
lbl_805B385C:
/* 805B385C  3C 80 80 65 */	lis r4, lit_608@ha /* 0x8064A8FC@ha */
/* 805B3860  3C 60 81 20 */	lis r3, staffroll_info@ha /* 0x811FA1D0@ha */
/* 805B3864  C0 04 A8 FC */	lfs f0, lit_608@l(r4)  /* 0x8064A8FC@l */
/* 805B3868  D0 1F 01 B4 */	stfs f0, 0x1b4(r31)
/* 805B386C  AC 03 A1 D0 */	lhau r0, staffroll_info@l(r3)  /* 0x811FA1D0@l */
/* 805B3870  2C 00 00 03 */	cmpwi r0, 3
/* 805B3874  40 82 00 10 */	bne lbl_805B3884
/* 805B3878  7F E3 FB 78 */	mr r3, r31
/* 805B387C  4B FF FE 91 */	bl aMKBC_anime_stop
/* 805B3880  48 00 00 D0 */	b lbl_805B3950
lbl_805B3884:
/* 805B3884  88 03 00 12 */	lbz r0, 0x12(r3)
/* 805B3888  7C 00 07 74 */	extsb r0, r0
/* 805B388C  2C 00 00 04 */	cmpwi r0, 4
/* 805B3890  41 82 00 6C */	beq lbl_805B38FC
/* 805B3894  40 80 00 BC */	bge lbl_805B3950
/* 805B3898  2C 00 00 03 */	cmpwi r0, 3
/* 805B389C  40 80 00 08 */	bge lbl_805B38A4
/* 805B38A0  48 00 00 B0 */	b lbl_805B3950
lbl_805B38A4:
/* 805B38A4  80 1F 07 14 */	lwz r0, 0x714(r31)
/* 805B38A8  2C 00 00 77 */	cmpwi r0, 0x77
/* 805B38AC  41 82 00 2C */	beq lbl_805B38D8
/* 805B38B0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805B38B4  7F E3 FB 78 */	mr r3, r31
/* 805B38B8  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805B38BC  38 80 00 77 */	li r4, 0x77
/* 805B38C0  3C C5 00 02 */	addis r6, r5, 2
/* 805B38C4  38 A0 00 00 */	li r5, 0
/* 805B38C8  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 805B38CC  81 86 01 14 */	lwz r12, 0x114(r6)
/* 805B38D0  7D 89 03 A6 */	mtctr r12
/* 805B38D4  4E 80 04 21 */	bctrl 
lbl_805B38D8:
/* 805B38D8  3C 60 81 20 */	lis r3, staffroll_info@ha /* 0x811FA1D0@ha */
/* 805B38DC  3C 80 80 65 */	lis r4, lit_609@ha /* 0x8064A900@ha */
/* 805B38E0  38 63 A1 D0 */	addi r3, r3, staffroll_info@l /* 0x811FA1D0@l */
/* 805B38E4  C0 24 A9 00 */	lfs f1, lit_609@l(r4)  /* 0x8064A900@l */
/* 805B38E8  C8 03 00 08 */	lfd f0, 8(r3)
/* 805B38EC  FC 00 00 18 */	frsp f0, f0
/* 805B38F0  EC 01 00 32 */	fmuls f0, f1, f0
/* 805B38F4  D0 1F 01 B8 */	stfs f0, 0x1b8(r31)
/* 805B38F8  48 00 00 58 */	b lbl_805B3950
lbl_805B38FC:
/* 805B38FC  80 1F 07 14 */	lwz r0, 0x714(r31)
/* 805B3900  2C 00 00 76 */	cmpwi r0, 0x76
/* 805B3904  41 82 00 2C */	beq lbl_805B3930
/* 805B3908  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805B390C  7F E3 FB 78 */	mr r3, r31
/* 805B3910  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805B3914  38 80 00 76 */	li r4, 0x76
/* 805B3918  3C C5 00 02 */	addis r6, r5, 2
/* 805B391C  38 A0 00 00 */	li r5, 0
/* 805B3920  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 805B3924  81 86 01 14 */	lwz r12, 0x114(r6)
/* 805B3928  7D 89 03 A6 */	mtctr r12
/* 805B392C  4E 80 04 21 */	bctrl 
lbl_805B3930:
/* 805B3930  3C 60 81 20 */	lis r3, staffroll_info@ha /* 0x811FA1D0@ha */
/* 805B3934  3C 80 80 65 */	lis r4, lit_610@ha /* 0x8064A904@ha */
/* 805B3938  38 63 A1 D0 */	addi r3, r3, staffroll_info@l /* 0x811FA1D0@l */
/* 805B393C  C0 24 A9 04 */	lfs f1, lit_610@l(r4)  /* 0x8064A904@l */
/* 805B3940  C8 03 00 08 */	lfd f0, 8(r3)
/* 805B3944  FC 00 00 18 */	frsp f0, f0
/* 805B3948  EC 01 00 32 */	fmuls f0, f1, f0
/* 805B394C  D0 1F 01 B8 */	stfs f0, 0x1b8(r31)
lbl_805B3950:
/* 805B3950  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B3954  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B3958  7C 08 03 A6 */	mtlr r0
/* 805B395C  38 21 00 10 */	addi r1, r1, 0x10
/* 805B3960  4E 80 00 20 */	blr 
