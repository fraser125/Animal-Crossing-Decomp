lbl_80594D38:
/* 80594D38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80594D3C  7C 08 02 A6 */	mflr r0
/* 80594D40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80594D44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80594D48  7C 9F 23 79 */	or. r31, r4, r4
/* 80594D4C  93 C1 00 08 */	stw r30, 8(r1)
/* 80594D50  7C 7E 1B 78 */	mr r30, r3
/* 80594D54  41 82 00 48 */	beq lbl_80594D9C
/* 80594D58  38 7E 00 28 */	addi r3, r30, 0x28
/* 80594D5C  38 9F 00 28 */	addi r4, r31, 0x28
/* 80594D60  4B E2 63 2D */	bl search_position_distanceXZ
/* 80594D64  D0 3E 00 BC */	stfs f1, 0xbc(r30)
/* 80594D68  EC 21 00 72 */	fmuls f1, f1, f1
/* 80594D6C  38 7E 00 28 */	addi r3, r30, 0x28
/* 80594D70  38 9F 00 28 */	addi r4, r31, 0x28
/* 80594D74  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 80594D78  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80594D7C  EC 42 00 28 */	fsubs f2, f2, f0
/* 80594D80  EC 02 00 B2 */	fmuls f0, f2, f2
/* 80594D84  D0 5E 00 C0 */	stfs f2, 0xc0(r30)
/* 80594D88  EC 01 00 2A */	fadds f0, f1, f0
/* 80594D8C  D0 1E 00 B8 */	stfs f0, 0xb8(r30)
/* 80594D90  4B E2 63 A1 */	bl search_position_angleY
/* 80594D94  B0 7E 00 B6 */	sth r3, 0xb6(r30)
/* 80594D98  48 00 00 20 */	b lbl_80594DB8
lbl_80594D9C:
/* 80594D9C  3C 60 80 65 */	lis r3, lit_615@ha /* 0x80649D28@ha */
/* 80594DA0  38 00 00 00 */	li r0, 0
/* 80594DA4  C0 03 9D 28 */	lfs f0, lit_615@l(r3)  /* 0x80649D28@l */
/* 80594DA8  D0 1E 00 BC */	stfs f0, 0xbc(r30)
/* 80594DAC  D0 1E 00 C0 */	stfs f0, 0xc0(r30)
/* 80594DB0  D0 1E 00 B8 */	stfs f0, 0xb8(r30)
/* 80594DB4  B0 1E 00 B6 */	sth r0, 0xb6(r30)
lbl_80594DB8:
/* 80594DB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80594DBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80594DC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80594DC4  7C 08 03 A6 */	mtlr r0
/* 80594DC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80594DCC  4E 80 00 20 */	blr 
