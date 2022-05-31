lbl_8037FD18:
/* 8037FD18  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8037FD1C  7C 08 02 A6 */	mflr r0
/* 8037FD20  90 01 00 44 */	stw r0, 0x44(r1)
/* 8037FD24  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8037FD28  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8037FD2C  39 61 00 30 */	addi r11, r1, 0x30
/* 8037FD30  4B D1 B1 A1 */	bl func_8009AED0
/* 8037FD34  81 03 1C 1C */	lwz r8, 0x1c1c(r3)
/* 8037FD38  3C E0 80 64 */	lis r7, lit_474@ha /* 0x80641354@ha */
/* 8037FD3C  80 03 1C 20 */	lwz r0, 0x1c20(r3)
/* 8037FD40  7C 9C 23 78 */	mr r28, r4
/* 8037FD44  C0 07 13 54 */	lfs f0, lit_474@l(r7)  /* 0x80641354@l */
/* 8037FD48  FF E0 08 90 */	fmr f31, f1
/* 8037FD4C  91 01 00 14 */	stw r8, 0x14(r1)
/* 8037FD50  7C DE 33 78 */	mr r30, r6
/* 8037FD54  7C BD 2B 78 */	mr r29, r5
/* 8037FD58  7C 7F 1B 78 */	mr r31, r3
/* 8037FD5C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8037FD60  38 81 00 10 */	addi r4, r1, 0x10
/* 8037FD64  7F C5 F3 78 */	mr r5, r30
/* 8037FD68  80 03 1C 24 */	lwz r0, 0x1c24(r3)
/* 8037FD6C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8037FD70  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8037FD74  D0 01 00 08 */	stfs f0, 8(r1)
/* 8037FD78  4B FF EA 31 */	bl Camera2_Get_GoalDistanceAndDirection
/* 8037FD7C  A8 DE 00 00 */	lha r6, 0(r30)
/* 8037FD80  7F E3 FB 78 */	mr r3, r31
/* 8037FD84  38 81 00 14 */	addi r4, r1, 0x14
/* 8037FD88  38 A1 00 0C */	addi r5, r1, 0xc
/* 8037FD8C  38 06 05 A0 */	addi r0, r6, 0x5a0
/* 8037FD90  38 C1 00 08 */	addi r6, r1, 8
/* 8037FD94  B0 1E 00 00 */	sth r0, 0(r30)
/* 8037FD98  4B FF E7 F5 */	bl Camera2_Get_PosBlockRatio
/* 8037FD9C  7F E3 FB 78 */	mr r3, r31
/* 8037FDA0  38 81 00 14 */	addi r4, r1, 0x14
/* 8037FDA4  4B FF FD BD */	bl Camera2_Talk_NoLowAngleCheck
/* 8037FDA8  2C 03 00 00 */	cmpwi r3, 0
/* 8037FDAC  41 82 00 44 */	beq lbl_8037FDF0
/* 8037FDB0  7F E3 FB 78 */	mr r3, r31
/* 8037FDB4  7F C4 F3 78 */	mr r4, r30
/* 8037FDB8  38 A1 00 10 */	addi r5, r1, 0x10
/* 8037FDBC  48 00 1D 85 */	bl Camera2_main_Simple_AngleDistStd
/* 8037FDC0  3C 60 80 64 */	lis r3, lit_1141@ha /* 0x806414D8@ha */
/* 8037FDC4  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8037FDC8  C0 03 14 D8 */	lfs f0, lit_1141@l(r3)  /* 0x806414D8@l */
/* 8037FDCC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8037FDD0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8037FDD4  A8 7E 00 00 */	lha r3, 0(r30)
/* 8037FDD8  38 03 FE 0C */	addi r0, r3, -500
/* 8037FDDC  B0 1E 00 00 */	sth r0, 0(r30)
/* 8037FDE0  80 1F 1C 18 */	lwz r0, 0x1c18(r31)
/* 8037FDE4  60 00 00 01 */	ori r0, r0, 1
/* 8037FDE8  90 1F 1C 18 */	stw r0, 0x1c18(r31)
/* 8037FDEC  48 00 00 40 */	b lbl_8037FE2C
lbl_8037FDF0:
/* 8037FDF0  FC 20 F8 90 */	fmr f1, f31
/* 8037FDF4  7F E3 FB 78 */	mr r3, r31
/* 8037FDF8  7F 84 E3 78 */	mr r4, r28
/* 8037FDFC  7F A5 EB 78 */	mr r5, r29
/* 8037FE00  7F C6 F3 78 */	mr r6, r30
/* 8037FE04  4B FF FD E9 */	bl Camera2_Talk_GetAngleY
/* 8037FE08  3C 60 80 64 */	lis r3, lit_1142@ha /* 0x806414DC@ha */
/* 8037FE0C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8037FE10  C0 03 14 DC */	lfs f0, lit_1142@l(r3)  /* 0x806414DC@l */
/* 8037FE14  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8037FE18  EC 01 00 2A */	fadds f0, f1, f0
/* 8037FE1C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8037FE20  80 1F 1C 18 */	lwz r0, 0x1c18(r31)
/* 8037FE24  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8037FE28  90 1F 1C 18 */	stw r0, 0x1c18(r31)
lbl_8037FE2C:
/* 8037FE2C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8037FE30  7F E3 FB 78 */	mr r3, r31
/* 8037FE34  38 80 00 00 */	li r4, 0
/* 8037FE38  4B FF E6 B1 */	bl Camera2_MoveDistancePosAndSpeed
/* 8037FE3C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8037FE40  39 61 00 30 */	addi r11, r1, 0x30
/* 8037FE44  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8037FE48  4B D1 B0 D5 */	bl func_8009AF1C
/* 8037FE4C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8037FE50  7C 08 03 A6 */	mtlr r0
/* 8037FE54  38 21 00 40 */	addi r1, r1, 0x40
/* 8037FE58  4E 80 00 20 */	blr 
