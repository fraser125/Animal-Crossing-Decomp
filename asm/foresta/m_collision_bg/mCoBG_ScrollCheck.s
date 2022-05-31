lbl_8038FBD4:
/* 8038FBD4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8038FBD8  7C 08 02 A6 */	mflr r0
/* 8038FBDC  90 01 00 64 */	stw r0, 0x64(r1)
/* 8038FBE0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8038FBE4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8038FBE8  39 61 00 50 */	addi r11, r1, 0x50
/* 8038FBEC  4B D0 B2 E5 */	bl func_8009AED0
/* 8038FBF0  7C 7C 1B 78 */	mr r28, r3
/* 8038FBF4  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 8038FBF8  C0 64 00 00 */	lfs f3, 0(r4)
/* 8038FBFC  FF E0 08 90 */	fmr f31, f1
/* 8038FC00  C0 5C 00 00 */	lfs f2, 0(r28)
/* 8038FC04  7C 9F 23 78 */	mr r31, r4
/* 8038FC08  C0 03 19 A4 */	lfs f0, data_806419A4@l(r3)  /* 0x806419A4@l */
/* 8038FC0C  EC 63 10 28 */	fsubs f3, f3, f2
/* 8038FC10  C0 44 00 08 */	lfs f2, 8(r4)
/* 8038FC14  C0 3C 00 08 */	lfs f1, 8(r28)
/* 8038FC18  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8038FC1C  EC 22 08 28 */	fsubs f1, f2, f1
/* 8038FC20  4C 41 13 82 */	cror 2, 1, 2
/* 8038FC24  40 82 00 08 */	bne lbl_8038FC2C
/* 8038FC28  48 00 00 08 */	b lbl_8038FC30
lbl_8038FC2C:
/* 8038FC2C  FC 60 18 50 */	fneg f3, f3
lbl_8038FC30:
/* 8038FC30  FC 00 18 00 */	fcmpu cr0, f0, f3
/* 8038FC34  40 82 00 30 */	bne lbl_8038FC64
/* 8038FC38  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 8038FC3C  C0 03 19 A4 */	lfs f0, data_806419A4@l(r3)  /* 0x806419A4@l */
/* 8038FC40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8038FC44  4C 41 13 82 */	cror 2, 1, 2
/* 8038FC48  40 82 00 08 */	bne lbl_8038FC50
/* 8038FC4C  48 00 00 08 */	b lbl_8038FC54
lbl_8038FC50:
/* 8038FC50  FC 20 08 50 */	fneg f1, f1
lbl_8038FC54:
/* 8038FC54  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8038FC58  40 82 00 0C */	bne lbl_8038FC64
/* 8038FC5C  38 60 00 00 */	li r3, 0
/* 8038FC60  48 00 02 44 */	b lbl_8038FEA4
lbl_8038FC64:
/* 8038FC64  80 FF 00 00 */	lwz r7, 0(r31)
/* 8038FC68  38 61 00 14 */	addi r3, r1, 0x14
/* 8038FC6C  80 DF 00 04 */	lwz r6, 4(r31)
/* 8038FC70  38 81 00 10 */	addi r4, r1, 0x10
/* 8038FC74  80 1F 00 08 */	lwz r0, 8(r31)
/* 8038FC78  38 A1 00 28 */	addi r5, r1, 0x28
/* 8038FC7C  90 E1 00 28 */	stw r7, 0x28(r1)
/* 8038FC80  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 8038FC84  90 01 00 30 */	stw r0, 0x30(r1)
/* 8038FC88  48 01 56 E1 */	bl mFI_Wpos2UtNum
/* 8038FC8C  3C 60 81 13 */	lis r3, l_crtutInf@ha /* 0x81137A24@ha */
/* 8038FC90  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8038FC94  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8038FC98  38 63 7A 24 */	addi r3, r3, l_crtutInf@l /* 0x81137A24@l */
/* 8038FC9C  38 C0 00 03 */	li r6, 3
/* 8038FCA0  4B FF 69 25 */	bl mCoBG_MakeSizeUnitInfo
/* 8038FCA4  3C 60 81 13 */	lis r3, l_VecInf@ha /* 0x811355D0@ha */
/* 8038FCA8  3C 80 81 13 */	lis r4, l_crtutInf@ha /* 0x81137A24@ha */
/* 8038FCAC  38 63 55 D0 */	addi r3, r3, l_VecInf@l /* 0x811355D0@l */
/* 8038FCB0  38 A0 00 03 */	li r5, 3
/* 8038FCB4  38 84 7A 24 */	addi r4, r4, l_crtutInf@l /* 0x81137A24@l */
/* 8038FCB8  38 C0 00 00 */	li r6, 0
/* 8038FCBC  38 E0 00 01 */	li r7, 1
/* 8038FCC0  39 00 00 01 */	li r8, 1
/* 8038FCC4  39 20 00 00 */	li r9, 0
/* 8038FCC8  4B FF C9 91 */	bl mCoBG_MakeUnitVector
/* 8038FCCC  C0 7C 00 00 */	lfs f3, 0(r28)
/* 8038FCD0  3C 60 81 13 */	lis r3, l_VecInf@ha /* 0x811355D0@ha */
/* 8038FCD4  38 63 55 D0 */	addi r3, r3, l_VecInf@l /* 0x811355D0@l */
/* 8038FCD8  C0 5C 00 08 */	lfs f2, 8(r28)
/* 8038FCDC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8038FCE0  3B A3 00 04 */	addi r29, r3, 4
/* 8038FCE4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8038FCE8  3B 80 00 00 */	li r28, 0
/* 8038FCEC  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 8038FCF0  83 C3 00 00 */	lwz r30, 0(r3)
/* 8038FCF4  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8038FCF8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8038FCFC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8038FD00  48 00 00 8C */	b lbl_8038FD8C
lbl_8038FD04:
/* 8038FD04  7F A3 EB 78 */	mr r3, r29
/* 8038FD08  38 9D 00 08 */	addi r4, r29, 8
/* 8038FD0C  38 A1 00 18 */	addi r5, r1, 0x18
/* 8038FD10  4B FF B5 75 */	bl mCoBG_RangeCheckLinePoint
/* 8038FD14  2C 03 00 00 */	cmpwi r3, 0
/* 8038FD18  41 82 00 48 */	beq lbl_8038FD60
/* 8038FD1C  7F A4 EB 78 */	mr r4, r29
/* 8038FD20  38 61 00 0C */	addi r3, r1, 0xc
/* 8038FD24  38 BD 00 08 */	addi r5, r29, 8
/* 8038FD28  38 DD 00 20 */	addi r6, r29, 0x20
/* 8038FD2C  38 E1 00 18 */	addi r7, r1, 0x18
/* 8038FD30  4B FF AE CD */	bl mCoBG_GetDistPointAndLine2D_Norm
/* 8038FD34  2C 03 00 00 */	cmpwi r3, 0
/* 8038FD38  41 82 00 28 */	beq lbl_8038FD60
/* 8038FD3C  3C 60 80 64 */	lis r3, lit_2548@ha /* 0x80641A98@ha */
/* 8038FD40  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8038FD44  C0 03 1A 98 */	lfs f0, lit_2548@l(r3)  /* 0x80641A98@l */
/* 8038FD48  EC 1F 00 28 */	fsubs f0, f31, f0
/* 8038FD4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8038FD50  4C 40 13 82 */	cror 2, 0, 2
/* 8038FD54  40 82 00 0C */	bne lbl_8038FD60
/* 8038FD58  38 60 00 00 */	li r3, 0
/* 8038FD5C  48 00 01 48 */	b lbl_8038FEA4
lbl_8038FD60:
/* 8038FD60  7F A5 EB 78 */	mr r5, r29
/* 8038FD64  38 61 00 20 */	addi r3, r1, 0x20
/* 8038FD68  38 81 00 18 */	addi r4, r1, 0x18
/* 8038FD6C  38 DD 00 08 */	addi r6, r29, 8
/* 8038FD70  4B FF AA CD */	bl mCoBG_GetCrossJudge_2Vector
/* 8038FD74  2C 03 00 00 */	cmpwi r3, 0
/* 8038FD78  41 82 00 0C */	beq lbl_8038FD84
/* 8038FD7C  38 60 00 00 */	li r3, 0
/* 8038FD80  48 00 01 24 */	b lbl_8038FEA4
lbl_8038FD84:
/* 8038FD84  3B BD 00 34 */	addi r29, r29, 0x34
/* 8038FD88  3B 9C 00 01 */	addi r28, r28, 1
lbl_8038FD8C:
/* 8038FD8C  7C 1C F0 00 */	cmpw r28, r30
/* 8038FD90  41 80 FF 74 */	blt lbl_8038FD04
/* 8038FD94  3C 80 81 13 */	lis r4, l_VecInf@ha /* 0x811355D0@ha */
/* 8038FD98  3C 60 81 13 */	lis r3, l_crtutInf@ha /* 0x81137A24@ha */
/* 8038FD9C  38 84 55 D0 */	addi r4, r4, l_VecInf@l /* 0x811355D0@l */
/* 8038FDA0  38 C0 00 03 */	li r6, 3
/* 8038FDA4  3B A4 1A 08 */	addi r29, r4, 0x1a08
/* 8038FDA8  38 A3 7A 24 */	addi r5, r3, l_crtutInf@l /* 0x81137A24@l */
/* 8038FDAC  3B C4 1A 04 */	addi r30, r4, 0x1a04
/* 8038FDB0  38 E0 00 01 */	li r7, 1
/* 8038FDB4  7F A3 EB 78 */	mr r3, r29
/* 8038FDB8  39 00 00 00 */	li r8, 0
/* 8038FDBC  7F C4 F3 78 */	mr r4, r30
/* 8038FDC0  39 20 FF FF */	li r9, -1
/* 8038FDC4  39 40 FF FF */	li r10, -1
/* 8038FDC8  4B FF EC 4D */	bl mCoBG_MakeColumnCollisionData
/* 8038FDCC  80 1E 00 00 */	lwz r0, 0(r30)
/* 8038FDD0  2C 00 00 00 */	cmpwi r0, 0
/* 8038FDD4  41 82 00 CC */	beq lbl_8038FEA0
/* 8038FDD8  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 8038FDDC  7F A5 EB 78 */	mr r5, r29
/* 8038FDE0  C0 83 19 A4 */	lfs f4, data_806419A4@l(r3)  /* 0x806419A4@l */
/* 8038FDE4  7C 09 03 A6 */	mtctr r0
/* 8038FDE8  40 81 00 B8 */	ble lbl_8038FEA0
lbl_8038FDEC:
/* 8038FDEC  C0 7F 00 00 */	lfs f3, 0(r31)
/* 8038FDF0  C0 05 00 00 */	lfs f0, 0(r5)
/* 8038FDF4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8038FDF8  C0 25 00 08 */	lfs f1, 8(r5)
/* 8038FDFC  EC 63 00 28 */	fsubs f3, f3, f0
/* 8038FE00  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 8038FE04  EC 42 08 28 */	fsubs f2, f2, f1
/* 8038FE08  EC 23 00 F2 */	fmuls f1, f3, f3
/* 8038FE0C  EC DF 00 2A */	fadds f6, f31, f0
/* 8038FE10  EC 02 00 B2 */	fmuls f0, f2, f2
/* 8038FE14  EC A1 00 2A */	fadds f5, f1, f0
/* 8038FE18  FC 05 20 40 */	fcmpo cr0, f5, f4
/* 8038FE1C  40 81 00 68 */	ble lbl_8038FE84
/* 8038FE20  FC 20 28 34 */	frsqrte f1, f5
/* 8038FE24  3C 60 80 64 */	lis r3, lit_587@ha /* 0x806419B4@ha */
/* 8038FE28  38 83 19 B4 */	addi r4, r3, lit_587@l /* 0x806419B4@l */
/* 8038FE2C  3C 60 80 64 */	lis r3, lit_588@ha /* 0x806419BC@ha */
/* 8038FE30  C8 64 00 00 */	lfd f3, 0(r4)
/* 8038FE34  FC 01 00 72 */	fmul f0, f1, f1
/* 8038FE38  C8 43 19 BC */	lfd f2, lit_588@l(r3)  /* 0x806419BC@l */
/* 8038FE3C  FC 23 00 72 */	fmul f1, f3, f1
/* 8038FE40  FC 05 00 32 */	fmul f0, f5, f0
/* 8038FE44  FC 02 00 28 */	fsub f0, f2, f0
/* 8038FE48  FC 21 00 32 */	fmul f1, f1, f0
/* 8038FE4C  FC 01 00 72 */	fmul f0, f1, f1
/* 8038FE50  FC 23 00 72 */	fmul f1, f3, f1
/* 8038FE54  FC 05 00 32 */	fmul f0, f5, f0
/* 8038FE58  FC 02 00 28 */	fsub f0, f2, f0
/* 8038FE5C  FC 21 00 32 */	fmul f1, f1, f0
/* 8038FE60  FC 01 00 72 */	fmul f0, f1, f1
/* 8038FE64  FC 23 00 72 */	fmul f1, f3, f1
/* 8038FE68  FC 05 00 32 */	fmul f0, f5, f0
/* 8038FE6C  FC 02 00 28 */	fsub f0, f2, f0
/* 8038FE70  FC 01 00 32 */	fmul f0, f1, f0
/* 8038FE74  FC 05 00 32 */	fmul f0, f5, f0
/* 8038FE78  FC 00 00 18 */	frsp f0, f0
/* 8038FE7C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8038FE80  C0 A1 00 08 */	lfs f5, 8(r1)
lbl_8038FE84:
/* 8038FE84  FC 05 30 40 */	fcmpo cr0, f5, f6
/* 8038FE88  4C 40 13 82 */	cror 2, 0, 2
/* 8038FE8C  40 82 00 0C */	bne lbl_8038FE98
/* 8038FE90  38 60 00 00 */	li r3, 0
/* 8038FE94  48 00 00 10 */	b lbl_8038FEA4
lbl_8038FE98:
/* 8038FE98  38 A5 00 20 */	addi r5, r5, 0x20
/* 8038FE9C  42 00 FF 50 */	bdnz lbl_8038FDEC
lbl_8038FEA0:
/* 8038FEA0  38 60 00 01 */	li r3, 1
lbl_8038FEA4:
/* 8038FEA4  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8038FEA8  39 61 00 50 */	addi r11, r1, 0x50
/* 8038FEAC  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8038FEB0  4B D0 B0 6D */	bl func_8009AF1C
/* 8038FEB4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8038FEB8  7C 08 03 A6 */	mtlr r0
/* 8038FEBC  38 21 00 60 */	addi r1, r1, 0x60
/* 8038FEC0  4E 80 00 20 */	blr 
