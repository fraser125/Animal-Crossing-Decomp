lbl_8046A7BC:
/* 8046A7BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8046A7C0  7C 08 02 A6 */	mflr r0
/* 8046A7C4  3C 80 80 64 */	lis r4, lit_936@ha /* 0x806446C8@ha */
/* 8046A7C8  3C A0 80 64 */	lis r5, lit_502@ha /* 0x806445D8@ha */
/* 8046A7CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046A7D0  38 C4 46 C8 */	addi r6, r4, lit_936@l /* 0x806446C8@l */
/* 8046A7D4  3C 80 80 64 */	lis r4, lit_3933@ha /* 0x80644890@ha */
/* 8046A7D8  C0 06 00 00 */	lfs f0, 0(r6)
/* 8046A7DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8046A7E0  7C 7F 1B 78 */	mr r31, r3
/* 8046A7E4  38 65 45 D8 */	addi r3, r5, lit_502@l /* 0x806445D8@l */
/* 8046A7E8  C0 24 48 90 */	lfs f1, lit_3933@l(r4)  /* 0x80644890@l */
/* 8046A7EC  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8046A7F0  3C A0 80 66 */	lis r5, data_8065F050@ha /* 0x8065F050@ha */
/* 8046A7F4  C0 03 00 00 */	lfs f0, 0(r3)
/* 8046A7F8  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8046A7FC  38 83 45 BC */	addi r4, r3, lit_459@l /* 0x806445BC@l */
/* 8046A800  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8046A804  3C 60 80 66 */	lis r3, ZeroSVec@ha /* 0x8065F05C@ha */
/* 8046A808  C0 04 00 00 */	lfs f0, 0(r4)
/* 8046A80C  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 8046A810  84 85 F0 50 */	lwzu r4, data_8065F050@l(r5)  /* 0x8065F050@l */
/* 8046A814  80 05 00 04 */	lwz r0, 4(r5)
/* 8046A818  90 9F 00 34 */	stw r4, 0x34(r31)
/* 8046A81C  90 1F 00 38 */	stw r0, 0x38(r31)
/* 8046A820  80 05 00 08 */	lwz r0, 8(r5)
/* 8046A824  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 8046A828  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 8046A82C  80 85 00 00 */	lwz r4, 0(r5)
/* 8046A830  80 05 00 04 */	lwz r0, 4(r5)
/* 8046A834  90 9F 00 44 */	stw r4, 0x44(r31)
/* 8046A838  90 1F 00 48 */	stw r0, 0x48(r31)
/* 8046A83C  80 05 00 08 */	lwz r0, 8(r5)
/* 8046A840  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8046A844  84 03 F0 5C */	lwzu r0, ZeroSVec@l(r3)  /* 0x8065F05C@l */
/* 8046A848  90 1F 00 68 */	stw r0, 0x68(r31)
/* 8046A84C  A0 03 00 04 */	lhz r0, 4(r3)
/* 8046A850  B0 1F 00 6C */	sth r0, 0x6c(r31)
/* 8046A854  4B BF 24 A1 */	bl fqrand
/* 8046A858  3C 60 80 64 */	lis r3, lit_1264@ha /* 0x80644738@ha */
/* 8046A85C  C0 03 47 38 */	lfs f0, lit_1264@l(r3)  /* 0x80644738@l */
/* 8046A860  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046A864  FC 00 00 1E */	fctiwz f0, f0
/* 8046A868  D8 01 00 08 */	stfd f0, 8(r1)
/* 8046A86C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8046A870  54 00 60 26 */	slwi r0, r0, 0xc
/* 8046A874  B0 1F 00 6A */	sth r0, 0x6a(r31)
/* 8046A878  4B BF 24 7D */	bl fqrand
/* 8046A87C  3C 60 80 64 */	lis r3, lit_3934@ha /* 0x80644894@ha */
/* 8046A880  3C 80 80 64 */	lis r4, lit_3935@ha /* 0x80644898@ha */
/* 8046A884  38 A3 48 94 */	addi r5, r3, lit_3934@l /* 0x80644894@l */
/* 8046A888  C0 44 48 98 */	lfs f2, lit_3935@l(r4)  /* 0x80644898@l */
/* 8046A88C  C0 05 00 00 */	lfs f0, 0(r5)
/* 8046A890  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8046A894  38 00 00 00 */	li r0, 0
/* 8046A898  EC 20 00 72 */	fmuls f1, f0, f1
/* 8046A89C  C0 03 46 0C */	lfs f0, lit_511@l(r3)  /* 0x8064460C@l */
/* 8046A8A0  FC 20 08 1E */	fctiwz f1, f1
/* 8046A8A4  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 8046A8A8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8046A8AC  38 63 00 B4 */	addi r3, r3, 0xb4
/* 8046A8B0  B0 7F 00 6E */	sth r3, 0x6e(r31)
/* 8046A8B4  D0 5F 00 48 */	stfs f2, 0x48(r31)
/* 8046A8B8  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 8046A8BC  B0 1F 00 74 */	sth r0, 0x74(r31)
/* 8046A8C0  B0 1F 00 72 */	sth r0, 0x72(r31)
/* 8046A8C4  B0 1F 00 78 */	sth r0, 0x78(r31)
/* 8046A8C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046A8CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8046A8D0  7C 08 03 A6 */	mtlr r0
/* 8046A8D4  38 21 00 20 */	addi r1, r1, 0x20
/* 8046A8D8  4E 80 00 20 */	blr 
