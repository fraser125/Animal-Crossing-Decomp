lbl_8045E784:
/* 8045E784  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045E788  7C 08 02 A6 */	mflr r0
/* 8045E78C  3C C0 80 66 */	lis r6, data_8065F050@ha /* 0x8065F050@ha */
/* 8045E790  3C A0 80 66 */	lis r5, ZeroSVec@ha /* 0x8065F05C@ha */
/* 8045E794  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045E798  38 E6 F0 50 */	addi r7, r6, data_8065F050@l /* 0x8065F050@l */
/* 8045E79C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045E7A0  7C 9F 23 78 */	mr r31, r4
/* 8045E7A4  93 C1 00 08 */	stw r30, 8(r1)
/* 8045E7A8  7C 7E 1B 78 */	mr r30, r3
/* 8045E7AC  38 65 F0 5C */	addi r3, r5, ZeroSVec@l /* 0x8065F05C@l */
/* 8045E7B0  80 C7 00 00 */	lwz r6, 0(r7)
/* 8045E7B4  80 07 00 04 */	lwz r0, 4(r7)
/* 8045E7B8  90 DE 00 34 */	stw r6, 0x34(r30)
/* 8045E7BC  90 1E 00 38 */	stw r0, 0x38(r30)
/* 8045E7C0  80 07 00 08 */	lwz r0, 8(r7)
/* 8045E7C4  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 8045E7C8  80 03 00 00 */	lwz r0, 0(r3)
/* 8045E7CC  90 1E 00 68 */	stw r0, 0x68(r30)
/* 8045E7D0  A0 03 00 04 */	lhz r0, 4(r3)
/* 8045E7D4  B0 1E 00 6C */	sth r0, 0x6c(r30)
/* 8045E7D8  4B BF E4 F5 */	bl func_8005CCCC
/* 8045E7DC  B0 7E 00 6A */	sth r3, 0x6a(r30)
/* 8045E7E0  4B BF E4 ED */	bl func_8005CCCC
/* 8045E7E4  B0 7E 00 70 */	sth r3, 0x70(r30)
/* 8045E7E8  38 00 00 00 */	li r0, 0
/* 8045E7EC  B0 1E 00 72 */	sth r0, 0x72(r30)
/* 8045E7F0  A8 1E 00 8E */	lha r0, 0x8e(r30)
/* 8045E7F4  2C 00 00 01 */	cmpwi r0, 1
/* 8045E7F8  40 82 00 D0 */	bne lbl_8045E8C8
/* 8045E7FC  3C 60 80 64 */	lis r3, init_center_pos_930@ha /* 0x806446B8@ha */
/* 8045E800  38 83 46 B8 */	addi r4, r3, init_center_pos_930@l /* 0x806446B8@l */
/* 8045E804  80 04 00 00 */	lwz r0, 0(r4)
/* 8045E808  80 64 00 04 */	lwz r3, 4(r4)
/* 8045E80C  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 8045E810  80 04 00 08 */	lwz r0, 8(r4)
/* 8045E814  90 7E 00 20 */	stw r3, 0x20(r30)
/* 8045E818  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8045E81C  4B BF E5 11 */	bl fqrand2
/* 8045E820  3C 60 80 64 */	lis r3, lit_463@ha /* 0x806445CC@ha */
/* 8045E824  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8045E828  C0 43 45 CC */	lfs f2, lit_463@l(r3)  /* 0x806445CC@l */
/* 8045E82C  EC 22 00 72 */	fmuls f1, f2, f1
/* 8045E830  EC 00 08 2A */	fadds f0, f0, f1
/* 8045E834  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 8045E838  4B BF E4 BD */	bl fqrand
/* 8045E83C  3C 80 80 64 */	lis r4, lit_581@ha /* 0x8064461C@ha */
/* 8045E840  3C 60 80 64 */	lis r3, lit_935@ha /* 0x806446C4@ha */
/* 8045E844  C0 44 46 1C */	lfs f2, lit_581@l(r4)  /* 0x8064461C@l */
/* 8045E848  C0 03 46 C4 */	lfs f0, lit_935@l(r3)  /* 0x806446C4@l */
/* 8045E84C  EC 22 00 72 */	fmuls f1, f2, f1
/* 8045E850  EC 00 08 2A */	fadds f0, f0, f1
/* 8045E854  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 8045E858  4B BF E4 D5 */	bl fqrand2
/* 8045E85C  3C 60 80 64 */	lis r3, lit_936@ha /* 0x806446C8@ha */
/* 8045E860  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 8045E864  38 A3 46 C8 */	addi r5, r3, lit_936@l /* 0x806446C8@l */
/* 8045E868  3C 80 80 64 */	lis r4, lit_506@ha /* 0x806445E8@ha */
/* 8045E86C  C0 05 00 00 */	lfs f0, 0(r5)
/* 8045E870  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8045E874  38 00 00 00 */	li r0, 0
/* 8045E878  EC 60 00 72 */	fmuls f3, f0, f1
/* 8045E87C  C0 24 45 E8 */	lfs f1, lit_506@l(r4)  /* 0x806445E8@l */
/* 8045E880  C0 03 46 0C */	lfs f0, lit_511@l(r3)  /* 0x8064460C@l */
/* 8045E884  EC 42 18 2A */	fadds f2, f2, f3
/* 8045E888  D0 5E 00 24 */	stfs f2, 0x24(r30)
/* 8045E88C  80 9E 00 1C */	lwz r4, 0x1c(r30)
/* 8045E890  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 8045E894  90 9E 00 44 */	stw r4, 0x44(r30)
/* 8045E898  90 7E 00 48 */	stw r3, 0x48(r30)
/* 8045E89C  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 8045E8A0  90 7E 00 4C */	stw r3, 0x4c(r30)
/* 8045E8A4  D0 3E 00 10 */	stfs f1, 0x10(r30)
/* 8045E8A8  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8045E8AC  B0 1E 00 74 */	sth r0, 0x74(r30)
/* 8045E8B0  4B BF E4 1D */	bl func_8005CCCC
/* 8045E8B4  B0 7E 00 76 */	sth r3, 0x76(r30)
/* 8045E8B8  7F C3 F3 78 */	mr r3, r30
/* 8045E8BC  7F E4 FB 78 */	mr r4, r31
/* 8045E8C0  48 00 0C 15 */	bl minsect_tonbo_normal_process_init
/* 8045E8C4  48 00 00 84 */	b lbl_8045E948
lbl_8045E8C8:
/* 8045E8C8  80 BE 00 00 */	lwz r5, 0(r30)
/* 8045E8CC  3C 80 81 1D */	lis r4, data_811CDFD0@ha /* 0x811CDFD0@ha */
/* 8045E8D0  38 C0 00 01 */	li r6, 1
/* 8045E8D4  3C 60 80 68 */	lis r3, tonbo_rock_pos@ha /* 0x80686AAC@ha */
/* 8045E8D8  38 05 FF F7 */	addi r0, r5, -9
/* 8045E8DC  38 A4 DF D0 */	addi r5, r4, data_811CDFD0@l /* 0x811CDFD0@l */
/* 8045E8E0  B0 1E 00 74 */	sth r0, 0x74(r30)
/* 8045E8E4  38 03 6A AC */	addi r0, r3, tonbo_rock_pos@l /* 0x80686AAC@l */
/* 8045E8E8  7F C3 F3 78 */	mr r3, r30
/* 8045E8EC  7F E4 FB 78 */	mr r4, r31
/* 8045E8F0  81 05 00 00 */	lwz r8, 0(r5)
/* 8045E8F4  A8 BE 00 74 */	lha r5, 0x74(r30)
/* 8045E8F8  A8 E8 2F A0 */	lha r7, 0x2fa0(r8)
/* 8045E8FC  7C C5 28 30 */	slw r5, r6, r5
/* 8045E900  7C E5 2B 78 */	or r5, r7, r5
/* 8045E904  B0 A8 2F A0 */	sth r5, 0x2fa0(r8)
/* 8045E908  A8 BE 00 74 */	lha r5, 0x74(r30)
/* 8045E90C  1C A5 00 0C */	mulli r5, r5, 0xc
/* 8045E910  7C C0 2A 14 */	add r6, r0, r5
/* 8045E914  80 A6 00 00 */	lwz r5, 0(r6)
/* 8045E918  80 06 00 04 */	lwz r0, 4(r6)
/* 8045E91C  90 BE 00 1C */	stw r5, 0x1c(r30)
/* 8045E920  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8045E924  80 06 00 08 */	lwz r0, 8(r6)
/* 8045E928  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8045E92C  80 BE 00 1C */	lwz r5, 0x1c(r30)
/* 8045E930  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 8045E934  90 BE 00 44 */	stw r5, 0x44(r30)
/* 8045E938  90 1E 00 48 */	stw r0, 0x48(r30)
/* 8045E93C  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 8045E940  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 8045E944  48 00 1E BD */	bl minsect_tonbo_rock_wait_process_init
lbl_8045E948:
/* 8045E948  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045E94C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045E950  83 C1 00 08 */	lwz r30, 8(r1)
/* 8045E954  7C 08 03 A6 */	mtlr r0
/* 8045E958  38 21 00 10 */	addi r1, r1, 0x10
/* 8045E95C  4E 80 00 20 */	blr 
