lbl_80456F20:
/* 80456F20  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80456F24  7C 08 02 A6 */	mflr r0
/* 80456F28  3C C0 80 64 */	lis r6, lit_1712@ha /* 0x80644368@ha */
/* 80456F2C  3C E0 80 64 */	lis r7, lit_6874@ha /* 0x80644440@ha */
/* 80456F30  90 01 00 34 */	stw r0, 0x34(r1)
/* 80456F34  3C 00 43 30 */	lis r0, 0x4330
/* 80456F38  39 46 43 68 */	addi r10, r6, lit_1712@l /* 0x80644368@l */
/* 80456F3C  39 67 44 40 */	addi r11, r7, lit_6874@l /* 0x80644440@l */
/* 80456F40  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80456F44  3C A0 81 16 */	lis r5, debug_mode@ha /* 0x81166138@ha */
/* 80456F48  C0 4A 00 00 */	lfs f2, 0(r10)
/* 80456F4C  7C 9F 23 78 */	mr r31, r4
/* 80456F50  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80456F54  7C 7E 1B 78 */	mr r30, r3
/* 80456F58  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80456F5C  C0 AB 00 00 */	lfs f5, 0(r11)
/* 80456F60  80 A5 61 38 */	lwz r5, debug_mode@l(r5)  /* 0x81166138@l */
/* 80456F64  39 23 42 8C */	addi r9, r3, lit_570@l /* 0x8064428C@l */
/* 80456F68  90 01 00 10 */	stw r0, 0x10(r1)
/* 80456F6C  A8 65 1B 52 */	lha r3, 0x1b52(r5)
/* 80456F70  3C A0 80 64 */	lis r5, lit_8451@ha /* 0x806444C8@ha */
/* 80456F74  39 05 44 C8 */	addi r8, r5, lit_8451@l /* 0x806444C8@l */
/* 80456F78  C8 29 00 00 */	lfd f1, 0(r9)
/* 80456F7C  6C 66 80 00 */	xoris r6, r3, 0x8000
/* 80456F80  3C 60 80 64 */	lis r3, lit_6507@ha /* 0x8064442C@ha */
/* 80456F84  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80456F88  38 E3 44 2C */	addi r7, r3, lit_6507@l /* 0x8064442C@l */
/* 80456F8C  3C A0 80 64 */	lis r5, lit_1068@ha /* 0x80644308@ha */
/* 80456F90  C0 DE 05 D4 */	lfs f6, 0x5d4(r30)
/* 80456F94  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80456F98  3C 60 80 64 */	lis r3, lit_666@ha /* 0x806442AC@ha */
/* 80456F9C  38 C5 43 08 */	addi r6, r5, lit_1068@l /* 0x80644308@l */
/* 80456FA0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80456FA4  38 A3 42 AC */	addi r5, r3, lit_666@l /* 0x806442AC@l */
/* 80456FA8  C0 28 00 00 */	lfs f1, 0(r8)
/* 80456FAC  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 80456FB0  C0 65 00 00 */	lfs f3, 0(r5)
/* 80456FB4  EC 82 00 32 */	fmuls f4, f2, f0
/* 80456FB8  C0 07 00 00 */	lfs f0, 0(r7)
/* 80456FBC  C0 46 00 00 */	lfs f2, 0(r6)
/* 80456FC0  EC 85 20 2A */	fadds f4, f5, f4
/* 80456FC4  EC 86 20 28 */	fsubs f4, f6, f4
/* 80456FC8  D0 9E 05 D4 */	stfs f4, 0x5d4(r30)
/* 80456FCC  C0 9E 05 D4 */	lfs f4, 0x5d4(r30)
/* 80456FD0  EC 24 00 72 */	fmuls f1, f4, f1
/* 80456FD4  D0 3E 05 D4 */	stfs f1, 0x5d4(r30)
/* 80456FD8  C0 3E 05 F0 */	lfs f1, 0x5f0(r30)
/* 80456FDC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80456FE0  D0 1E 05 F0 */	stfs f0, 0x5f0(r30)
/* 80456FE4  C0 3E 05 F0 */	lfs f1, 0x5f0(r30)
/* 80456FE8  4B F6 42 AD */	bl add_calc2
/* 80456FEC  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80456FF0  4B F6 3B 01 */	bl sin_s
/* 80456FF4  C0 5E 05 E8 */	lfs f2, 0x5e8(r30)
/* 80456FF8  C0 1E 05 A0 */	lfs f0, 0x5a0(r30)
/* 80456FFC  EC 22 00 72 */	fmuls f1, f2, f1
/* 80457000  EC 00 08 2A */	fadds f0, f0, f1
/* 80457004  D0 1E 05 A0 */	stfs f0, 0x5a0(r30)
/* 80457008  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 8045700C  4B F6 3A E5 */	bl sin_s
/* 80457010  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 80457014  C0 03 42 68 */	lfs f0, lit_527@l(r3)  /* 0x80644268@l */
/* 80457018  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8045701C  40 81 00 10 */	ble lbl_8045702C
/* 80457020  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 80457024  4B F6 3A CD */	bl sin_s
/* 80457028  48 00 00 08 */	b lbl_80457030
lbl_8045702C:
/* 8045702C  FC 20 00 90 */	fmr f1, f0
lbl_80457030:
/* 80457030  C0 1E 05 D4 */	lfs f0, 0x5d4(r30)
/* 80457034  C0 5E 05 A4 */	lfs f2, 0x5a4(r30)
/* 80457038  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045703C  EC 02 00 2A */	fadds f0, f2, f0
/* 80457040  D0 1E 05 A4 */	stfs f0, 0x5a4(r30)
/* 80457044  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 80457048  4B F6 3A 55 */	bl cos_s
/* 8045704C  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80457050  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80457054  C0 5E 05 A8 */	lfs f2, 0x5a8(r30)
/* 80457058  EC 20 00 72 */	fmuls f1, f0, f1
/* 8045705C  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80457060  EC 22 08 2A */	fadds f1, f2, f1
/* 80457064  D0 3E 05 A8 */	stfs f1, 0x5a8(r30)
/* 80457068  C0 3E 05 D4 */	lfs f1, 0x5d4(r30)
/* 8045706C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80457070  40 81 00 F4 */	ble lbl_80457164
/* 80457074  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 80457078  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 8045707C  38 A3 42 4C */	addi r5, r3, lit_469@l /* 0x8064424C@l */
/* 80457080  3C 00 43 30 */	lis r0, 0x4330
/* 80457084  C9 05 00 00 */	lfd f8, 0(r5)
/* 80457088  39 04 42 54 */	addi r8, r4, lit_470@l /* 0x80644254@l */
/* 8045708C  C8 E5 00 00 */	lfd f7, 0(r5)
/* 80457090  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80457094  FC 20 40 34 */	frsqrte f1, f8
/* 80457098  80 83 61 38 */	lwz r4, debug_mode@l(r3)  /* 0x81166138@l */
/* 8045709C  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 804570A0  3C A0 80 64 */	lis r5, lit_568@ha /* 0x80644284@ha */
/* 804570A4  38 C3 42 8C */	addi r6, r3, lit_570@l /* 0x8064428C@l */
/* 804570A8  A8 64 1B 56 */	lha r3, 0x1b56(r4)
/* 804570AC  FC 01 00 72 */	fmul f0, f1, f1
/* 804570B0  38 E5 42 84 */	addi r7, r5, lit_568@l /* 0x80644284@l */
/* 804570B4  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 804570B8  C8 C8 00 00 */	lfd f6, 0(r8)
/* 804570BC  FC 67 00 72 */	fmul f3, f7, f1
/* 804570C0  90 A1 00 14 */	stw r5, 0x14(r1)
/* 804570C4  FC 08 00 32 */	fmul f0, f8, f0
/* 804570C8  C8 26 00 00 */	lfd f1, 0(r6)
/* 804570CC  3C 80 80 64 */	lis r4, lit_588@ha /* 0x80644298@ha */
/* 804570D0  90 01 00 10 */	stw r0, 0x10(r1)
/* 804570D4  39 04 42 98 */	addi r8, r4, lit_588@l /* 0x80644298@l */
/* 804570D8  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 804570DC  FC 46 00 28 */	fsub f2, f6, f0
/* 804570E0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 804570E4  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 804570E8  38 7E 06 0C */	addi r3, r30, 0x60c
/* 804570EC  EC 20 08 28 */	fsubs f1, f0, f1
/* 804570F0  C0 04 00 00 */	lfs f0, 0(r4)
/* 804570F4  FC A3 00 B2 */	fmul f5, f3, f2
/* 804570F8  C0 47 00 00 */	lfs f2, 0(r7)
/* 804570FC  C0 68 00 00 */	lfs f3, 0(r8)
/* 80457100  38 A0 05 55 */	li r5, 0x555
/* 80457104  EC 22 08 2A */	fadds f1, f2, f1
/* 80457108  38 C0 00 00 */	li r6, 0
/* 8045710C  FC 85 01 72 */	fmul f4, f5, f5
/* 80457110  FC A7 01 72 */	fmul f5, f7, f5
/* 80457114  FC 88 01 32 */	fmul f4, f8, f4
/* 80457118  EC 23 00 72 */	fmuls f1, f3, f1
/* 8045711C  FC 46 20 28 */	fsub f2, f6, f4
/* 80457120  FC 20 08 1E */	fctiwz f1, f1
/* 80457124  FC 65 00 B2 */	fmul f3, f5, f2
/* 80457128  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 8045712C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80457130  FC 43 00 F2 */	fmul f2, f3, f3
/* 80457134  7C 04 07 34 */	extsh r4, r0
/* 80457138  FC 67 00 F2 */	fmul f3, f7, f3
/* 8045713C  FC 28 00 B2 */	fmul f1, f8, f2
/* 80457140  FC 26 08 28 */	fsub f1, f6, f1
/* 80457144  FC 23 00 72 */	fmul f1, f3, f1
/* 80457148  FC 28 00 72 */	fmul f1, f8, f1
/* 8045714C  FC 20 08 18 */	frsp f1, f1
/* 80457150  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80457154  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80457158  EC 20 08 28 */	fsubs f1, f0, f1
/* 8045715C  4B F6 41 B5 */	bl add_calc_short_angle2
/* 80457160  48 00 01 0C */	b lbl_8045726C
lbl_80457164:
/* 80457164  3C 60 80 64 */	lis r3, lit_920@ha /* 0x806442DC@ha */
/* 80457168  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8045716C  38 A3 42 DC */	addi r5, r3, lit_920@l /* 0x806442DC@l */
/* 80457170  38 C0 00 2D */	li r6, 0x2d
/* 80457174  C8 A5 00 00 */	lfd f5, 0(r5)
/* 80457178  38 A4 42 4C */	addi r5, r4, lit_469@l /* 0x8064424C@l */
/* 8045717C  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 80457180  C8 85 00 00 */	lfd f4, 0(r5)
/* 80457184  FC 40 28 34 */	frsqrte f2, f5
/* 80457188  38 83 42 54 */	addi r4, r3, lit_470@l /* 0x80644254@l */
/* 8045718C  C8 64 00 00 */	lfd f3, 0(r4)
/* 80457190  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80457194  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 80457198  38 7E 06 0C */	addi r3, r30, 0x60c
/* 8045719C  FC 22 00 B2 */	fmul f1, f2, f2
/* 804571A0  38 80 00 00 */	li r4, 0
/* 804571A4  38 A0 01 11 */	li r5, 0x111
/* 804571A8  FC 44 00 B2 */	fmul f2, f4, f2
/* 804571AC  FC 25 00 72 */	fmul f1, f5, f1
/* 804571B0  FC 23 08 28 */	fsub f1, f3, f1
/* 804571B4  FC 42 00 72 */	fmul f2, f2, f1
/* 804571B8  FC 22 00 B2 */	fmul f1, f2, f2
/* 804571BC  FC 44 00 B2 */	fmul f2, f4, f2
/* 804571C0  FC 25 00 72 */	fmul f1, f5, f1
/* 804571C4  FC 23 08 28 */	fsub f1, f3, f1
/* 804571C8  FC 42 00 72 */	fmul f2, f2, f1
/* 804571CC  FC 22 00 B2 */	fmul f1, f2, f2
/* 804571D0  FC 44 00 B2 */	fmul f2, f4, f2
/* 804571D4  FC 25 00 72 */	fmul f1, f5, f1
/* 804571D8  FC 23 08 28 */	fsub f1, f3, f1
/* 804571DC  FC 22 00 72 */	fmul f1, f2, f1
/* 804571E0  FC 25 00 72 */	fmul f1, f5, f1
/* 804571E4  FC 20 08 18 */	frsp f1, f1
/* 804571E8  D0 21 00 08 */	stfs f1, 8(r1)
/* 804571EC  C0 21 00 08 */	lfs f1, 8(r1)
/* 804571F0  EC 20 08 28 */	fsubs f1, f0, f1
/* 804571F4  4B F6 41 1D */	bl add_calc_short_angle2
/* 804571F8  7C 60 07 35 */	extsh. r0, r3
/* 804571FC  40 82 00 70 */	bne lbl_8045726C
/* 80457200  A8 1E 06 2E */	lha r0, 0x62e(r30)
/* 80457204  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 80457208  41 82 00 64 */	beq lbl_8045726C
/* 8045720C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80457210  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80457214  D0 1E 05 B0 */	stfs f0, 0x5b0(r30)
/* 80457218  4B C0 5A DD */	bl fqrand
/* 8045721C  A8 7E 00 2E */	lha r3, 0x2e(r30)
/* 80457220  3C 00 43 30 */	lis r0, 0x4330
/* 80457224  90 01 00 18 */	stw r0, 0x18(r1)
/* 80457228  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 8045722C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80457230  C8 44 42 8C */	lfd f2, lit_570@l(r4)  /* 0x8064428C@l */
/* 80457234  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80457238  7F C3 F3 78 */	mr r3, r30
/* 8045723C  A8 1E 00 2C */	lha r0, 0x2c(r30)
/* 80457240  7F E4 FB 78 */	mr r4, r31
/* 80457244  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80457248  EC 00 10 28 */	fsubs f0, f0, f2
/* 8045724C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80457250  FC 00 00 1E */	fctiwz f0, f0
/* 80457254  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80457258  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8045725C  7C 00 2A 14 */	add r0, r0, r5
/* 80457260  B0 1E 06 26 */	sth r0, 0x626(r30)
/* 80457264  4B FF F4 F1 */	bl mfish_zarigani_wait_process_init
/* 80457268  48 00 00 98 */	b lbl_80457300
lbl_8045726C:
/* 8045726C  A8 7E 06 0C */	lha r3, 0x60c(r30)
/* 80457270  3C 00 43 30 */	lis r0, 0x4330
/* 80457274  3C A0 80 64 */	lis r5, lit_570@ha /* 0x8064428C@ha */
/* 80457278  90 01 00 18 */	stw r0, 0x18(r1)
/* 8045727C  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 80457280  3C C0 80 64 */	lis r6, lit_1598@ha /* 0x80644350@ha */
/* 80457284  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80457288  38 85 42 8C */	addi r4, r5, lit_570@l /* 0x8064428C@l */
/* 8045728C  C8 84 00 00 */	lfd f4, 0(r4)
/* 80457290  38 A6 43 50 */	addi r5, r6, lit_1598@l /* 0x80644350@l */
/* 80457294  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80457298  3C 60 80 64 */	lis r3, lit_4775@ha /* 0x806443FC@ha */
/* 8045729C  C0 45 00 00 */	lfs f2, 0(r5)
/* 804572A0  38 C3 43 FC */	addi r6, r3, lit_4775@l /* 0x806443FC@l */
/* 804572A4  EC 20 20 28 */	fsubs f1, f0, f4
/* 804572A8  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 804572AC  C0 06 00 00 */	lfs f0, 0(r6)
/* 804572B0  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 804572B4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804572B8  3C 80 80 64 */	lis r4, lit_527@ha /* 0x80644268@ha */
/* 804572BC  EC 62 00 72 */	fmuls f3, f2, f1
/* 804572C0  3C A0 80 64 */	lis r5, lit_698@ha /* 0x806442B4@ha */
/* 804572C4  C0 24 42 68 */	lfs f1, lit_527@l(r4)  /* 0x80644268@l */
/* 804572C8  C0 45 42 B4 */	lfs f2, lit_698@l(r5)  /* 0x806442B4@l */
/* 804572CC  EC 03 00 24 */	fdivs f0, f3, f0
/* 804572D0  D0 1E 05 B0 */	stfs f0, 0x5b0(r30)
/* 804572D4  80 63 00 00 */	lwz r3, 0(r3)
/* 804572D8  C0 7E 05 B0 */	lfs f3, 0x5b0(r30)
/* 804572DC  A8 03 1B 4C */	lha r0, 0x1b4c(r3)
/* 804572E0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804572E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804572E8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 804572EC  EC 00 20 28 */	fsubs f0, f0, f4
/* 804572F0  EC 01 00 32 */	fmuls f0, f1, f0
/* 804572F4  EC 02 00 2A */	fadds f0, f2, f0
/* 804572F8  EC 03 00 32 */	fmuls f0, f3, f0
/* 804572FC  D0 1E 05 B0 */	stfs f0, 0x5b0(r30)
lbl_80457300:
/* 80457300  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80457304  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80457308  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8045730C  7C 08 03 A6 */	mtlr r0
/* 80457310  38 21 00 30 */	addi r1, r1, 0x30
/* 80457314  4E 80 00 20 */	blr 
