lbl_805E64C0:
/* 805E64C0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805E64C4  7C 08 02 A6 */	mflr r0
/* 805E64C8  90 01 00 64 */	stw r0, 0x64(r1)
/* 805E64CC  39 61 00 60 */	addi r11, r1, 0x60
/* 805E64D0  4B AB 4A 05 */	bl func_8009AED4
/* 805E64D4  3C A0 81 1C */	lis r5, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805E64D8  7C 7D 1B 78 */	mr r29, r3
/* 805E64DC  38 65 52 F0 */	addi r3, r5, data_811C52F0@l /* 0x811C52F0@l */
/* 805E64E0  7C 9E 23 78 */	mr r30, r4
/* 805E64E4  80 63 00 00 */	lwz r3, 0(r3)
/* 805E64E8  3B FD 01 90 */	addi r31, r29, 0x190
/* 805E64EC  4B DF 31 55 */	bl get_player_actor_withoutCheck
/* 805E64F0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805E64F4  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805E64F8  3C 85 00 02 */	addis r4, r5, 2
/* 805E64FC  88 04 60 01 */	lbz r0, 0x6001(r4)
/* 805E6500  28 00 00 00 */	cmplwi r0, 0
/* 805E6504  41 82 00 4C */	beq lbl_805E6550
/* 805E6508  3C 85 00 03 */	addis r4, r5, 3
/* 805E650C  80 04 85 30 */	lwz r0, -0x7ad0(r4)
/* 805E6510  2C 00 00 00 */	cmpwi r0, 0
/* 805E6514  41 82 00 3C */	beq lbl_805E6550
/* 805E6518  38 61 00 28 */	addi r3, r1, 0x28
/* 805E651C  38 84 85 4C */	addi r4, r4, -31412
/* 805E6520  4B DD 49 B9 */	bl xyz_t_move_s_xyz
/* 805E6524  80 E1 00 28 */	lwz r7, 0x28(r1)
/* 805E6528  38 61 00 0C */	addi r3, r1, 0xc
/* 805E652C  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 805E6530  38 81 00 08 */	addi r4, r1, 8
/* 805E6534  80 01 00 30 */	lwz r0, 0x30(r1)
/* 805E6538  38 A1 00 1C */	addi r5, r1, 0x1c
/* 805E653C  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 805E6540  90 C1 00 20 */	stw r6, 0x20(r1)
/* 805E6544  90 01 00 24 */	stw r0, 0x24(r1)
/* 805E6548  4B DB F2 19 */	bl mFI_Wpos2BlockNum
/* 805E654C  48 00 00 2C */	b lbl_805E6578
lbl_805E6550:
/* 805E6550  80 C3 00 28 */	lwz r6, 0x28(r3)
/* 805E6554  38 81 00 08 */	addi r4, r1, 8
/* 805E6558  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 805E655C  38 A1 00 10 */	addi r5, r1, 0x10
/* 805E6560  90 C1 00 10 */	stw r6, 0x10(r1)
/* 805E6564  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E6568  80 03 00 30 */	lwz r0, 0x30(r3)
/* 805E656C  38 61 00 0C */	addi r3, r1, 0xc
/* 805E6570  90 01 00 18 */	stw r0, 0x18(r1)
/* 805E6574  4B DB F1 ED */	bl mFI_Wpos2BlockNum
lbl_805E6578:
/* 805E6578  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 805E657C  3C 80 43 30 */	lis r4, 0x4330
/* 805E6580  3C A0 80 65 */	lis r5, data_8064B53C@ha /* 0x8064B53C@ha */
/* 805E6584  3C 60 80 65 */	lis r3, lit_614@ha /* 0x8064B544@ha */
/* 805E6588  38 06 FF FF */	addi r0, r6, -1
/* 805E658C  C8 23 B5 44 */	lfd f1, lit_614@l(r3)  /* 0x8064B544@l */
/* 805E6590  98 1D 00 02 */	stb r0, 2(r29)
/* 805E6594  38 00 00 00 */	li r0, 0
/* 805E6598  C0 45 B5 3C */	lfs f2, data_8064B53C@l(r5)  /* 0x8064B53C@l */
/* 805E659C  7F A3 EB 78 */	mr r3, r29
/* 805E65A0  80 C1 00 08 */	lwz r6, 8(r1)
/* 805E65A4  90 81 00 38 */	stw r4, 0x38(r1)
/* 805E65A8  38 A6 FF FF */	addi r5, r6, -1
/* 805E65AC  98 BD 00 03 */	stb r5, 3(r29)
/* 805E65B0  90 81 00 40 */	stw r4, 0x40(r1)
/* 805E65B4  88 9D 00 02 */	lbz r4, 2(r29)
/* 805E65B8  98 9D 00 00 */	stb r4, 0(r29)
/* 805E65BC  88 9D 00 03 */	lbz r4, 3(r29)
/* 805E65C0  98 9D 00 01 */	stb r4, 1(r29)
/* 805E65C4  88 9D 00 02 */	lbz r4, 2(r29)
/* 805E65C8  90 81 00 3C */	stw r4, 0x3c(r1)
/* 805E65CC  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 805E65D0  EC 00 08 28 */	fsubs f0, f0, f1
/* 805E65D4  EC 02 00 32 */	fmuls f0, f2, f0
/* 805E65D8  D0 1D 00 04 */	stfs f0, 4(r29)
/* 805E65DC  88 9D 00 03 */	lbz r4, 3(r29)
/* 805E65E0  90 81 00 44 */	stw r4, 0x44(r1)
/* 805E65E4  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 805E65E8  EC 00 08 28 */	fsubs f0, f0, f1
/* 805E65EC  FC 00 00 50 */	fneg f0, f0
/* 805E65F0  EC 02 00 32 */	fmuls f0, f2, f0
/* 805E65F4  D0 1D 00 08 */	stfs f0, 8(r29)
/* 805E65F8  90 1D 00 14 */	stw r0, 0x14(r29)
/* 805E65FC  C0 1D 00 04 */	lfs f0, 4(r29)
/* 805E6600  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 805E6604  C0 1D 00 08 */	lfs f0, 8(r29)
/* 805E6608  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 805E660C  4B FF F9 E1 */	bl mMP_set_map_texture_pal
/* 805E6610  38 00 00 1E */	li r0, 0x1e
/* 805E6614  38 60 00 00 */	li r3, 0
/* 805E6618  7C 09 03 A6 */	mtctr r0
lbl_805E661C:
/* 805E661C  B0 7F 00 10 */	sth r3, 0x10(r31)
/* 805E6620  3B FF 00 14 */	addi r31, r31, 0x14
/* 805E6624  42 00 FF F8 */	bdnz lbl_805E661C
/* 805E6628  7F A3 EB 78 */	mr r3, r29
/* 805E662C  7F C4 F3 78 */	mr r4, r30
/* 805E6630  4B FF FA 75 */	bl mMP_set_house_data
/* 805E6634  7F A3 EB 78 */	mr r3, r29
/* 805E6638  4B FF FD 45 */	bl mMP_set_field_data
/* 805E663C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805E6640  38 80 00 08 */	li r4, 8
/* 805E6644  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805E6648  38 A0 00 20 */	li r5, 0x20
/* 805E664C  3C 63 00 01 */	addis r3, r3, 1
/* 805E6650  38 63 91 20 */	addi r3, r3, -28384
/* 805E6654  4B DD 5F D1 */	bl func_803BC624
/* 805E6658  98 7D 03 F0 */	stb r3, 0x3f0(r29)
/* 805E665C  39 61 00 60 */	addi r11, r1, 0x60
/* 805E6660  4B AB 48 C1 */	bl func_8009AF20
/* 805E6664  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805E6668  7C 08 03 A6 */	mtlr r0
/* 805E666C  38 21 00 60 */	addi r1, r1, 0x60
/* 805E6670  4E 80 00 20 */	blr 
