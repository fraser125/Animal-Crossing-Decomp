lbl_80387380:
/* 80387380  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80387384  7C 08 02 A6 */	mflr r0
/* 80387388  90 01 00 34 */	stw r0, 0x34(r1)
/* 8038738C  39 61 00 30 */	addi r11, r1, 0x30
/* 80387390  4B D1 3B 3D */	bl func_8009AECC
/* 80387394  7C 9E 23 78 */	mr r30, r4
/* 80387398  7C DC 33 78 */	mr r28, r6
/* 8038739C  7C 7B 1B 78 */	mr r27, r3
/* 803873A0  7C FD 3B 78 */	mr r29, r7
/* 803873A4  7D 1F 43 78 */	mr r31, r8
/* 803873A8  7F 87 E3 78 */	mr r7, r28
/* 803873AC  38 61 00 08 */	addi r3, r1, 8
/* 803873B0  38 BE 00 08 */	addi r5, r30, 8
/* 803873B4  38 DE 00 20 */	addi r6, r30, 0x20
/* 803873B8  48 00 38 45 */	bl mCoBG_GetDistPointAndLine2D_Norm
/* 803873BC  2C 03 00 00 */	cmpwi r3, 0
/* 803873C0  41 82 01 7C */	beq lbl_8038753C
/* 803873C4  C0 21 00 08 */	lfs f1, 8(r1)
/* 803873C8  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 803873CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803873D0  40 80 00 B8 */	bge lbl_80387488
/* 803873D4  3C 60 80 64 */	lis r3, lit_2457@ha /* 0x80641A90@ha */
/* 803873D8  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 803873DC  38 83 1A 90 */	addi r4, r3, lit_2457@l /* 0x80641A90@l */
/* 803873E0  38 7E 00 10 */	addi r3, r30, 0x10
/* 803873E4  C0 04 00 00 */	lfs f0, 0(r4)
/* 803873E8  EC 21 00 28 */	fsubs f1, f1, f0
/* 803873EC  4B FF F4 C9 */	bl mCoBG_RoughCheckWallHeight
/* 803873F0  2C 03 00 00 */	cmpwi r3, 0
/* 803873F4  41 82 01 48 */	beq lbl_8038753C
/* 803873F8  3C 60 80 64 */	lis r3, lit_2457@ha /* 0x80641A90@ha */
/* 803873FC  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 80387400  C0 03 1A 90 */	lfs f0, lit_2457@l(r3)  /* 0x80641A90@l */
/* 80387404  7F C4 F3 78 */	mr r4, r30
/* 80387408  7F 85 E3 78 */	mr r5, r28
/* 8038740C  38 61 00 0C */	addi r3, r1, 0xc
/* 80387410  EC 21 00 28 */	fsubs f1, f1, f0
/* 80387414  4B FF F5 A9 */	bl mCoBG_CheckHeightExactly
/* 80387418  2C 03 00 00 */	cmpwi r3, 0
/* 8038741C  41 82 01 20 */	beq lbl_8038753C
/* 80387420  C0 3D 00 40 */	lfs f1, 0x40(r29)
/* 80387424  3C 60 80 64 */	lis r3, lit_2458@ha /* 0x80641A94@ha */
/* 80387428  C0 01 00 08 */	lfs f0, 8(r1)
/* 8038742C  38 9D 00 58 */	addi r4, r29, 0x58
/* 80387430  C0 43 1A 94 */	lfs f2, lit_2458@l(r3)  /* 0x80641A94@l */
/* 80387434  7F A3 EB 78 */	mr r3, r29
/* 80387438  EC 21 00 28 */	fsubs f1, f1, f0
/* 8038743C  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80387440  38 A1 00 0C */	addi r5, r1, 0xc
/* 80387444  EC 22 08 2A */	fadds f1, f2, f1
/* 80387448  EC 00 00 72 */	fmuls f0, f0, f1
/* 8038744C  D0 1B 00 00 */	stfs f0, 0(r27)
/* 80387450  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80387454  EC 00 00 72 */	fmuls f0, f0, f1
/* 80387458  D0 1B 00 04 */	stfs f0, 4(r27)
/* 8038745C  A8 DE 00 28 */	lha r6, 0x28(r30)
/* 80387460  88 FE 00 30 */	lbz r7, 0x30(r30)
/* 80387464  4B FF F3 75 */	bl mCoBG_RegistCollisionWallInfo
/* 80387468  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 8038746C  28 03 00 00 */	cmplwi r3, 0
/* 80387470  41 82 00 10 */	beq lbl_80387480
/* 80387474  A8 BE 00 28 */	lha r5, 0x28(r30)
/* 80387478  7F E4 FB 78 */	mr r4, r31
/* 8038747C  48 00 5B D9 */	bl mCoBG_SetMoveBgContactSide
lbl_80387480:
/* 80387480  38 60 00 01 */	li r3, 1
/* 80387484  48 00 00 BC */	b lbl_80387540
lbl_80387488:
/* 80387488  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 8038748C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80387490  C0 03 19 A4 */	lfs f0, data_806419A4@l(r3)  /* 0x806419A4@l */
/* 80387494  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80387498  4C 41 13 82 */	cror 2, 1, 2
/* 8038749C  40 82 00 08 */	bne lbl_803874A4
/* 803874A0  48 00 00 08 */	b lbl_803874A8
lbl_803874A4:
/* 803874A4  FC 20 08 50 */	fneg f1, f1
lbl_803874A8:
/* 803874A8  3C 60 80 64 */	lis r3, lit_2059@ha /* 0x80641A7C@ha */
/* 803874AC  C0 03 1A 7C */	lfs f0, lit_2059@l(r3)  /* 0x80641A7C@l */
/* 803874B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803874B4  40 80 00 88 */	bge lbl_8038753C
/* 803874B8  3C 60 80 64 */	lis r3, lit_2457@ha /* 0x80641A90@ha */
/* 803874BC  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 803874C0  38 83 1A 90 */	addi r4, r3, lit_2457@l /* 0x80641A90@l */
/* 803874C4  38 7E 00 10 */	addi r3, r30, 0x10
/* 803874C8  C0 04 00 00 */	lfs f0, 0(r4)
/* 803874CC  EC 21 00 28 */	fsubs f1, f1, f0
/* 803874D0  4B FF F3 E5 */	bl mCoBG_RoughCheckWallHeight
/* 803874D4  2C 03 00 00 */	cmpwi r3, 0
/* 803874D8  41 82 00 64 */	beq lbl_8038753C
/* 803874DC  3C 60 80 64 */	lis r3, lit_2457@ha /* 0x80641A90@ha */
/* 803874E0  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 803874E4  C0 03 1A 90 */	lfs f0, lit_2457@l(r3)  /* 0x80641A90@l */
/* 803874E8  7F C4 F3 78 */	mr r4, r30
/* 803874EC  7F 85 E3 78 */	mr r5, r28
/* 803874F0  38 61 00 0C */	addi r3, r1, 0xc
/* 803874F4  EC 21 00 28 */	fsubs f1, f1, f0
/* 803874F8  4B FF F4 C5 */	bl mCoBG_CheckHeightExactly
/* 803874FC  2C 03 00 00 */	cmpwi r3, 0
/* 80387500  41 82 00 3C */	beq lbl_8038753C
/* 80387504  A8 DE 00 28 */	lha r6, 0x28(r30)
/* 80387508  7F A3 EB 78 */	mr r3, r29
/* 8038750C  88 FE 00 30 */	lbz r7, 0x30(r30)
/* 80387510  38 9D 00 58 */	addi r4, r29, 0x58
/* 80387514  38 A1 00 0C */	addi r5, r1, 0xc
/* 80387518  4B FF F2 C1 */	bl mCoBG_RegistCollisionWallInfo
/* 8038751C  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 80387520  28 03 00 00 */	cmplwi r3, 0
/* 80387524  41 82 00 10 */	beq lbl_80387534
/* 80387528  A8 BE 00 28 */	lha r5, 0x28(r30)
/* 8038752C  7F E4 FB 78 */	mr r4, r31
/* 80387530  48 00 5B 25 */	bl mCoBG_SetMoveBgContactSide
lbl_80387534:
/* 80387534  38 60 00 01 */	li r3, 1
/* 80387538  48 00 00 08 */	b lbl_80387540
lbl_8038753C:
/* 8038753C  38 60 00 00 */	li r3, 0
lbl_80387540:
/* 80387540  39 61 00 30 */	addi r11, r1, 0x30
/* 80387544  4B D1 39 D5 */	bl func_8009AF18
/* 80387548  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8038754C  7C 08 03 A6 */	mtlr r0
/* 80387550  38 21 00 30 */	addi r1, r1, 0x30
/* 80387554  4E 80 00 20 */	blr 
