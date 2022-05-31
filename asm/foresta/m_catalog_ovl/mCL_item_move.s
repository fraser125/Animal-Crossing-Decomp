lbl_805C9C40:
/* 805C9C40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C9C44  7C 08 02 A6 */	mflr r0
/* 805C9C48  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C9C4C  39 61 00 20 */	addi r11, r1, 0x20
/* 805C9C50  4B AD 12 85 */	bl func_8009AED4
/* 805C9C54  3B E3 00 08 */	addi r31, r3, 8
/* 805C9C58  3B C0 00 00 */	li r30, 0
lbl_805C9C5C:
/* 805C9C5C  A8 7F 50 88 */	lha r3, 0x5088(r31)
/* 805C9C60  7C 60 07 35 */	extsh. r0, r3
/* 805C9C64  40 82 00 E4 */	bne lbl_805C9D48
/* 805C9C68  80 BF 50 80 */	lwz r5, 0x5080(r31)
/* 805C9C6C  3B BF 01 34 */	addi r29, r31, 0x134
/* 805C9C70  28 05 00 00 */	cmplwi r5, 0
/* 805C9C74  41 82 00 3C */	beq lbl_805C9CB0
/* 805C9C78  80 85 00 1C */	lwz r4, 0x1c(r5)
/* 805C9C7C  28 04 00 00 */	cmplwi r4, 0
/* 805C9C80  41 82 00 30 */	beq lbl_805C9CB0
/* 805C9C84  A8 7F 08 10 */	lha r3, 0x810(r31)
/* 805C9C88  80 84 00 04 */	lwz r4, 4(r4)
/* 805C9C8C  38 03 00 01 */	addi r0, r3, 1
/* 805C9C90  B0 1F 08 10 */	sth r0, 0x810(r31)
/* 805C9C94  A8 1F 08 10 */	lha r0, 0x810(r31)
/* 805C9C98  7C 00 20 00 */	cmpw r0, r4
/* 805C9C9C  40 80 00 0C */	bge lbl_805C9CA8
/* 805C9CA0  7C 00 07 35 */	extsh. r0, r0
/* 805C9CA4  40 80 00 0C */	bge lbl_805C9CB0
lbl_805C9CA8:
/* 805C9CA8  38 00 00 00 */	li r0, 0
/* 805C9CAC  B0 1F 08 10 */	sth r0, 0x810(r31)
lbl_805C9CB0:
/* 805C9CB0  80 05 00 18 */	lwz r0, 0x18(r5)
/* 805C9CB4  28 00 00 00 */	cmplwi r0, 0
/* 805C9CB8  40 82 00 1C */	bne lbl_805C9CD4
/* 805C9CBC  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 805C9CC0  28 00 00 00 */	cmplwi r0, 0
/* 805C9CC4  41 82 00 50 */	beq lbl_805C9D14
/* 805C9CC8  80 1D 00 1C */	lwz r0, 0x1c(r29)
/* 805C9CCC  28 00 00 00 */	cmplwi r0, 0
/* 805C9CD0  41 82 00 44 */	beq lbl_805C9D14
lbl_805C9CD4:
/* 805C9CD4  7F A3 EB 78 */	mr r3, r29
/* 805C9CD8  4B DA 73 3D */	bl cKF_SkeletonInfo_R_play
/* 805C9CDC  2C 03 00 01 */	cmpwi r3, 1
/* 805C9CE0  40 82 00 34 */	bne lbl_805C9D14
/* 805C9CE4  A8 7F 50 8A */	lha r3, 0x508a(r31)
/* 805C9CE8  2C 03 00 00 */	cmpwi r3, 0
/* 805C9CEC  41 82 00 10 */	beq lbl_805C9CFC
/* 805C9CF0  38 03 FF FF */	addi r0, r3, -1
/* 805C9CF4  B0 1F 50 8A */	sth r0, 0x508a(r31)
/* 805C9CF8  48 00 00 1C */	b lbl_805C9D14
lbl_805C9CFC:
/* 805C9CFC  38 00 00 0F */	li r0, 0xf
/* 805C9D00  B0 1F 50 8A */	sth r0, 0x508a(r31)
/* 805C9D04  C0 3D 00 00 */	lfs f1, 0(r29)
/* 805C9D08  C0 1D 00 04 */	lfs f0, 4(r29)
/* 805C9D0C  D0 1D 00 00 */	stfs f0, 0(r29)
/* 805C9D10  D0 3D 00 04 */	stfs f1, 4(r29)
lbl_805C9D14:
/* 805C9D14  3C 80 80 65 */	lis r4, lit_633@ha /* 0x8064AEEC@ha */
/* 805C9D18  3C 60 80 65 */	lis r3, lit_634@ha /* 0x8064AEF0@ha */
/* 805C9D1C  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 805C9D20  C0 24 AE EC */	lfs f1, lit_633@l(r4)  /* 0x8064AEEC@l */
/* 805C9D24  C0 03 AE F0 */	lfs f0, lit_634@l(r3)  /* 0x8064AEF0@l */
/* 805C9D28  EC 22 08 2A */	fadds f1, f2, f1
/* 805C9D2C  D0 3F 00 34 */	stfs f1, 0x34(r31)
/* 805C9D30  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 805C9D34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C9D38  40 81 00 70 */	ble lbl_805C9DA8
/* 805C9D3C  EC 01 00 28 */	fsubs f0, f1, f0
/* 805C9D40  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 805C9D44  48 00 00 64 */	b lbl_805C9DA8
lbl_805C9D48:
/* 805C9D48  2C 03 00 04 */	cmpwi r3, 4
/* 805C9D4C  40 82 00 5C */	bne lbl_805C9DA8
/* 805C9D50  A8 7F 50 8A */	lha r3, 0x508a(r31)
/* 805C9D54  38 03 FF FF */	addi r0, r3, -1
/* 805C9D58  B0 1F 50 8A */	sth r0, 0x508a(r31)
/* 805C9D5C  A8 1F 50 8A */	lha r0, 0x508a(r31)
/* 805C9D60  1C 00 04 44 */	mulli r0, r0, 0x444
/* 805C9D64  7C 03 07 34 */	extsh r3, r0
/* 805C9D68  4B DF 0D 89 */	bl sin_s
/* 805C9D6C  3C 80 80 65 */	lis r4, lit_635@ha /* 0x8064AEF4@ha */
/* 805C9D70  3C 60 80 65 */	lis r3, lit_554@ha /* 0x8064AEE0@ha */
/* 805C9D74  C0 44 AE F4 */	lfs f2, lit_635@l(r4)  /* 0x8064AEF4@l */
/* 805C9D78  C0 03 AE E0 */	lfs f0, lit_554@l(r3)  /* 0x8064AEE0@l */
/* 805C9D7C  EC 22 00 72 */	fmuls f1, f2, f1
/* 805C9D80  EC 00 08 2A */	fadds f0, f0, f1
/* 805C9D84  D0 1F 50 94 */	stfs f0, 0x5094(r31)
/* 805C9D88  A8 1F 50 8A */	lha r0, 0x508a(r31)
/* 805C9D8C  1C 00 02 22 */	mulli r0, r0, 0x222
/* 805C9D90  7C 03 07 34 */	extsh r3, r0
/* 805C9D94  4B DF 0D 5D */	bl sin_s
/* 805C9D98  3C 60 80 65 */	lis r3, lit_635@ha /* 0x8064AEF4@ha */
/* 805C9D9C  C0 03 AE F4 */	lfs f0, lit_635@l(r3)  /* 0x8064AEF4@l */
/* 805C9DA0  EC 00 00 72 */	fmuls f0, f0, f1
/* 805C9DA4  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_805C9DA8:
/* 805C9DA8  3B DE 00 01 */	addi r30, r30, 1
/* 805C9DAC  3B FF 50 A0 */	addi r31, r31, 0x50a0
/* 805C9DB0  2C 1E 00 02 */	cmpwi r30, 2
/* 805C9DB4  41 80 FE A8 */	blt lbl_805C9C5C
/* 805C9DB8  39 61 00 20 */	addi r11, r1, 0x20
/* 805C9DBC  4B AD 11 65 */	bl func_8009AF20
/* 805C9DC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C9DC4  7C 08 03 A6 */	mtlr r0
/* 805C9DC8  38 21 00 20 */	addi r1, r1, 0x20
/* 805C9DCC  4E 80 00 20 */	blr 
