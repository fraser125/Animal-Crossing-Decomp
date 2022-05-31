lbl_804E8770:
/* 804E8770  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E8774  7C 08 02 A6 */	mflr r0
/* 804E8778  3C 80 80 64 */	lis r4, lit_1027@ha /* 0x806469F4@ha */
/* 804E877C  3C A0 80 64 */	lis r5, lit_603@ha /* 0x80646564@ha */
/* 804E8780  38 E4 69 F4 */	addi r7, r4, lit_1027@l /* 0x806469F4@l */
/* 804E8784  C0 05 65 64 */	lfs f0, lit_603@l(r5)  /* 0x80646564@l */
/* 804E8788  C8 A7 00 00 */	lfd f5, 0(r7)
/* 804E878C  3C 80 80 64 */	lis r4, lit_1028@ha /* 0x806469FC@ha */
/* 804E8790  38 C4 69 FC */	addi r6, r4, lit_1028@l /* 0x806469FC@l */
/* 804E8794  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E8798  FC 40 28 34 */	frsqrte f2, f5
/* 804E879C  C8 66 00 00 */	lfd f3, 0(r6)
/* 804E87A0  A8 83 0D 18 */	lha r4, 0xd18(r3)
/* 804E87A4  38 63 00 DE */	addi r3, r3, 0xde
/* 804E87A8  C8 87 00 00 */	lfd f4, 0(r7)
/* 804E87AC  38 A0 09 C4 */	li r5, 0x9c4
/* 804E87B0  FC 22 00 B2 */	fmul f1, f2, f2
/* 804E87B4  38 C0 00 32 */	li r6, 0x32
/* 804E87B8  FC 44 00 B2 */	fmul f2, f4, f2
/* 804E87BC  FC 25 00 72 */	fmul f1, f5, f1
/* 804E87C0  FC 23 08 28 */	fsub f1, f3, f1
/* 804E87C4  FC 42 00 72 */	fmul f2, f2, f1
/* 804E87C8  FC 22 00 B2 */	fmul f1, f2, f2
/* 804E87CC  FC 44 00 B2 */	fmul f2, f4, f2
/* 804E87D0  FC 25 00 72 */	fmul f1, f5, f1
/* 804E87D4  FC 23 08 28 */	fsub f1, f3, f1
/* 804E87D8  FC 42 00 72 */	fmul f2, f2, f1
/* 804E87DC  FC 22 00 B2 */	fmul f1, f2, f2
/* 804E87E0  FC 44 00 B2 */	fmul f2, f4, f2
/* 804E87E4  FC 25 00 72 */	fmul f1, f5, f1
/* 804E87E8  FC 23 08 28 */	fsub f1, f3, f1
/* 804E87EC  FC 22 00 72 */	fmul f1, f2, f1
/* 804E87F0  FC 25 00 72 */	fmul f1, f5, f1
/* 804E87F4  FC 20 08 18 */	frsp f1, f1
/* 804E87F8  D0 21 00 08 */	stfs f1, 8(r1)
/* 804E87FC  C0 21 00 08 */	lfs f1, 8(r1)
/* 804E8800  EC 20 08 28 */	fsubs f1, f0, f1
/* 804E8804  4B ED 2C 39 */	bl add_calc_short_angle3
/* 804E8808  7C 60 07 34 */	extsh r0, r3
/* 804E880C  7C 00 00 34 */	cntlzw r0, r0
/* 804E8810  54 03 D9 7E */	srwi r3, r0, 5
/* 804E8814  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E8818  7C 08 03 A6 */	mtlr r0
/* 804E881C  38 21 00 10 */	addi r1, r1, 0x10
/* 804E8820  4E 80 00 20 */	blr 
