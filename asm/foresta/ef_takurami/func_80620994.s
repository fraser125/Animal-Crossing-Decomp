lbl_80620994:
/* 80620994  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80620998  7C 08 02 A6 */	mflr r0
/* 8062099C  90 01 00 64 */	stw r0, 0x64(r1)
/* 806209A0  39 61 00 60 */	addi r11, r1, 0x60
/* 806209A4  4B A7 A5 29 */	bl func_8009AECC
/* 806209A8  7C BF 2B 78 */	mr r31, r5
/* 806209AC  3C 00 43 30 */	lis r0, 0x4330
/* 806209B0  7F E5 07 34 */	extsh r5, r31
/* 806209B4  7C 7D 1B 78 */	mr r29, r3
/* 806209B8  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 806209BC  3D 00 80 65 */	lis r8, lit_382@ha /* 0x8064CD2C@ha */
/* 806209C0  90 A1 00 44 */	stw r5, 0x44(r1)
/* 806209C4  38 A8 CD 2C */	addi r5, r8, lit_382@l /* 0x8064CD2C@l */
/* 806209C8  3D 20 80 65 */	lis r9, lit_378@ha /* 0x8064CD20@ha */
/* 806209CC  C8 25 00 00 */	lfd f1, 0(r5)
/* 806209D0  90 01 00 40 */	stw r0, 0x40(r1)
/* 806209D4  39 09 CD 20 */	addi r8, r9, lit_378@l /* 0x8064CD20@l */
/* 806209D8  3D 20 80 65 */	lis r9, data_8064CD14@ha /* 0x8064CD14@ha */
/* 806209DC  84 A9 CD 14 */	lwzu r5, data_8064CD14@l(r9)  /* 0x8064CD14@l */
/* 806209E0  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 806209E4  7C 9E 23 78 */	mr r30, r4
/* 806209E8  C0 48 00 00 */	lfs f2, 0(r8)
/* 806209EC  7C DC 33 78 */	mr r28, r6
/* 806209F0  EC 00 08 28 */	fsubs f0, f0, f1
/* 806209F4  80 89 00 04 */	lwz r4, 4(r9)
/* 806209F8  80 09 00 08 */	lwz r0, 8(r9)
/* 806209FC  7C FB 3B 78 */	mr r27, r7
/* 80620A00  90 A1 00 24 */	stw r5, 0x24(r1)
/* 80620A04  38 61 00 24 */	addi r3, r1, 0x24
/* 80620A08  EC 22 00 32 */	fmuls f1, f2, f0
/* 80620A0C  90 81 00 28 */	stw r4, 0x28(r1)
/* 80620A10  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80620A14  4B DE B3 99 */	bl sMath_RotateY
/* 80620A18  C0 5D 00 00 */	lfs f2, 0(r29)
/* 80620A1C  3C 60 80 65 */	lis r3, lit_379@ha /* 0x8064CD24@ha */
/* 80620A20  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80620A24  7F 86 E3 78 */	mr r6, r28
/* 80620A28  C0 03 CD 24 */	lfs f0, lit_379@l(r3)  /* 0x8064CD24@l */
/* 80620A2C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80620A30  EC 62 08 2A */	fadds f3, f2, f1
/* 80620A34  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80620A38  3D 63 00 02 */	addis r11, r3, 2
/* 80620A3C  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80620A40  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80620A44  38 00 00 00 */	li r0, 0
/* 80620A48  D0 7D 00 00 */	stfs f3, 0(r29)
/* 80620A4C  7F 68 DB 78 */	mr r8, r27
/* 80620A50  7F C9 F3 78 */	mr r9, r30
/* 80620A54  38 81 00 18 */	addi r4, r1, 0x18
/* 80620A58  C0 7D 00 04 */	lfs f3, 4(r29)
/* 80620A5C  38 A1 00 30 */	addi r5, r1, 0x30
/* 80620A60  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80620A64  38 E1 00 10 */	addi r7, r1, 0x10
/* 80620A68  EC 43 10 2A */	fadds f2, f3, f2
/* 80620A6C  38 60 00 10 */	li r3, 0x10
/* 80620A70  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80620A74  39 40 00 00 */	li r10, 0
/* 80620A78  D0 5D 00 04 */	stfs f2, 4(r29)
/* 80620A7C  C0 5D 00 08 */	lfs f2, 8(r29)
/* 80620A80  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80620A84  EC 02 08 2A */	fadds f0, f2, f1
/* 80620A88  B3 E1 00 14 */	sth r31, 0x14(r1)
/* 80620A8C  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80620A90  83 9D 00 00 */	lwz r28, 0(r29)
/* 80620A94  83 FD 00 04 */	lwz r31, 4(r29)
/* 80620A98  81 9D 00 08 */	lwz r12, 8(r29)
/* 80620A9C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80620AA0  B3 61 00 16 */	sth r27, 0x16(r1)
/* 80620AA4  93 81 00 18 */	stw r28, 0x18(r1)
/* 80620AA8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80620AAC  91 81 00 20 */	stw r12, 0x20(r1)
/* 80620AB0  90 01 00 08 */	stw r0, 8(r1)
/* 80620AB4  81 6B 60 9C */	lwz r11, 0x609c(r11)
/* 80620AB8  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 80620ABC  7D 89 03 A6 */	mtctr r12
/* 80620AC0  4E 80 04 21 */	bctrl 
/* 80620AC4  39 61 00 60 */	addi r11, r1, 0x60
/* 80620AC8  4B A7 A4 51 */	bl func_8009AF18
/* 80620ACC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80620AD0  7C 08 03 A6 */	mtlr r0
/* 80620AD4  38 21 00 60 */	addi r1, r1, 0x60
/* 80620AD8  4E 80 00 20 */	blr 
