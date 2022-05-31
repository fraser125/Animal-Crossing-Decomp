lbl_8059D10C:
/* 8059D10C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8059D110  7C 08 02 A6 */	mflr r0
/* 8059D114  3C A0 80 65 */	lis r5, data_8064A13C@ha /* 0x8064A13C@ha */
/* 8059D118  90 01 00 34 */	stw r0, 0x34(r1)
/* 8059D11C  38 C5 A1 3C */	addi r6, r5, data_8064A13C@l /* 0x8064A13C@l */
/* 8059D120  C0 06 00 00 */	lfs f0, 0(r6)
/* 8059D124  3C A0 80 5A */	lis r5, aIKR_actor_move@ha /* 0x8059DDC0@ha */
/* 8059D128  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8059D12C  38 05 DD C0 */	addi r0, r5, aIKR_actor_move@l /* 0x8059DDC0@l */
/* 8059D130  38 C0 2D 21 */	li r6, 0x2d21
/* 8059D134  38 A0 00 00 */	li r5, 0
/* 8059D138  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8059D13C  7C 7F 1B 78 */	mr r31, r3
/* 8059D140  7C 9E 23 78 */	mr r30, r4
/* 8059D144  D0 03 02 10 */	stfs f0, 0x210(r3)
/* 8059D148  B0 C3 02 1C */	sth r6, 0x21c(r3)
/* 8059D14C  90 03 01 64 */	stw r0, 0x164(r3)
/* 8059D150  88 03 02 1E */	lbz r0, 0x21e(r3)
/* 8059D154  50 A0 1F 38 */	rlwimi r0, r5, 3, 0x1c, 0x1c
/* 8059D158  98 03 02 1E */	stb r0, 0x21e(r3)
/* 8059D15C  A8 03 00 24 */	lha r0, 0x24(r3)
/* 8059D160  2C 00 00 00 */	cmpwi r0, 0
/* 8059D164  40 82 00 84 */	bne lbl_8059D1E8
/* 8059D168  88 BF 00 08 */	lbz r5, 8(r31)
/* 8059D16C  38 7F 02 4C */	addi r3, r31, 0x24c
/* 8059D170  88 DF 00 09 */	lbz r6, 9(r31)
/* 8059D174  38 9F 02 50 */	addi r4, r31, 0x250
/* 8059D178  7C A5 07 74 */	extsb r5, r5
/* 8059D17C  7C C6 07 74 */	extsb r6, r6
/* 8059D180  4B E0 89 F9 */	bl mFI_BkNum2WposXZ
/* 8059D184  3C 60 80 65 */	lis r3, lit_437@ha /* 0x8064A140@ha */
/* 8059D188  C0 1F 02 4C */	lfs f0, 0x24c(r31)
/* 8059D18C  38 83 A1 40 */	addi r4, r3, lit_437@l /* 0x8064A140@l */
/* 8059D190  38 61 00 0C */	addi r3, r1, 0xc
/* 8059D194  C0 24 00 00 */	lfs f1, 0(r4)
/* 8059D198  38 81 00 08 */	addi r4, r1, 8
/* 8059D19C  38 A1 00 10 */	addi r5, r1, 0x10
/* 8059D1A0  EC 00 08 2A */	fadds f0, f0, f1
/* 8059D1A4  D0 1F 02 4C */	stfs f0, 0x24c(r31)
/* 8059D1A8  C0 1F 02 50 */	lfs f0, 0x250(r31)
/* 8059D1AC  EC 00 08 2A */	fadds f0, f0, f1
/* 8059D1B0  D0 1F 02 50 */	stfs f0, 0x250(r31)
/* 8059D1B4  80 DF 00 28 */	lwz r6, 0x28(r31)
/* 8059D1B8  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8059D1BC  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8059D1C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059D1C4  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8059D1C8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8059D1CC  4B E0 81 9D */	bl mFI_Wpos2UtNum
/* 8059D1D0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8059D1D4  38 80 00 02 */	li r4, 2
/* 8059D1D8  B0 1F 02 68 */	sth r0, 0x268(r31)
/* 8059D1DC  80 01 00 08 */	lwz r0, 8(r1)
/* 8059D1E0  B0 1F 02 6A */	sth r0, 0x26a(r31)
/* 8059D1E4  48 00 00 14 */	b lbl_8059D1F8
lbl_8059D1E8:
/* 8059D1E8  48 00 00 35 */	bl aIKR_set_avoid_player_angl
/* 8059D1EC  38 00 00 01 */	li r0, 1
/* 8059D1F0  38 80 00 01 */	li r4, 1
/* 8059D1F4  98 1F 00 B5 */	stb r0, 0xb5(r31)
lbl_8059D1F8:
/* 8059D1F8  7F E3 FB 78 */	mr r3, r31
/* 8059D1FC  7F C5 F3 78 */	mr r5, r30
/* 8059D200  48 00 0B 75 */	bl aIKR_setupAction
/* 8059D204  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8059D208  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8059D20C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8059D210  7C 08 03 A6 */	mtlr r0
/* 8059D214  38 21 00 30 */	addi r1, r1, 0x30
/* 8059D218  4E 80 00 20 */	blr 
