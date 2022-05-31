lbl_803B9FC4:
/* 803B9FC4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803B9FC8  7C 08 02 A6 */	mflr r0
/* 803B9FCC  90 01 00 34 */	stw r0, 0x34(r1)
/* 803B9FD0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803B9FD4  4B CA 2D 21 */	bl fqrand
/* 803B9FD8  3C 80 80 64 */	lis r4, lit_588@ha /* 0x80642450@ha */
/* 803B9FDC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B9FE0  38 A4 24 50 */	addi r5, r4, lit_588@l /* 0x80642450@l */
/* 803B9FE4  C0 05 00 00 */	lfs f0, 0(r5)
/* 803B9FE8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B9FEC  3C 63 00 02 */	addis r3, r3, 2
/* 803B9FF0  38 81 00 08 */	addi r4, r1, 8
/* 803B9FF4  EC 00 00 72 */	fmuls f0, f0, f1
/* 803B9FF8  38 63 61 20 */	addi r3, r3, 0x6120
/* 803B9FFC  FC 00 00 1E */	fctiwz f0, f0
/* 803BA000  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 803BA004  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803BA008  4B FF FF 2D */	bl mEnv_GetWindPowerPercent
/* 803BA00C  80 61 00 08 */	lwz r3, 8(r1)
/* 803BA010  7C 1F 18 00 */	cmpw r31, r3
/* 803BA014  40 80 00 2C */	bge lbl_803BA040
/* 803BA018  3C 80 80 64 */	lis r4, lit_589@ha /* 0x80642454@ha */
/* 803BA01C  3C 60 80 64 */	lis r3, lit_544@ha /* 0x80642448@ha */
/* 803BA020  38 A4 24 54 */	addi r5, r4, lit_589@l /* 0x80642454@l */
/* 803BA024  C0 03 24 48 */	lfs f0, lit_544@l(r3)  /* 0x80642448@l */
/* 803BA028  3C 80 80 65 */	lis r4, mEnv_wind_info@ha /* 0x80656334@ha */
/* 803BA02C  C0 25 00 00 */	lfs f1, 0(r5)
/* 803BA030  38 84 63 34 */	addi r4, r4, mEnv_wind_info@l /* 0x80656334@l */
/* 803BA034  D0 24 00 10 */	stfs f1, 0x10(r4)
/* 803BA038  D0 04 00 14 */	stfs f0, 0x14(r4)
/* 803BA03C  48 00 00 60 */	b lbl_803BA09C
lbl_803BA040:
/* 803BA040  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803BA044  7C 03 02 14 */	add r0, r3, r0
/* 803BA048  7C 1F 00 00 */	cmpw r31, r0
/* 803BA04C  40 80 00 2C */	bge lbl_803BA078
/* 803BA050  3C 80 80 64 */	lis r4, lit_590@ha /* 0x80642458@ha */
/* 803BA054  3C 60 80 64 */	lis r3, lit_589@ha /* 0x80642454@ha */
/* 803BA058  38 A4 24 58 */	addi r5, r4, lit_590@l /* 0x80642458@l */
/* 803BA05C  C0 03 24 54 */	lfs f0, lit_589@l(r3)  /* 0x80642454@l */
/* 803BA060  3C 80 80 65 */	lis r4, mEnv_wind_info@ha /* 0x80656334@ha */
/* 803BA064  C0 25 00 00 */	lfs f1, 0(r5)
/* 803BA068  38 84 63 34 */	addi r4, r4, mEnv_wind_info@l /* 0x80656334@l */
/* 803BA06C  D0 24 00 10 */	stfs f1, 0x10(r4)
/* 803BA070  D0 04 00 14 */	stfs f0, 0x14(r4)
/* 803BA074  48 00 00 28 */	b lbl_803BA09C
lbl_803BA078:
/* 803BA078  3C 80 80 64 */	lis r4, lit_545@ha /* 0x8064244C@ha */
/* 803BA07C  3C 60 80 64 */	lis r3, lit_590@ha /* 0x80642458@ha */
/* 803BA080  38 A4 24 4C */	addi r5, r4, lit_545@l /* 0x8064244C@l */
/* 803BA084  C0 03 24 58 */	lfs f0, lit_590@l(r3)  /* 0x80642458@l */
/* 803BA088  3C 80 80 65 */	lis r4, mEnv_wind_info@ha /* 0x80656334@ha */
/* 803BA08C  C0 25 00 00 */	lfs f1, 0(r5)
/* 803BA090  38 84 63 34 */	addi r4, r4, mEnv_wind_info@l /* 0x80656334@l */
/* 803BA094  D0 24 00 10 */	stfs f1, 0x10(r4)
/* 803BA098  D0 04 00 14 */	stfs f0, 0x14(r4)
lbl_803BA09C:
/* 803BA09C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803BA0A0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803BA0A4  7C 08 03 A6 */	mtlr r0
/* 803BA0A8  38 21 00 30 */	addi r1, r1, 0x30
/* 803BA0AC  4E 80 00 20 */	blr 
