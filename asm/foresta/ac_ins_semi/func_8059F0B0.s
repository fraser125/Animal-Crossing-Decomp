lbl_8059F0B0:
/* 8059F0B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8059F0B4  7C 08 02 A6 */	mflr r0
/* 8059F0B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8059F0BC  39 61 00 30 */	addi r11, r1, 0x30
/* 8059F0C0  4B AF BE 15 */	bl func_8009AED4
/* 8059F0C4  3C A0 80 5A */	lis r5, aISM_actor_move@ha /* 0x8059F8C0@ha */
/* 8059F0C8  7C 7F 1B 78 */	mr r31, r3
/* 8059F0CC  38 05 F8 C0 */	addi r0, r5, aISM_actor_move@l /* 0x8059F8C0@l */
/* 8059F0D0  7C 9E 23 78 */	mr r30, r4
/* 8059F0D4  90 03 01 64 */	stw r0, 0x164(r3)
/* 8059F0D8  80 03 01 D0 */	lwz r0, 0x1d0(r3)
/* 8059F0DC  2C 00 00 06 */	cmpwi r0, 6
/* 8059F0E0  41 82 00 40 */	beq lbl_8059F120
/* 8059F0E4  40 80 00 14 */	bge lbl_8059F0F8
/* 8059F0E8  2C 00 00 04 */	cmpwi r0, 4
/* 8059F0EC  41 82 00 1C */	beq lbl_8059F108
/* 8059F0F0  40 80 00 24 */	bge lbl_8059F114
/* 8059F0F4  48 00 00 4C */	b lbl_8059F140
lbl_8059F0F8:
/* 8059F0F8  2C 00 00 08 */	cmpwi r0, 8
/* 8059F0FC  41 82 00 3C */	beq lbl_8059F138
/* 8059F100  40 80 00 40 */	bge lbl_8059F140
/* 8059F104  48 00 00 28 */	b lbl_8059F12C
lbl_8059F108:
/* 8059F108  38 00 2D 04 */	li r0, 0x2d04
/* 8059F10C  B0 1F 02 1C */	sth r0, 0x21c(r31)
/* 8059F110  48 00 00 30 */	b lbl_8059F140
lbl_8059F114:
/* 8059F114  38 00 2D 05 */	li r0, 0x2d05
/* 8059F118  B0 1F 02 1C */	sth r0, 0x21c(r31)
/* 8059F11C  48 00 00 24 */	b lbl_8059F140
lbl_8059F120:
/* 8059F120  38 00 2D 06 */	li r0, 0x2d06
/* 8059F124  B0 1F 02 1C */	sth r0, 0x21c(r31)
/* 8059F128  48 00 00 18 */	b lbl_8059F140
lbl_8059F12C:
/* 8059F12C  38 00 2D 07 */	li r0, 0x2d07
/* 8059F130  B0 1F 02 1C */	sth r0, 0x21c(r31)
/* 8059F134  48 00 00 0C */	b lbl_8059F140
lbl_8059F138:
/* 8059F138  38 00 2D 08 */	li r0, 0x2d08
/* 8059F13C  B0 1F 02 1C */	sth r0, 0x21c(r31)
lbl_8059F140:
/* 8059F140  A8 1F 00 24 */	lha r0, 0x24(r31)
/* 8059F144  2C 00 00 00 */	cmpwi r0, 0
/* 8059F148  40 82 00 B8 */	bne lbl_8059F200
/* 8059F14C  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8059F150  38 61 00 14 */	addi r3, r1, 0x14
/* 8059F154  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8059F158  90 81 00 14 */	stw r4, 0x14(r1)
/* 8059F15C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8059F160  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8059F164  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8059F168  4B E0 82 C9 */	bl mFI_GetUnitFG
/* 8059F16C  28 03 00 00 */	cmplwi r3, 0
/* 8059F170  41 82 00 18 */	beq lbl_8059F188
/* 8059F174  A0 03 00 00 */	lhz r0, 0(r3)
/* 8059F178  28 00 08 61 */	cmplwi r0, 0x861
/* 8059F17C  40 82 00 0C */	bne lbl_8059F188
/* 8059F180  38 80 00 01 */	li r4, 1
/* 8059F184  48 00 00 08 */	b lbl_8059F18C
lbl_8059F188:
/* 8059F188  38 80 00 00 */	li r4, 0
lbl_8059F18C:
/* 8059F18C  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 8059F190  3C 60 80 6C */	lis r3, data_806C35D8@ha /* 0x806C35D8@ha */
/* 8059F194  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8059F198  54 9D 10 3A */	slwi r29, r4, 2
/* 8059F19C  38 83 35 D8 */	addi r4, r3, data_806C35D8@l /* 0x806C35D8@l */
/* 8059F1A0  38 61 00 08 */	addi r3, r1, 8
/* 8059F1A4  7C 04 EC 2E */	lfsx f0, r4, r29
/* 8059F1A8  90 A1 00 08 */	stw r5, 8(r1)
/* 8059F1AC  FC 20 00 50 */	fneg f1, f0
/* 8059F1B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8059F1B4  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8059F1B8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8059F1BC  4B DF 07 DD */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 8059F1C0  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 8059F1C4  3C 60 80 6C */	lis r3, init_posZ@ha /* 0x806C35E0@ha */
/* 8059F1C8  38 A3 35 E0 */	addi r5, r3, init_posZ@l /* 0x806C35E0@l */
/* 8059F1CC  38 7F 00 0C */	addi r3, r31, 0xc
/* 8059F1D0  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8059F1D4  38 9F 00 28 */	addi r4, r31, 0x28
/* 8059F1D8  7C 05 EC 2E */	lfsx f0, r5, r29
/* 8059F1DC  EC 01 00 2A */	fadds f0, f1, f0
/* 8059F1E0  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8059F1E4  4B E1 BC D9 */	bl xyz_t_move
/* 8059F1E8  38 60 00 00 */	li r3, 0
/* 8059F1EC  38 00 40 00 */	li r0, 0x4000
/* 8059F1F0  98 7F 01 08 */	stb r3, 0x108(r31)
/* 8059F1F4  38 80 00 02 */	li r4, 2
/* 8059F1F8  B0 1F 00 DC */	sth r0, 0xdc(r31)
/* 8059F1FC  48 00 00 20 */	b lbl_8059F21C
lbl_8059F200:
/* 8059F200  80 1F 01 D0 */	lwz r0, 0x1d0(r31)
/* 8059F204  2C 00 00 08 */	cmpwi r0, 8
/* 8059F208  41 82 00 10 */	beq lbl_8059F218
/* 8059F20C  38 9F 00 28 */	addi r4, r31, 0x28
/* 8059F210  38 60 01 15 */	li r3, 0x115
/* 8059F214  48 08 ED 95 */	bl sAdo_OngenTrgStart
lbl_8059F218:
/* 8059F218  38 80 00 01 */	li r4, 1
lbl_8059F21C:
/* 8059F21C  7F E3 FB 78 */	mr r3, r31
/* 8059F220  7F C5 F3 78 */	mr r5, r30
/* 8059F224  48 00 06 51 */	bl aISM_setupAction
/* 8059F228  39 61 00 30 */	addi r11, r1, 0x30
/* 8059F22C  4B AF BC F5 */	bl func_8009AF20
/* 8059F230  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8059F234  7C 08 03 A6 */	mtlr r0
/* 8059F238  38 21 00 30 */	addi r1, r1, 0x30
/* 8059F23C  4E 80 00 20 */	blr 
