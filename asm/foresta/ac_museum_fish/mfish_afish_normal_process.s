lbl_80438FEC:
/* 80438FEC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80438FF0  7C 08 02 A6 */	mflr r0
/* 80438FF4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80438FF8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80438FFC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80439000  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80439004  7C 7F 1B 78 */	mr r31, r3
/* 80439008  A8 63 06 32 */	lha r3, 0x632(r3)
/* 8043900C  2C 03 0E 38 */	cmpwi r3, 0xe38
/* 80439010  40 81 01 08 */	ble lbl_80439118
/* 80439014  38 63 F1 C8 */	addi r3, r3, -3640
/* 80439018  38 00 01 6C */	li r0, 0x16c
/* 8043901C  7C 83 03 D6 */	divw r4, r3, r0
/* 80439020  3C A0 80 64 */	lis r5, lit_1557@ha /* 0x80644344@ha */
/* 80439024  3C 00 43 30 */	lis r0, 0x4330
/* 80439028  C0 65 43 44 */	lfs f3, lit_1557@l(r5)  /* 0x80644344@l */
/* 8043902C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80439030  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80439034  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80439038  C8 23 42 8C */	lfd f1, lit_570@l(r3)  /* 0x8064428C@l */
/* 8043903C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80439040  3C 80 80 64 */	lis r4, lit_1556@ha /* 0x80644340@ha */
/* 80439044  38 C4 43 40 */	addi r6, r4, lit_1556@l /* 0x80644340@l */
/* 80439048  3C 60 80 64 */	lis r3, lit_1558@ha /* 0x80644348@ha */
/* 8043904C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80439050  3C 80 80 64 */	lis r4, lit_1068@ha /* 0x80644308@ha */
/* 80439054  38 A4 43 08 */	addi r5, r4, lit_1068@l /* 0x80644308@l */
/* 80439058  EC 00 08 28 */	fsubs f0, f0, f1
/* 8043905C  38 83 43 48 */	addi r4, r3, lit_1558@l /* 0x80644348@l */
/* 80439060  C0 26 00 00 */	lfs f1, 0(r6)
/* 80439064  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 80439068  C0 45 00 00 */	lfs f2, 0(r5)
/* 8043906C  EC 03 00 32 */	fmuls f0, f3, f0
/* 80439070  C0 64 00 00 */	lfs f3, 0(r4)
/* 80439074  EC 21 00 2A */	fadds f1, f1, f0
/* 80439078  4B F8 22 1D */	bl add_calc2
/* 8043907C  3C 60 80 64 */	lis r3, lit_665@ha /* 0x806442A4@ha */
/* 80439080  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 80439084  38 A3 42 A4 */	addi r5, r3, lit_665@l /* 0x806442A4@l */
/* 80439088  C0 1F 05 EC */	lfs f0, 0x5ec(r31)
/* 8043908C  C9 25 00 00 */	lfd f9, 0(r5)
/* 80439090  38 C4 42 4C */	addi r6, r4, lit_469@l /* 0x8064424C@l */
/* 80439094  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80439098  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8043909C  FC 60 48 34 */	frsqrte f3, f9
/* 804390A0  38 A3 42 54 */	addi r5, r3, lit_470@l /* 0x80644254@l */
/* 804390A4  C9 06 00 00 */	lfd f8, 0(r6)
/* 804390A8  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 804390AC  C0 43 42 5C */	lfs f2, lit_471@l(r3)  /* 0x8064425C@l */
/* 804390B0  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 804390B4  FC 23 00 F2 */	fmul f1, f3, f3
/* 804390B8  C8 C5 00 00 */	lfd f6, 0(r5)
/* 804390BC  C0 84 42 60 */	lfs f4, lit_472@l(r4)  /* 0x80644260@l */
/* 804390C0  FC E8 00 F2 */	fmul f7, f8, f3
/* 804390C4  FC A9 00 72 */	fmul f5, f9, f1
/* 804390C8  C0 3F 05 F0 */	lfs f1, 0x5f0(r31)
/* 804390CC  EC 62 00 32 */	fmuls f3, f2, f0
/* 804390D0  FC 06 28 28 */	fsub f0, f6, f5
/* 804390D4  FC 47 00 32 */	fmul f2, f7, f0
/* 804390D8  FC 02 00 B2 */	fmul f0, f2, f2
/* 804390DC  FC 48 00 B2 */	fmul f2, f8, f2
/* 804390E0  FC 09 00 32 */	fmul f0, f9, f0
/* 804390E4  FC 06 00 28 */	fsub f0, f6, f0
/* 804390E8  FC 42 00 32 */	fmul f2, f2, f0
/* 804390EC  FC 02 00 B2 */	fmul f0, f2, f2
/* 804390F0  FC 48 00 B2 */	fmul f2, f8, f2
/* 804390F4  FC 09 00 32 */	fmul f0, f9, f0
/* 804390F8  FC 06 00 28 */	fsub f0, f6, f0
/* 804390FC  FC 02 00 32 */	fmul f0, f2, f0
/* 80439100  FC 09 00 32 */	fmul f0, f9, f0
/* 80439104  FC 00 00 18 */	frsp f0, f0
/* 80439108  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8043910C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80439110  EC 44 00 28 */	fsubs f2, f4, f0
/* 80439114  4B F8 21 81 */	bl add_calc2
lbl_80439118:
/* 80439118  3C 60 80 64 */	lis r3, lit_665@ha /* 0x806442A4@ha */
/* 8043911C  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 80439120  38 A3 42 A4 */	addi r5, r3, lit_665@l /* 0x806442A4@l */
/* 80439124  C8 A4 42 4C */	lfd f5, lit_469@l(r4)  /* 0x8064424C@l */
/* 80439128  C8 C5 00 00 */	lfd f6, 0(r5)
/* 8043912C  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80439130  38 A3 42 54 */	addi r5, r3, lit_470@l /* 0x80644254@l */
/* 80439134  FC 60 30 34 */	frsqrte f3, f6
/* 80439138  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043913C  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 80439140  C8 85 00 00 */	lfd f4, 0(r5)
/* 80439144  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80439148  C0 44 00 00 */	lfs f2, 0(r4)
/* 8043914C  FC 23 00 F2 */	fmul f1, f3, f3
/* 80439150  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80439154  FC 65 00 F2 */	fmul f3, f5, f3
/* 80439158  FC 26 00 72 */	fmul f1, f6, f1
/* 8043915C  FC 24 08 28 */	fsub f1, f4, f1
/* 80439160  FC 63 00 72 */	fmul f3, f3, f1
/* 80439164  FC 23 00 F2 */	fmul f1, f3, f3
/* 80439168  FC 65 00 F2 */	fmul f3, f5, f3
/* 8043916C  FC 26 00 72 */	fmul f1, f6, f1
/* 80439170  FC 24 08 28 */	fsub f1, f4, f1
/* 80439174  FC 63 00 72 */	fmul f3, f3, f1
/* 80439178  FC 23 00 F2 */	fmul f1, f3, f3
/* 8043917C  FC 65 00 F2 */	fmul f3, f5, f3
/* 80439180  FC 26 00 72 */	fmul f1, f6, f1
/* 80439184  FC 24 08 28 */	fsub f1, f4, f1
/* 80439188  FC 23 00 72 */	fmul f1, f3, f1
/* 8043918C  FC 26 00 72 */	fmul f1, f6, f1
/* 80439190  FC 20 08 18 */	frsp f1, f1
/* 80439194  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80439198  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8043919C  EC 22 08 28 */	fsubs f1, f2, f1
/* 804391A0  EC 42 08 28 */	fsubs f2, f2, f1
/* 804391A4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804391A8  40 81 00 54 */	ble lbl_804391FC
/* 804391AC  FC 20 10 34 */	frsqrte f1, f2
/* 804391B0  FC 01 00 72 */	fmul f0, f1, f1
/* 804391B4  FC 25 00 72 */	fmul f1, f5, f1
/* 804391B8  FC 02 00 32 */	fmul f0, f2, f0
/* 804391BC  FC 04 00 28 */	fsub f0, f4, f0
/* 804391C0  FC 21 00 32 */	fmul f1, f1, f0
/* 804391C4  FC 01 00 72 */	fmul f0, f1, f1
/* 804391C8  FC 25 00 72 */	fmul f1, f5, f1
/* 804391CC  FC 02 00 32 */	fmul f0, f2, f0
/* 804391D0  FC 04 00 28 */	fsub f0, f4, f0
/* 804391D4  FC 21 00 32 */	fmul f1, f1, f0
/* 804391D8  FC 01 00 72 */	fmul f0, f1, f1
/* 804391DC  FC 25 00 72 */	fmul f1, f5, f1
/* 804391E0  FC 02 00 32 */	fmul f0, f2, f0
/* 804391E4  FC 04 00 28 */	fsub f0, f4, f0
/* 804391E8  FC 01 00 32 */	fmul f0, f1, f0
/* 804391EC  FC 02 00 32 */	fmul f0, f2, f0
/* 804391F0  FC 00 00 18 */	frsp f0, f0
/* 804391F4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804391F8  C0 41 00 18 */	lfs f2, 0x18(r1)
lbl_804391FC:
/* 804391FC  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 80439200  38 7F 06 32 */	addi r3, r31, 0x632
/* 80439204  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 80439208  38 80 00 00 */	li r4, 0
/* 8043920C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80439210  38 A0 00 88 */	li r5, 0x88
/* 80439214  38 C0 00 2D */	li r6, 0x2d
/* 80439218  EC 20 10 28 */	fsubs f1, f0, f2
/* 8043921C  4B F8 20 F5 */	bl add_calc_short_angle2
/* 80439220  3C 60 80 64 */	lis r3, lit_665@ha /* 0x806442A4@ha */
/* 80439224  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 80439228  38 A3 42 A4 */	addi r5, r3, lit_665@l /* 0x806442A4@l */
/* 8043922C  C8 A4 42 4C */	lfd f5, lit_469@l(r4)  /* 0x8064424C@l */
/* 80439230  C8 C5 00 00 */	lfd f6, 0(r5)
/* 80439234  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80439238  38 A3 42 54 */	addi r5, r3, lit_470@l /* 0x80644254@l */
/* 8043923C  C0 FF 05 E8 */	lfs f7, 0x5e8(r31)
/* 80439240  FC 20 30 34 */	frsqrte f1, f6
/* 80439244  3C 60 80 64 */	lis r3, lit_1145@ha /* 0x80644328@ha */
/* 80439248  38 C3 43 28 */	addi r6, r3, lit_1145@l /* 0x80644328@l */
/* 8043924C  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80439250  C1 06 00 00 */	lfs f8, 0(r6)
/* 80439254  3C 60 80 64 */	lis r3, lit_1559@ha /* 0x8064434C@ha */
/* 80439258  FC 01 00 72 */	fmul f0, f1, f1
/* 8043925C  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80439260  38 E3 43 4C */	addi r7, r3, lit_1559@l /* 0x8064434C@l */
/* 80439264  3C 60 80 64 */	lis r3, lit_588@ha /* 0x80644298@ha */
/* 80439268  39 03 42 98 */	addi r8, r3, lit_588@l /* 0x80644298@l */
/* 8043926C  EC E8 01 F2 */	fmuls f7, f8, f7
/* 80439270  EC 43 10 2A */	fadds f2, f3, f2
/* 80439274  C8 85 00 00 */	lfd f4, 0(r5)
/* 80439278  FC 06 00 32 */	fmul f0, f6, f0
/* 8043927C  C1 07 00 00 */	lfs f8, 0(r7)
/* 80439280  C1 28 00 00 */	lfs f9, 0(r8)
/* 80439284  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 80439288  EC E7 10 24 */	fdivs f7, f7, f2
/* 8043928C  C0 44 42 60 */	lfs f2, lit_472@l(r4)  /* 0x80644260@l */
/* 80439290  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80439294  A8 9F 06 36 */	lha r4, 0x636(r31)
/* 80439298  EC E8 38 2A */	fadds f7, f8, f7
/* 8043929C  FC 25 00 72 */	fmul f1, f5, f1
/* 804392A0  FC 04 00 28 */	fsub f0, f4, f0
/* 804392A4  EC E9 01 F2 */	fmuls f7, f9, f7
/* 804392A8  FC 61 00 32 */	fmul f3, f1, f0
/* 804392AC  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 804392B0  FC 23 00 F2 */	fmul f1, f3, f3
/* 804392B4  FC 65 00 F2 */	fmul f3, f5, f3
/* 804392B8  FC 26 00 72 */	fmul f1, f6, f1
/* 804392BC  FC 24 08 28 */	fsub f1, f4, f1
/* 804392C0  FD 03 00 72 */	fmul f8, f3, f1
/* 804392C4  FC 60 38 1E */	fctiwz f3, f7
/* 804392C8  FC 28 02 32 */	fmul f1, f8, f8
/* 804392CC  D8 61 00 28 */	stfd f3, 0x28(r1)
/* 804392D0  FC 65 02 32 */	fmul f3, f5, f8
/* 804392D4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804392D8  FC 26 00 72 */	fmul f1, f6, f1
/* 804392DC  7C 00 07 34 */	extsh r0, r0
/* 804392E0  7C 04 02 14 */	add r0, r4, r0
/* 804392E4  B0 1F 06 36 */	sth r0, 0x636(r31)
/* 804392E8  FC 24 08 28 */	fsub f1, f4, f1
/* 804392EC  FC 23 00 72 */	fmul f1, f3, f1
/* 804392F0  FC 26 00 72 */	fmul f1, f6, f1
/* 804392F4  FC 20 08 18 */	frsp f1, f1
/* 804392F8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 804392FC  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80439300  EC 22 08 28 */	fsubs f1, f2, f1
/* 80439304  EF E2 08 28 */	fsubs f31, f2, f1
/* 80439308  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8043930C  40 81 00 54 */	ble lbl_80439360
/* 80439310  FC 20 F8 34 */	frsqrte f1, f31
/* 80439314  FC 01 00 72 */	fmul f0, f1, f1
/* 80439318  FC 25 00 72 */	fmul f1, f5, f1
/* 8043931C  FC 1F 00 32 */	fmul f0, f31, f0
/* 80439320  FC 04 00 28 */	fsub f0, f4, f0
/* 80439324  FC 21 00 32 */	fmul f1, f1, f0
/* 80439328  FC 01 00 72 */	fmul f0, f1, f1
/* 8043932C  FC 25 00 72 */	fmul f1, f5, f1
/* 80439330  FC 1F 00 32 */	fmul f0, f31, f0
/* 80439334  FC 04 00 28 */	fsub f0, f4, f0
/* 80439338  FC 21 00 32 */	fmul f1, f1, f0
/* 8043933C  FC 01 00 72 */	fmul f0, f1, f1
/* 80439340  FC 25 00 72 */	fmul f1, f5, f1
/* 80439344  FC 1F 00 32 */	fmul f0, f31, f0
/* 80439348  FC 04 00 28 */	fsub f0, f4, f0
/* 8043934C  FC 01 00 32 */	fmul f0, f1, f0
/* 80439350  FC 1F 00 32 */	fmul f0, f31, f0
/* 80439354  FC 00 00 18 */	frsp f0, f0
/* 80439358  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8043935C  C3 E1 00 10 */	lfs f31, 0x10(r1)
lbl_80439360:
/* 80439360  A8 7F 06 36 */	lha r3, 0x636(r31)
/* 80439364  4B F8 17 8D */	bl sin_s
/* 80439368  A8 BF 06 32 */	lha r5, 0x632(r31)
/* 8043936C  3C 00 43 30 */	lis r0, 0x4330
/* 80439370  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80439374  90 01 00 28 */	stw r0, 0x28(r1)
/* 80439378  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8043937C  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80439380  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 80439384  38 C4 42 8C */	addi r6, r4, lit_570@l /* 0x8064428C@l */
/* 80439388  C8 46 00 00 */	lfd f2, 0(r6)
/* 8043938C  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 80439390  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80439394  38 7F 06 0E */	addi r3, r31, 0x60e
/* 80439398  A8 1F 06 14 */	lha r0, 0x614(r31)
/* 8043939C  38 A0 02 AA */	li r5, 0x2aa
/* 804393A0  EC 40 10 28 */	fsubs f2, f0, f2
/* 804393A4  C0 04 00 00 */	lfs f0, 0(r4)
/* 804393A8  38 C0 00 2D */	li r6, 0x2d
/* 804393AC  EC 42 00 72 */	fmuls f2, f2, f1
/* 804393B0  EC 20 F8 28 */	fsubs f1, f0, f31
/* 804393B4  FC 00 10 1E */	fctiwz f0, f2
/* 804393B8  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 804393BC  80 81 00 34 */	lwz r4, 0x34(r1)
/* 804393C0  7C 00 22 14 */	add r0, r0, r4
/* 804393C4  7C 04 07 34 */	extsh r4, r0
/* 804393C8  4B F8 1F 49 */	bl add_calc_short_angle2
/* 804393CC  3C 80 80 64 */	lis r4, lit_920@ha /* 0x806442DC@ha */
/* 804393D0  3C A0 80 64 */	lis r5, lit_469@ha /* 0x8064424C@ha */
/* 804393D4  38 C4 42 DC */	addi r6, r4, lit_920@l /* 0x806442DC@l */
/* 804393D8  C8 A5 42 4C */	lfd f5, lit_469@l(r5)  /* 0x8064424C@l */
/* 804393DC  C8 C6 00 00 */	lfd f6, 0(r6)
/* 804393E0  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 804393E4  38 C4 42 54 */	addi r6, r4, lit_470@l /* 0x80644254@l */
/* 804393E8  B0 7F 06 22 */	sth r3, 0x622(r31)
/* 804393EC  FC 60 30 34 */	frsqrte f3, f6
/* 804393F0  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 804393F4  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 804393F8  C8 86 00 00 */	lfd f4, 0(r6)
/* 804393FC  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 80439400  C0 45 00 00 */	lfs f2, 0(r5)
/* 80439404  FC 23 00 F2 */	fmul f1, f3, f3
/* 80439408  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 8043940C  FC 65 00 F2 */	fmul f3, f5, f3
/* 80439410  FC 26 00 72 */	fmul f1, f6, f1
/* 80439414  FC 24 08 28 */	fsub f1, f4, f1
/* 80439418  FC 63 00 72 */	fmul f3, f3, f1
/* 8043941C  FC 23 00 F2 */	fmul f1, f3, f3
/* 80439420  FC 65 00 F2 */	fmul f3, f5, f3
/* 80439424  FC 26 00 72 */	fmul f1, f6, f1
/* 80439428  FC 24 08 28 */	fsub f1, f4, f1
/* 8043942C  FC 63 00 72 */	fmul f3, f3, f1
/* 80439430  FC 23 00 F2 */	fmul f1, f3, f3
/* 80439434  FC 65 00 F2 */	fmul f3, f5, f3
/* 80439438  FC 26 00 72 */	fmul f1, f6, f1
/* 8043943C  FC 24 08 28 */	fsub f1, f4, f1
/* 80439440  FC 23 00 72 */	fmul f1, f3, f1
/* 80439444  FC 26 00 72 */	fmul f1, f6, f1
/* 80439448  FC 20 08 18 */	frsp f1, f1
/* 8043944C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80439450  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80439454  EC 22 08 28 */	fsubs f1, f2, f1
/* 80439458  EC 42 08 28 */	fsubs f2, f2, f1
/* 8043945C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80439460  40 81 00 54 */	ble lbl_804394B4
/* 80439464  FC 20 10 34 */	frsqrte f1, f2
/* 80439468  FC 01 00 72 */	fmul f0, f1, f1
/* 8043946C  FC 25 00 72 */	fmul f1, f5, f1
/* 80439470  FC 02 00 32 */	fmul f0, f2, f0
/* 80439474  FC 04 00 28 */	fsub f0, f4, f0
/* 80439478  FC 21 00 32 */	fmul f1, f1, f0
/* 8043947C  FC 01 00 72 */	fmul f0, f1, f1
/* 80439480  FC 25 00 72 */	fmul f1, f5, f1
/* 80439484  FC 02 00 32 */	fmul f0, f2, f0
/* 80439488  FC 04 00 28 */	fsub f0, f4, f0
/* 8043948C  FC 21 00 32 */	fmul f1, f1, f0
/* 80439490  FC 01 00 72 */	fmul f0, f1, f1
/* 80439494  FC 25 00 72 */	fmul f1, f5, f1
/* 80439498  FC 02 00 32 */	fmul f0, f2, f0
/* 8043949C  FC 04 00 28 */	fsub f0, f4, f0
/* 804394A0  FC 01 00 32 */	fmul f0, f1, f0
/* 804394A4  FC 02 00 32 */	fmul f0, f2, f0
/* 804394A8  FC 00 00 18 */	frsp f0, f0
/* 804394AC  D0 01 00 08 */	stfs f0, 8(r1)
/* 804394B0  C0 41 00 08 */	lfs f2, 8(r1)
lbl_804394B4:
/* 804394B4  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 804394B8  A8 9F 06 22 */	lha r4, 0x622(r31)
/* 804394BC  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 804394C0  38 7F 06 1C */	addi r3, r31, 0x61c
/* 804394C4  C0 05 00 00 */	lfs f0, 0(r5)
/* 804394C8  38 A0 02 AA */	li r5, 0x2aa
/* 804394CC  38 C0 00 2D */	li r6, 0x2d
/* 804394D0  EC 20 10 28 */	fsubs f1, f0, f2
/* 804394D4  4B F8 1E 3D */	bl add_calc_short_angle2
/* 804394D8  3C 60 80 64 */	lis r3, lit_793@ha /* 0x806442C4@ha */
/* 804394DC  C0 3F 05 E8 */	lfs f1, 0x5e8(r31)
/* 804394E0  C0 03 42 C4 */	lfs f0, lit_793@l(r3)  /* 0x806442C4@l */
/* 804394E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804394E8  40 80 00 1C */	bge lbl_80439504
/* 804394EC  A8 1F 06 32 */	lha r0, 0x632(r31)
/* 804394F0  2C 00 00 B6 */	cmpwi r0, 0xb6
/* 804394F4  40 80 00 10 */	bge lbl_80439504
/* 804394F8  7F E3 FB 78 */	mr r3, r31
/* 804394FC  4B FF F3 CD */	bl mfish_afish_dummy_process_init
/* 80439500  48 00 00 50 */	b lbl_80439550
lbl_80439504:
/* 80439504  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80439508  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 8043950C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80439510  40 81 00 40 */	ble lbl_80439550
/* 80439514  A8 1F 06 2E */	lha r0, 0x62e(r31)
/* 80439518  54 00 06 FD */	rlwinm. r0, r0, 0, 0x1b, 0x1e
/* 8043951C  41 82 00 34 */	beq lbl_80439550
/* 80439520  A8 7F 06 2C */	lha r3, 0x62c(r31)
/* 80439524  A8 1F 06 0E */	lha r0, 0x60e(r31)
/* 80439528  7C 03 00 50 */	subf r0, r3, r0
/* 8043952C  7C 00 07 35 */	extsh. r0, r0
/* 80439530  40 81 00 10 */	ble lbl_80439540
/* 80439534  38 03 50 00 */	addi r0, r3, 0x5000
/* 80439538  B0 1F 06 14 */	sth r0, 0x614(r31)
/* 8043953C  48 00 00 0C */	b lbl_80439548
lbl_80439540:
/* 80439540  38 03 B0 00 */	addi r0, r3, -20480
/* 80439544  B0 1F 06 14 */	sth r0, 0x614(r31)
lbl_80439548:
/* 80439548  38 00 00 00 */	li r0, 0
/* 8043954C  B0 1F 06 32 */	sth r0, 0x632(r31)
lbl_80439550:
/* 80439550  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80439554  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80439558  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8043955C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80439560  7C 08 03 A6 */	mtlr r0
/* 80439564  38 21 00 50 */	addi r1, r1, 0x50
/* 80439568  4E 80 00 20 */	blr 