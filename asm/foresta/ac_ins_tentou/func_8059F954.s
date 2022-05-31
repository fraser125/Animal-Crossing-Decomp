lbl_8059F954:
/* 8059F954  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8059F958  7C 08 02 A6 */	mflr r0
/* 8059F95C  3C A0 80 5A */	lis r5, aITT_actor_move@ha /* 0x805A0470@ha */
/* 8059F960  90 01 00 34 */	stw r0, 0x34(r1)
/* 8059F964  38 00 00 02 */	li r0, 2
/* 8059F968  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8059F96C  7C 7F 1B 78 */	mr r31, r3
/* 8059F970  38 65 04 70 */	addi r3, r5, aITT_actor_move@l /* 0x805A0470@l */
/* 8059F974  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8059F978  7C 9E 23 78 */	mr r30, r4
/* 8059F97C  90 7F 01 64 */	stw r3, 0x164(r31)
/* 8059F980  90 1F 02 18 */	stw r0, 0x218(r31)
/* 8059F984  80 1F 01 D0 */	lwz r0, 0x1d0(r31)
/* 8059F988  2C 00 00 1A */	cmpwi r0, 0x1a
/* 8059F98C  41 82 00 3C */	beq lbl_8059F9C8
/* 8059F990  40 80 00 14 */	bge lbl_8059F9A4
/* 8059F994  2C 00 00 18 */	cmpwi r0, 0x18
/* 8059F998  41 82 00 18 */	beq lbl_8059F9B0
/* 8059F99C  40 80 00 20 */	bge lbl_8059F9BC
/* 8059F9A0  48 00 00 3C */	b lbl_8059F9DC
lbl_8059F9A4:
/* 8059F9A4  2C 00 00 20 */	cmpwi r0, 0x20
/* 8059F9A8  41 82 00 2C */	beq lbl_8059F9D4
/* 8059F9AC  48 00 00 30 */	b lbl_8059F9DC
lbl_8059F9B0:
/* 8059F9B0  38 00 2D 18 */	li r0, 0x2d18
/* 8059F9B4  B0 1F 02 1C */	sth r0, 0x21c(r31)
/* 8059F9B8  48 00 00 24 */	b lbl_8059F9DC
lbl_8059F9BC:
/* 8059F9BC  38 00 2D 19 */	li r0, 0x2d19
/* 8059F9C0  B0 1F 02 1C */	sth r0, 0x21c(r31)
/* 8059F9C4  48 00 00 18 */	b lbl_8059F9DC
lbl_8059F9C8:
/* 8059F9C8  38 00 2D 1A */	li r0, 0x2d1a
/* 8059F9CC  B0 1F 02 1C */	sth r0, 0x21c(r31)
/* 8059F9D0  48 00 00 0C */	b lbl_8059F9DC
lbl_8059F9D4:
/* 8059F9D4  38 00 2D 20 */	li r0, 0x2d20
/* 8059F9D8  B0 1F 02 1C */	sth r0, 0x21c(r31)
lbl_8059F9DC:
/* 8059F9DC  A8 1F 00 24 */	lha r0, 0x24(r31)
/* 8059F9E0  2C 00 00 00 */	cmpwi r0, 0
/* 8059F9E4  40 82 00 5C */	bne lbl_8059FA40
/* 8059F9E8  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8059F9EC  3C 60 80 65 */	lis r3, lit_404@ha /* 0x8064A250@ha */
/* 8059F9F0  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8059F9F4  C0 23 A2 50 */	lfs f1, lit_404@l(r3)  /* 0x8064A250@l */
/* 8059F9F8  38 61 00 14 */	addi r3, r1, 0x14
/* 8059F9FC  90 81 00 14 */	stw r4, 0x14(r1)
/* 8059FA00  90 01 00 18 */	stw r0, 0x18(r1)
/* 8059FA04  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8059FA08  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8059FA0C  4B DE FE 15 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 8059FA10  3C 60 80 65 */	lis r3, data_8064A24C@ha /* 0x8064A24C@ha */
/* 8059FA14  38 00 00 00 */	li r0, 0
/* 8059FA18  38 83 A2 4C */	addi r4, r3, data_8064A24C@l /* 0x8064A24C@l */
/* 8059FA1C  38 7F 00 0C */	addi r3, r31, 0xc
/* 8059FA20  C0 04 00 00 */	lfs f0, 0(r4)
/* 8059FA24  38 9F 00 28 */	addi r4, r31, 0x28
/* 8059FA28  EC 00 08 2A */	fadds f0, f0, f1
/* 8059FA2C  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8059FA30  98 1F 01 08 */	stb r0, 0x108(r31)
/* 8059FA34  4B E1 B4 89 */	bl xyz_t_move
/* 8059FA38  38 80 00 05 */	li r4, 5
/* 8059FA3C  48 00 00 54 */	b lbl_8059FA90
lbl_8059FA40:
/* 8059FA40  80 1F 01 D0 */	lwz r0, 0x1d0(r31)
/* 8059FA44  2C 00 00 20 */	cmpwi r0, 0x20
/* 8059FA48  41 82 00 08 */	beq lbl_8059FA50
/* 8059FA4C  48 00 00 40 */	b lbl_8059FA8C
lbl_8059FA50:
/* 8059FA50  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8059FA54  3C 60 80 65 */	lis r3, lit_405@ha /* 0x8064A254@ha */
/* 8059FA58  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8059FA5C  C0 23 A2 54 */	lfs f1, lit_405@l(r3)  /* 0x8064A254@l */
/* 8059FA60  38 61 00 08 */	addi r3, r1, 8
/* 8059FA64  90 81 00 08 */	stw r4, 8(r1)
/* 8059FA68  90 01 00 0C */	stw r0, 0xc(r1)
/* 8059FA6C  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8059FA70  90 01 00 10 */	stw r0, 0x10(r1)
/* 8059FA74  4B DE FD AD */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 8059FA78  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 8059FA7C  38 80 00 03 */	li r4, 3
/* 8059FA80  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8059FA84  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8059FA88  48 00 00 08 */	b lbl_8059FA90
lbl_8059FA8C:
/* 8059FA8C  38 80 00 02 */	li r4, 2
lbl_8059FA90:
/* 8059FA90  7F E3 FB 78 */	mr r3, r31
/* 8059FA94  7F C5 F3 78 */	mr r5, r30
/* 8059FA98  48 00 09 8D */	bl aITT_setupAction
/* 8059FA9C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8059FAA0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8059FAA4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8059FAA8  7C 08 03 A6 */	mtlr r0
/* 8059FAAC  38 21 00 30 */	addi r1, r1, 0x30
/* 8059FAB0  4E 80 00 20 */	blr 
