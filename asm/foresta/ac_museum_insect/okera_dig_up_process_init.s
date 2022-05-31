lbl_8046D6C8:
/* 8046D6C8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8046D6CC  7C 08 02 A6 */	mflr r0
/* 8046D6D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8046D6D4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8046D6D8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8046D6DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8046D6E0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8046D6E4  7C 7F 1B 78 */	mr r31, r3
/* 8046D6E8  4B BE F5 E5 */	bl func_8005CCCC
/* 8046D6EC  7C 7E 07 34 */	extsh r30, r3
/* 8046D6F0  4B BE F6 05 */	bl fqrand
/* 8046D6F4  3C 60 80 64 */	lis r3, okera_base_pos@ha /* 0x80644914@ha */
/* 8046D6F8  3C 80 80 64 */	lis r4, lit_3228@ha /* 0x80644804@ha */
/* 8046D6FC  38 A3 49 14 */	addi r5, r3, okera_base_pos@l /* 0x80644914@l */
/* 8046D700  C0 04 48 04 */	lfs f0, lit_3228@l(r4)  /* 0x80644804@l */
/* 8046D704  80 05 00 00 */	lwz r0, 0(r5)
/* 8046D708  7F C3 F3 78 */	mr r3, r30
/* 8046D70C  80 85 00 04 */	lwz r4, 4(r5)
/* 8046D710  EF E0 00 72 */	fmuls f31, f0, f1
/* 8046D714  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8046D718  80 05 00 08 */	lwz r0, 8(r5)
/* 8046D71C  90 9F 00 20 */	stw r4, 0x20(r31)
/* 8046D720  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8046D724  4B F4 D3 CD */	bl sin_s
/* 8046D728  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8046D72C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8046D730  3C 80 80 64 */	lis r4, lit_507@ha /* 0x806445EC@ha */
/* 8046D734  7F C3 F3 78 */	mr r3, r30
/* 8046D738  EC 20 08 2A */	fadds f1, f0, f1
/* 8046D73C  C0 04 45 EC */	lfs f0, lit_507@l(r4)  /* 0x806445EC@l */
/* 8046D740  D0 3F 00 1C */	stfs f1, 0x1c(r31)
/* 8046D744  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8046D748  EC 01 00 28 */	fsubs f0, f1, f0
/* 8046D74C  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8046D750  4B F4 D3 A1 */	bl sin_s
/* 8046D754  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8046D758  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8046D75C  3C 60 80 64 */	lis r3, lit_465@ha /* 0x806445D4@ha */
/* 8046D760  3D 00 80 66 */	lis r8, data_8065F050@ha /* 0x8065F050@ha */
/* 8046D764  38 E3 45 D4 */	addi r7, r3, lit_465@l /* 0x806445D4@l */
/* 8046D768  3C 80 80 66 */	lis r4, ZeroSVec@ha /* 0x8065F05C@ha */
/* 8046D76C  EC 00 08 2A */	fadds f0, f0, f1
/* 8046D770  3C 60 80 64 */	lis r3, lit_1721@ha /* 0x8064479C@ha */
/* 8046D774  38 C3 47 9C */	addi r6, r3, lit_1721@l /* 0x8064479C@l */
/* 8046D778  C0 67 00 00 */	lfs f3, 0(r7)
/* 8046D77C  3C 60 80 64 */	lis r3, lit_4727@ha /* 0x80644920@ha */
/* 8046D780  C0 46 00 00 */	lfs f2, 0(r6)
/* 8046D784  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 8046D788  38 A3 49 20 */	addi r5, r3, lit_4727@l /* 0x80644920@l */
/* 8046D78C  3C 60 80 64 */	lis r3, okera_base_pos@ha /* 0x80644914@ha */
/* 8046D790  C0 25 00 00 */	lfs f1, 0(r5)
/* 8046D794  84 E8 F0 50 */	lwzu r7, data_8065F050@l(r8)  /* 0x8065F050@l */
/* 8046D798  38 63 49 14 */	addi r3, r3, okera_base_pos@l /* 0x80644914@l */
/* 8046D79C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8046D7A0  80 08 00 04 */	lwz r0, 4(r8)
/* 8046D7A4  90 FF 00 34 */	stw r7, 0x34(r31)
/* 8046D7A8  90 1F 00 38 */	stw r0, 0x38(r31)
/* 8046D7AC  80 08 00 08 */	lwz r0, 8(r8)
/* 8046D7B0  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 8046D7B4  80 68 00 00 */	lwz r3, 0(r8)
/* 8046D7B8  80 08 00 04 */	lwz r0, 4(r8)
/* 8046D7BC  90 7F 00 44 */	stw r3, 0x44(r31)
/* 8046D7C0  90 1F 00 48 */	stw r0, 0x48(r31)
/* 8046D7C4  80 08 00 08 */	lwz r0, 8(r8)
/* 8046D7C8  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8046D7CC  D0 7F 00 38 */	stfs f3, 0x38(r31)
/* 8046D7D0  D0 5F 00 48 */	stfs f2, 0x48(r31)
/* 8046D7D4  D0 3F 00 40 */	stfs f1, 0x40(r31)
/* 8046D7D8  84 04 F0 5C */	lwzu r0, ZeroSVec@l(r4)  /* 0x8065F05C@l */
/* 8046D7DC  90 1F 00 68 */	stw r0, 0x68(r31)
/* 8046D7E0  A0 04 00 04 */	lhz r0, 4(r4)
/* 8046D7E4  B0 1F 00 6C */	sth r0, 0x6c(r31)
/* 8046D7E8  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 8046D7EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046D7F0  4C 41 13 82 */	cror 2, 1, 2
/* 8046D7F4  40 82 00 10 */	bne lbl_8046D804
/* 8046D7F8  4B BE F4 D5 */	bl func_8005CCCC
/* 8046D7FC  B0 7F 00 6A */	sth r3, 0x6a(r31)
/* 8046D800  48 00 00 30 */	b lbl_8046D830
lbl_8046D804:
/* 8046D804  4B BE F5 29 */	bl fqrand2
/* 8046D808  3C 80 80 64 */	lis r4, lit_3945@ha /* 0x8064489C@ha */
/* 8046D80C  3C 60 80 64 */	lis r3, lit_505@ha /* 0x806445E4@ha */
/* 8046D810  C0 44 48 9C */	lfs f2, lit_3945@l(r4)  /* 0x8064489C@l */
/* 8046D814  C0 03 45 E4 */	lfs f0, lit_505@l(r3)  /* 0x806445E4@l */
/* 8046D818  EC 22 00 72 */	fmuls f1, f2, f1
/* 8046D81C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046D820  FC 00 00 1E */	fctiwz f0, f0
/* 8046D824  D8 01 00 08 */	stfd f0, 8(r1)
/* 8046D828  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8046D82C  B0 1F 00 6A */	sth r0, 0x6a(r31)
lbl_8046D830:
/* 8046D830  A8 1F 00 6A */	lha r0, 0x6a(r31)
/* 8046D834  3C 60 80 47 */	lis r3, okera_dig_up_process@ha /* 0x8046D86C@ha */
/* 8046D838  38 80 00 00 */	li r4, 0
/* 8046D83C  B0 1F 00 70 */	sth r0, 0x70(r31)
/* 8046D840  38 03 D8 6C */	addi r0, r3, okera_dig_up_process@l /* 0x8046D86C@l */
/* 8046D844  B0 9F 00 76 */	sth r4, 0x76(r31)
/* 8046D848  90 1F 00 04 */	stw r0, 4(r31)
/* 8046D84C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8046D850  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046D854  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8046D858  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8046D85C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8046D860  7C 08 03 A6 */	mtlr r0
/* 8046D864  38 21 00 30 */	addi r1, r1, 0x30
/* 8046D868  4E 80 00 20 */	blr 
