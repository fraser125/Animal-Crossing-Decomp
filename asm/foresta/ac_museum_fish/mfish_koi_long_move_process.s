lbl_8043E690:
/* 8043E690  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8043E694  7C 08 02 A6 */	mflr r0
/* 8043E698  3C 80 80 64 */	lis r4, lit_665@ha /* 0x806442A4@ha */
/* 8043E69C  3C A0 80 64 */	lis r5, lit_469@ha /* 0x8064424C@ha */
/* 8043E6A0  38 C4 42 A4 */	addi r6, r4, lit_665@l /* 0x806442A4@l */
/* 8043E6A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8043E6A8  C8 C6 00 00 */	lfd f6, 0(r6)
/* 8043E6AC  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 8043E6B0  38 C4 42 54 */	addi r6, r4, lit_470@l /* 0x80644254@l */
/* 8043E6B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8043E6B8  FC 60 30 34 */	frsqrte f3, f6
/* 8043E6BC  C8 A5 42 4C */	lfd f5, lit_469@l(r5)  /* 0x8064424C@l */
/* 8043E6C0  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8043E6C4  C8 86 00 00 */	lfd f4, 0(r6)
/* 8043E6C8  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 8043E6CC  7C 7F 1B 78 */	mr r31, r3
/* 8043E6D0  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043E6D4  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 8043E6D8  C0 45 00 00 */	lfs f2, 0(r5)
/* 8043E6DC  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043E6E0  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 8043E6E4  FC 26 00 72 */	fmul f1, f6, f1
/* 8043E6E8  FC 24 08 28 */	fsub f1, f4, f1
/* 8043E6EC  FC 63 00 72 */	fmul f3, f3, f1
/* 8043E6F0  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043E6F4  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043E6F8  FC 26 00 72 */	fmul f1, f6, f1
/* 8043E6FC  FC 24 08 28 */	fsub f1, f4, f1
/* 8043E700  FC 63 00 72 */	fmul f3, f3, f1
/* 8043E704  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043E708  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043E70C  FC 26 00 72 */	fmul f1, f6, f1
/* 8043E710  FC 24 08 28 */	fsub f1, f4, f1
/* 8043E714  FC 23 00 72 */	fmul f1, f3, f1
/* 8043E718  FC 26 00 72 */	fmul f1, f6, f1
/* 8043E71C  FC 20 08 18 */	frsp f1, f1
/* 8043E720  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8043E724  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8043E728  EC 22 08 28 */	fsubs f1, f2, f1
/* 8043E72C  EC 42 08 28 */	fsubs f2, f2, f1
/* 8043E730  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8043E734  40 81 00 54 */	ble lbl_8043E788
/* 8043E738  FC 20 10 34 */	frsqrte f1, f2
/* 8043E73C  FC 01 00 72 */	fmul f0, f1, f1
/* 8043E740  FC 25 00 72 */	fmul f1, f5, f1
/* 8043E744  FC 02 00 32 */	fmul f0, f2, f0
/* 8043E748  FC 04 00 28 */	fsub f0, f4, f0
/* 8043E74C  FC 21 00 32 */	fmul f1, f1, f0
/* 8043E750  FC 01 00 72 */	fmul f0, f1, f1
/* 8043E754  FC 25 00 72 */	fmul f1, f5, f1
/* 8043E758  FC 02 00 32 */	fmul f0, f2, f0
/* 8043E75C  FC 04 00 28 */	fsub f0, f4, f0
/* 8043E760  FC 21 00 32 */	fmul f1, f1, f0
/* 8043E764  FC 01 00 72 */	fmul f0, f1, f1
/* 8043E768  FC 25 00 72 */	fmul f1, f5, f1
/* 8043E76C  FC 02 00 32 */	fmul f0, f2, f0
/* 8043E770  FC 04 00 28 */	fsub f0, f4, f0
/* 8043E774  FC 01 00 32 */	fmul f0, f1, f0
/* 8043E778  FC 02 00 32 */	fmul f0, f2, f0
/* 8043E77C  FC 00 00 18 */	frsp f0, f0
/* 8043E780  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8043E784  C0 41 00 10 */	lfs f2, 0x10(r1)
lbl_8043E788:
/* 8043E788  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043E78C  A8 9F 06 14 */	lha r4, 0x614(r31)
/* 8043E790  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 8043E794  38 7F 06 0E */	addi r3, r31, 0x60e
/* 8043E798  C0 05 00 00 */	lfs f0, 0(r5)
/* 8043E79C  38 A0 01 6C */	li r5, 0x16c
/* 8043E7A0  38 C0 00 2D */	li r6, 0x2d
/* 8043E7A4  EC 20 10 28 */	fsubs f1, f0, f2
/* 8043E7A8  4B F7 CB 69 */	bl add_calc_short_angle2
/* 8043E7AC  3C 80 80 64 */	lis r4, lit_2906@ha /* 0x8064439C@ha */
/* 8043E7B0  3C A0 80 64 */	lis r5, lit_469@ha /* 0x8064424C@ha */
/* 8043E7B4  38 C4 43 9C */	addi r6, r4, lit_2906@l /* 0x8064439C@l */
/* 8043E7B8  C8 A5 42 4C */	lfd f5, lit_469@l(r5)  /* 0x8064424C@l */
/* 8043E7BC  C8 C6 00 00 */	lfd f6, 0(r6)
/* 8043E7C0  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 8043E7C4  38 C4 42 54 */	addi r6, r4, lit_470@l /* 0x80644254@l */
/* 8043E7C8  B0 7F 06 22 */	sth r3, 0x622(r31)
/* 8043E7CC  FC 60 30 34 */	frsqrte f3, f6
/* 8043E7D0  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8043E7D4  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 8043E7D8  C8 86 00 00 */	lfd f4, 0(r6)
/* 8043E7DC  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 8043E7E0  C0 45 00 00 */	lfs f2, 0(r5)
/* 8043E7E4  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043E7E8  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 8043E7EC  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043E7F0  FC 26 00 72 */	fmul f1, f6, f1
/* 8043E7F4  FC 24 08 28 */	fsub f1, f4, f1
/* 8043E7F8  FC 63 00 72 */	fmul f3, f3, f1
/* 8043E7FC  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043E800  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043E804  FC 26 00 72 */	fmul f1, f6, f1
/* 8043E808  FC 24 08 28 */	fsub f1, f4, f1
/* 8043E80C  FC 63 00 72 */	fmul f3, f3, f1
/* 8043E810  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043E814  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043E818  FC 26 00 72 */	fmul f1, f6, f1
/* 8043E81C  FC 24 08 28 */	fsub f1, f4, f1
/* 8043E820  FC 23 00 72 */	fmul f1, f3, f1
/* 8043E824  FC 26 00 72 */	fmul f1, f6, f1
/* 8043E828  FC 20 08 18 */	frsp f1, f1
/* 8043E82C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8043E830  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8043E834  EC 22 08 28 */	fsubs f1, f2, f1
/* 8043E838  EC 42 08 28 */	fsubs f2, f2, f1
/* 8043E83C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8043E840  40 81 00 54 */	ble lbl_8043E894
/* 8043E844  FC 20 10 34 */	frsqrte f1, f2
/* 8043E848  FC 01 00 72 */	fmul f0, f1, f1
/* 8043E84C  FC 25 00 72 */	fmul f1, f5, f1
/* 8043E850  FC 02 00 32 */	fmul f0, f2, f0
/* 8043E854  FC 04 00 28 */	fsub f0, f4, f0
/* 8043E858  FC 21 00 32 */	fmul f1, f1, f0
/* 8043E85C  FC 01 00 72 */	fmul f0, f1, f1
/* 8043E860  FC 25 00 72 */	fmul f1, f5, f1
/* 8043E864  FC 02 00 32 */	fmul f0, f2, f0
/* 8043E868  FC 04 00 28 */	fsub f0, f4, f0
/* 8043E86C  FC 21 00 32 */	fmul f1, f1, f0
/* 8043E870  FC 01 00 72 */	fmul f0, f1, f1
/* 8043E874  FC 25 00 72 */	fmul f1, f5, f1
/* 8043E878  FC 02 00 32 */	fmul f0, f2, f0
/* 8043E87C  FC 04 00 28 */	fsub f0, f4, f0
/* 8043E880  FC 01 00 32 */	fmul f0, f1, f0
/* 8043E884  FC 02 00 32 */	fmul f0, f2, f0
/* 8043E888  FC 00 00 18 */	frsp f0, f0
/* 8043E88C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8043E890  C0 41 00 08 */	lfs f2, 8(r1)
lbl_8043E894:
/* 8043E894  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043E898  A8 9F 06 22 */	lha r4, 0x622(r31)
/* 8043E89C  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 8043E8A0  38 7F 06 1C */	addi r3, r31, 0x61c
/* 8043E8A4  C0 05 00 00 */	lfs f0, 0(r5)
/* 8043E8A8  38 A0 00 E3 */	li r5, 0xe3
/* 8043E8AC  38 C0 00 2D */	li r6, 0x2d
/* 8043E8B0  EC 20 10 28 */	fsubs f1, f0, f2
/* 8043E8B4  4B F7 CA 5D */	bl add_calc_short_angle2
/* 8043E8B8  3C C0 80 64 */	lis r6, lit_666@ha /* 0x806442AC@ha */
/* 8043E8BC  3C A0 80 64 */	lis r5, lit_1068@ha /* 0x80644308@ha */
/* 8043E8C0  3C 80 80 64 */	lis r4, lit_526@ha /* 0x80644264@ha */
/* 8043E8C4  C0 26 42 AC */	lfs f1, lit_666@l(r6)  /* 0x806442AC@l */
/* 8043E8C8  C0 45 43 08 */	lfs f2, lit_1068@l(r5)  /* 0x80644308@l */
/* 8043E8CC  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 8043E8D0  C0 64 42 64 */	lfs f3, lit_526@l(r4)  /* 0x80644264@l */
/* 8043E8D4  4B F7 C9 C1 */	bl add_calc2
/* 8043E8D8  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 8043E8DC  C0 3F 05 F0 */	lfs f1, 0x5f0(r31)
/* 8043E8E0  C0 43 42 68 */	lfs f2, lit_527@l(r3)  /* 0x80644268@l */
/* 8043E8E4  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 8043E8E8  C0 7F 05 EC */	lfs f3, 0x5ec(r31)
/* 8043E8EC  4B F7 C9 A9 */	bl add_calc2
/* 8043E8F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8043E8F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8043E8F8  7C 08 03 A6 */	mtlr r0
/* 8043E8FC  38 21 00 20 */	addi r1, r1, 0x20
/* 8043E900  4E 80 00 20 */	blr 
