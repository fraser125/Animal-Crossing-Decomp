lbl_8061F600:
/* 8061F600  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8061F604  7C 08 02 A6 */	mflr r0
/* 8061F608  3C A0 80 65 */	lis r5, lit_459@ha /* 0x8064CC98@ha */
/* 8061F60C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8061F610  C0 05 CC 98 */	lfs f0, lit_459@l(r5)  /* 0x8064CC98@l */
/* 8061F614  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8061F618  7C 9F 23 78 */	mr r31, r4
/* 8061F61C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8061F620  7C 7E 1B 78 */	mr r30, r3
/* 8061F624  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 8061F628  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8061F62C  4C 41 13 82 */	cror 2, 1, 2
/* 8061F630  40 82 01 C0 */	bne lbl_8061F7F0
/* 8061F634  A8 1E 00 54 */	lha r0, 0x54(r30)
/* 8061F638  2C 00 00 01 */	cmpwi r0, 1
/* 8061F63C  40 82 00 60 */	bne lbl_8061F69C
/* 8061F640  38 00 00 00 */	li r0, 0
/* 8061F644  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8061F648  B0 1E 00 54 */	sth r0, 0x54(r30)
/* 8061F64C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8061F650  3C A3 00 02 */	addis r5, r3, 2
/* 8061F654  7F E7 FB 78 */	mr r7, r31
/* 8061F658  81 1E 00 10 */	lwz r8, 0x10(r30)
/* 8061F65C  38 81 00 14 */	addi r4, r1, 0x14
/* 8061F660  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 8061F664  38 60 00 45 */	li r3, 0x45
/* 8061F668  80 A5 60 9C */	lwz r5, 0x609c(r5)
/* 8061F66C  38 C0 00 00 */	li r6, 0
/* 8061F670  91 01 00 14 */	stw r8, 0x14(r1)
/* 8061F674  39 20 00 06 */	li r9, 6
/* 8061F678  39 40 00 00 */	li r10, 0
/* 8061F67C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8061F680  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 8061F684  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8061F688  81 85 00 00 */	lwz r12, 0(r5)
/* 8061F68C  88 BE 00 0E */	lbz r5, 0xe(r30)
/* 8061F690  A1 1E 00 0C */	lhz r8, 0xc(r30)
/* 8061F694  7D 89 03 A6 */	mtctr r12
/* 8061F698  4E 80 04 21 */	bctrl 
lbl_8061F69C:
/* 8061F69C  3C 60 80 65 */	lis r3, lit_460@ha /* 0x8064CC9C@ha */
/* 8061F6A0  3C 80 80 65 */	lis r4, lit_461@ha /* 0x8064CCA4@ha */
/* 8061F6A4  39 03 CC 9C */	addi r8, r3, lit_460@l /* 0x8064CC9C@l */
/* 8061F6A8  3C C0 80 65 */	lis r6, lit_462@ha /* 0x8064CCAC@ha */
/* 8061F6AC  C9 08 00 00 */	lfd f8, 0(r8)
/* 8061F6B0  38 E4 CC A4 */	addi r7, r4, lit_461@l /* 0x8064CCA4@l */
/* 8061F6B4  3C 60 80 65 */	lis r3, lit_463@ha /* 0x8064CCB0@ha */
/* 8061F6B8  3C 80 80 65 */	lis r4, lit_464@ha /* 0x8064CCB4@ha */
/* 8061F6BC  FC 20 40 34 */	frsqrte f1, f8
/* 8061F6C0  38 A3 CC B0 */	addi r5, r3, lit_463@l /* 0x8064CCB0@l */
/* 8061F6C4  C8 E8 00 00 */	lfd f7, 0(r8)
/* 8061F6C8  3C 60 80 65 */	lis r3, lit_465@ha /* 0x8064CCB8@ha */
/* 8061F6CC  C0 83 CC B8 */	lfs f4, lit_465@l(r3)  /* 0x8064CCB8@l */
/* 8061F6D0  38 7E 00 20 */	addi r3, r30, 0x20
/* 8061F6D4  FC 41 00 72 */	fmul f2, f1, f1
/* 8061F6D8  C8 C7 00 00 */	lfd f6, 0(r7)
/* 8061F6DC  C0 05 00 00 */	lfs f0, 0(r5)
/* 8061F6E0  FC A7 00 72 */	fmul f5, f7, f1
/* 8061F6E4  C0 26 CC AC */	lfs f1, lit_462@l(r6)  /* 0x8064CCAC@l */
/* 8061F6E8  C0 64 CC B4 */	lfs f3, lit_464@l(r4)  /* 0x8064CCB4@l */
/* 8061F6EC  FC 48 00 B2 */	fmul f2, f8, f2
/* 8061F6F0  FC 46 10 28 */	fsub f2, f6, f2
/* 8061F6F4  FC A5 00 B2 */	fmul f5, f5, f2
/* 8061F6F8  FC 45 01 72 */	fmul f2, f5, f5
/* 8061F6FC  FC A7 01 72 */	fmul f5, f7, f5
/* 8061F700  FC 48 00 B2 */	fmul f2, f8, f2
/* 8061F704  FC 46 10 28 */	fsub f2, f6, f2
/* 8061F708  FC A5 00 B2 */	fmul f5, f5, f2
/* 8061F70C  FC 45 01 72 */	fmul f2, f5, f5
/* 8061F710  FC A7 01 72 */	fmul f5, f7, f5
/* 8061F714  FC 48 00 B2 */	fmul f2, f8, f2
/* 8061F718  FC 46 10 28 */	fsub f2, f6, f2
/* 8061F71C  FC 45 00 B2 */	fmul f2, f5, f2
/* 8061F720  FC 48 00 B2 */	fmul f2, f8, f2
/* 8061F724  FC 40 10 18 */	frsp f2, f2
/* 8061F728  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8061F72C  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8061F730  EC 40 10 28 */	fsubs f2, f0, f2
/* 8061F734  4B D9 BA 7D */	bl add_calc
/* 8061F738  3C 60 80 65 */	lis r3, lit_460@ha /* 0x8064CC9C@ha */
/* 8061F73C  3C 80 80 65 */	lis r4, lit_461@ha /* 0x8064CCA4@ha */
/* 8061F740  39 03 CC 9C */	addi r8, r3, lit_460@l /* 0x8064CC9C@l */
/* 8061F744  3C C0 80 65 */	lis r6, lit_462@ha /* 0x8064CCAC@ha */
/* 8061F748  C9 08 00 00 */	lfd f8, 0(r8)
/* 8061F74C  38 E4 CC A4 */	addi r7, r4, lit_461@l /* 0x8064CCA4@l */
/* 8061F750  3C 60 80 65 */	lis r3, lit_463@ha /* 0x8064CCB0@ha */
/* 8061F754  3C 80 80 65 */	lis r4, lit_466@ha /* 0x8064CCBC@ha */
/* 8061F758  FC 20 40 34 */	frsqrte f1, f8
/* 8061F75C  38 A3 CC B0 */	addi r5, r3, lit_463@l /* 0x8064CCB0@l */
/* 8061F760  C8 E8 00 00 */	lfd f7, 0(r8)
/* 8061F764  3C 60 80 65 */	lis r3, lit_467@ha /* 0x8064CCC0@ha */
/* 8061F768  C0 83 CC C0 */	lfs f4, lit_467@l(r3)  /* 0x8064CCC0@l */
/* 8061F76C  38 7E 00 34 */	addi r3, r30, 0x34
/* 8061F770  FC 41 00 72 */	fmul f2, f1, f1
/* 8061F774  C8 C7 00 00 */	lfd f6, 0(r7)
/* 8061F778  C0 05 00 00 */	lfs f0, 0(r5)
/* 8061F77C  FC A7 00 72 */	fmul f5, f7, f1
/* 8061F780  C0 26 CC AC */	lfs f1, lit_462@l(r6)  /* 0x8064CCAC@l */
/* 8061F784  C0 64 CC BC */	lfs f3, lit_466@l(r4)  /* 0x8064CCBC@l */
/* 8061F788  FC 48 00 B2 */	fmul f2, f8, f2
/* 8061F78C  FC 46 10 28 */	fsub f2, f6, f2
/* 8061F790  FC A5 00 B2 */	fmul f5, f5, f2
/* 8061F794  FC 45 01 72 */	fmul f2, f5, f5
/* 8061F798  FC A7 01 72 */	fmul f5, f7, f5
/* 8061F79C  FC 48 00 B2 */	fmul f2, f8, f2
/* 8061F7A0  FC 46 10 28 */	fsub f2, f6, f2
/* 8061F7A4  FC A5 00 B2 */	fmul f5, f5, f2
/* 8061F7A8  FC 45 01 72 */	fmul f2, f5, f5
/* 8061F7AC  FC A7 01 72 */	fmul f5, f7, f5
/* 8061F7B0  FC 48 00 B2 */	fmul f2, f8, f2
/* 8061F7B4  FC 46 10 28 */	fsub f2, f6, f2
/* 8061F7B8  FC 45 00 B2 */	fmul f2, f5, f2
/* 8061F7BC  FC 48 00 B2 */	fmul f2, f8, f2
/* 8061F7C0  FC 40 10 18 */	frsp f2, f2
/* 8061F7C4  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8061F7C8  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8061F7CC  EC 40 10 28 */	fsubs f2, f0, f2
/* 8061F7D0  4B D9 B9 E1 */	bl add_calc
/* 8061F7D4  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 8061F7D8  D0 1E 00 3C */	stfs f0, 0x3c(r30)
/* 8061F7DC  D0 1E 00 38 */	stfs f0, 0x38(r30)
/* 8061F7E0  A8 7E 00 00 */	lha r3, 0(r30)
/* 8061F7E4  38 03 FF FF */	addi r0, r3, -1
/* 8061F7E8  B0 1E 00 00 */	sth r0, 0(r30)
/* 8061F7EC  48 00 01 88 */	b lbl_8061F974
lbl_8061F7F0:
/* 8061F7F0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8061F7F4  3C A0 80 65 */	lis r5, lit_462@ha /* 0x8064CCAC@ha */
/* 8061F7F8  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8061F7FC  A8 7E 00 00 */	lha r3, 0(r30)
/* 8061F800  3C 84 00 02 */	addis r4, r4, 2
/* 8061F804  38 E5 CC AC */	addi r7, r5, lit_462@l /* 0x8064CCAC@l */
/* 8061F808  80 C4 60 9C */	lwz r6, 0x609c(r4)
/* 8061F80C  38 80 00 4C */	li r4, 0x4c
/* 8061F810  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8061F814  38 A0 00 50 */	li r5, 0x50
/* 8061F818  81 86 00 14 */	lwz r12, 0x14(r6)
/* 8061F81C  C0 47 00 00 */	lfs f2, 0(r7)
/* 8061F820  7D 89 03 A6 */	mtctr r12
/* 8061F824  4E 80 04 21 */	bctrl 
/* 8061F828  3C 60 80 65 */	lis r3, lit_468@ha /* 0x8064CCC4@ha */
/* 8061F82C  D0 3E 00 34 */	stfs f1, 0x34(r30)
/* 8061F830  38 A3 CC C4 */	addi r5, r3, lit_468@l /* 0x8064CCC4@l */
/* 8061F834  3C 80 80 65 */	lis r4, lit_460@ha /* 0x8064CC9C@ha */
/* 8061F838  C8 A5 00 00 */	lfd f5, 0(r5)
/* 8061F83C  3C 60 80 65 */	lis r3, lit_461@ha /* 0x8064CCA4@ha */
/* 8061F840  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8061F844  FC 40 28 34 */	frsqrte f2, f5
/* 8061F848  C8 84 CC 9C */	lfd f4, lit_460@l(r4)  /* 0x8064CC9C@l */
/* 8061F84C  D0 3E 00 3C */	stfs f1, 0x3c(r30)
/* 8061F850  C8 63 CC A4 */	lfd f3, lit_461@l(r3)  /* 0x8064CCA4@l */
/* 8061F854  FC 02 00 B2 */	fmul f0, f2, f2
/* 8061F858  D0 3E 00 38 */	stfs f1, 0x38(r30)
/* 8061F85C  FC 44 00 B2 */	fmul f2, f4, f2
/* 8061F860  FC 25 00 32 */	fmul f1, f5, f0
/* 8061F864  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 8061F868  FC 23 08 28 */	fsub f1, f3, f1
/* 8061F86C  FC 42 00 72 */	fmul f2, f2, f1
/* 8061F870  FC 22 00 B2 */	fmul f1, f2, f2
/* 8061F874  FC 44 00 B2 */	fmul f2, f4, f2
/* 8061F878  FC 25 00 72 */	fmul f1, f5, f1
/* 8061F87C  FC 23 08 28 */	fsub f1, f3, f1
/* 8061F880  FC 42 00 72 */	fmul f2, f2, f1
/* 8061F884  FC 22 00 B2 */	fmul f1, f2, f2
/* 8061F888  FC 44 00 B2 */	fmul f2, f4, f2
/* 8061F88C  FC 25 00 72 */	fmul f1, f5, f1
/* 8061F890  FC 23 08 28 */	fsub f1, f3, f1
/* 8061F894  FC 22 00 72 */	fmul f1, f2, f1
/* 8061F898  FC 25 00 72 */	fmul f1, f5, f1
/* 8061F89C  FC 20 08 18 */	frsp f1, f1
/* 8061F8A0  D0 21 00 08 */	stfs f1, 8(r1)
/* 8061F8A4  C0 21 00 08 */	lfs f1, 8(r1)
/* 8061F8A8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8061F8AC  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 8061F8B0  A8 7E 00 4C */	lha r3, 0x4c(r30)
/* 8061F8B4  A8 1E 00 4E */	lha r0, 0x4e(r30)
/* 8061F8B8  7C 03 02 14 */	add r0, r3, r0
/* 8061F8BC  B0 1E 00 4C */	sth r0, 0x4c(r30)
/* 8061F8C0  A8 7E 00 50 */	lha r3, 0x50(r30)
/* 8061F8C4  A8 1E 00 52 */	lha r0, 0x52(r30)
/* 8061F8C8  7C 03 02 14 */	add r0, r3, r0
/* 8061F8CC  B0 1E 00 50 */	sth r0, 0x50(r30)
/* 8061F8D0  A8 1E 00 06 */	lha r0, 6(r30)
/* 8061F8D4  2C 00 00 02 */	cmpwi r0, 2
/* 8061F8D8  40 82 00 30 */	bne lbl_8061F908
/* 8061F8DC  80 1F 20 90 */	lwz r0, 0x2090(r31)
/* 8061F8E0  54 00 70 22 */	slwi r0, r0, 0xe
/* 8061F8E4  7C 03 07 34 */	extsh r3, r0
/* 8061F8E8  4B D9 B2 09 */	bl sin_s
/* 8061F8EC  3C 80 80 65 */	lis r4, lit_465@ha /* 0x8064CCB8@ha */
/* 8061F8F0  3C 60 80 65 */	lis r3, lit_469@ha /* 0x8064CCCC@ha */
/* 8061F8F4  C0 44 CC B8 */	lfs f2, lit_465@l(r4)  /* 0x8064CCB8@l */
/* 8061F8F8  C0 03 CC CC */	lfs f0, lit_469@l(r3)  /* 0x8064CCCC@l */
/* 8061F8FC  EC 22 00 72 */	fmuls f1, f2, f1
/* 8061F900  EC 01 00 28 */	fsubs f0, f1, f0
/* 8061F904  D0 1E 00 28 */	stfs f0, 0x28(r30)
lbl_8061F908:
/* 8061F908  3C 80 80 65 */	lis r4, lit_470@ha /* 0x8064CCD0@ha */
/* 8061F90C  38 7E 00 1C */	addi r3, r30, 0x1c
/* 8061F910  C0 24 CC D0 */	lfs f1, lit_470@l(r4)  /* 0x8064CCD0@l */
/* 8061F914  FC 40 08 90 */	fmr f2, f1
/* 8061F918  4B D9 B9 C1 */	bl add_calc0
/* 8061F91C  3C 80 80 65 */	lis r4, lit_470@ha /* 0x8064CCD0@ha */
/* 8061F920  38 7E 00 24 */	addi r3, r30, 0x24
/* 8061F924  C0 24 CC D0 */	lfs f1, lit_470@l(r4)  /* 0x8064CCD0@l */
/* 8061F928  FC 40 08 90 */	fmr f2, f1
/* 8061F92C  4B D9 B9 AD */	bl add_calc0
/* 8061F930  38 7E 00 1C */	addi r3, r30, 0x1c
/* 8061F934  38 9E 00 28 */	addi r4, r30, 0x28
/* 8061F938  7C 65 1B 78 */	mr r5, r3
/* 8061F93C  4B D9 B6 09 */	bl xyz_t_add
/* 8061F940  38 7E 00 10 */	addi r3, r30, 0x10
/* 8061F944  38 9E 00 1C */	addi r4, r30, 0x1c
/* 8061F948  7C 65 1B 78 */	mr r5, r3
/* 8061F94C  4B D9 B5 F9 */	bl xyz_t_add
/* 8061F950  7F C3 F3 78 */	mr r3, r30
/* 8061F954  4B FF FC 05 */	bl suisou_awa_BGCheck
/* 8061F958  3C 60 80 65 */	lis r3, lit_459@ha /* 0x8064CC98@ha */
/* 8061F95C  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 8061F960  C0 03 CC 98 */	lfs f0, lit_459@l(r3)  /* 0x8064CC98@l */
/* 8061F964  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8061F968  4C 41 13 82 */	cror 2, 1, 2
/* 8061F96C  40 82 00 08 */	bne lbl_8061F974
/* 8061F970  D0 1E 00 14 */	stfs f0, 0x14(r30)
lbl_8061F974:
/* 8061F974  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8061F978  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8061F97C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8061F980  7C 08 03 A6 */	mtlr r0
/* 8061F984  38 21 00 30 */	addi r1, r1, 0x30
/* 8061F988  4E 80 00 20 */	blr 
