lbl_8047A70C:
/* 8047A70C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8047A710  7C 08 02 A6 */	mflr r0
/* 8047A714  90 01 00 54 */	stw r0, 0x54(r1)
/* 8047A718  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8047A71C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8047A720  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8047A724  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8047A728  81 24 08 14 */	lwz r9, 0x814(r4)
/* 8047A72C  3C A0 80 64 */	lis r5, lit_1234@ha /* 0x80644A18@ha */
/* 8047A730  81 04 08 18 */	lwz r8, 0x818(r4)
/* 8047A734  7C 7E 1B 78 */	mr r30, r3
/* 8047A738  80 E4 08 1C */	lwz r7, 0x81c(r4)
/* 8047A73C  A3 E4 00 00 */	lhz r31, 0(r4)
/* 8047A740  80 C4 00 08 */	lwz r6, 8(r4)
/* 8047A744  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8047A748  C0 25 4A 18 */	lfs f1, lit_1234@l(r5)  /* 0x80644A18@l */
/* 8047A74C  90 C1 00 20 */	stw r6, 0x20(r1)
/* 8047A750  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047A754  80 04 00 10 */	lwz r0, 0x10(r4)
/* 8047A758  91 21 00 2C */	stw r9, 0x2c(r1)
/* 8047A75C  90 01 00 28 */	stw r0, 0x28(r1)
/* 8047A760  80 A4 00 40 */	lwz r5, 0x40(r4)
/* 8047A764  80 04 00 44 */	lwz r0, 0x44(r4)
/* 8047A768  91 01 00 30 */	stw r8, 0x30(r1)
/* 8047A76C  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8047A770  90 01 00 18 */	stw r0, 0x18(r1)
/* 8047A774  80 04 00 48 */	lwz r0, 0x48(r4)
/* 8047A778  90 E1 00 34 */	stw r7, 0x34(r1)
/* 8047A77C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8047A780  C0 04 00 34 */	lfs f0, 0x34(r4)
/* 8047A784  EF E1 00 32 */	fmuls f31, f1, f0
/* 8047A788  4B FF FC DD */	bl aMR_SetFurnitureBaseNorm
/* 8047A78C  3C 80 80 64 */	lis r4, lit_621@ha /* 0x806449EC@ha */
/* 8047A790  7F C3 F3 78 */	mr r3, r30
/* 8047A794  38 A4 49 EC */	addi r5, r4, lit_621@l /* 0x806449EC@l */
/* 8047A798  7F E4 FB 78 */	mr r4, r31
/* 8047A79C  C0 05 00 00 */	lfs f0, 0(r5)
/* 8047A7A0  38 A1 00 08 */	addi r5, r1, 8
/* 8047A7A4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8047A7A8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8047A7AC  80 E1 00 2C */	lwz r7, 0x2c(r1)
/* 8047A7B0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8047A7B4  80 C1 00 30 */	lwz r6, 0x30(r1)
/* 8047A7B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8047A7BC  90 E1 00 08 */	stw r7, 8(r1)
/* 8047A7C0  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8047A7C4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8047A7C8  4B FF FC DD */	bl aMR_MakeBaseFurnitureCollisionData
/* 8047A7CC  7F C3 F3 78 */	mr r3, r30
/* 8047A7D0  38 81 00 14 */	addi r4, r1, 0x14
/* 8047A7D4  4B FF FE 61 */	bl aMR_PlussPosition
/* 8047A7D8  FC 20 F8 90 */	fmr f1, f31
/* 8047A7DC  7F C3 F3 78 */	mr r3, r30
/* 8047A7E0  4B FF FE B1 */	bl aMR_RotateFurnitureCollisionData
/* 8047A7E4  7F C3 F3 78 */	mr r3, r30
/* 8047A7E8  38 81 00 20 */	addi r4, r1, 0x20
/* 8047A7EC  4B FF FE 49 */	bl aMR_PlussPosition
/* 8047A7F0  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8047A7F4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8047A7F8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8047A7FC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8047A800  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8047A804  7C 08 03 A6 */	mtlr r0
/* 8047A808  38 21 00 50 */	addi r1, r1, 0x50
/* 8047A80C  4E 80 00 20 */	blr 
