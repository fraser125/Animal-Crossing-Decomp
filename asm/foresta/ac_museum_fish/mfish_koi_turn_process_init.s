lbl_8043D710:
/* 8043D710  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8043D714  7C 08 02 A6 */	mflr r0
/* 8043D718  90 01 00 34 */	stw r0, 0x34(r1)
/* 8043D71C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8043D720  7C 7F 1B 78 */	mr r31, r3
/* 8043D724  4B C1 F5 D1 */	bl fqrand
/* 8043D728  3C 80 80 64 */	lis r4, lit_568@ha /* 0x80644284@ha */
/* 8043D72C  3C 00 43 30 */	lis r0, 0x4330
/* 8043D730  C0 04 42 84 */	lfs f0, lit_568@l(r4)  /* 0x80644284@l */
/* 8043D734  3C 60 80 64 */	lis r3, lit_588@ha /* 0x80644298@ha */
/* 8043D738  38 83 42 98 */	addi r4, r3, lit_588@l /* 0x80644298@l */
/* 8043D73C  3C A0 80 64 */	lis r5, lit_1598@ha /* 0x80644350@ha */
/* 8043D740  EC 00 00 72 */	fmuls f0, f0, f1
/* 8043D744  C0 C4 00 00 */	lfs f6, 0(r4)
/* 8043D748  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8043D74C  3C C0 80 64 */	lis r6, lit_840@ha /* 0x806442D8@ha */
/* 8043D750  38 83 42 8C */	addi r4, r3, lit_570@l /* 0x8064428C@l */
/* 8043D754  3C E0 80 64 */	lis r7, data_80644244@ha /* 0x80644244@ha */
/* 8043D758  EC 06 00 32 */	fmuls f0, f6, f0
/* 8043D75C  3C 60 80 64 */	lis r3, lit_1599@ha /* 0x80644354@ha */
/* 8043D760  90 01 00 10 */	stw r0, 0x10(r1)
/* 8043D764  C8 44 00 00 */	lfd f2, 0(r4)
/* 8043D768  FC 20 00 1E */	fctiwz f1, f0
/* 8043D76C  C0 03 43 54 */	lfs f0, lit_1599@l(r3)  /* 0x80644354@l */
/* 8043D770  C0 65 43 50 */	lfs f3, lit_1598@l(r5)  /* 0x80644350@l */
/* 8043D774  C0 86 42 D8 */	lfs f4, lit_840@l(r6)  /* 0x806442D8@l */
/* 8043D778  D8 21 00 08 */	stfd f1, 8(r1)
/* 8043D77C  C0 A7 42 44 */	lfs f5, data_80644244@l(r7)  /* 0x80644244@l */
/* 8043D780  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8043D784  38 03 2A AA */	addi r0, r3, 0x2aaa
/* 8043D788  7C 00 07 34 */	extsh r0, r0
/* 8043D78C  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8043D790  90 61 00 14 */	stw r3, 0x14(r1)
/* 8043D794  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 8043D798  EC 21 10 28 */	fsubs f1, f1, f2
/* 8043D79C  EC 23 00 72 */	fmuls f1, f3, f1
/* 8043D7A0  EC 01 00 24 */	fdivs f0, f1, f0
/* 8043D7A4  EC 04 00 32 */	fmuls f0, f4, f0
/* 8043D7A8  EC 05 00 2A */	fadds f0, f5, f0
/* 8043D7AC  EC 06 00 32 */	fmuls f0, f6, f0
/* 8043D7B0  FC 00 00 1E */	fctiwz f0, f0
/* 8043D7B4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8043D7B8  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8043D7BC  2C 04 00 00 */	cmpwi r4, 0
/* 8043D7C0  7C 64 00 D0 */	neg r3, r4
/* 8043D7C4  41 80 00 08 */	blt lbl_8043D7CC
/* 8043D7C8  7C 83 23 78 */	mr r3, r4
lbl_8043D7CC:
/* 8043D7CC  B0 7F 06 1A */	sth r3, 0x61a(r31)
/* 8043D7D0  A8 9F 06 2E */	lha r4, 0x62e(r31)
/* 8043D7D4  54 83 06 FD */	rlwinm. r3, r4, 0, 0x1b, 0x1e
/* 8043D7D8  41 82 00 24 */	beq lbl_8043D7FC
/* 8043D7DC  A8 9F 06 2C */	lha r4, 0x62c(r31)
/* 8043D7E0  A8 7F 06 0E */	lha r3, 0x60e(r31)
/* 8043D7E4  7C 64 18 50 */	subf r3, r4, r3
/* 8043D7E8  7C 63 07 35 */	extsh. r3, r3
/* 8043D7EC  40 80 00 80 */	bge lbl_8043D86C
/* 8043D7F0  7C 00 00 D0 */	neg r0, r0
/* 8043D7F4  7C 00 07 34 */	extsh r0, r0
/* 8043D7F8  48 00 00 74 */	b lbl_8043D86C
lbl_8043D7FC:
/* 8043D7FC  54 83 06 33 */	rlwinm. r3, r4, 0, 0x18, 0x19
/* 8043D800  41 82 00 4C */	beq lbl_8043D84C
/* 8043D804  54 83 06 73 */	rlwinm. r3, r4, 0, 0x19, 0x19
/* 8043D808  41 82 00 1C */	beq lbl_8043D824
/* 8043D80C  7C 03 07 35 */	extsh. r3, r0
/* 8043D810  7C 60 00 D0 */	neg r3, r0
/* 8043D814  41 80 00 08 */	blt lbl_8043D81C
/* 8043D818  7C 03 03 78 */	mr r3, r0
lbl_8043D81C:
/* 8043D81C  7C 60 07 34 */	extsh r0, r3
/* 8043D820  48 00 00 1C */	b lbl_8043D83C
lbl_8043D824:
/* 8043D824  7C 03 07 35 */	extsh. r3, r0
/* 8043D828  7C 60 00 D0 */	neg r3, r0
/* 8043D82C  41 80 00 08 */	blt lbl_8043D834
/* 8043D830  7C 03 03 78 */	mr r3, r0
lbl_8043D834:
/* 8043D834  7C 03 00 D0 */	neg r0, r3
/* 8043D838  7C 00 07 34 */	extsh r0, r0
lbl_8043D83C:
/* 8043D83C  A8 7F 06 2E */	lha r3, 0x62e(r31)
/* 8043D840  54 63 06 AE */	rlwinm r3, r3, 0, 0x1a, 0x17
/* 8043D844  B0 7F 06 2E */	sth r3, 0x62e(r31)
/* 8043D848  48 00 00 24 */	b lbl_8043D86C
lbl_8043D84C:
/* 8043D84C  54 83 06 B5 */	rlwinm. r3, r4, 0, 0x1a, 0x1a
/* 8043D850  41 82 00 1C */	beq lbl_8043D86C
/* 8043D854  A8 9F 06 0E */	lha r4, 0x60e(r31)
/* 8043D858  A8 7F 06 2A */	lha r3, 0x62a(r31)
/* 8043D85C  7C 64 18 51 */	subf. r3, r4, r3
/* 8043D860  40 80 00 0C */	bge lbl_8043D86C
/* 8043D864  7C 00 00 D0 */	neg r0, r0
/* 8043D868  7C 00 07 34 */	extsh r0, r0
lbl_8043D86C:
/* 8043D86C  7C 03 07 35 */	extsh. r3, r0
/* 8043D870  40 81 00 14 */	ble lbl_8043D884
/* 8043D874  A8 7F 06 2E */	lha r3, 0x62e(r31)
/* 8043D878  60 63 00 40 */	ori r3, r3, 0x40
/* 8043D87C  B0 7F 06 2E */	sth r3, 0x62e(r31)
/* 8043D880  48 00 00 10 */	b lbl_8043D890
lbl_8043D884:
/* 8043D884  A8 7F 06 2E */	lha r3, 0x62e(r31)
/* 8043D888  60 63 00 80 */	ori r3, r3, 0x80
/* 8043D88C  B0 7F 06 2E */	sth r3, 0x62e(r31)
lbl_8043D890:
/* 8043D890  A8 7F 06 14 */	lha r3, 0x614(r31)
/* 8043D894  7C 03 02 14 */	add r0, r3, r0
/* 8043D898  B0 1F 06 14 */	sth r0, 0x614(r31)
/* 8043D89C  4B C1 F4 59 */	bl fqrand
/* 8043D8A0  3C 60 80 64 */	lis r3, lit_839@ha /* 0x806442D4@ha */
/* 8043D8A4  C0 03 42 D4 */	lfs f0, lit_839@l(r3)  /* 0x806442D4@l */
/* 8043D8A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043D8AC  40 80 00 34 */	bge lbl_8043D8E0
/* 8043D8B0  4B C1 F4 45 */	bl fqrand
/* 8043D8B4  3C 80 80 64 */	lis r4, data_80644244@ha /* 0x80644244@ha */
/* 8043D8B8  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043D8BC  C0 44 42 44 */	lfs f2, data_80644244@l(r4)  /* 0x80644244@l */
/* 8043D8C0  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 8043D8C4  EC 22 00 72 */	fmuls f1, f2, f1
/* 8043D8C8  EC 00 08 2A */	fadds f0, f0, f1
/* 8043D8CC  FC 00 00 1E */	fctiwz f0, f0
/* 8043D8D0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8043D8D4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8043D8D8  B0 1F 06 3E */	sth r0, 0x63e(r31)
/* 8043D8DC  48 00 00 0C */	b lbl_8043D8E8
lbl_8043D8E0:
/* 8043D8E0  38 00 00 00 */	li r0, 0
/* 8043D8E4  B0 1F 06 3E */	sth r0, 0x63e(r31)
lbl_8043D8E8:
/* 8043D8E8  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 8043D8EC  3C 60 80 44 */	lis r3, mfish_koi_turn_process@ha /* 0x8043D91C@ha */
/* 8043D8F0  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 8043D8F4  38 03 D9 1C */	addi r0, r3, mfish_koi_turn_process@l /* 0x8043D91C@l */
/* 8043D8F8  D0 1F 05 EC */	stfs f0, 0x5ec(r31)
/* 8043D8FC  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8043D900  D0 1F 05 F0 */	stfs f0, 0x5f0(r31)
/* 8043D904  90 1F 00 34 */	stw r0, 0x34(r31)
/* 8043D908  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8043D90C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8043D910  7C 08 03 A6 */	mtlr r0
/* 8043D914  38 21 00 30 */	addi r1, r1, 0x30
/* 8043D918  4E 80 00 20 */	blr 
