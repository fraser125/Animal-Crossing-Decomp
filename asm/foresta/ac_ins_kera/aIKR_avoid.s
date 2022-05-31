lbl_8059D54C:
/* 8059D54C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8059D550  7C 08 02 A6 */	mflr r0
/* 8059D554  38 A0 10 00 */	li r5, 0x1000
/* 8059D558  90 01 00 34 */	stw r0, 0x34(r1)
/* 8059D55C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8059D560  7C 7F 1B 78 */	mr r31, r3
/* 8059D564  38 7F 00 DC */	addi r3, r31, 0xdc
/* 8059D568  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8059D56C  7C 9E 23 78 */	mr r30, r4
/* 8059D570  38 80 00 00 */	li r4, 0
/* 8059D574  4B E1 D5 D1 */	bl chase_angle
/* 8059D578  80 7F 02 34 */	lwz r3, 0x234(r31)
/* 8059D57C  38 03 FF FF */	addi r0, r3, -1
/* 8059D580  90 1F 02 34 */	stw r0, 0x234(r31)
/* 8059D584  80 1F 02 34 */	lwz r0, 0x234(r31)
/* 8059D588  2C 00 00 00 */	cmpwi r0, 0
/* 8059D58C  41 81 00 3C */	bgt lbl_8059D5C8
/* 8059D590  4B AB F7 65 */	bl fqrand
/* 8059D594  3C 60 80 65 */	lis r3, lit_536@ha /* 0x8064A160@ha */
/* 8059D598  3C 80 80 65 */	lis r4, lit_535@ha /* 0x8064A15C@ha */
/* 8059D59C  38 A3 A1 60 */	addi r5, r3, lit_536@l /* 0x8064A160@l */
/* 8059D5A0  C0 44 A1 5C */	lfs f2, lit_535@l(r4)  /* 0x8064A15C@l */
/* 8059D5A4  C0 05 00 00 */	lfs f0, 0(r5)
/* 8059D5A8  3C 60 80 65 */	lis r3, lit_534@ha /* 0x8064A158@ha */
/* 8059D5AC  38 00 00 0A */	li r0, 0xa
/* 8059D5B0  EC 20 00 72 */	fmuls f1, f0, f1
/* 8059D5B4  C0 03 A1 58 */	lfs f0, lit_534@l(r3)  /* 0x8064A158@l */
/* 8059D5B8  EC 22 08 28 */	fsubs f1, f2, f1
/* 8059D5BC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8059D5C0  D0 1F 01 EC */	stfs f0, 0x1ec(r31)
/* 8059D5C4  90 1F 02 34 */	stw r0, 0x234(r31)
lbl_8059D5C8:
/* 8059D5C8  7F E3 FB 78 */	mr r3, r31
/* 8059D5CC  4B FF FC C9 */	bl aIKR_calc_move_scale
/* 8059D5D0  7F E3 FB 78 */	mr r3, r31
/* 8059D5D4  4B FF FE 25 */	bl aIKR_chk_water_attr
/* 8059D5D8  2C 03 00 01 */	cmpwi r3, 1
/* 8059D5DC  40 82 00 18 */	bne lbl_8059D5F4
/* 8059D5E0  7F E3 FB 78 */	mr r3, r31
/* 8059D5E4  7F C5 F3 78 */	mr r5, r30
/* 8059D5E8  38 80 00 04 */	li r4, 4
/* 8059D5EC  48 00 07 89 */	bl aIKR_setupAction
/* 8059D5F0  48 00 00 D0 */	b lbl_8059D6C0
lbl_8059D5F4:
/* 8059D5F4  7F E3 FB 78 */	mr r3, r31
/* 8059D5F8  4B FF FD B9 */	bl aIKR_chk_active_range
/* 8059D5FC  2C 03 00 00 */	cmpwi r3, 0
/* 8059D600  40 82 00 4C */	bne lbl_8059D64C
/* 8059D604  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 8059D608  38 61 00 1C */	addi r3, r1, 0x1c
/* 8059D60C  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8059D610  38 80 00 00 */	li r4, 0
/* 8059D614  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 8059D618  90 01 00 20 */	stw r0, 0x20(r1)
/* 8059D61C  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8059D620  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059D624  4B DE BA 89 */	bl mCoBG_Wpos2Attribute
/* 8059D628  4B DF 2D F1 */	bl mCoBG_CheckHole_OrgAttr
/* 8059D62C  2C 03 00 01 */	cmpwi r3, 1
/* 8059D630  38 80 00 01 */	li r4, 1
/* 8059D634  40 82 00 08 */	bne lbl_8059D63C
/* 8059D638  38 80 00 06 */	li r4, 6
lbl_8059D63C:
/* 8059D63C  7F E3 FB 78 */	mr r3, r31
/* 8059D640  7F C5 F3 78 */	mr r5, r30
/* 8059D644  48 00 07 31 */	bl aIKR_setupAction
/* 8059D648  48 00 00 78 */	b lbl_8059D6C0
lbl_8059D64C:
/* 8059D64C  80 1F 02 18 */	lwz r0, 0x218(r31)
/* 8059D650  2C 00 00 04 */	cmpwi r0, 4
/* 8059D654  40 82 00 54 */	bne lbl_8059D6A8
/* 8059D658  80 DF 00 28 */	lwz r6, 0x28(r31)
/* 8059D65C  38 61 00 0C */	addi r3, r1, 0xc
/* 8059D660  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8059D664  38 81 00 08 */	addi r4, r1, 8
/* 8059D668  38 A1 00 10 */	addi r5, r1, 0x10
/* 8059D66C  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8059D670  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059D674  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8059D678  90 01 00 18 */	stw r0, 0x18(r1)
/* 8059D67C  4B E0 7C ED */	bl mFI_Wpos2UtNum
/* 8059D680  A8 7F 02 68 */	lha r3, 0x268(r31)
/* 8059D684  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8059D688  7C 03 00 00 */	cmpw r3, r0
/* 8059D68C  40 82 00 14 */	bne lbl_8059D6A0
/* 8059D690  A8 7F 02 6A */	lha r3, 0x26a(r31)
/* 8059D694  80 01 00 08 */	lwz r0, 8(r1)
/* 8059D698  7C 03 00 00 */	cmpw r3, r0
/* 8059D69C  41 82 00 0C */	beq lbl_8059D6A8
lbl_8059D6A0:
/* 8059D6A0  38 00 00 02 */	li r0, 2
/* 8059D6A4  90 1F 02 18 */	stw r0, 0x218(r31)
lbl_8059D6A8:
/* 8059D6A8  7F E3 FB 78 */	mr r3, r31
/* 8059D6AC  4B FF FE 25 */	bl aIKR_calc_direction_angl
/* 8059D6B0  7F E3 FB 78 */	mr r3, r31
/* 8059D6B4  38 BF 00 28 */	addi r5, r31, 0x28
/* 8059D6B8  38 80 00 45 */	li r4, 0x45
/* 8059D6BC  48 09 08 89 */	bl sAdo_OngenPos
lbl_8059D6C0:
/* 8059D6C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8059D6C4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8059D6C8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8059D6CC  7C 08 03 A6 */	mtlr r0
/* 8059D6D0  38 21 00 30 */	addi r1, r1, 0x30
/* 8059D6D4  4E 80 00 20 */	blr 
