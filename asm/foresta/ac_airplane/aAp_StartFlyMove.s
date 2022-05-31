lbl_8040FAEC:
/* 8040FAEC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8040FAF0  7C 08 02 A6 */	mflr r0
/* 8040FAF4  90 01 00 54 */	stw r0, 0x54(r1)
/* 8040FAF8  39 61 00 50 */	addi r11, r1, 0x50
/* 8040FAFC  4B C8 B3 D1 */	bl func_8009AECC
/* 8040FB00  7C 7E 1B 78 */	mr r30, r3
/* 8040FB04  7C 9B 23 78 */	mr r27, r4
/* 8040FB08  4B F8 64 ED */	bl getJoystick_Y
/* 8040FB0C  7C 7D 1B 78 */	mr r29, r3
/* 8040FB10  7F 63 DB 78 */	mr r3, r27
/* 8040FB14  4B FC 9B 2D */	bl get_player_actor_withoutCheck
/* 8040FB18  7C 7F 1B 78 */	mr r31, r3
/* 8040FB1C  4B C4 D1 D9 */	bl fqrand
/* 8040FB20  3C 60 80 64 */	lis r3, lit_554@ha /* 0x806437E8@ha */
/* 8040FB24  81 1E 01 94 */	lwz r8, 0x194(r30)
/* 8040FB28  C0 03 37 E8 */	lfs f0, lit_554@l(r3)  /* 0x806437E8@l */
/* 8040FB2C  7F 7C DB 78 */	mr r28, r27
/* 8040FB30  7C 08 E8 50 */	subf r0, r8, r29
/* 8040FB34  EC 00 00 72 */	fmuls f0, f0, f1
/* 8040FB38  2C 00 00 1E */	cmpwi r0, 0x1e
/* 8040FB3C  FC 00 00 1E */	fctiwz f0, f0
/* 8040FB40  D8 01 00 08 */	stfd f0, 8(r1)
/* 8040FB44  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 8040FB48  40 81 01 9C */	ble lbl_8040FCE4
/* 8040FB4C  6D 04 80 00 */	xoris r4, r8, 0x8000
/* 8040FB50  3C 00 43 30 */	lis r0, 0x4330
/* 8040FB54  3C 60 80 64 */	lis r3, lit_430@ha /* 0x80643794@ha */
/* 8040FB58  90 81 00 0C */	stw r4, 0xc(r1)
/* 8040FB5C  38 A3 37 94 */	addi r5, r3, lit_430@l /* 0x80643794@l */
/* 8040FB60  3C C0 80 64 */	lis r6, lit_496@ha /* 0x806437B0@ha */
/* 8040FB64  90 01 00 08 */	stw r0, 8(r1)
/* 8040FB68  3C 60 80 64 */	lis r3, data_8064377C@ha /* 0x8064377C@ha */
/* 8040FB6C  C8 45 00 00 */	lfd f2, 0(r5)
/* 8040FB70  3C A0 80 64 */	lis r5, lit_555@ha /* 0x806437EC@ha */
/* 8040FB74  C8 21 00 08 */	lfd f1, 8(r1)
/* 8040FB78  7D 07 FE 70 */	srawi r7, r8, 0x1f
/* 8040FB7C  C0 03 37 7C */	lfs f0, data_8064377C@l(r3)  /* 0x8064377C@l */
/* 8040FB80  38 65 37 EC */	addi r3, r5, lit_555@l /* 0x806437EC@l */
/* 8040FB84  EC 21 10 28 */	fsubs f1, f1, f2
/* 8040FB88  7C E5 42 78 */	xor r5, r7, r8
/* 8040FB8C  C0 66 37 B0 */	lfs f3, lit_496@l(r6)  /* 0x806437B0@l */
/* 8040FB90  7F 67 28 50 */	subf r27, r7, r5
/* 8040FB94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8040FB98  C0 23 00 00 */	lfs f1, 0(r3)
/* 8040FB9C  4C 41 13 82 */	cror 2, 1, 2
/* 8040FBA0  40 82 00 18 */	bne lbl_8040FBB8
/* 8040FBA4  90 81 00 14 */	stw r4, 0x14(r1)
/* 8040FBA8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8040FBAC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8040FBB0  EC 00 10 28 */	fsubs f0, f0, f2
/* 8040FBB4  48 00 00 18 */	b lbl_8040FBCC
lbl_8040FBB8:
/* 8040FBB8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8040FBBC  90 01 00 18 */	stw r0, 0x18(r1)
/* 8040FBC0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8040FBC4  EC 00 10 28 */	fsubs f0, f0, f2
/* 8040FBC8  FC 00 00 50 */	fneg f0, f0
lbl_8040FBCC:
/* 8040FBCC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8040FBD0  7F C3 F3 78 */	mr r3, r30
/* 8040FBD4  7F 64 DB 78 */	mr r4, r27
/* 8040FBD8  EC 03 00 2A */	fadds f0, f3, f0
/* 8040FBDC  D0 1E 01 78 */	stfs f0, 0x178(r30)
/* 8040FBE0  4B FF FE 7D */	bl aAp_SelectFly
/* 8040FBE4  2C 1B 00 32 */	cmpwi r27, 0x32
/* 8040FBE8  3C 60 80 66 */	lis r3, goal_angle_random@ha /* 0x8065F9C4@ha */
/* 8040FBEC  39 63 F9 C4 */	addi r11, r3, goal_angle_random@l /* 0x8065F9C4@l */
/* 8040FBF0  40 81 00 0C */	ble lbl_8040FBFC
/* 8040FBF4  3C 60 80 66 */	lis r3, goal_angle_random2@ha /* 0x8065F9D4@ha */
/* 8040FBF8  39 63 F9 D4 */	addi r11, r3, goal_angle_random2@l /* 0x8065F9D4@l */
lbl_8040FBFC:
/* 8040FBFC  3C 60 80 64 */	lis r3, lit_556@ha /* 0x806437F0@ha */
/* 8040FC00  3C E0 43 30 */	lis r7, 0x4330
/* 8040FC04  38 83 37 F0 */	addi r4, r3, lit_556@l /* 0x806437F0@l */
/* 8040FC08  3C 60 80 64 */	lis r3, lit_430@ha /* 0x80643794@ha */
/* 8040FC0C  C0 24 00 00 */	lfs f1, 0(r4)
/* 8040FC10  39 03 37 94 */	addi r8, r3, lit_430@l /* 0x80643794@l */
/* 8040FC14  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8040FC18  3C 60 80 64 */	lis r3, lit_427@ha /* 0x8064378C@ha */
/* 8040FC1C  39 23 37 8C */	addi r9, r3, lit_427@l /* 0x8064378C@l */
/* 8040FC20  3C 60 80 64 */	lis r3, lit_426@ha /* 0x80643788@ha */
/* 8040FC24  EC 01 00 2A */	fadds f0, f1, f0
/* 8040FC28  39 43 37 88 */	addi r10, r3, lit_426@l /* 0x80643788@l */
/* 8040FC2C  3C 60 80 64 */	lis r3, lit_558@ha /* 0x806437F8@ha */
/* 8040FC30  3C 80 80 64 */	lis r4, lit_557@ha /* 0x806437F4@ha */
/* 8040FC34  38 A3 37 F8 */	addi r5, r3, lit_558@l /* 0x806437F8@l */
/* 8040FC38  3C 60 80 64 */	lis r3, data_8064377C@ha /* 0x8064377C@ha */
/* 8040FC3C  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 8040FC40  38 C4 37 F4 */	addi r6, r4, lit_557@l /* 0x806437F4@l */
/* 8040FC44  38 83 37 7C */	addi r4, r3, data_8064377C@l /* 0x8064377C@l */
/* 8040FC48  C8 A8 00 00 */	lfd f5, 0(r8)
/* 8040FC4C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8040FC50  57 A0 08 3C */	slwi r0, r29, 1
/* 8040FC54  90 E1 00 20 */	stw r7, 0x20(r1)
/* 8040FC58  7F 83 E3 78 */	mr r3, r28
/* 8040FC5C  C0 C9 00 00 */	lfs f6, 0(r9)
/* 8040FC60  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 8040FC64  C0 EA 00 00 */	lfs f7, 0(r10)
/* 8040FC68  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8040FC6C  90 E1 00 28 */	stw r7, 0x28(r1)
/* 8040FC70  C0 45 00 00 */	lfs f2, 0(r5)
/* 8040FC74  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 8040FC78  C0 66 00 00 */	lfs f3, 0(r6)
/* 8040FC7C  A8 BF 00 DE */	lha r5, 0xde(r31)
/* 8040FC80  C0 04 00 00 */	lfs f0, 0(r4)
/* 8040FC84  6C A4 80 00 */	xoris r4, r5, 0x8000
/* 8040FC88  90 81 00 24 */	stw r4, 0x24(r1)
/* 8040FC8C  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 8040FC90  EC 21 28 28 */	fsubs f1, f1, f5
/* 8040FC94  EC 26 00 72 */	fmuls f1, f6, f1
/* 8040FC98  EC 27 00 72 */	fmuls f1, f7, f1
/* 8040FC9C  D0 3E 01 88 */	stfs f1, 0x188(r30)
/* 8040FCA0  7C 0B 02 AE */	lhax r0, r11, r0
/* 8040FCA4  C0 9E 01 88 */	lfs f4, 0x188(r30)
/* 8040FCA8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8040FCAC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8040FCB0  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 8040FCB4  EC 21 28 28 */	fsubs f1, f1, f5
/* 8040FCB8  EC 26 00 72 */	fmuls f1, f6, f1
/* 8040FCBC  EC 27 00 72 */	fmuls f1, f7, f1
/* 8040FCC0  EC 24 08 2A */	fadds f1, f4, f1
/* 8040FCC4  D0 3E 01 80 */	stfs f1, 0x180(r30)
/* 8040FCC8  C0 3E 01 78 */	lfs f1, 0x178(r30)
/* 8040FCCC  EC 22 00 72 */	fmuls f1, f2, f1
/* 8040FCD0  EC 23 08 2A */	fadds f1, f3, f1
/* 8040FCD4  D0 3E 01 8C */	stfs f1, 0x18c(r30)
/* 8040FCD8  D0 1E 01 90 */	stfs f0, 0x190(r30)
/* 8040FCDC  D0 1E 01 7C */	stfs f0, 0x17c(r30)
/* 8040FCE0  4B FC A4 F1 */	bl mPlib_request_main_wait_type3
lbl_8040FCE4:
/* 8040FCE4  39 61 00 50 */	addi r11, r1, 0x50
/* 8040FCE8  4B C8 B2 31 */	bl func_8009AF18
/* 8040FCEC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8040FCF0  7C 08 03 A6 */	mtlr r0
/* 8040FCF4  38 21 00 50 */	addi r1, r1, 0x50
/* 8040FCF8  4E 80 00 20 */	blr 
