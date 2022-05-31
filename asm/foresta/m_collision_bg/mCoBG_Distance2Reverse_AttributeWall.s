lbl_803879A0:
/* 803879A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803879A4  7C 08 02 A6 */	mflr r0
/* 803879A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803879AC  39 61 00 20 */	addi r11, r1, 0x20
/* 803879B0  4B D1 35 25 */	bl func_8009AED4
/* 803879B4  7C 9E 23 78 */	mr r30, r4
/* 803879B8  7C 7D 1B 78 */	mr r29, r3
/* 803879BC  7C FF 3B 78 */	mr r31, r7
/* 803879C0  7C C7 33 78 */	mr r7, r6
/* 803879C4  38 61 00 08 */	addi r3, r1, 8
/* 803879C8  38 BE 00 08 */	addi r5, r30, 8
/* 803879CC  38 DE 00 20 */	addi r6, r30, 0x20
/* 803879D0  48 00 32 2D */	bl mCoBG_GetDistPointAndLine2D_Norm
/* 803879D4  2C 03 00 00 */	cmpwi r3, 0
/* 803879D8  41 82 00 AC */	beq lbl_80387A84
/* 803879DC  C0 01 00 08 */	lfs f0, 8(r1)
/* 803879E0  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 803879E4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 803879E8  40 80 00 4C */	bge lbl_80387A34
/* 803879EC  3C 60 80 64 */	lis r3, lit_2458@ha /* 0x80641A94@ha */
/* 803879F0  EC 21 00 28 */	fsubs f1, f1, f0
/* 803879F4  C0 43 1A 94 */	lfs f2, lit_2458@l(r3)  /* 0x80641A94@l */
/* 803879F8  7F E3 FB 78 */	mr r3, r31
/* 803879FC  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80387A00  38 9F 00 58 */	addi r4, r31, 0x58
/* 80387A04  EC 22 08 2A */	fadds f1, f2, f1
/* 80387A08  38 A0 00 00 */	li r5, 0
/* 80387A0C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80387A10  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80387A14  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80387A18  EC 00 00 72 */	fmuls f0, f0, f1
/* 80387A1C  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80387A20  A8 DE 00 28 */	lha r6, 0x28(r30)
/* 80387A24  88 FE 00 30 */	lbz r7, 0x30(r30)
/* 80387A28  4B FF ED B1 */	bl mCoBG_RegistCollisionWallInfo
/* 80387A2C  38 60 00 01 */	li r3, 1
/* 80387A30  48 00 00 58 */	b lbl_80387A88
lbl_80387A34:
/* 80387A34  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 80387A38  EC 20 08 28 */	fsubs f1, f0, f1
/* 80387A3C  C0 03 19 A4 */	lfs f0, data_806419A4@l(r3)  /* 0x806419A4@l */
/* 80387A40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80387A44  4C 41 13 82 */	cror 2, 1, 2
/* 80387A48  40 82 00 08 */	bne lbl_80387A50
/* 80387A4C  48 00 00 08 */	b lbl_80387A54
lbl_80387A50:
/* 80387A50  FC 20 08 50 */	fneg f1, f1
lbl_80387A54:
/* 80387A54  3C 60 80 64 */	lis r3, lit_2059@ha /* 0x80641A7C@ha */
/* 80387A58  C0 03 1A 7C */	lfs f0, lit_2059@l(r3)  /* 0x80641A7C@l */
/* 80387A5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80387A60  40 80 00 24 */	bge lbl_80387A84
/* 80387A64  A8 DE 00 28 */	lha r6, 0x28(r30)
/* 80387A68  7F E3 FB 78 */	mr r3, r31
/* 80387A6C  88 FE 00 30 */	lbz r7, 0x30(r30)
/* 80387A70  38 9F 00 58 */	addi r4, r31, 0x58
/* 80387A74  38 A0 00 00 */	li r5, 0
/* 80387A78  4B FF ED 61 */	bl mCoBG_RegistCollisionWallInfo
/* 80387A7C  38 60 00 01 */	li r3, 1
/* 80387A80  48 00 00 08 */	b lbl_80387A88
lbl_80387A84:
/* 80387A84  38 60 00 00 */	li r3, 0
lbl_80387A88:
/* 80387A88  39 61 00 20 */	addi r11, r1, 0x20
/* 80387A8C  4B D1 34 95 */	bl func_8009AF20
/* 80387A90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80387A94  7C 08 03 A6 */	mtlr r0
/* 80387A98  38 21 00 20 */	addi r1, r1, 0x20
/* 80387A9C  4E 80 00 20 */	blr 
