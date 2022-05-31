lbl_8043AFA0:
/* 8043AFA0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8043AFA4  7C 08 02 A6 */	mflr r0
/* 8043AFA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8043AFAC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8043AFB0  7C 7F 1B 78 */	mr r31, r3
/* 8043AFB4  4B C2 1D 41 */	bl fqrand
/* 8043AFB8  3C 80 80 64 */	lis r4, lit_1997@ha /* 0x8064437C@ha */
/* 8043AFBC  3C 00 43 30 */	lis r0, 0x4330
/* 8043AFC0  C0 04 43 7C */	lfs f0, lit_1997@l(r4)  /* 0x8064437C@l */
/* 8043AFC4  3C 60 80 64 */	lis r3, lit_588@ha /* 0x80644298@ha */
/* 8043AFC8  38 83 42 98 */	addi r4, r3, lit_588@l /* 0x80644298@l */
/* 8043AFCC  3C A0 80 64 */	lis r5, lit_1598@ha /* 0x80644350@ha */
/* 8043AFD0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8043AFD4  C0 C4 00 00 */	lfs f6, 0(r4)
/* 8043AFD8  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8043AFDC  3C C0 80 64 */	lis r6, lit_975@ha /* 0x806442F0@ha */
/* 8043AFE0  38 83 42 8C */	addi r4, r3, lit_570@l /* 0x8064428C@l */
/* 8043AFE4  3C E0 80 64 */	lis r7, data_80644244@ha /* 0x80644244@ha */
/* 8043AFE8  EC 06 00 32 */	fmuls f0, f6, f0
/* 8043AFEC  3C 60 80 64 */	lis r3, lit_1599@ha /* 0x80644354@ha */
/* 8043AFF0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8043AFF4  C8 44 00 00 */	lfd f2, 0(r4)
/* 8043AFF8  FC 20 00 1E */	fctiwz f1, f0
/* 8043AFFC  C0 03 43 54 */	lfs f0, lit_1599@l(r3)  /* 0x80644354@l */
/* 8043B000  C0 65 43 50 */	lfs f3, lit_1598@l(r5)  /* 0x80644350@l */
/* 8043B004  C0 86 42 F0 */	lfs f4, lit_975@l(r6)  /* 0x806442F0@l */
/* 8043B008  D8 21 00 08 */	stfd f1, 8(r1)
/* 8043B00C  C0 A7 42 44 */	lfs f5, data_80644244@l(r7)  /* 0x80644244@l */
/* 8043B010  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8043B014  38 03 20 00 */	addi r0, r3, 0x2000
/* 8043B018  7C 04 07 34 */	extsh r4, r0
/* 8043B01C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8043B020  90 01 00 14 */	stw r0, 0x14(r1)
/* 8043B024  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 8043B028  EC 21 10 28 */	fsubs f1, f1, f2
/* 8043B02C  EC 23 00 72 */	fmuls f1, f3, f1
/* 8043B030  EC 01 00 24 */	fdivs f0, f1, f0
/* 8043B034  EC 04 00 32 */	fmuls f0, f4, f0
/* 8043B038  EC 05 00 2A */	fadds f0, f5, f0
/* 8043B03C  EC 06 00 32 */	fmuls f0, f6, f0
/* 8043B040  FC 00 00 1E */	fctiwz f0, f0
/* 8043B044  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8043B048  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8043B04C  2C 03 00 00 */	cmpwi r3, 0
/* 8043B050  7C 03 00 D0 */	neg r0, r3
/* 8043B054  41 80 00 08 */	blt lbl_8043B05C
/* 8043B058  7C 60 1B 78 */	mr r0, r3
lbl_8043B05C:
/* 8043B05C  B0 1F 06 1A */	sth r0, 0x61a(r31)
/* 8043B060  A8 7F 06 2E */	lha r3, 0x62e(r31)
/* 8043B064  54 60 06 FD */	rlwinm. r0, r3, 0, 0x1b, 0x1e
/* 8043B068  41 82 00 24 */	beq lbl_8043B08C
/* 8043B06C  A8 7F 06 2C */	lha r3, 0x62c(r31)
/* 8043B070  A8 1F 06 0E */	lha r0, 0x60e(r31)
/* 8043B074  7C 03 00 50 */	subf r0, r3, r0
/* 8043B078  7C 00 07 35 */	extsh. r0, r0
/* 8043B07C  40 80 00 74 */	bge lbl_8043B0F0
/* 8043B080  7C 04 00 D0 */	neg r0, r4
/* 8043B084  7C 04 07 34 */	extsh r4, r0
/* 8043B088  48 00 00 68 */	b lbl_8043B0F0
lbl_8043B08C:
/* 8043B08C  54 60 06 33 */	rlwinm. r0, r3, 0, 0x18, 0x19
/* 8043B090  41 82 00 40 */	beq lbl_8043B0D0
/* 8043B094  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 8043B098  41 82 00 1C */	beq lbl_8043B0B4
/* 8043B09C  7C 80 07 35 */	extsh. r0, r4
/* 8043B0A0  7C 04 00 D0 */	neg r0, r4
/* 8043B0A4  41 80 00 08 */	blt lbl_8043B0AC
/* 8043B0A8  7C 80 23 78 */	mr r0, r4
lbl_8043B0AC:
/* 8043B0AC  7C 04 07 34 */	extsh r4, r0
/* 8043B0B0  48 00 00 40 */	b lbl_8043B0F0
lbl_8043B0B4:
/* 8043B0B4  7C 80 07 35 */	extsh. r0, r4
/* 8043B0B8  7C 04 00 D0 */	neg r0, r4
/* 8043B0BC  41 80 00 08 */	blt lbl_8043B0C4
/* 8043B0C0  7C 80 23 78 */	mr r0, r4
lbl_8043B0C4:
/* 8043B0C4  7C 00 00 D0 */	neg r0, r0
/* 8043B0C8  7C 04 07 34 */	extsh r4, r0
/* 8043B0CC  48 00 00 24 */	b lbl_8043B0F0
lbl_8043B0D0:
/* 8043B0D0  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8043B0D4  41 82 00 1C */	beq lbl_8043B0F0
/* 8043B0D8  A8 7F 06 0E */	lha r3, 0x60e(r31)
/* 8043B0DC  A8 1F 06 2A */	lha r0, 0x62a(r31)
/* 8043B0E0  7C 03 00 51 */	subf. r0, r3, r0
/* 8043B0E4  40 80 00 0C */	bge lbl_8043B0F0
/* 8043B0E8  7C 04 00 D0 */	neg r0, r4
/* 8043B0EC  7C 04 07 34 */	extsh r4, r0
lbl_8043B0F0:
/* 8043B0F0  7C 80 07 35 */	extsh. r0, r4
/* 8043B0F4  40 81 00 14 */	ble lbl_8043B108
/* 8043B0F8  A8 1F 06 2E */	lha r0, 0x62e(r31)
/* 8043B0FC  60 00 00 40 */	ori r0, r0, 0x40
/* 8043B100  B0 1F 06 2E */	sth r0, 0x62e(r31)
/* 8043B104  48 00 00 10 */	b lbl_8043B114
lbl_8043B108:
/* 8043B108  A8 1F 06 2E */	lha r0, 0x62e(r31)
/* 8043B10C  60 00 00 80 */	ori r0, r0, 0x80
/* 8043B110  B0 1F 06 2E */	sth r0, 0x62e(r31)
lbl_8043B114:
/* 8043B114  A8 1F 06 14 */	lha r0, 0x614(r31)
/* 8043B118  7C 00 22 14 */	add r0, r0, r4
/* 8043B11C  B0 1F 06 14 */	sth r0, 0x614(r31)
/* 8043B120  4B C2 1B D5 */	bl fqrand
/* 8043B124  3C 60 80 64 */	lis r3, lit_839@ha /* 0x806442D4@ha */
/* 8043B128  C0 03 42 D4 */	lfs f0, lit_839@l(r3)  /* 0x806442D4@l */
/* 8043B12C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043B130  40 80 00 34 */	bge lbl_8043B164
/* 8043B134  4B C2 1B C1 */	bl fqrand
/* 8043B138  3C 80 80 64 */	lis r4, data_80644244@ha /* 0x80644244@ha */
/* 8043B13C  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043B140  C0 44 42 44 */	lfs f2, data_80644244@l(r4)  /* 0x80644244@l */
/* 8043B144  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 8043B148  EC 22 00 72 */	fmuls f1, f2, f1
/* 8043B14C  EC 00 08 2A */	fadds f0, f0, f1
/* 8043B150  FC 00 00 1E */	fctiwz f0, f0
/* 8043B154  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8043B158  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8043B15C  B0 1F 06 3E */	sth r0, 0x63e(r31)
/* 8043B160  48 00 00 0C */	b lbl_8043B16C
lbl_8043B164:
/* 8043B164  38 00 00 00 */	li r0, 0
/* 8043B168  B0 1F 06 3E */	sth r0, 0x63e(r31)
lbl_8043B16C:
/* 8043B16C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043B170  3C 80 80 64 */	lis r4, lit_839@ha /* 0x806442D4@ha */
/* 8043B174  38 A3 42 48 */	addi r5, r3, lit_468@l /* 0x80644248@l */
/* 8043B178  C0 24 42 D4 */	lfs f1, lit_839@l(r4)  /* 0x806442D4@l */
/* 8043B17C  C0 05 00 00 */	lfs f0, 0(r5)
/* 8043B180  3C 60 80 44 */	lis r3, mfish_aroana_turn_process@ha /* 0x8043B1B8@ha */
/* 8043B184  38 03 B1 B8 */	addi r0, r3, mfish_aroana_turn_process@l /* 0x8043B1B8@l */
/* 8043B188  D0 1F 05 EC */	stfs f0, 0x5ec(r31)
/* 8043B18C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8043B190  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 8043B194  EC 01 00 32 */	fmuls f0, f1, f0
/* 8043B198  EC 02 00 2A */	fadds f0, f2, f0
/* 8043B19C  D0 1F 05 F0 */	stfs f0, 0x5f0(r31)
/* 8043B1A0  90 1F 00 34 */	stw r0, 0x34(r31)
/* 8043B1A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8043B1A8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8043B1AC  7C 08 03 A6 */	mtlr r0
/* 8043B1B0  38 21 00 30 */	addi r1, r1, 0x30
/* 8043B1B4  4E 80 00 20 */	blr 
