lbl_8043B6C8:
/* 8043B6C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8043B6CC  7C 08 02 A6 */	mflr r0
/* 8043B6D0  3C A0 80 64 */	lis r5, lit_920@ha /* 0x806442DC@ha */
/* 8043B6D4  3C C0 80 64 */	lis r6, lit_469@ha /* 0x8064424C@ha */
/* 8043B6D8  38 E5 42 DC */	addi r7, r5, lit_920@l /* 0x806442DC@l */
/* 8043B6DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8043B6E0  C8 C7 00 00 */	lfd f6, 0(r7)
/* 8043B6E4  3C A0 80 64 */	lis r5, lit_470@ha /* 0x80644254@ha */
/* 8043B6E8  38 E5 42 54 */	addi r7, r5, lit_470@l /* 0x80644254@l */
/* 8043B6EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8043B6F0  FC 60 30 34 */	frsqrte f3, f6
/* 8043B6F4  C8 A6 42 4C */	lfd f5, lit_469@l(r6)  /* 0x8064424C@l */
/* 8043B6F8  3C A0 80 64 */	lis r5, lit_472@ha /* 0x80644260@ha */
/* 8043B6FC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8043B700  38 C5 42 60 */	addi r6, r5, lit_472@l /* 0x80644260@l */
/* 8043B704  C8 87 00 00 */	lfd f4, 0(r7)
/* 8043B708  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043B70C  3C A0 80 64 */	lis r5, lit_468@ha /* 0x80644248@ha */
/* 8043B710  C0 46 00 00 */	lfs f2, 0(r6)
/* 8043B714  7C 7E 1B 78 */	mr r30, r3
/* 8043B718  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043B71C  C0 05 42 48 */	lfs f0, lit_468@l(r5)  /* 0x80644248@l */
/* 8043B720  FC 26 00 72 */	fmul f1, f6, f1
/* 8043B724  7C 9F 23 78 */	mr r31, r4
/* 8043B728  FC 24 08 28 */	fsub f1, f4, f1
/* 8043B72C  FC 63 00 72 */	fmul f3, f3, f1
/* 8043B730  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043B734  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043B738  FC 26 00 72 */	fmul f1, f6, f1
/* 8043B73C  FC 24 08 28 */	fsub f1, f4, f1
/* 8043B740  FC 63 00 72 */	fmul f3, f3, f1
/* 8043B744  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043B748  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043B74C  FC 26 00 72 */	fmul f1, f6, f1
/* 8043B750  FC 24 08 28 */	fsub f1, f4, f1
/* 8043B754  FC 23 00 72 */	fmul f1, f3, f1
/* 8043B758  FC 26 00 72 */	fmul f1, f6, f1
/* 8043B75C  FC 20 08 18 */	frsp f1, f1
/* 8043B760  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8043B764  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8043B768  EC 22 08 28 */	fsubs f1, f2, f1
/* 8043B76C  EC 42 08 28 */	fsubs f2, f2, f1
/* 8043B770  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8043B774  40 81 00 54 */	ble lbl_8043B7C8
/* 8043B778  FC 20 10 34 */	frsqrte f1, f2
/* 8043B77C  FC 01 00 72 */	fmul f0, f1, f1
/* 8043B780  FC 25 00 72 */	fmul f1, f5, f1
/* 8043B784  FC 02 00 32 */	fmul f0, f2, f0
/* 8043B788  FC 04 00 28 */	fsub f0, f4, f0
/* 8043B78C  FC 21 00 32 */	fmul f1, f1, f0
/* 8043B790  FC 01 00 72 */	fmul f0, f1, f1
/* 8043B794  FC 25 00 72 */	fmul f1, f5, f1
/* 8043B798  FC 02 00 32 */	fmul f0, f2, f0
/* 8043B79C  FC 04 00 28 */	fsub f0, f4, f0
/* 8043B7A0  FC 21 00 32 */	fmul f1, f1, f0
/* 8043B7A4  FC 01 00 72 */	fmul f0, f1, f1
/* 8043B7A8  FC 25 00 72 */	fmul f1, f5, f1
/* 8043B7AC  FC 02 00 32 */	fmul f0, f2, f0
/* 8043B7B0  FC 04 00 28 */	fsub f0, f4, f0
/* 8043B7B4  FC 01 00 32 */	fmul f0, f1, f0
/* 8043B7B8  FC 02 00 32 */	fmul f0, f2, f0
/* 8043B7BC  FC 00 00 18 */	frsp f0, f0
/* 8043B7C0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8043B7C4  C0 41 00 10 */	lfs f2, 0x10(r1)
lbl_8043B7C8:
/* 8043B7C8  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043B7CC  A8 9E 06 14 */	lha r4, 0x614(r30)
/* 8043B7D0  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 8043B7D4  38 7E 06 0E */	addi r3, r30, 0x60e
/* 8043B7D8  C0 05 00 00 */	lfs f0, 0(r5)
/* 8043B7DC  38 A0 00 E3 */	li r5, 0xe3
/* 8043B7E0  38 C0 00 2D */	li r6, 0x2d
/* 8043B7E4  EC 20 10 28 */	fsubs f1, f0, f2
/* 8043B7E8  4B F7 FB 29 */	bl add_calc_short_angle2
/* 8043B7EC  3C 80 80 64 */	lis r4, lit_665@ha /* 0x806442A4@ha */
/* 8043B7F0  3C A0 80 64 */	lis r5, lit_469@ha /* 0x8064424C@ha */
/* 8043B7F4  38 C4 42 A4 */	addi r6, r4, lit_665@l /* 0x806442A4@l */
/* 8043B7F8  C8 A5 42 4C */	lfd f5, lit_469@l(r5)  /* 0x8064424C@l */
/* 8043B7FC  C8 C6 00 00 */	lfd f6, 0(r6)
/* 8043B800  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 8043B804  38 C4 42 54 */	addi r6, r4, lit_470@l /* 0x80644254@l */
/* 8043B808  B0 7E 06 22 */	sth r3, 0x622(r30)
/* 8043B80C  FC 60 30 34 */	frsqrte f3, f6
/* 8043B810  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8043B814  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 8043B818  C8 86 00 00 */	lfd f4, 0(r6)
/* 8043B81C  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 8043B820  C0 45 00 00 */	lfs f2, 0(r5)
/* 8043B824  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043B828  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 8043B82C  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043B830  FC 26 00 72 */	fmul f1, f6, f1
/* 8043B834  FC 24 08 28 */	fsub f1, f4, f1
/* 8043B838  FC 63 00 72 */	fmul f3, f3, f1
/* 8043B83C  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043B840  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043B844  FC 26 00 72 */	fmul f1, f6, f1
/* 8043B848  FC 24 08 28 */	fsub f1, f4, f1
/* 8043B84C  FC 63 00 72 */	fmul f3, f3, f1
/* 8043B850  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043B854  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043B858  FC 26 00 72 */	fmul f1, f6, f1
/* 8043B85C  FC 24 08 28 */	fsub f1, f4, f1
/* 8043B860  FC 23 00 72 */	fmul f1, f3, f1
/* 8043B864  FC 26 00 72 */	fmul f1, f6, f1
/* 8043B868  FC 20 08 18 */	frsp f1, f1
/* 8043B86C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8043B870  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8043B874  EC 22 08 28 */	fsubs f1, f2, f1
/* 8043B878  EC 42 08 28 */	fsubs f2, f2, f1
/* 8043B87C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8043B880  40 81 00 54 */	ble lbl_8043B8D4
/* 8043B884  FC 20 10 34 */	frsqrte f1, f2
/* 8043B888  FC 01 00 72 */	fmul f0, f1, f1
/* 8043B88C  FC 25 00 72 */	fmul f1, f5, f1
/* 8043B890  FC 02 00 32 */	fmul f0, f2, f0
/* 8043B894  FC 04 00 28 */	fsub f0, f4, f0
/* 8043B898  FC 21 00 32 */	fmul f1, f1, f0
/* 8043B89C  FC 01 00 72 */	fmul f0, f1, f1
/* 8043B8A0  FC 25 00 72 */	fmul f1, f5, f1
/* 8043B8A4  FC 02 00 32 */	fmul f0, f2, f0
/* 8043B8A8  FC 04 00 28 */	fsub f0, f4, f0
/* 8043B8AC  FC 21 00 32 */	fmul f1, f1, f0
/* 8043B8B0  FC 01 00 72 */	fmul f0, f1, f1
/* 8043B8B4  FC 25 00 72 */	fmul f1, f5, f1
/* 8043B8B8  FC 02 00 32 */	fmul f0, f2, f0
/* 8043B8BC  FC 04 00 28 */	fsub f0, f4, f0
/* 8043B8C0  FC 01 00 32 */	fmul f0, f1, f0
/* 8043B8C4  FC 02 00 32 */	fmul f0, f2, f0
/* 8043B8C8  FC 00 00 18 */	frsp f0, f0
/* 8043B8CC  D0 01 00 08 */	stfs f0, 8(r1)
/* 8043B8D0  C0 41 00 08 */	lfs f2, 8(r1)
lbl_8043B8D4:
/* 8043B8D4  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043B8D8  A8 9E 06 22 */	lha r4, 0x622(r30)
/* 8043B8DC  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 8043B8E0  38 7E 06 1C */	addi r3, r30, 0x61c
/* 8043B8E4  C0 05 00 00 */	lfs f0, 0(r5)
/* 8043B8E8  38 A0 00 E3 */	li r5, 0xe3
/* 8043B8EC  38 C0 00 2D */	li r6, 0x2d
/* 8043B8F0  EC 20 10 28 */	fsubs f1, f0, f2
/* 8043B8F4  4B F7 FA 1D */	bl add_calc_short_angle2
/* 8043B8F8  3C C0 80 64 */	lis r6, lit_666@ha /* 0x806442AC@ha */
/* 8043B8FC  3C A0 80 64 */	lis r5, lit_1068@ha /* 0x80644308@ha */
/* 8043B900  3C 80 80 64 */	lis r4, lit_526@ha /* 0x80644264@ha */
/* 8043B904  C0 26 42 AC */	lfs f1, lit_666@l(r6)  /* 0x806442AC@l */
/* 8043B908  C0 45 43 08 */	lfs f2, lit_1068@l(r5)  /* 0x80644308@l */
/* 8043B90C  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 8043B910  C0 64 42 64 */	lfs f3, lit_526@l(r4)  /* 0x80644264@l */
/* 8043B914  4B F7 F9 81 */	bl add_calc2
/* 8043B918  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 8043B91C  C0 3E 05 F0 */	lfs f1, 0x5f0(r30)
/* 8043B920  C0 43 42 68 */	lfs f2, lit_527@l(r3)  /* 0x80644268@l */
/* 8043B924  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8043B928  C0 7E 05 EC */	lfs f3, 0x5ec(r30)
/* 8043B92C  4B F7 F9 69 */	bl add_calc2
/* 8043B930  80 1F 20 90 */	lwz r0, 0x2090(r31)
/* 8043B934  54 00 06 BF */	clrlwi. r0, r0, 0x1a
/* 8043B938  40 82 00 20 */	bne lbl_8043B958
/* 8043B93C  4B C2 13 B9 */	bl fqrand
/* 8043B940  3C 60 80 64 */	lis r3, lit_1068@ha /* 0x80644308@ha */
/* 8043B944  C0 03 43 08 */	lfs f0, lit_1068@l(r3)  /* 0x80644308@l */
/* 8043B948  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043B94C  40 81 00 0C */	ble lbl_8043B958
/* 8043B950  7F C3 F3 78 */	mr r3, r30
/* 8043B954  4B FF EA D1 */	bl mfish_aroana_dummy_process_init
lbl_8043B958:
/* 8043B958  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8043B95C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8043B960  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8043B964  7C 08 03 A6 */	mtlr r0
/* 8043B968  38 21 00 20 */	addi r1, r1, 0x20
/* 8043B96C  4E 80 00 20 */	blr 
