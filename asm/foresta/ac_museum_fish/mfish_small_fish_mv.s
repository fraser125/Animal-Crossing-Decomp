lbl_80446FE0:
/* 80446FE0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80446FE4  7C 08 02 A6 */	mflr r0
/* 80446FE8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80446FEC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80446FF0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80446FF4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80446FF8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80446FFC  7C 7E 1B 78 */	mr r30, r3
/* 80447000  7C 9F 23 78 */	mr r31, r4
/* 80447004  81 83 00 34 */	lwz r12, 0x34(r3)
/* 80447008  7D 89 03 A6 */	mtctr r12
/* 8044700C  4E 80 04 21 */	bctrl 
/* 80447010  3C 60 80 64 */	lis r3, lit_665@ha /* 0x806442A4@ha */
/* 80447014  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 80447018  38 A3 42 A4 */	addi r5, r3, lit_665@l /* 0x806442A4@l */
/* 8044701C  C8 A4 42 4C */	lfd f5, lit_469@l(r4)  /* 0x8064424C@l */
/* 80447020  C8 C5 00 00 */	lfd f6, 0(r5)
/* 80447024  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80447028  38 A3 42 54 */	addi r5, r3, lit_470@l /* 0x80644254@l */
/* 8044702C  FC 60 30 34 */	frsqrte f3, f6
/* 80447030  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80447034  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 80447038  C8 85 00 00 */	lfd f4, 0(r5)
/* 8044703C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80447040  C0 44 00 00 */	lfs f2, 0(r4)
/* 80447044  FC 23 00 F2 */	fmul f1, f3, f3
/* 80447048  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8044704C  FC 65 00 F2 */	fmul f3, f5, f3
/* 80447050  FC 26 00 72 */	fmul f1, f6, f1
/* 80447054  FC 24 08 28 */	fsub f1, f4, f1
/* 80447058  FC 63 00 72 */	fmul f3, f3, f1
/* 8044705C  FC 23 00 F2 */	fmul f1, f3, f3
/* 80447060  FC 65 00 F2 */	fmul f3, f5, f3
/* 80447064  FC 26 00 72 */	fmul f1, f6, f1
/* 80447068  FC 24 08 28 */	fsub f1, f4, f1
/* 8044706C  FC 63 00 72 */	fmul f3, f3, f1
/* 80447070  FC 23 00 F2 */	fmul f1, f3, f3
/* 80447074  FC 65 00 F2 */	fmul f3, f5, f3
/* 80447078  FC 26 00 72 */	fmul f1, f6, f1
/* 8044707C  FC 24 08 28 */	fsub f1, f4, f1
/* 80447080  FC 23 00 72 */	fmul f1, f3, f1
/* 80447084  FC 26 00 72 */	fmul f1, f6, f1
/* 80447088  FC 20 08 18 */	frsp f1, f1
/* 8044708C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80447090  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80447094  EC 22 08 28 */	fsubs f1, f2, f1
/* 80447098  EC 42 08 28 */	fsubs f2, f2, f1
/* 8044709C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804470A0  40 81 00 54 */	ble lbl_804470F4
/* 804470A4  FC 20 10 34 */	frsqrte f1, f2
/* 804470A8  FC 01 00 72 */	fmul f0, f1, f1
/* 804470AC  FC 25 00 72 */	fmul f1, f5, f1
/* 804470B0  FC 02 00 32 */	fmul f0, f2, f0
/* 804470B4  FC 04 00 28 */	fsub f0, f4, f0
/* 804470B8  FC 21 00 32 */	fmul f1, f1, f0
/* 804470BC  FC 01 00 72 */	fmul f0, f1, f1
/* 804470C0  FC 25 00 72 */	fmul f1, f5, f1
/* 804470C4  FC 02 00 32 */	fmul f0, f2, f0
/* 804470C8  FC 04 00 28 */	fsub f0, f4, f0
/* 804470CC  FC 21 00 32 */	fmul f1, f1, f0
/* 804470D0  FC 01 00 72 */	fmul f0, f1, f1
/* 804470D4  FC 25 00 72 */	fmul f1, f5, f1
/* 804470D8  FC 02 00 32 */	fmul f0, f2, f0
/* 804470DC  FC 04 00 28 */	fsub f0, f4, f0
/* 804470E0  FC 01 00 32 */	fmul f0, f1, f0
/* 804470E4  FC 02 00 32 */	fmul f0, f2, f0
/* 804470E8  FC 00 00 18 */	frsp f0, f0
/* 804470EC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804470F0  C0 41 00 14 */	lfs f2, 0x14(r1)
lbl_804470F4:
/* 804470F4  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 804470F8  A8 9E 06 12 */	lha r4, 0x612(r30)
/* 804470FC  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 80447100  38 7E 06 0C */	addi r3, r30, 0x60c
/* 80447104  C0 05 00 00 */	lfs f0, 0(r5)
/* 80447108  38 A0 01 3E */	li r5, 0x13e
/* 8044710C  38 C0 00 2D */	li r6, 0x2d
/* 80447110  EC 20 10 28 */	fsubs f1, f0, f2
/* 80447114  4B F7 41 FD */	bl add_calc_short_angle2
/* 80447118  3C 80 80 64 */	lis r4, lit_1680@ha /* 0x8064435C@ha */
/* 8044711C  3C A0 80 64 */	lis r5, lit_469@ha /* 0x8064424C@ha */
/* 80447120  38 C4 43 5C */	addi r6, r4, lit_1680@l /* 0x8064435C@l */
/* 80447124  C8 A5 42 4C */	lfd f5, lit_469@l(r5)  /* 0x8064424C@l */
/* 80447128  C8 C6 00 00 */	lfd f6, 0(r6)
/* 8044712C  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 80447130  38 C4 42 54 */	addi r6, r4, lit_470@l /* 0x80644254@l */
/* 80447134  B0 7E 06 1E */	sth r3, 0x61e(r30)
/* 80447138  FC 60 30 34 */	frsqrte f3, f6
/* 8044713C  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 80447140  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 80447144  C8 86 00 00 */	lfd f4, 0(r6)
/* 80447148  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 8044714C  C0 45 00 00 */	lfs f2, 0(r5)
/* 80447150  FC 23 00 F2 */	fmul f1, f3, f3
/* 80447154  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 80447158  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044715C  FC 26 00 72 */	fmul f1, f6, f1
/* 80447160  FC 24 08 28 */	fsub f1, f4, f1
/* 80447164  FC 63 00 72 */	fmul f3, f3, f1
/* 80447168  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044716C  FC 65 00 F2 */	fmul f3, f5, f3
/* 80447170  FC 26 00 72 */	fmul f1, f6, f1
/* 80447174  FC 24 08 28 */	fsub f1, f4, f1
/* 80447178  FC 63 00 72 */	fmul f3, f3, f1
/* 8044717C  FC 23 00 F2 */	fmul f1, f3, f3
/* 80447180  FC 65 00 F2 */	fmul f3, f5, f3
/* 80447184  FC 26 00 72 */	fmul f1, f6, f1
/* 80447188  FC 24 08 28 */	fsub f1, f4, f1
/* 8044718C  FC 23 00 72 */	fmul f1, f3, f1
/* 80447190  FC 26 00 72 */	fmul f1, f6, f1
/* 80447194  FC 20 08 18 */	frsp f1, f1
/* 80447198  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8044719C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 804471A0  EC 22 08 28 */	fsubs f1, f2, f1
/* 804471A4  EC 42 08 28 */	fsubs f2, f2, f1
/* 804471A8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804471AC  40 81 00 54 */	ble lbl_80447200
/* 804471B0  FC 20 10 34 */	frsqrte f1, f2
/* 804471B4  FC 01 00 72 */	fmul f0, f1, f1
/* 804471B8  FC 25 00 72 */	fmul f1, f5, f1
/* 804471BC  FC 02 00 32 */	fmul f0, f2, f0
/* 804471C0  FC 04 00 28 */	fsub f0, f4, f0
/* 804471C4  FC 21 00 32 */	fmul f1, f1, f0
/* 804471C8  FC 01 00 72 */	fmul f0, f1, f1
/* 804471CC  FC 25 00 72 */	fmul f1, f5, f1
/* 804471D0  FC 02 00 32 */	fmul f0, f2, f0
/* 804471D4  FC 04 00 28 */	fsub f0, f4, f0
/* 804471D8  FC 21 00 32 */	fmul f1, f1, f0
/* 804471DC  FC 01 00 72 */	fmul f0, f1, f1
/* 804471E0  FC 25 00 72 */	fmul f1, f5, f1
/* 804471E4  FC 02 00 32 */	fmul f0, f2, f0
/* 804471E8  FC 04 00 28 */	fsub f0, f4, f0
/* 804471EC  FC 01 00 32 */	fmul f0, f1, f0
/* 804471F0  FC 02 00 32 */	fmul f0, f2, f0
/* 804471F4  FC 00 00 18 */	frsp f0, f0
/* 804471F8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804471FC  C0 41 00 0C */	lfs f2, 0xc(r1)
lbl_80447200:
/* 80447200  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80447204  A8 9E 06 1E */	lha r4, 0x61e(r30)
/* 80447208  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 8044720C  38 7E 06 18 */	addi r3, r30, 0x618
/* 80447210  C0 05 00 00 */	lfs f0, 0(r5)
/* 80447214  38 A0 00 E3 */	li r5, 0xe3
/* 80447218  38 C0 00 2D */	li r6, 0x2d
/* 8044721C  EC 20 10 28 */	fsubs f1, f0, f2
/* 80447220  4B F7 40 F1 */	bl add_calc_short_angle2
/* 80447224  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80447228  C0 3E 05 F0 */	lfs f1, 0x5f0(r30)
/* 8044722C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80447230  40 81 00 20 */	ble lbl_80447250
/* 80447234  3C 80 80 64 */	lis r4, lit_839@ha /* 0x806442D4@ha */
/* 80447238  3C 60 80 64 */	lis r3, lit_666@ha /* 0x806442AC@ha */
/* 8044723C  C0 63 42 AC */	lfs f3, lit_666@l(r3)  /* 0x806442AC@l */
/* 80447240  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 80447244  C0 44 42 D4 */	lfs f2, lit_839@l(r4)  /* 0x806442D4@l */
/* 80447248  4B F7 40 4D */	bl add_calc2
/* 8044724C  48 00 00 1C */	b lbl_80447268
lbl_80447250:
/* 80447250  3C 80 80 64 */	lis r4, lit_527@ha /* 0x80644268@ha */
/* 80447254  3C 60 80 64 */	lis r3, lit_1558@ha /* 0x80644348@ha */
/* 80447258  C0 63 43 48 */	lfs f3, lit_1558@l(r3)  /* 0x80644348@l */
/* 8044725C  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 80447260  C0 44 42 68 */	lfs f2, lit_527@l(r4)  /* 0x80644268@l */
/* 80447264  4B F7 40 31 */	bl add_calc2
lbl_80447268:
/* 80447268  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8044726C  C0 3E 05 F0 */	lfs f1, 0x5f0(r30)
/* 80447270  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80447274  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80447278  40 80 00 B8 */	bge lbl_80447330
/* 8044727C  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 80447280  3C 80 80 64 */	lis r4, lit_666@ha /* 0x806442AC@ha */
/* 80447284  38 A3 42 68 */	addi r5, r3, lit_527@l /* 0x80644268@l */
/* 80447288  C0 44 42 AC */	lfs f2, lit_666@l(r4)  /* 0x806442AC@l */
/* 8044728C  C0 25 00 00 */	lfs f1, 0(r5)
/* 80447290  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 80447294  4B F7 40 45 */	bl add_calc0
/* 80447298  3C 60 80 64 */	lis r3, lit_665@ha /* 0x806442A4@ha */
/* 8044729C  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 804472A0  38 A3 42 A4 */	addi r5, r3, lit_665@l /* 0x806442A4@l */
/* 804472A4  38 C0 00 5B */	li r6, 0x5b
/* 804472A8  C8 A5 00 00 */	lfd f5, 0(r5)
/* 804472AC  38 A4 42 4C */	addi r5, r4, lit_469@l /* 0x8064424C@l */
/* 804472B0  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 804472B4  C8 85 00 00 */	lfd f4, 0(r5)
/* 804472B8  FC 40 28 34 */	frsqrte f2, f5
/* 804472BC  38 83 42 54 */	addi r4, r3, lit_470@l /* 0x80644254@l */
/* 804472C0  C8 64 00 00 */	lfd f3, 0(r4)
/* 804472C4  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 804472C8  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 804472CC  38 7E 06 12 */	addi r3, r30, 0x612
/* 804472D0  FC 22 00 B2 */	fmul f1, f2, f2
/* 804472D4  38 80 00 00 */	li r4, 0
/* 804472D8  38 A0 01 11 */	li r5, 0x111
/* 804472DC  FC 44 00 B2 */	fmul f2, f4, f2
/* 804472E0  FC 25 00 72 */	fmul f1, f5, f1
/* 804472E4  FC 23 08 28 */	fsub f1, f3, f1
/* 804472E8  FC 42 00 72 */	fmul f2, f2, f1
/* 804472EC  FC 22 00 B2 */	fmul f1, f2, f2
/* 804472F0  FC 44 00 B2 */	fmul f2, f4, f2
/* 804472F4  FC 25 00 72 */	fmul f1, f5, f1
/* 804472F8  FC 23 08 28 */	fsub f1, f3, f1
/* 804472FC  FC 42 00 72 */	fmul f2, f2, f1
/* 80447300  FC 22 00 B2 */	fmul f1, f2, f2
/* 80447304  FC 44 00 B2 */	fmul f2, f4, f2
/* 80447308  FC 25 00 72 */	fmul f1, f5, f1
/* 8044730C  FC 23 08 28 */	fsub f1, f3, f1
/* 80447310  FC 22 00 72 */	fmul f1, f2, f1
/* 80447314  FC 25 00 72 */	fmul f1, f5, f1
/* 80447318  FC 20 08 18 */	frsp f1, f1
/* 8044731C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80447320  C0 21 00 08 */	lfs f1, 8(r1)
/* 80447324  EC 20 08 28 */	fsubs f1, f0, f1
/* 80447328  4B F7 3F E9 */	bl add_calc_short_angle2
/* 8044732C  48 00 00 48 */	b lbl_80447374
lbl_80447330:
/* 80447330  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 80447334  7C 60 07 35 */	extsh. r0, r3
/* 80447338  7C 03 00 D0 */	neg r0, r3
/* 8044733C  41 80 00 08 */	blt lbl_80447344
/* 80447340  7C 60 1B 78 */	mr r0, r3
lbl_80447344:
/* 80447344  2C 00 23 8E */	cmpwi r0, 0x238e
/* 80447348  40 81 00 2C */	ble lbl_80447374
/* 8044734C  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 80447350  3C 60 80 64 */	lis r3, lit_839@ha /* 0x806442D4@ha */
/* 80447354  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80447358  38 A3 42 D4 */	addi r5, r3, lit_839@l /* 0x806442D4@l */
/* 8044735C  3C 80 80 64 */	lis r4, lit_527@ha /* 0x80644268@ha */
/* 80447360  C0 45 00 00 */	lfs f2, 0(r5)
/* 80447364  EC 21 00 2A */	fadds f1, f1, f0
/* 80447368  C0 64 42 68 */	lfs f3, lit_527@l(r4)  /* 0x80644268@l */
/* 8044736C  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 80447370  4B F7 3F 25 */	bl add_calc2
lbl_80447374:
/* 80447374  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 80447378  4B F7 37 25 */	bl cos_s
/* 8044737C  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80447380  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80447384  EF E0 00 72 */	fmuls f31, f0, f1
/* 80447388  4B F7 37 69 */	bl sin_s
/* 8044738C  EC 1F 00 72 */	fmuls f0, f31, f1
/* 80447390  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 80447394  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80447398  4B F7 37 05 */	bl cos_s
/* 8044739C  EC 1F 00 72 */	fmuls f0, f31, f1
/* 804473A0  D0 1E 05 D8 */	stfs f0, 0x5d8(r30)
/* 804473A4  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 804473A8  4B F7 37 49 */	bl sin_s
/* 804473AC  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 804473B0  7F C4 F3 78 */	mr r4, r30
/* 804473B4  7F E5 FB 78 */	mr r5, r31
/* 804473B8  38 61 00 1C */	addi r3, r1, 0x1c
/* 804473BC  FC 00 00 50 */	fneg f0, f0
/* 804473C0  EC 00 00 72 */	fmuls f0, f0, f1
/* 804473C4  D0 1E 05 D4 */	stfs f0, 0x5d4(r30)
/* 804473C8  4B FF 03 DD */	bl mfish_get_flow_vec
/* 804473CC  C0 3E 05 D0 */	lfs f1, 0x5d0(r30)
/* 804473D0  7F C3 F3 78 */	mr r3, r30
/* 804473D4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804473D8  7F E4 FB 78 */	mr r4, r31
/* 804473DC  C0 5E 05 A0 */	lfs f2, 0x5a0(r30)
/* 804473E0  EC 01 00 2A */	fadds f0, f1, f0
/* 804473E4  EC 02 00 2A */	fadds f0, f2, f0
/* 804473E8  D0 1E 05 A0 */	stfs f0, 0x5a0(r30)
/* 804473EC  C0 3E 05 D4 */	lfs f1, 0x5d4(r30)
/* 804473F0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804473F4  C0 5E 05 A4 */	lfs f2, 0x5a4(r30)
/* 804473F8  EC 01 00 2A */	fadds f0, f1, f0
/* 804473FC  EC 02 00 2A */	fadds f0, f2, f0
/* 80447400  D0 1E 05 A4 */	stfs f0, 0x5a4(r30)
/* 80447404  C0 3E 05 D8 */	lfs f1, 0x5d8(r30)
/* 80447408  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8044740C  C0 5E 05 A8 */	lfs f2, 0x5a8(r30)
/* 80447410  EC 01 00 2A */	fadds f0, f1, f0
/* 80447414  EC 02 00 2A */	fadds f0, f2, f0
/* 80447418  D0 1E 05 A8 */	stfs f0, 0x5a8(r30)
/* 8044741C  4B FE D1 E1 */	bl mfish_onefish_mv
/* 80447420  A8 1E 06 30 */	lha r0, 0x630(r30)
/* 80447424  2C 00 00 02 */	cmpwi r0, 2
/* 80447428  40 82 00 28 */	bne lbl_80447450
/* 8044742C  3C 60 80 64 */	lis r3, data_80644244@ha /* 0x80644244@ha */
/* 80447430  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 80447434  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80447438  C0 23 42 44 */	lfs f1, data_80644244@l(r3)  /* 0x80644244@l */
/* 8044743C  C0 44 42 60 */	lfs f2, lit_472@l(r4)  /* 0x80644260@l */
/* 80447440  EC 01 00 32 */	fmuls f0, f1, f0
/* 80447444  EC 02 00 2A */	fadds f0, f2, f0
/* 80447448  D0 1E 00 44 */	stfs f0, 0x44(r30)
/* 8044744C  48 00 00 44 */	b lbl_80447490
lbl_80447450:
/* 80447450  3C 60 80 64 */	lis r3, data_80644244@ha /* 0x80644244@ha */
/* 80447454  3C A0 80 64 */	lis r5, lit_471@ha /* 0x8064425C@ha */
/* 80447458  C0 23 42 44 */	lfs f1, data_80644244@l(r3)  /* 0x80644244@l */
/* 8044745C  38 C5 42 5C */	addi r6, r5, lit_471@l /* 0x8064425C@l */
/* 80447460  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80447464  3C 80 80 64 */	lis r4, lit_839@ha /* 0x806442D4@ha */
/* 80447468  38 A4 42 D4 */	addi r5, r4, lit_839@l /* 0x806442D4@l */
/* 8044746C  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 80447470  EC 01 00 32 */	fmuls f0, f1, f0
/* 80447474  C0 86 00 00 */	lfs f4, 0(r6)
/* 80447478  38 83 42 68 */	addi r4, r3, lit_527@l /* 0x80644268@l */
/* 8044747C  C0 45 00 00 */	lfs f2, 0(r5)
/* 80447480  C0 64 00 00 */	lfs f3, 0(r4)
/* 80447484  38 7E 00 44 */	addi r3, r30, 0x44
/* 80447488  EC 24 00 2A */	fadds f1, f4, f0
/* 8044748C  4B F7 3E 09 */	bl add_calc2
lbl_80447490:
/* 80447490  80 BE 05 A0 */	lwz r5, 0x5a0(r30)
/* 80447494  7F C3 F3 78 */	mr r3, r30
/* 80447498  80 1E 05 A4 */	lwz r0, 0x5a4(r30)
/* 8044749C  7F E4 FB 78 */	mr r4, r31
/* 804474A0  90 BE 05 B8 */	stw r5, 0x5b8(r30)
/* 804474A4  90 1E 05 BC */	stw r0, 0x5bc(r30)
/* 804474A8  80 1E 05 A8 */	lwz r0, 0x5a8(r30)
/* 804474AC  90 1E 05 C0 */	stw r0, 0x5c0(r30)
/* 804474B0  4B FE E7 E1 */	bl Museum_Fish_BGCheck
/* 804474B4  3C 60 80 64 */	lis r3, lit_1997@ha /* 0x8064437C@ha */
/* 804474B8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 804474BC  C0 03 43 7C */	lfs f0, lit_1997@l(r3)  /* 0x8064437C@l */
/* 804474C0  C0 5E 05 A4 */	lfs f2, 0x5a4(r30)
/* 804474C4  EC 00 08 2A */	fadds f0, f0, f1
/* 804474C8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804474CC  40 80 00 20 */	bge lbl_804474EC
/* 804474D0  D0 1E 05 A4 */	stfs f0, 0x5a4(r30)
/* 804474D4  A8 1E 06 12 */	lha r0, 0x612(r30)
/* 804474D8  2C 00 00 00 */	cmpwi r0, 0
/* 804474DC  40 81 00 4C */	ble lbl_80447528
/* 804474E0  38 00 EA AB */	li r0, -5461
/* 804474E4  B0 1E 06 12 */	sth r0, 0x612(r30)
/* 804474E8  48 00 00 40 */	b lbl_80447528
lbl_804474EC:
/* 804474EC  3C 60 80 64 */	lis r3, lit_4929@ha /* 0x80644400@ha */
/* 804474F0  C0 03 44 00 */	lfs f0, lit_4929@l(r3)  /* 0x80644400@l */
/* 804474F4  EC 00 08 28 */	fsubs f0, f0, f1
/* 804474F8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804474FC  40 81 00 20 */	ble lbl_8044751C
/* 80447500  D0 1E 05 A4 */	stfs f0, 0x5a4(r30)
/* 80447504  7F C3 F3 78 */	mr r3, r30
/* 80447508  7F E4 FB 78 */	mr r4, r31
/* 8044750C  4B FF 12 5D */	bl mfish_hamon_make
/* 80447510  38 00 15 55 */	li r0, 0x1555
/* 80447514  B0 1E 06 12 */	sth r0, 0x612(r30)
/* 80447518  48 00 00 10 */	b lbl_80447528
lbl_8044751C:
/* 8044751C  A8 7E 06 26 */	lha r3, 0x626(r30)
/* 80447520  38 03 FF FF */	addi r0, r3, -1
/* 80447524  B0 1E 06 26 */	sth r0, 0x626(r30)
lbl_80447528:
/* 80447528  A8 BE 06 12 */	lha r5, 0x612(r30)
/* 8044752C  A8 9E 00 30 */	lha r4, 0x30(r30)
/* 80447530  7C A0 2B 78 */	mr r0, r5
/* 80447534  7C 04 28 00 */	cmpw r4, r5
/* 80447538  40 80 00 08 */	bge lbl_80447540
/* 8044753C  7C 80 23 78 */	mr r0, r4
lbl_80447540:
/* 80447540  7C 64 00 D0 */	neg r3, r4
/* 80447544  7C 00 07 34 */	extsh r0, r0
/* 80447548  7C 63 07 34 */	extsh r3, r3
/* 8044754C  7C 03 00 00 */	cmpw r3, r0
/* 80447550  40 81 00 08 */	ble lbl_80447558
/* 80447554  48 00 00 14 */	b lbl_80447568
lbl_80447558:
/* 80447558  7C 04 28 00 */	cmpw r4, r5
/* 8044755C  40 80 00 08 */	bge lbl_80447564
/* 80447560  7C 85 23 78 */	mr r5, r4
lbl_80447564:
/* 80447564  7C A3 2B 78 */	mr r3, r5
lbl_80447568:
/* 80447568  B0 7E 06 12 */	sth r3, 0x612(r30)
/* 8044756C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80447570  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80447574  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80447578  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8044757C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80447580  7C 08 03 A6 */	mtlr r0
/* 80447584  38 21 00 40 */	addi r1, r1, 0x40
/* 80447588  4E 80 00 20 */	blr 
