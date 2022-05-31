lbl_8056A540:
/* 8056A540  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056A544  7C 08 02 A6 */	mflr r0
/* 8056A548  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056A54C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056A550  7C 7F 1B 78 */	mr r31, r3
/* 8056A554  93 C1 00 08 */	stw r30, 8(r1)
/* 8056A558  88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 8056A55C  28 00 00 FF */	cmplwi r0, 0xff
/* 8056A560  40 82 01 5C */	bne lbl_8056A6BC
/* 8056A564  38 00 00 00 */	li r0, 0
/* 8056A568  3B C0 00 00 */	li r30, 0
/* 8056A56C  B0 1F 09 24 */	sth r0, 0x924(r31)
/* 8056A570  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 8056A574  2C 00 00 00 */	cmpwi r0, 0
/* 8056A578  41 82 00 0C */	beq lbl_8056A584
/* 8056A57C  3B C0 00 03 */	li r30, 3
/* 8056A580  48 00 00 E4 */	b lbl_8056A664
lbl_8056A584:
/* 8056A584  4B E5 04 15 */	bl mEnv_NowWeather
/* 8056A588  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8056A58C  2C 03 00 01 */	cmpwi r3, 1
/* 8056A590  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8056A594  3C 63 00 02 */	addis r3, r3, 2
/* 8056A598  80 03 61 1C */	lwz r0, 0x611c(r3)
/* 8056A59C  41 82 00 60 */	beq lbl_8056A5FC
/* 8056A5A0  2C 00 54 60 */	cmpwi r0, 0x5460
/* 8056A5A4  41 80 00 58 */	blt lbl_8056A5FC
/* 8056A5A8  2C 00 62 70 */	cmpwi r0, 0x6270
/* 8056A5AC  40 80 00 50 */	bge lbl_8056A5FC
/* 8056A5B0  A8 7F 00 B6 */	lha r3, 0xb6(r31)
/* 8056A5B4  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 8056A5B8  7C 03 00 50 */	subf r0, r3, r0
/* 8056A5BC  7C 03 07 35 */	extsh. r3, r0
/* 8056A5C0  7C 03 00 D0 */	neg r0, r3
/* 8056A5C4  41 80 00 08 */	blt lbl_8056A5CC
/* 8056A5C8  7C 60 1B 78 */	mr r0, r3
lbl_8056A5CC:
/* 8056A5CC  2C 00 30 00 */	cmpwi r0, 0x3000
/* 8056A5D0  40 81 00 94 */	ble lbl_8056A664
/* 8056A5D4  4B AF 27 21 */	bl fqrand
/* 8056A5D8  3C 60 80 65 */	lis r3, lit_593@ha /* 0x80649840@ha */
/* 8056A5DC  C0 03 98 40 */	lfs f0, lit_593@l(r3)  /* 0x80649840@l */
/* 8056A5E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8056A5E4  40 80 00 80 */	bge lbl_8056A664
/* 8056A5E8  3C 60 80 57 */	lis r3, aPOL_taisou_act_proc@ha /* 0x8056A4D8@ha */
/* 8056A5EC  3B C0 00 16 */	li r30, 0x16
/* 8056A5F0  38 03 A4 D8 */	addi r0, r3, aPOL_taisou_act_proc@l /* 0x8056A4D8@l */
/* 8056A5F4  90 1F 08 04 */	stw r0, 0x804(r31)
/* 8056A5F8  48 00 00 6C */	b lbl_8056A664
lbl_8056A5FC:
/* 8056A5FC  2C 00 1C 20 */	cmpwi r0, 0x1c20
/* 8056A600  41 80 00 64 */	blt lbl_8056A664
/* 8056A604  2C 00 38 40 */	cmpwi r0, 0x3840
/* 8056A608  40 80 00 5C */	bge lbl_8056A664
/* 8056A60C  3C 60 80 65 */	lis r3, lit_547@ha /* 0x80649838@ha */
/* 8056A610  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 8056A614  C0 03 98 38 */	lfs f0, lit_547@l(r3)  /* 0x80649838@l */
/* 8056A618  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8056A61C  4C 41 13 82 */	cror 2, 1, 2
/* 8056A620  40 82 00 08 */	bne lbl_8056A628
/* 8056A624  48 00 00 08 */	b lbl_8056A62C
lbl_8056A628:
/* 8056A628  FC 20 08 50 */	fneg f1, f1
lbl_8056A62C:
/* 8056A62C  3C 60 80 65 */	lis r3, lit_548@ha /* 0x8064983C@ha */
/* 8056A630  C0 03 98 3C */	lfs f0, lit_548@l(r3)  /* 0x8064983C@l */
/* 8056A634  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8056A638  4C 41 13 82 */	cror 2, 1, 2
/* 8056A63C  40 82 00 28 */	bne lbl_8056A664
/* 8056A640  4B AF 26 B5 */	bl fqrand
/* 8056A644  3C 60 80 65 */	lis r3, lit_593@ha /* 0x80649840@ha */
/* 8056A648  C0 03 98 40 */	lfs f0, lit_593@l(r3)  /* 0x80649840@l */
/* 8056A64C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8056A650  40 80 00 14 */	bge lbl_8056A664
/* 8056A654  3C 60 80 57 */	lis r3, aPOL_nemu_act_proc@ha /* 0x8056A50C@ha */
/* 8056A658  3B C0 00 16 */	li r30, 0x16
/* 8056A65C  38 03 A5 0C */	addi r0, r3, aPOL_nemu_act_proc@l /* 0x8056A50C@l */
/* 8056A660  90 1F 08 04 */	stw r0, 0x804(r31)
lbl_8056A664:
/* 8056A664  3C 60 80 65 */	lis r3, lit_593@ha /* 0x80649840@ha */
/* 8056A668  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8056A66C  38 83 98 40 */	addi r4, r3, lit_593@l /* 0x80649840@l */
/* 8056A670  38 7F 00 28 */	addi r3, r31, 0x28
/* 8056A674  C0 44 00 00 */	lfs f2, 0(r4)
/* 8056A678  4B E5 05 F1 */	bl chase_f
/* 8056A67C  3C 60 80 65 */	lis r3, lit_593@ha /* 0x80649840@ha */
/* 8056A680  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8056A684  38 83 98 40 */	addi r4, r3, lit_593@l /* 0x80649840@l */
/* 8056A688  38 7F 00 30 */	addi r3, r31, 0x30
/* 8056A68C  C0 44 00 00 */	lfs f2, 0(r4)
/* 8056A690  4B E5 05 D9 */	bl chase_f
/* 8056A694  38 80 00 00 */	li r4, 0
/* 8056A698  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8056A69C  90 9F 08 40 */	stw r4, 0x840(r31)
/* 8056A6A0  88 7F 07 F5 */	lbz r3, 0x7f5(r31)
/* 8056A6A4  7C 03 00 40 */	cmplw r3, r0
/* 8056A6A8  40 82 00 08 */	bne lbl_8056A6B0
/* 8056A6AC  98 9F 07 F6 */	stb r4, 0x7f6(r31)
lbl_8056A6B0:
/* 8056A6B0  7F E3 FB 78 */	mr r3, r31
/* 8056A6B4  7F C4 F3 78 */	mr r4, r30
/* 8056A6B8  4B FF FB 35 */	bl func_8056A1EC
lbl_8056A6BC:
/* 8056A6BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056A6C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056A6C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056A6C8  7C 08 03 A6 */	mtlr r0
/* 8056A6CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8056A6D0  4E 80 00 20 */	blr 
