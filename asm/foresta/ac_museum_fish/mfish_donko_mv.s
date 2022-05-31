lbl_8044DBD4:
/* 8044DBD4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8044DBD8  7C 08 02 A6 */	mflr r0
/* 8044DBDC  90 01 00 54 */	stw r0, 0x54(r1)
/* 8044DBE0  39 61 00 50 */	addi r11, r1, 0x50
/* 8044DBE4  4B C4 D2 F1 */	bl func_8009AED4
/* 8044DBE8  7C 7E 1B 78 */	mr r30, r3
/* 8044DBEC  7C 9F 23 78 */	mr r31, r4
/* 8044DBF0  4B FE 6A 0D */	bl mfish_onefish_mv
/* 8044DBF4  7F C3 F3 78 */	mr r3, r30
/* 8044DBF8  7F E4 FB 78 */	mr r4, r31
/* 8044DBFC  4B FE 94 95 */	bl mfish_body_wind_anime_play
/* 8044DC00  A8 7E 06 28 */	lha r3, 0x628(r30)
/* 8044DC04  A8 9E 06 26 */	lha r4, 0x626(r30)
/* 8044DC08  38 03 FF F6 */	addi r0, r3, -10
/* 8044DC0C  7C 04 00 00 */	cmpw r4, r0
/* 8044DC10  40 81 00 34 */	ble lbl_8044DC44
/* 8044DC14  3C 60 80 64 */	lis r3, lit_840@ha /* 0x806442D8@ha */
/* 8044DC18  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8044DC1C  C0 23 42 D8 */	lfs f1, lit_840@l(r3)  /* 0x806442D8@l */
/* 8044DC20  3C A0 80 64 */	lis r5, lit_471@ha /* 0x8064425C@ha */
/* 8044DC24  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8044DC28  C0 44 42 60 */	lfs f2, lit_472@l(r4)  /* 0x80644260@l */
/* 8044DC2C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8044DC30  C0 25 42 5C */	lfs f1, lit_471@l(r5)  /* 0x8064425C@l */
/* 8044DC34  EC 02 00 2A */	fadds f0, f2, f0
/* 8044DC38  EC 01 00 32 */	fmuls f0, f1, f0
/* 8044DC3C  D0 1E 00 44 */	stfs f0, 0x44(r30)
/* 8044DC40  48 00 00 44 */	b lbl_8044DC84
lbl_8044DC44:
/* 8044DC44  3C 60 80 64 */	lis r3, data_80644244@ha /* 0x80644244@ha */
/* 8044DC48  3C A0 80 64 */	lis r5, lit_974@ha /* 0x806442EC@ha */
/* 8044DC4C  C0 23 42 44 */	lfs f1, data_80644244@l(r3)  /* 0x80644244@l */
/* 8044DC50  38 C5 42 EC */	addi r6, r5, lit_974@l /* 0x806442EC@l */
/* 8044DC54  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8044DC58  3C 80 80 64 */	lis r4, lit_839@ha /* 0x806442D4@ha */
/* 8044DC5C  38 A4 42 D4 */	addi r5, r4, lit_839@l /* 0x806442D4@l */
/* 8044DC60  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 8044DC64  EC 01 00 32 */	fmuls f0, f1, f0
/* 8044DC68  C0 86 00 00 */	lfs f4, 0(r6)
/* 8044DC6C  38 83 42 68 */	addi r4, r3, lit_527@l /* 0x80644268@l */
/* 8044DC70  C0 45 00 00 */	lfs f2, 0(r5)
/* 8044DC74  C0 64 00 00 */	lfs f3, 0(r4)
/* 8044DC78  38 7E 00 44 */	addi r3, r30, 0x44
/* 8044DC7C  EC 24 00 2A */	fadds f1, f4, f0
/* 8044DC80  4B F6 D6 15 */	bl add_calc2
lbl_8044DC84:
/* 8044DC84  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8044DC88  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8044DC8C  D0 1E 05 B0 */	stfs f0, 0x5b0(r30)
/* 8044DC90  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 8044DC94  4B F6 CE 5D */	bl sin_s
/* 8044DC98  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8044DC9C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8044DCA0  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 8044DCA4  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 8044DCA8  4B F6 CD F5 */	bl cos_s
/* 8044DCAC  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8044DCB0  3C C0 80 68 */	lis r6, suisou_pos@ha /* 0x80684E7C@ha */
/* 8044DCB4  3C 60 80 64 */	lis r3, lit_6506@ha /* 0x80644428@ha */
/* 8044DCB8  3C A0 80 64 */	lis r5, lit_1957@ha /* 0x8064436C@ha */
/* 8044DCBC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8044DCC0  38 83 44 28 */	addi r4, r3, lit_6506@l /* 0x80644428@l */
/* 8044DCC4  3C 60 80 64 */	lis r3, lit_6505@ha /* 0x80644424@ha */
/* 8044DCC8  C0 24 00 00 */	lfs f1, 0(r4)
/* 8044DCCC  39 03 44 24 */	addi r8, r3, lit_6505@l /* 0x80644424@l */
/* 8044DCD0  C0 85 43 6C */	lfs f4, lit_1957@l(r5)  /* 0x8064436C@l */
/* 8044DCD4  D0 1E 05 D8 */	stfs f0, 0x5d8(r30)
/* 8044DCD8  3C 60 80 64 */	lis r3, lit_666@ha /* 0x806442AC@ha */
/* 8044DCDC  38 E3 42 AC */	addi r7, r3, lit_666@l /* 0x806442AC@l */
/* 8044DCE0  39 26 4E 7C */	addi r9, r6, suisou_pos@l /* 0x80684E7C@l */
/* 8044DCE4  A8 1E 06 30 */	lha r0, 0x630(r30)
/* 8044DCE8  3C 60 80 64 */	lis r3, lit_6507@ha /* 0x8064442C@ha */
/* 8044DCEC  38 C3 44 2C */	addi r6, r3, lit_6507@l /* 0x8064442C@l */
/* 8044DCF0  C0 68 00 00 */	lfs f3, 0(r8)
/* 8044DCF4  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8044DCF8  C0 5E 05 A0 */	lfs f2, 0x5a0(r30)
/* 8044DCFC  C0 BE 05 D0 */	lfs f5, 0x5d0(r30)
/* 8044DD00  7F C4 F3 78 */	mr r4, r30
/* 8044DD04  7F E5 FB 78 */	mr r5, r31
/* 8044DD08  7C 09 04 2E */	lfsx f0, r9, r0
/* 8044DD0C  7D 09 02 14 */	add r8, r9, r0
/* 8044DD10  38 61 00 24 */	addi r3, r1, 0x24
/* 8044DD14  EC 01 00 2A */	fadds f0, f1, f0
/* 8044DD18  C0 C8 00 08 */	lfs f6, 8(r8)
/* 8044DD1C  C0 27 00 00 */	lfs f1, 0(r7)
/* 8044DD20  EC 66 18 28 */	fsubs f3, f6, f3
/* 8044DD24  C0 DE 05 A8 */	lfs f6, 0x5a8(r30)
/* 8044DD28  EC 42 00 28 */	fsubs f2, f2, f0
/* 8044DD2C  C0 06 00 00 */	lfs f0, 0(r6)
/* 8044DD30  EC C6 18 28 */	fsubs f6, f6, f3
/* 8044DD34  EC 64 00 B2 */	fmuls f3, f4, f2
/* 8044DD38  EC 44 01 B2 */	fmuls f2, f4, f6
/* 8044DD3C  EC 65 18 28 */	fsubs f3, f5, f3
/* 8044DD40  D0 7E 05 D0 */	stfs f3, 0x5d0(r30)
/* 8044DD44  C0 7E 05 D8 */	lfs f3, 0x5d8(r30)
/* 8044DD48  EC 43 10 28 */	fsubs f2, f3, f2
/* 8044DD4C  D0 5E 05 D8 */	stfs f2, 0x5d8(r30)
/* 8044DD50  C0 5E 05 D4 */	lfs f2, 0x5d4(r30)
/* 8044DD54  EC 22 08 28 */	fsubs f1, f2, f1
/* 8044DD58  D0 3E 05 D4 */	stfs f1, 0x5d4(r30)
/* 8044DD5C  C0 3E 05 D4 */	lfs f1, 0x5d4(r30)
/* 8044DD60  EC 01 00 32 */	fmuls f0, f1, f0
/* 8044DD64  D0 1E 05 D4 */	stfs f0, 0x5d4(r30)
/* 8044DD68  4B FE 9A 3D */	bl mfish_get_flow_vec
/* 8044DD6C  7F C3 F3 78 */	mr r3, r30
/* 8044DD70  7F E4 FB 78 */	mr r4, r31
/* 8044DD74  4B FE A4 A5 */	bl mfish_move_smooth
/* 8044DD78  3C 60 80 64 */	lis r3, lit_1066@ha /* 0x806442FC@ha */
/* 8044DD7C  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8044DD80  38 A3 42 FC */	addi r5, r3, lit_1066@l /* 0x806442FC@l */
/* 8044DD84  C8 A4 42 4C */	lfd f5, lit_469@l(r4)  /* 0x8064424C@l */
/* 8044DD88  C8 C5 00 00 */	lfd f6, 0(r5)
/* 8044DD8C  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8044DD90  38 A3 42 54 */	addi r5, r3, lit_470@l /* 0x80644254@l */
/* 8044DD94  C0 5E 05 DC */	lfs f2, 0x5dc(r30)
/* 8044DD98  FC 20 30 34 */	frsqrte f1, f6
/* 8044DD9C  3C 60 80 64 */	lis r3, lit_527@ha /* 0x80644268@ha */
/* 8044DDA0  38 C3 42 68 */	addi r6, r3, lit_527@l /* 0x80644268@l */
/* 8044DDA4  C8 85 00 00 */	lfd f4, 0(r5)
/* 8044DDA8  C1 46 00 00 */	lfs f10, 0(r6)
/* 8044DDAC  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044DDB0  FC 01 00 72 */	fmul f0, f1, f1
/* 8044DDB4  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 8044DDB8  C1 1E 05 D0 */	lfs f8, 0x5d0(r30)
/* 8044DDBC  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8044DDC0  EC EA 00 B2 */	fmuls f7, f10, f2
/* 8044DDC4  C1 3E 05 A0 */	lfs f9, 0x5a0(r30)
/* 8044DDC8  FC 65 00 72 */	fmul f3, f5, f1
/* 8044DDCC  C0 44 00 00 */	lfs f2, 0(r4)
/* 8044DDD0  FC 26 00 32 */	fmul f1, f6, f0
/* 8044DDD4  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8044DDD8  EC E8 38 2A */	fadds f7, f8, f7
/* 8044DDDC  FC 24 08 28 */	fsub f1, f4, f1
/* 8044DDE0  FD 03 00 72 */	fmul f8, f3, f1
/* 8044DDE4  EC 69 38 2A */	fadds f3, f9, f7
/* 8044DDE8  FC 28 02 32 */	fmul f1, f8, f8
/* 8044DDEC  D0 7E 05 A0 */	stfs f3, 0x5a0(r30)
/* 8044DDF0  FC 65 02 32 */	fmul f3, f5, f8
/* 8044DDF4  C0 FE 05 E4 */	lfs f7, 0x5e4(r30)
/* 8044DDF8  FC 26 00 72 */	fmul f1, f6, f1
/* 8044DDFC  C1 1E 05 D8 */	lfs f8, 0x5d8(r30)
/* 8044DE00  C1 3E 05 A8 */	lfs f9, 0x5a8(r30)
/* 8044DE04  EC EA 01 F2 */	fmuls f7, f10, f7
/* 8044DE08  FC 24 08 28 */	fsub f1, f4, f1
/* 8044DE0C  EC E8 38 2A */	fadds f7, f8, f7
/* 8044DE10  FD 03 00 72 */	fmul f8, f3, f1
/* 8044DE14  EC 69 38 2A */	fadds f3, f9, f7
/* 8044DE18  FC 28 02 32 */	fmul f1, f8, f8
/* 8044DE1C  D0 7E 05 A8 */	stfs f3, 0x5a8(r30)
/* 8044DE20  FC 65 02 32 */	fmul f3, f5, f8
/* 8044DE24  C1 1E 05 A4 */	lfs f8, 0x5a4(r30)
/* 8044DE28  FC 26 00 72 */	fmul f1, f6, f1
/* 8044DE2C  C0 FE 05 D4 */	lfs f7, 0x5d4(r30)
/* 8044DE30  EC E8 38 2A */	fadds f7, f8, f7
/* 8044DE34  FC 24 08 28 */	fsub f1, f4, f1
/* 8044DE38  D0 FE 05 A4 */	stfs f7, 0x5a4(r30)
/* 8044DE3C  FC 23 00 72 */	fmul f1, f3, f1
/* 8044DE40  FC 26 00 72 */	fmul f1, f6, f1
/* 8044DE44  FC 20 08 18 */	frsp f1, f1
/* 8044DE48  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8044DE4C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8044DE50  EC 22 08 28 */	fsubs f1, f2, f1
/* 8044DE54  EC 42 08 28 */	fsubs f2, f2, f1
/* 8044DE58  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8044DE5C  40 81 00 54 */	ble lbl_8044DEB0
/* 8044DE60  FC 20 10 34 */	frsqrte f1, f2
/* 8044DE64  FC 01 00 72 */	fmul f0, f1, f1
/* 8044DE68  FC 25 00 72 */	fmul f1, f5, f1
/* 8044DE6C  FC 02 00 32 */	fmul f0, f2, f0
/* 8044DE70  FC 04 00 28 */	fsub f0, f4, f0
/* 8044DE74  FC 21 00 32 */	fmul f1, f1, f0
/* 8044DE78  FC 01 00 72 */	fmul f0, f1, f1
/* 8044DE7C  FC 25 00 72 */	fmul f1, f5, f1
/* 8044DE80  FC 02 00 32 */	fmul f0, f2, f0
/* 8044DE84  FC 04 00 28 */	fsub f0, f4, f0
/* 8044DE88  FC 21 00 32 */	fmul f1, f1, f0
/* 8044DE8C  FC 01 00 72 */	fmul f0, f1, f1
/* 8044DE90  FC 25 00 72 */	fmul f1, f5, f1
/* 8044DE94  FC 02 00 32 */	fmul f0, f2, f0
/* 8044DE98  FC 04 00 28 */	fsub f0, f4, f0
/* 8044DE9C  FC 01 00 32 */	fmul f0, f1, f0
/* 8044DEA0  FC 02 00 32 */	fmul f0, f2, f0
/* 8044DEA4  FC 00 00 18 */	frsp f0, f0
/* 8044DEA8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8044DEAC  C0 41 00 1C */	lfs f2, 0x1c(r1)
lbl_8044DEB0:
/* 8044DEB0  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044DEB4  A8 9E 06 14 */	lha r4, 0x614(r30)
/* 8044DEB8  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 8044DEBC  38 7E 06 0E */	addi r3, r30, 0x60e
/* 8044DEC0  C0 05 00 00 */	lfs f0, 0(r5)
/* 8044DEC4  38 A0 02 AA */	li r5, 0x2aa
/* 8044DEC8  38 C0 00 2D */	li r6, 0x2d
/* 8044DECC  EC 20 10 28 */	fsubs f1, f0, f2
/* 8044DED0  4B F6 D4 41 */	bl add_calc_short_angle2
/* 8044DED4  3C 80 80 64 */	lis r4, lit_665@ha /* 0x806442A4@ha */
/* 8044DED8  3C A0 80 64 */	lis r5, lit_469@ha /* 0x8064424C@ha */
/* 8044DEDC  38 C4 42 A4 */	addi r6, r4, lit_665@l /* 0x806442A4@l */
/* 8044DEE0  C8 A5 42 4C */	lfd f5, lit_469@l(r5)  /* 0x8064424C@l */
/* 8044DEE4  C8 C6 00 00 */	lfd f6, 0(r6)
/* 8044DEE8  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 8044DEEC  38 C4 42 54 */	addi r6, r4, lit_470@l /* 0x80644254@l */
/* 8044DEF0  B0 7E 06 22 */	sth r3, 0x622(r30)
/* 8044DEF4  FC 60 30 34 */	frsqrte f3, f6
/* 8044DEF8  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8044DEFC  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 8044DF00  C8 86 00 00 */	lfd f4, 0(r6)
/* 8044DF04  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 8044DF08  C0 45 00 00 */	lfs f2, 0(r5)
/* 8044DF0C  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044DF10  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 8044DF14  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044DF18  FC 26 00 72 */	fmul f1, f6, f1
/* 8044DF1C  FC 24 08 28 */	fsub f1, f4, f1
/* 8044DF20  FC 63 00 72 */	fmul f3, f3, f1
/* 8044DF24  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044DF28  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044DF2C  FC 26 00 72 */	fmul f1, f6, f1
/* 8044DF30  FC 24 08 28 */	fsub f1, f4, f1
/* 8044DF34  FC 63 00 72 */	fmul f3, f3, f1
/* 8044DF38  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044DF3C  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044DF40  FC 26 00 72 */	fmul f1, f6, f1
/* 8044DF44  FC 24 08 28 */	fsub f1, f4, f1
/* 8044DF48  FC 23 00 72 */	fmul f1, f3, f1
/* 8044DF4C  FC 26 00 72 */	fmul f1, f6, f1
/* 8044DF50  FC 20 08 18 */	frsp f1, f1
/* 8044DF54  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8044DF58  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8044DF5C  EC 22 08 28 */	fsubs f1, f2, f1
/* 8044DF60  EC 42 08 28 */	fsubs f2, f2, f1
/* 8044DF64  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8044DF68  40 81 00 54 */	ble lbl_8044DFBC
/* 8044DF6C  FC 20 10 34 */	frsqrte f1, f2
/* 8044DF70  FC 01 00 72 */	fmul f0, f1, f1
/* 8044DF74  FC 25 00 72 */	fmul f1, f5, f1
/* 8044DF78  FC 02 00 32 */	fmul f0, f2, f0
/* 8044DF7C  FC 04 00 28 */	fsub f0, f4, f0
/* 8044DF80  FC 21 00 32 */	fmul f1, f1, f0
/* 8044DF84  FC 01 00 72 */	fmul f0, f1, f1
/* 8044DF88  FC 25 00 72 */	fmul f1, f5, f1
/* 8044DF8C  FC 02 00 32 */	fmul f0, f2, f0
/* 8044DF90  FC 04 00 28 */	fsub f0, f4, f0
/* 8044DF94  FC 21 00 32 */	fmul f1, f1, f0
/* 8044DF98  FC 01 00 72 */	fmul f0, f1, f1
/* 8044DF9C  FC 25 00 72 */	fmul f1, f5, f1
/* 8044DFA0  FC 02 00 32 */	fmul f0, f2, f0
/* 8044DFA4  FC 04 00 28 */	fsub f0, f4, f0
/* 8044DFA8  FC 01 00 32 */	fmul f0, f1, f0
/* 8044DFAC  FC 02 00 32 */	fmul f0, f2, f0
/* 8044DFB0  FC 00 00 18 */	frsp f0, f0
/* 8044DFB4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8044DFB8  C0 41 00 14 */	lfs f2, 0x14(r1)
lbl_8044DFBC:
/* 8044DFBC  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044DFC0  A8 9E 06 22 */	lha r4, 0x622(r30)
/* 8044DFC4  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 8044DFC8  38 7E 06 1C */	addi r3, r30, 0x61c
/* 8044DFCC  C0 05 00 00 */	lfs f0, 0(r5)
/* 8044DFD0  38 A0 01 C7 */	li r5, 0x1c7
/* 8044DFD4  38 C0 00 2D */	li r6, 0x2d
/* 8044DFD8  EC 20 10 28 */	fsubs f1, f0, f2
/* 8044DFDC  4B F6 D3 35 */	bl add_calc_short_angle2
/* 8044DFE0  3C 60 80 64 */	lis r3, lit_1066@ha /* 0x806442FC@ha */
/* 8044DFE4  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8044DFE8  38 A3 42 FC */	addi r5, r3, lit_1066@l /* 0x806442FC@l */
/* 8044DFEC  C8 A4 42 4C */	lfd f5, lit_469@l(r4)  /* 0x8064424C@l */
/* 8044DFF0  C8 C5 00 00 */	lfd f6, 0(r5)
/* 8044DFF4  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8044DFF8  38 A3 42 54 */	addi r5, r3, lit_470@l /* 0x80644254@l */
/* 8044DFFC  FC 60 30 34 */	frsqrte f3, f6
/* 8044E000  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044E004  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 8044E008  C8 85 00 00 */	lfd f4, 0(r5)
/* 8044E00C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8044E010  C0 44 00 00 */	lfs f2, 0(r4)
/* 8044E014  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044E018  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8044E01C  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044E020  FC 26 00 72 */	fmul f1, f6, f1
/* 8044E024  FC 24 08 28 */	fsub f1, f4, f1
/* 8044E028  FC 63 00 72 */	fmul f3, f3, f1
/* 8044E02C  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044E030  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044E034  FC 26 00 72 */	fmul f1, f6, f1
/* 8044E038  FC 24 08 28 */	fsub f1, f4, f1
/* 8044E03C  FC 63 00 72 */	fmul f3, f3, f1
/* 8044E040  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044E044  FC 65 00 F2 */	fmul f3, f5, f3
/* 8044E048  FC 26 00 72 */	fmul f1, f6, f1
/* 8044E04C  FC 24 08 28 */	fsub f1, f4, f1
/* 8044E050  FC 23 00 72 */	fmul f1, f3, f1
/* 8044E054  FC 26 00 72 */	fmul f1, f6, f1
/* 8044E058  FC 20 08 18 */	frsp f1, f1
/* 8044E05C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8044E060  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8044E064  EC 22 08 28 */	fsubs f1, f2, f1
/* 8044E068  EC 42 08 28 */	fsubs f2, f2, f1
/* 8044E06C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8044E070  40 81 00 54 */	ble lbl_8044E0C4
/* 8044E074  FC 20 10 34 */	frsqrte f1, f2
/* 8044E078  FC 01 00 72 */	fmul f0, f1, f1
/* 8044E07C  FC 25 00 72 */	fmul f1, f5, f1
/* 8044E080  FC 02 00 32 */	fmul f0, f2, f0
/* 8044E084  FC 04 00 28 */	fsub f0, f4, f0
/* 8044E088  FC 21 00 32 */	fmul f1, f1, f0
/* 8044E08C  FC 01 00 72 */	fmul f0, f1, f1
/* 8044E090  FC 25 00 72 */	fmul f1, f5, f1
/* 8044E094  FC 02 00 32 */	fmul f0, f2, f0
/* 8044E098  FC 04 00 28 */	fsub f0, f4, f0
/* 8044E09C  FC 21 00 32 */	fmul f1, f1, f0
/* 8044E0A0  FC 01 00 72 */	fmul f0, f1, f1
/* 8044E0A4  FC 25 00 72 */	fmul f1, f5, f1
/* 8044E0A8  FC 02 00 32 */	fmul f0, f2, f0
/* 8044E0AC  FC 04 00 28 */	fsub f0, f4, f0
/* 8044E0B0  FC 01 00 32 */	fmul f0, f1, f0
/* 8044E0B4  FC 02 00 32 */	fmul f0, f2, f0
/* 8044E0B8  FC 00 00 18 */	frsp f0, f0
/* 8044E0BC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8044E0C0  C0 41 00 0C */	lfs f2, 0xc(r1)
lbl_8044E0C4:
/* 8044E0C4  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044E0C8  A8 1E 06 12 */	lha r0, 0x612(r30)
/* 8044E0CC  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 8044E0D0  38 7E 06 0C */	addi r3, r30, 0x60c
/* 8044E0D4  C0 04 00 00 */	lfs f0, 0(r4)
/* 8044E0D8  7C 00 0E 70 */	srawi r0, r0, 1
/* 8044E0DC  7C 04 07 34 */	extsh r4, r0
/* 8044E0E0  38 A0 02 AA */	li r5, 0x2aa
/* 8044E0E4  EC 20 10 28 */	fsubs f1, f0, f2
/* 8044E0E8  38 C0 00 2D */	li r6, 0x2d
/* 8044E0EC  4B F6 D2 25 */	bl add_calc_short_angle2
/* 8044E0F0  A8 9E 06 26 */	lha r4, 0x626(r30)
/* 8044E0F4  38 64 FF FF */	addi r3, r4, -1
/* 8044E0F8  7C 80 07 35 */	extsh. r0, r4
/* 8044E0FC  B0 7E 06 26 */	sth r3, 0x626(r30)
/* 8044E100  40 80 01 0C */	bge lbl_8044E20C
/* 8044E104  4B C0 EB F1 */	bl fqrand
/* 8044E108  A8 9E 00 30 */	lha r4, 0x30(r30)
/* 8044E10C  3C 60 43 30 */	lis r3, 0x4330
/* 8044E110  3C A0 80 64 */	lis r5, lit_570@ha /* 0x8064428C@ha */
/* 8044E114  A8 1E 06 2E */	lha r0, 0x62e(r30)
/* 8044E118  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8044E11C  90 61 00 30 */	stw r3, 0x30(r1)
/* 8044E120  C8 45 42 8C */	lfd f2, lit_570@l(r5)  /* 0x8064428C@l */
/* 8044E124  54 00 06 FD */	rlwinm. r0, r0, 0, 0x1b, 0x1e
/* 8044E128  90 81 00 34 */	stw r4, 0x34(r1)
/* 8044E12C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8044E130  EC 00 10 28 */	fsubs f0, f0, f2
/* 8044E134  EC 00 00 72 */	fmuls f0, f0, f1
/* 8044E138  FC 00 00 1E */	fctiwz f0, f0
/* 8044E13C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8044E140  83 A1 00 3C */	lwz r29, 0x3c(r1)
/* 8044E144  41 82 00 30 */	beq lbl_8044E174
/* 8044E148  A8 1E 06 2C */	lha r0, 0x62c(r30)
/* 8044E14C  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 8044E150  7C 00 18 50 */	subf r0, r0, r3
/* 8044E154  7C 00 07 35 */	extsh. r0, r0
/* 8044E158  40 81 00 10 */	ble lbl_8044E168
/* 8044E15C  7C 03 EA 14 */	add r0, r3, r29
/* 8044E160  B0 1E 06 14 */	sth r0, 0x614(r30)
/* 8044E164  48 00 00 40 */	b lbl_8044E1A4
lbl_8044E168:
/* 8044E168  7C 1D 18 50 */	subf r0, r29, r3
/* 8044E16C  B0 1E 06 14 */	sth r0, 0x614(r30)
/* 8044E170  48 00 00 34 */	b lbl_8044E1A4
lbl_8044E174:
/* 8044E174  4B C0 EB 81 */	bl fqrand
/* 8044E178  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 8044E17C  C0 03 42 5C */	lfs f0, lit_471@l(r3)  /* 0x8064425C@l */
/* 8044E180  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8044E184  40 81 00 14 */	ble lbl_8044E198
/* 8044E188  A8 1E 06 0E */	lha r0, 0x60e(r30)
/* 8044E18C  7C 00 EA 14 */	add r0, r0, r29
/* 8044E190  B0 1E 06 14 */	sth r0, 0x614(r30)
/* 8044E194  48 00 00 10 */	b lbl_8044E1A4
lbl_8044E198:
/* 8044E198  A8 1E 06 0E */	lha r0, 0x60e(r30)
/* 8044E19C  7C 1D 00 50 */	subf r0, r29, r0
/* 8044E1A0  B0 1E 06 14 */	sth r0, 0x614(r30)
lbl_8044E1A4:
/* 8044E1A4  4B C0 EB 51 */	bl fqrand
/* 8044E1A8  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 8044E1AC  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8044E1B0  EC 22 00 72 */	fmuls f1, f2, f1
/* 8044E1B4  EC 00 08 2A */	fadds f0, f0, f1
/* 8044E1B8  D0 1E 05 F0 */	stfs f0, 0x5f0(r30)
/* 8044E1BC  4B C0 EB 39 */	bl fqrand
/* 8044E1C0  A8 7E 00 2E */	lha r3, 0x2e(r30)
/* 8044E1C4  3C 00 43 30 */	lis r0, 0x4330
/* 8044E1C8  90 01 00 38 */	stw r0, 0x38(r1)
/* 8044E1CC  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 8044E1D0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8044E1D4  C8 44 42 8C */	lfd f2, lit_570@l(r4)  /* 0x8064428C@l */
/* 8044E1D8  90 61 00 3C */	stw r3, 0x3c(r1)
/* 8044E1DC  A8 1E 00 2C */	lha r0, 0x2c(r30)
/* 8044E1E0  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8044E1E4  EC 00 10 28 */	fsubs f0, f0, f2
/* 8044E1E8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8044E1EC  FC 00 00 1E */	fctiwz f0, f0
/* 8044E1F0  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8044E1F4  80 61 00 34 */	lwz r3, 0x34(r1)
/* 8044E1F8  7C 00 1A 14 */	add r0, r0, r3
/* 8044E1FC  B0 1E 06 26 */	sth r0, 0x626(r30)
/* 8044E200  A8 1E 06 26 */	lha r0, 0x626(r30)
/* 8044E204  B0 1E 06 28 */	sth r0, 0x628(r30)
/* 8044E208  48 00 00 48 */	b lbl_8044E250
lbl_8044E20C:
/* 8044E20C  A8 7E 06 28 */	lha r3, 0x628(r30)
/* 8044E210  A8 9E 06 26 */	lha r4, 0x626(r30)
/* 8044E214  38 03 FF EC */	addi r0, r3, -20
/* 8044E218  7C 04 00 00 */	cmpw r4, r0
/* 8044E21C  40 81 00 24 */	ble lbl_8044E240
/* 8044E220  3C 80 80 64 */	lis r4, lit_527@ha /* 0x80644268@ha */
/* 8044E224  3C 60 80 64 */	lis r3, lit_526@ha /* 0x80644264@ha */
/* 8044E228  C0 63 42 64 */	lfs f3, lit_526@l(r3)  /* 0x80644264@l */
/* 8044E22C  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8044E230  C0 3E 05 F0 */	lfs f1, 0x5f0(r30)
/* 8044E234  C0 44 42 68 */	lfs f2, lit_527@l(r4)  /* 0x80644268@l */
/* 8044E238  4B F6 D0 5D */	bl add_calc2
/* 8044E23C  48 00 00 14 */	b lbl_8044E250
lbl_8044E240:
/* 8044E240  C0 3E 05 E8 */	lfs f1, 0x5e8(r30)
/* 8044E244  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8044E248  EC 01 00 32 */	fmuls f0, f1, f0
/* 8044E24C  D0 1E 05 E8 */	stfs f0, 0x5e8(r30)
lbl_8044E250:
/* 8044E250  A8 1E 06 2E */	lha r0, 0x62e(r30)
/* 8044E254  54 00 06 FD */	rlwinm. r0, r0, 0, 0x1b, 0x1e
/* 8044E258  41 82 00 E4 */	beq lbl_8044E33C
/* 8044E25C  3C 60 80 64 */	lis r3, lit_666@ha /* 0x806442AC@ha */
/* 8044E260  C0 3E 05 E8 */	lfs f1, 0x5e8(r30)
/* 8044E264  C0 03 42 AC */	lfs f0, lit_666@l(r3)  /* 0x806442AC@l */
/* 8044E268  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8044E26C  40 81 00 D0 */	ble lbl_8044E33C
/* 8044E270  A8 9E 06 2C */	lha r4, 0x62c(r30)
/* 8044E274  A8 1E 06 14 */	lha r0, 0x614(r30)
/* 8044E278  7C 04 00 50 */	subf r0, r4, r0
/* 8044E27C  7C 03 07 34 */	extsh r3, r0
/* 8044E280  2C 03 FF 4A */	cmpwi r3, -182
/* 8044E284  40 81 00 24 */	ble lbl_8044E2A8
/* 8044E288  7C 00 07 35 */	extsh. r0, r0
/* 8044E28C  7C 03 00 D0 */	neg r0, r3
/* 8044E290  41 80 00 08 */	blt lbl_8044E298
/* 8044E294  7C 60 1B 78 */	mr r0, r3
lbl_8044E298:
/* 8044E298  2C 00 43 8E */	cmpwi r0, 0x438e
/* 8044E29C  40 80 00 0C */	bge lbl_8044E2A8
/* 8044E2A0  38 84 40 00 */	addi r4, r4, 0x4000
/* 8044E2A4  48 00 00 08 */	b lbl_8044E2AC
lbl_8044E2A8:
/* 8044E2A8  38 84 C0 00 */	addi r4, r4, -16384
lbl_8044E2AC:
/* 8044E2AC  3C 60 80 64 */	lis r3, lit_665@ha /* 0x806442A4@ha */
/* 8044E2B0  3C A0 80 64 */	lis r5, lit_469@ha /* 0x8064424C@ha */
/* 8044E2B4  38 C3 42 A4 */	addi r6, r3, lit_665@l /* 0x806442A4@l */
/* 8044E2B8  C8 A6 00 00 */	lfd f5, 0(r6)
/* 8044E2BC  38 C5 42 4C */	addi r6, r5, lit_469@l /* 0x8064424C@l */
/* 8044E2C0  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8044E2C4  C8 86 00 00 */	lfd f4, 0(r6)
/* 8044E2C8  FC 40 28 34 */	frsqrte f2, f5
/* 8044E2CC  38 A3 42 54 */	addi r5, r3, lit_470@l /* 0x80644254@l */
/* 8044E2D0  C8 65 00 00 */	lfd f3, 0(r5)
/* 8044E2D4  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044E2D8  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 8044E2DC  38 7E 06 14 */	addi r3, r30, 0x614
/* 8044E2E0  FC 22 00 B2 */	fmul f1, f2, f2
/* 8044E2E4  38 A0 01 C7 */	li r5, 0x1c7
/* 8044E2E8  38 C0 00 5B */	li r6, 0x5b
/* 8044E2EC  FC 44 00 B2 */	fmul f2, f4, f2
/* 8044E2F0  FC 25 00 72 */	fmul f1, f5, f1
/* 8044E2F4  FC 23 08 28 */	fsub f1, f3, f1
/* 8044E2F8  FC 42 00 72 */	fmul f2, f2, f1
/* 8044E2FC  FC 22 00 B2 */	fmul f1, f2, f2
/* 8044E300  FC 44 00 B2 */	fmul f2, f4, f2
/* 8044E304  FC 25 00 72 */	fmul f1, f5, f1
/* 8044E308  FC 23 08 28 */	fsub f1, f3, f1
/* 8044E30C  FC 42 00 72 */	fmul f2, f2, f1
/* 8044E310  FC 22 00 B2 */	fmul f1, f2, f2
/* 8044E314  FC 44 00 B2 */	fmul f2, f4, f2
/* 8044E318  FC 25 00 72 */	fmul f1, f5, f1
/* 8044E31C  FC 23 08 28 */	fsub f1, f3, f1
/* 8044E320  FC 22 00 72 */	fmul f1, f2, f1
/* 8044E324  FC 25 00 72 */	fmul f1, f5, f1
/* 8044E328  FC 20 08 18 */	frsp f1, f1
/* 8044E32C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8044E330  C0 21 00 08 */	lfs f1, 8(r1)
/* 8044E334  EC 20 08 28 */	fsubs f1, f0, f1
/* 8044E338  4B F6 CF D9 */	bl add_calc_short_angle2
lbl_8044E33C:
/* 8044E33C  7F C3 F3 78 */	mr r3, r30
/* 8044E340  7F E4 FB 78 */	mr r4, r31
/* 8044E344  4B FE 72 41 */	bl Museum_Fish_DonkoBGCheck
/* 8044E348  39 61 00 50 */	addi r11, r1, 0x50
/* 8044E34C  4B C4 CB D5 */	bl func_8009AF20
/* 8044E350  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8044E354  7C 08 03 A6 */	mtlr r0
/* 8044E358  38 21 00 50 */	addi r1, r1, 0x50
/* 8044E35C  4E 80 00 20 */	blr 
