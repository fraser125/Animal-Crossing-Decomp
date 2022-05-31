lbl_8059C904:
/* 8059C904  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8059C908  7C 08 02 A6 */	mflr r0
/* 8059C90C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8059C910  39 61 00 30 */	addi r11, r1, 0x30
/* 8059C914  4B AF E5 C1 */	bl func_8009AED4
/* 8059C918  A8 03 00 24 */	lha r0, 0x24(r3)
/* 8059C91C  7C 7F 1B 78 */	mr r31, r3
/* 8059C920  7C 9E 23 78 */	mr r30, r4
/* 8059C924  2C 00 00 00 */	cmpwi r0, 0
/* 8059C928  40 82 00 B4 */	bne lbl_8059C9DC
/* 8059C92C  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8059C930  38 61 00 14 */	addi r3, r1, 0x14
/* 8059C934  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8059C938  90 81 00 14 */	stw r4, 0x14(r1)
/* 8059C93C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8059C940  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8059C944  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8059C948  4B E0 AA E9 */	bl mFI_GetUnitFG
/* 8059C94C  28 03 00 00 */	cmplwi r3, 0
/* 8059C950  41 82 00 18 */	beq lbl_8059C968
/* 8059C954  A0 03 00 00 */	lhz r0, 0(r3)
/* 8059C958  28 00 08 61 */	cmplwi r0, 0x861
/* 8059C95C  40 82 00 0C */	bne lbl_8059C968
/* 8059C960  38 80 00 01 */	li r4, 1
/* 8059C964  48 00 00 08 */	b lbl_8059C96C
lbl_8059C968:
/* 8059C968  38 80 00 00 */	li r4, 0
lbl_8059C96C:
/* 8059C96C  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 8059C970  3C 60 80 6C */	lis r3, data_806C3480@ha /* 0x806C3480@ha */
/* 8059C974  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8059C978  54 9D 10 3A */	slwi r29, r4, 2
/* 8059C97C  38 83 34 80 */	addi r4, r3, data_806C3480@l /* 0x806C3480@l */
/* 8059C980  38 61 00 08 */	addi r3, r1, 8
/* 8059C984  7C 04 EC 2E */	lfsx f0, r4, r29
/* 8059C988  90 A1 00 08 */	stw r5, 8(r1)
/* 8059C98C  FC 20 00 50 */	fneg f1, f0
/* 8059C990  90 01 00 0C */	stw r0, 0xc(r1)
/* 8059C994  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8059C998  90 01 00 10 */	stw r0, 0x10(r1)
/* 8059C99C  4B DF 2F FD */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 8059C9A0  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 8059C9A4  3C 60 80 6C */	lis r3, init_posZ@ha /* 0x806C3488@ha */
/* 8059C9A8  38 83 34 88 */	addi r4, r3, init_posZ@l /* 0x806C3488@l */
/* 8059C9AC  38 60 00 00 */	li r3, 0
/* 8059C9B0  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8059C9B4  38 00 40 00 */	li r0, 0x4000
/* 8059C9B8  7C 04 EC 2E */	lfsx f0, r4, r29
/* 8059C9BC  38 80 00 02 */	li r4, 2
/* 8059C9C0  EC 01 00 2A */	fadds f0, f1, f0
/* 8059C9C4  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8059C9C8  98 7F 01 08 */	stb r3, 0x108(r31)
/* 8059C9CC  B0 1F 00 DC */	sth r0, 0xdc(r31)
/* 8059C9D0  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 8059C9D4  90 1F 02 40 */	stw r0, 0x240(r31)
/* 8059C9D8  48 00 00 08 */	b lbl_8059C9E0
lbl_8059C9DC:
/* 8059C9DC  38 80 00 01 */	li r4, 1
lbl_8059C9E0:
/* 8059C9E0  80 7F 01 D0 */	lwz r3, 0x1d0(r31)
/* 8059C9E4  38 03 FF ED */	addi r0, r3, -19
/* 8059C9E8  28 00 00 0C */	cmplwi r0, 0xc
/* 8059C9EC  41 81 00 78 */	bgt lbl_8059CA64
/* 8059C9F0  3C 60 80 6C */	lis r3, lit_410@ha /* 0x806C3490@ha */
/* 8059C9F4  54 00 10 3A */	slwi r0, r0, 2
/* 8059C9F8  38 63 34 90 */	addi r3, r3, lit_410@l /* 0x806C3490@l */
/* 8059C9FC  7C 03 00 2E */	lwzx r0, r3, r0
/* 8059CA00  7C 09 03 A6 */	mtctr r0
/* 8059CA04  4E 80 04 20 */	bctr 
lbl_8059CA08:
/* 8059CA08  38 00 2D 13 */	li r0, 0x2d13
/* 8059CA0C  B0 1F 02 1C */	sth r0, 0x21c(r31)
/* 8059CA10  48 00 00 54 */	b lbl_8059CA64
lbl_8059CA14:
/* 8059CA14  38 00 2D 14 */	li r0, 0x2d14
/* 8059CA18  B0 1F 02 1C */	sth r0, 0x21c(r31)
/* 8059CA1C  48 00 00 48 */	b lbl_8059CA64
lbl_8059CA20:
/* 8059CA20  38 00 2D 15 */	li r0, 0x2d15
/* 8059CA24  B0 1F 02 1C */	sth r0, 0x21c(r31)
/* 8059CA28  48 00 00 3C */	b lbl_8059CA64
lbl_8059CA2C:
/* 8059CA2C  38 00 2D 16 */	li r0, 0x2d16
/* 8059CA30  B0 1F 02 1C */	sth r0, 0x21c(r31)
/* 8059CA34  48 00 00 30 */	b lbl_8059CA64
lbl_8059CA38:
/* 8059CA38  38 00 2D 17 */	li r0, 0x2d17
/* 8059CA3C  B0 1F 02 1C */	sth r0, 0x21c(r31)
/* 8059CA40  48 00 00 24 */	b lbl_8059CA64
lbl_8059CA44:
/* 8059CA44  38 00 2D 1D */	li r0, 0x2d1d
/* 8059CA48  B0 1F 02 1C */	sth r0, 0x21c(r31)
/* 8059CA4C  48 00 00 18 */	b lbl_8059CA64
lbl_8059CA50:
/* 8059CA50  38 00 2D 1E */	li r0, 0x2d1e
/* 8059CA54  B0 1F 02 1C */	sth r0, 0x21c(r31)
/* 8059CA58  48 00 00 0C */	b lbl_8059CA64
lbl_8059CA5C:
/* 8059CA5C  38 00 2D 1F */	li r0, 0x2d1f
/* 8059CA60  B0 1F 02 1C */	sth r0, 0x21c(r31)
lbl_8059CA64:
/* 8059CA64  3C A0 80 5A */	lis r5, aIKB_actor_move@ha /* 0x8059D078@ha */
/* 8059CA68  7F E3 FB 78 */	mr r3, r31
/* 8059CA6C  38 05 D0 78 */	addi r0, r5, aIKB_actor_move@l /* 0x8059D078@l */
/* 8059CA70  90 1F 01 64 */	stw r0, 0x164(r31)
/* 8059CA74  7F C5 F3 78 */	mr r5, r30
/* 8059CA78  48 00 05 B5 */	bl aIKB_setupAction
/* 8059CA7C  39 61 00 30 */	addi r11, r1, 0x30
/* 8059CA80  4B AF E4 A1 */	bl func_8009AF20
/* 8059CA84  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8059CA88  7C 08 03 A6 */	mtlr r0
/* 8059CA8C  38 21 00 30 */	addi r1, r1, 0x30
/* 8059CA90  4E 80 00 20 */	blr 
