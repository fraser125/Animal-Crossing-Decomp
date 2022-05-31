lbl_803B9B5C:
/* 803B9B5C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 803B9B60  7C 08 02 A6 */	mflr r0
/* 803B9B64  90 01 00 94 */	stw r0, 0x94(r1)
/* 803B9B68  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 803B9B6C  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 803B9B70  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 803B9B74  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 803B9B78  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 803B9B7C  93 C1 00 68 */	stw r30, 0x68(r1)
/* 803B9B80  7C 87 07 34 */	extsh r7, r4
/* 803B9B84  7C A0 07 34 */	extsh r0, r5
/* 803B9B88  3C 80 43 30 */	lis r4, 0x4330
/* 803B9B8C  3C C0 80 64 */	lis r6, lit_471@ha /* 0x806423EC@ha */
/* 803B9B90  6C E5 80 00 */	xoris r5, r7, 0x8000
/* 803B9B94  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803B9B98  3C E0 80 64 */	lis r7, lit_467@ha /* 0x806423D8@ha */
/* 803B9B9C  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 803B9BA0  39 07 23 D8 */	addi r8, r7, lit_467@l /* 0x806423D8@l */
/* 803B9BA4  C8 46 23 EC */	lfd f2, lit_471@l(r6)  /* 0x806423EC@l */
/* 803B9BA8  90 81 00 18 */	stw r4, 0x18(r1)
/* 803B9BAC  7C 7F 1B 78 */	mr r31, r3
/* 803B9BB0  80 E8 00 00 */	lwz r7, 0(r8)
/* 803B9BB4  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 803B9BB8  80 A8 00 04 */	lwz r5, 4(r8)
/* 803B9BBC  80 68 00 08 */	lwz r3, 8(r8)
/* 803B9BC0  EF E1 10 28 */	fsubs f31, f1, f2
/* 803B9BC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B9BC8  90 81 00 20 */	stw r4, 0x20(r1)
/* 803B9BCC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 803B9BD0  90 E1 00 08 */	stw r7, 8(r1)
/* 803B9BD4  EF C0 10 28 */	fsubs f30, f0, f2
/* 803B9BD8  90 A1 00 0C */	stw r5, 0xc(r1)
/* 803B9BDC  90 61 00 10 */	stw r3, 0x10(r1)
/* 803B9BE0  4B CA 31 15 */	bl fqrand
/* 803B9BE4  EC 1F 00 72 */	fmuls f0, f31, f1
/* 803B9BE8  EC 00 F8 28 */	fsubs f0, f0, f31
/* 803B9BEC  FC 00 00 1E */	fctiwz f0, f0
/* 803B9BF0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 803B9BF4  83 C1 00 2C */	lwz r30, 0x2c(r1)
/* 803B9BF8  4B CA 30 FD */	bl fqrand
/* 803B9BFC  EC 1E 00 72 */	fmuls f0, f30, f1
/* 803B9C00  7F C0 07 34 */	extsh r0, r30
/* 803B9C04  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 803B9C08  3C 80 80 64 */	lis r4, lit_471@ha /* 0x806423EC@ha */
/* 803B9C0C  3C 00 43 30 */	lis r0, 0x4330
/* 803B9C10  90 61 00 3C */	stw r3, 0x3c(r1)
/* 803B9C14  EC 00 F0 28 */	fsubs f0, f0, f30
/* 803B9C18  90 01 00 38 */	stw r0, 0x38(r1)
/* 803B9C1C  3C A0 80 64 */	lis r5, lit_469@ha /* 0x806423E4@ha */
/* 803B9C20  C8 24 23 EC */	lfd f1, lit_471@l(r4)  /* 0x806423EC@l */
/* 803B9C24  C0 45 23 E4 */	lfs f2, lit_469@l(r5)  /* 0x806423E4@l */
/* 803B9C28  38 61 00 08 */	addi r3, r1, 8
/* 803B9C2C  FC 60 00 1E */	fctiwz f3, f0
/* 803B9C30  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 803B9C34  EC 00 08 28 */	fsubs f0, f0, f1
/* 803B9C38  D8 61 00 30 */	stfd f3, 0x30(r1)
/* 803B9C3C  EC 22 00 32 */	fmuls f1, f2, f0
/* 803B9C40  83 C1 00 34 */	lwz r30, 0x34(r1)
/* 803B9C44  48 05 22 09 */	bl sMath_RotateX
/* 803B9C48  7F C3 07 34 */	extsh r3, r30
/* 803B9C4C  3C 00 43 30 */	lis r0, 0x4330
/* 803B9C50  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 803B9C54  3C 80 80 64 */	lis r4, lit_471@ha /* 0x806423EC@ha */
/* 803B9C58  90 61 00 44 */	stw r3, 0x44(r1)
/* 803B9C5C  38 64 23 EC */	addi r3, r4, lit_471@l /* 0x806423EC@l */
/* 803B9C60  C8 23 00 00 */	lfd f1, 0(r3)
/* 803B9C64  3C 80 80 64 */	lis r4, lit_469@ha /* 0x806423E4@ha */
/* 803B9C68  90 01 00 40 */	stw r0, 0x40(r1)
/* 803B9C6C  38 61 00 08 */	addi r3, r1, 8
/* 803B9C70  C0 44 23 E4 */	lfs f2, lit_469@l(r4)  /* 0x806423E4@l */
/* 803B9C74  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 803B9C78  EC 00 08 28 */	fsubs f0, f0, f1
/* 803B9C7C  EC 22 00 32 */	fmuls f1, f2, f0
/* 803B9C80  48 05 22 69 */	bl sMath_RotateZ
/* 803B9C84  C0 01 00 08 */	lfs f0, 8(r1)
/* 803B9C88  FC 00 00 1E */	fctiwz f0, f0
/* 803B9C8C  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 803B9C90  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 803B9C94  B0 1F 00 00 */	sth r0, 0(r31)
/* 803B9C98  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 803B9C9C  FC 00 00 1E */	fctiwz f0, f0
/* 803B9CA0  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 803B9CA4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803B9CA8  B0 1F 00 02 */	sth r0, 2(r31)
/* 803B9CAC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 803B9CB0  FC 00 00 1E */	fctiwz f0, f0
/* 803B9CB4  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 803B9CB8  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 803B9CBC  B0 1F 00 04 */	sth r0, 4(r31)
/* 803B9CC0  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 803B9CC4  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 803B9CC8  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 803B9CCC  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 803B9CD0  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 803B9CD4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 803B9CD8  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 803B9CDC  7C 08 03 A6 */	mtlr r0
/* 803B9CE0  38 21 00 90 */	addi r1, r1, 0x90
/* 803B9CE4  4E 80 00 20 */	blr 
