lbl_8038A3AC:
/* 8038A3AC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8038A3B0  7C 08 02 A6 */	mflr r0
/* 8038A3B4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8038A3B8  7C E0 FE 70 */	srawi r0, r7, 0x1f
/* 8038A3BC  7C E0 00 78 */	andc r0, r7, r0
/* 8038A3C0  C0 63 00 00 */	lfs f3, 0(r3)
/* 8038A3C4  2C 00 00 02 */	cmpwi r0, 2
/* 8038A3C8  C0 46 00 00 */	lfs f2, 0(r6)
/* 8038A3CC  C0 24 00 00 */	lfs f1, 0(r4)
/* 8038A3D0  ED 43 10 28 */	fsubs f10, f3, f2
/* 8038A3D4  C0 05 00 00 */	lfs f0, 0(r5)
/* 8038A3D8  EC A1 10 28 */	fsubs f5, f1, f2
/* 8038A3DC  C0 63 00 04 */	lfs f3, 4(r3)
/* 8038A3E0  EC 40 10 28 */	fsubs f2, f0, f2
/* 8038A3E4  C1 26 00 04 */	lfs f9, 4(r6)
/* 8038A3E8  ED 03 48 28 */	fsubs f8, f3, f9
/* 8038A3EC  C0 24 00 04 */	lfs f1, 4(r4)
/* 8038A3F0  C0 05 00 04 */	lfs f0, 4(r5)
/* 8038A3F4  EC 81 48 28 */	fsubs f4, f1, f9
/* 8038A3F8  C0 C3 00 08 */	lfs f6, 8(r3)
/* 8038A3FC  EC 20 48 28 */	fsubs f1, f0, f9
/* 8038A400  C0 E6 00 08 */	lfs f7, 8(r6)
/* 8038A404  C0 64 00 08 */	lfs f3, 8(r4)
/* 8038A408  C0 05 00 08 */	lfs f0, 8(r5)
/* 8038A40C  EC C6 38 28 */	fsubs f6, f6, f7
/* 8038A410  EC 63 38 28 */	fsubs f3, f3, f7
/* 8038A414  D1 41 00 30 */	stfs f10, 0x30(r1)
/* 8038A418  EC 00 38 28 */	fsubs f0, f0, f7
/* 8038A41C  D1 01 00 34 */	stfs f8, 0x34(r1)
/* 8038A420  D0 C1 00 38 */	stfs f6, 0x38(r1)
/* 8038A424  D0 A1 00 24 */	stfs f5, 0x24(r1)
/* 8038A428  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 8038A42C  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 8038A430  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8038A434  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8038A438  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8038A43C  40 81 00 0C */	ble lbl_8038A448
/* 8038A440  38 00 00 02 */	li r0, 2
/* 8038A444  48 00 00 0C */	b lbl_8038A450
lbl_8038A448:
/* 8038A448  7C E0 FE 70 */	srawi r0, r7, 0x1f
/* 8038A44C  7C E0 00 78 */	andc r0, r7, r0
lbl_8038A450:
/* 8038A450  2C 00 00 03 */	cmpwi r0, 3
/* 8038A454  40 82 00 FC */	bne lbl_8038A550
/* 8038A458  3C 80 80 65 */	lis r4, mCoBG_pro_dimension_proc@ha /* 0x80650994@ha */
/* 8038A45C  38 61 00 14 */	addi r3, r1, 0x14
/* 8038A460  38 A4 09 94 */	addi r5, r4, mCoBG_pro_dimension_proc@l /* 0x80650994@l */
/* 8038A464  38 81 00 10 */	addi r4, r1, 0x10
/* 8038A468  81 85 00 04 */	lwz r12, 4(r5)
/* 8038A46C  38 A1 00 30 */	addi r5, r1, 0x30
/* 8038A470  38 C1 00 24 */	addi r6, r1, 0x24
/* 8038A474  38 E1 00 18 */	addi r7, r1, 0x18
/* 8038A478  7D 89 03 A6 */	mtctr r12
/* 8038A47C  4E 80 04 21 */	bctrl 
/* 8038A480  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 8038A484  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8038A488  C0 23 19 A4 */	lfs f1, data_806419A4@l(r3)  /* 0x806419A4@l */
/* 8038A48C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8038A490  4C 40 13 82 */	cror 2, 0, 2
/* 8038A494  40 82 01 28 */	bne lbl_8038A5BC
/* 8038A498  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8038A49C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8038A4A0  4C 40 13 82 */	cror 2, 0, 2
/* 8038A4A4  40 82 01 18 */	bne lbl_8038A5BC
/* 8038A4A8  3C 80 80 65 */	lis r4, mCoBG_pro_dimension_proc@ha /* 0x80650994@ha */
/* 8038A4AC  38 61 00 14 */	addi r3, r1, 0x14
/* 8038A4B0  38 A4 09 94 */	addi r5, r4, mCoBG_pro_dimension_proc@l /* 0x80650994@l */
/* 8038A4B4  38 81 00 10 */	addi r4, r1, 0x10
/* 8038A4B8  81 85 00 00 */	lwz r12, 0(r5)
/* 8038A4BC  38 A1 00 30 */	addi r5, r1, 0x30
/* 8038A4C0  38 C1 00 24 */	addi r6, r1, 0x24
/* 8038A4C4  38 E1 00 18 */	addi r7, r1, 0x18
/* 8038A4C8  7D 89 03 A6 */	mtctr r12
/* 8038A4CC  4E 80 04 21 */	bctrl 
/* 8038A4D0  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 8038A4D4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8038A4D8  C0 23 19 A4 */	lfs f1, data_806419A4@l(r3)  /* 0x806419A4@l */
/* 8038A4DC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8038A4E0  4C 40 13 82 */	cror 2, 0, 2
/* 8038A4E4  40 82 00 D8 */	bne lbl_8038A5BC
/* 8038A4E8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8038A4EC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8038A4F0  4C 40 13 82 */	cror 2, 0, 2
/* 8038A4F4  40 82 00 C8 */	bne lbl_8038A5BC
/* 8038A4F8  3C 80 80 65 */	lis r4, mCoBG_pro_dimension_proc@ha /* 0x80650994@ha */
/* 8038A4FC  38 61 00 14 */	addi r3, r1, 0x14
/* 8038A500  38 A4 09 94 */	addi r5, r4, mCoBG_pro_dimension_proc@l /* 0x80650994@l */
/* 8038A504  38 81 00 10 */	addi r4, r1, 0x10
/* 8038A508  81 85 00 08 */	lwz r12, 8(r5)
/* 8038A50C  38 A1 00 30 */	addi r5, r1, 0x30
/* 8038A510  38 C1 00 24 */	addi r6, r1, 0x24
/* 8038A514  38 E1 00 18 */	addi r7, r1, 0x18
/* 8038A518  7D 89 03 A6 */	mtctr r12
/* 8038A51C  4E 80 04 21 */	bctrl 
/* 8038A520  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 8038A524  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8038A528  C0 23 19 A4 */	lfs f1, data_806419A4@l(r3)  /* 0x806419A4@l */
/* 8038A52C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8038A530  4C 40 13 82 */	cror 2, 0, 2
/* 8038A534  40 82 00 88 */	bne lbl_8038A5BC
/* 8038A538  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8038A53C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8038A540  4C 40 13 82 */	cror 2, 0, 2
/* 8038A544  40 82 00 78 */	bne lbl_8038A5BC
/* 8038A548  38 60 00 01 */	li r3, 1
/* 8038A54C  48 00 00 74 */	b lbl_8038A5C0
lbl_8038A550:
/* 8038A550  3C 60 80 65 */	lis r3, mCoBG_pro_dimension_proc@ha /* 0x80650994@ha */
/* 8038A554  3C 80 80 64 */	lis r4, data_806419A4@ha /* 0x806419A4@ha */
/* 8038A558  54 00 10 3A */	slwi r0, r0, 2
/* 8038A55C  C0 04 19 A4 */	lfs f0, data_806419A4@l(r4)  /* 0x806419A4@l */
/* 8038A560  38 63 09 94 */	addi r3, r3, mCoBG_pro_dimension_proc@l /* 0x80650994@l */
/* 8038A564  38 81 00 08 */	addi r4, r1, 8
/* 8038A568  7D 83 00 2E */	lwzx r12, r3, r0
/* 8038A56C  38 61 00 0C */	addi r3, r1, 0xc
/* 8038A570  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8038A574  38 A1 00 30 */	addi r5, r1, 0x30
/* 8038A578  38 C1 00 24 */	addi r6, r1, 0x24
/* 8038A57C  38 E1 00 18 */	addi r7, r1, 0x18
/* 8038A580  D0 01 00 08 */	stfs f0, 8(r1)
/* 8038A584  7D 89 03 A6 */	mtctr r12
/* 8038A588  4E 80 04 21 */	bctrl 
/* 8038A58C  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 8038A590  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8038A594  C0 23 19 A4 */	lfs f1, data_806419A4@l(r3)  /* 0x806419A4@l */
/* 8038A598  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8038A59C  4C 40 13 82 */	cror 2, 0, 2
/* 8038A5A0  40 82 00 1C */	bne lbl_8038A5BC
/* 8038A5A4  C0 01 00 08 */	lfs f0, 8(r1)
/* 8038A5A8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8038A5AC  4C 40 13 82 */	cror 2, 0, 2
/* 8038A5B0  40 82 00 0C */	bne lbl_8038A5BC
/* 8038A5B4  38 60 00 01 */	li r3, 1
/* 8038A5B8  48 00 00 08 */	b lbl_8038A5C0
lbl_8038A5BC:
/* 8038A5BC  38 60 00 00 */	li r3, 0
lbl_8038A5C0:
/* 8038A5C0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8038A5C4  7C 08 03 A6 */	mtlr r0
/* 8038A5C8  38 21 00 40 */	addi r1, r1, 0x40
/* 8038A5CC  4E 80 00 20 */	blr 
