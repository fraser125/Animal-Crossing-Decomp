lbl_80439F14:
/* 80439F14  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80439F18  7C 08 02 A6 */	mflr r0
/* 80439F1C  3C A0 80 64 */	lis r5, lit_698@ha /* 0x806442B4@ha */
/* 80439F20  90 01 00 34 */	stw r0, 0x34(r1)
/* 80439F24  C0 25 42 B4 */	lfs f1, lit_698@l(r5)  /* 0x806442B4@l */
/* 80439F28  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80439F2C  7C 9F 23 78 */	mr r31, r4
/* 80439F30  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80439F34  7C 7E 1B 78 */	mr r30, r3
/* 80439F38  C0 03 00 08 */	lfs f0, 8(r3)
/* 80439F3C  C0 5E 05 F8 */	lfs f2, 0x5f8(r30)
/* 80439F40  EC 01 00 32 */	fmuls f0, f1, f0
/* 80439F44  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80439F48  40 81 00 18 */	ble lbl_80439F60
/* 80439F4C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80439F50  38 00 00 00 */	li r0, 0
/* 80439F54  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 80439F58  D0 1E 05 F8 */	stfs f0, 0x5f8(r30)
/* 80439F5C  B0 1E 06 26 */	sth r0, 0x626(r30)
lbl_80439F60:
/* 80439F60  A8 9E 06 26 */	lha r4, 0x626(r30)
/* 80439F64  38 64 FF FF */	addi r3, r4, -1
/* 80439F68  7C 80 07 35 */	extsh. r0, r4
/* 80439F6C  B0 7E 06 26 */	sth r3, 0x626(r30)
/* 80439F70  41 81 00 88 */	bgt lbl_80439FF8
/* 80439F74  4B C2 2D 81 */	bl fqrand
/* 80439F78  A8 7E 00 2E */	lha r3, 0x2e(r30)
/* 80439F7C  3C 00 43 30 */	lis r0, 0x4330
/* 80439F80  90 01 00 10 */	stw r0, 0x10(r1)
/* 80439F84  3C 80 80 64 */	lis r4, lit_570@ha /* 0x8064428C@ha */
/* 80439F88  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80439F8C  C8 44 42 8C */	lfd f2, lit_570@l(r4)  /* 0x8064428C@l */
/* 80439F90  90 61 00 14 */	stw r3, 0x14(r1)
/* 80439F94  7F C3 F3 78 */	mr r3, r30
/* 80439F98  A8 1E 00 2C */	lha r0, 0x2c(r30)
/* 80439F9C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80439FA0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80439FA4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80439FA8  FC 00 00 1E */	fctiwz f0, f0
/* 80439FAC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80439FB0  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 80439FB4  7C 00 22 14 */	add r0, r0, r4
/* 80439FB8  B0 1E 06 26 */	sth r0, 0x626(r30)
/* 80439FBC  A8 1E 06 26 */	lha r0, 0x626(r30)
/* 80439FC0  B0 1E 06 28 */	sth r0, 0x628(r30)
/* 80439FC4  4B FF 7C 29 */	bl mfish_WallCheck
/* 80439FC8  2C 03 00 00 */	cmpwi r3, 0
/* 80439FCC  41 82 00 18 */	beq lbl_80439FE4
/* 80439FD0  38 00 00 0A */	li r0, 0xa
/* 80439FD4  7F C3 F3 78 */	mr r3, r30
/* 80439FD8  B0 1E 06 40 */	sth r0, 0x640(r30)
/* 80439FDC  4B FF F5 91 */	bl mfish_afish_turn_process_init
/* 80439FE0  48 00 00 F4 */	b lbl_8043A0D4
lbl_80439FE4:
/* 80439FE4  38 00 00 0A */	li r0, 0xa
/* 80439FE8  7F C3 F3 78 */	mr r3, r30
/* 80439FEC  B0 1E 06 40 */	sth r0, 0x640(r30)
/* 80439FF0  4B FF ED 71 */	bl mfish_afish_normal_process_init
/* 80439FF4  48 00 00 E0 */	b lbl_8043A0D4
lbl_80439FF8:
/* 80439FF8  3C 60 80 44 */	lis r3, mfish_afish_normal_process@ha /* 0x80438FEC@ha */
/* 80439FFC  80 9E 00 34 */	lwz r4, 0x34(r30)
/* 8043A000  38 03 8F EC */	addi r0, r3, mfish_afish_normal_process@l /* 0x80438FEC@l */
/* 8043A004  7C 04 00 40 */	cmplw r4, r0
/* 8043A008  40 82 00 CC */	bne lbl_8043A0D4
/* 8043A00C  A8 9E 06 2E */	lha r4, 0x62e(r30)
/* 8043A010  54 80 06 FD */	rlwinm. r0, r4, 0, 0x1b, 0x1e
/* 8043A014  41 82 00 2C */	beq lbl_8043A040
/* 8043A018  A8 7E 06 0E */	lha r3, 0x60e(r30)
/* 8043A01C  A8 1E 06 2C */	lha r0, 0x62c(r30)
/* 8043A020  7C 63 00 50 */	subf r3, r3, r0
/* 8043A024  7C 60 07 34 */	extsh r0, r3
/* 8043A028  7C 63 07 35 */	extsh. r3, r3
/* 8043A02C  7C 60 00 D0 */	neg r3, r0
/* 8043A030  41 80 00 08 */	blt lbl_8043A038
/* 8043A034  7C 03 03 78 */	mr r3, r0
lbl_8043A038:
/* 8043A038  2C 03 15 55 */	cmpwi r3, 0x1555
/* 8043A03C  41 80 00 3C */	blt lbl_8043A078
lbl_8043A040:
/* 8043A040  54 80 06 B5 */	rlwinm. r0, r4, 0, 0x1a, 0x1a
/* 8043A044  41 82 00 90 */	beq lbl_8043A0D4
/* 8043A048  A8 7E 06 2A */	lha r3, 0x62a(r30)
/* 8043A04C  A8 9E 06 0E */	lha r4, 0x60e(r30)
/* 8043A050  3C 63 00 01 */	addis r3, r3, 1
/* 8043A054  38 03 80 00 */	addi r0, r3, -32768
/* 8043A058  7C 64 00 50 */	subf r3, r4, r0
/* 8043A05C  7C 60 07 35 */	extsh. r0, r3
/* 8043A060  7C 60 07 34 */	extsh r0, r3
/* 8043A064  7C 60 00 D0 */	neg r3, r0
/* 8043A068  41 80 00 08 */	blt lbl_8043A070
/* 8043A06C  7C 03 03 78 */	mr r3, r0
lbl_8043A070:
/* 8043A070  2C 03 15 55 */	cmpwi r3, 0x1555
/* 8043A074  40 80 00 60 */	bge lbl_8043A0D4
lbl_8043A078:
/* 8043A078  4B C2 2C 7D */	bl fqrand
/* 8043A07C  A8 9E 00 2E */	lha r4, 0x2e(r30)
/* 8043A080  3C 00 43 30 */	lis r0, 0x4330
/* 8043A084  90 01 00 18 */	stw r0, 0x18(r1)
/* 8043A088  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 8043A08C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8043A090  C8 43 42 8C */	lfd f2, lit_570@l(r3)  /* 0x8064428C@l */
/* 8043A094  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8043A098  38 00 00 0A */	li r0, 0xa
/* 8043A09C  A8 9E 00 2C */	lha r4, 0x2c(r30)
/* 8043A0A0  7F C3 F3 78 */	mr r3, r30
/* 8043A0A4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8043A0A8  EC 00 10 28 */	fsubs f0, f0, f2
/* 8043A0AC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8043A0B0  FC 00 00 1E */	fctiwz f0, f0
/* 8043A0B4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8043A0B8  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8043A0BC  7C 84 2A 14 */	add r4, r4, r5
/* 8043A0C0  B0 9E 06 26 */	sth r4, 0x626(r30)
/* 8043A0C4  A8 9E 06 26 */	lha r4, 0x626(r30)
/* 8043A0C8  B0 9E 06 28 */	sth r4, 0x628(r30)
/* 8043A0CC  B0 1E 06 40 */	sth r0, 0x640(r30)
/* 8043A0D0  4B FF F4 9D */	bl mfish_afish_turn_process_init
lbl_8043A0D4:
/* 8043A0D4  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 8043A0D8  7F C3 F3 78 */	mr r3, r30
/* 8043A0DC  38 A4 42 48 */	addi r5, r4, lit_468@l /* 0x80644248@l */
/* 8043A0E0  7F E4 FB 78 */	mr r4, r31
/* 8043A0E4  C0 05 00 00 */	lfs f0, 0(r5)
/* 8043A0E8  D0 1E 05 B0 */	stfs f0, 0x5b0(r30)
/* 8043A0EC  A8 BE 06 38 */	lha r5, 0x638(r30)
/* 8043A0F0  38 05 07 1C */	addi r0, r5, 0x71c
/* 8043A0F4  B0 1E 06 38 */	sth r0, 0x638(r30)
/* 8043A0F8  81 9E 00 34 */	lwz r12, 0x34(r30)
/* 8043A0FC  7D 89 03 A6 */	mtctr r12
/* 8043A100  4E 80 04 21 */	bctrl 
/* 8043A104  A8 9E 06 22 */	lha r4, 0x622(r30)
/* 8043A108  7C 80 07 35 */	extsh. r0, r4
/* 8043A10C  7C 64 00 D0 */	neg r3, r4
/* 8043A110  41 80 00 08 */	blt lbl_8043A118
/* 8043A114  7C 83 23 78 */	mr r3, r4
lbl_8043A118:
/* 8043A118  A8 BE 06 1C */	lha r5, 0x61c(r30)
/* 8043A11C  7C A0 07 35 */	extsh. r0, r5
/* 8043A120  7C 05 00 D0 */	neg r0, r5
/* 8043A124  41 80 00 08 */	blt lbl_8043A12C
/* 8043A128  7C A0 2B 78 */	mr r0, r5
lbl_8043A12C:
/* 8043A12C  7C 00 18 00 */	cmpw r0, r3
/* 8043A130  40 81 00 50 */	ble lbl_8043A180
/* 8043A134  7C 80 07 35 */	extsh. r0, r4
/* 8043A138  7C 04 00 D0 */	neg r0, r4
/* 8043A13C  41 80 00 08 */	blt lbl_8043A144
/* 8043A140  7C 80 23 78 */	mr r0, r4
lbl_8043A144:
/* 8043A144  2C 00 01 6C */	cmpwi r0, 0x16c
/* 8043A148  40 81 00 38 */	ble lbl_8043A180
/* 8043A14C  3C 60 80 64 */	lis r3, lit_839@ha /* 0x806442D4@ha */
/* 8043A150  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 8043A154  C0 23 42 D4 */	lfs f1, lit_839@l(r3)  /* 0x806442D4@l */
/* 8043A158  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043A15C  40 80 00 08 */	bge lbl_8043A164
/* 8043A160  48 00 00 08 */	b lbl_8043A168
lbl_8043A164:
/* 8043A164  FC 20 00 90 */	fmr f1, f0
lbl_8043A168:
/* 8043A168  3C 80 80 64 */	lis r4, lit_839@ha /* 0x806442D4@ha */
/* 8043A16C  3C 60 80 64 */	lis r3, lit_471@ha /* 0x8064425C@ha */
/* 8043A170  C0 63 42 5C */	lfs f3, lit_471@l(r3)  /* 0x8064425C@l */
/* 8043A174  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8043A178  C0 44 42 D4 */	lfs f2, lit_839@l(r4)  /* 0x806442D4@l */
/* 8043A17C  4B F8 11 19 */	bl add_calc2
lbl_8043A180:
/* 8043A180  3C 60 80 64 */	lis r3, lit_920@ha /* 0x806442DC@ha */
/* 8043A184  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8043A188  38 A3 42 DC */	addi r5, r3, lit_920@l /* 0x806442DC@l */
/* 8043A18C  38 C0 00 5B */	li r6, 0x5b
/* 8043A190  C8 A5 00 00 */	lfd f5, 0(r5)
/* 8043A194  38 A4 42 4C */	addi r5, r4, lit_469@l /* 0x8064424C@l */
/* 8043A198  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8043A19C  C8 85 00 00 */	lfd f4, 0(r5)
/* 8043A1A0  FC 40 28 34 */	frsqrte f2, f5
/* 8043A1A4  38 83 42 54 */	addi r4, r3, lit_470@l /* 0x80644254@l */
/* 8043A1A8  C8 64 00 00 */	lfd f3, 0(r4)
/* 8043A1AC  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043A1B0  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 8043A1B4  38 7E 06 0C */	addi r3, r30, 0x60c
/* 8043A1B8  FC 22 00 B2 */	fmul f1, f2, f2
/* 8043A1BC  A8 9E 06 12 */	lha r4, 0x612(r30)
/* 8043A1C0  38 A0 01 C7 */	li r5, 0x1c7
/* 8043A1C4  FC 44 00 B2 */	fmul f2, f4, f2
/* 8043A1C8  FC 25 00 72 */	fmul f1, f5, f1
/* 8043A1CC  FC 23 08 28 */	fsub f1, f3, f1
/* 8043A1D0  FC 42 00 72 */	fmul f2, f2, f1
/* 8043A1D4  FC 22 00 B2 */	fmul f1, f2, f2
/* 8043A1D8  FC 44 00 B2 */	fmul f2, f4, f2
/* 8043A1DC  FC 25 00 72 */	fmul f1, f5, f1
/* 8043A1E0  FC 23 08 28 */	fsub f1, f3, f1
/* 8043A1E4  FC 42 00 72 */	fmul f2, f2, f1
/* 8043A1E8  FC 22 00 B2 */	fmul f1, f2, f2
/* 8043A1EC  FC 44 00 B2 */	fmul f2, f4, f2
/* 8043A1F0  FC 25 00 72 */	fmul f1, f5, f1
/* 8043A1F4  FC 23 08 28 */	fsub f1, f3, f1
/* 8043A1F8  FC 22 00 72 */	fmul f1, f2, f1
/* 8043A1FC  FC 25 00 72 */	fmul f1, f5, f1
/* 8043A200  FC 20 08 18 */	frsp f1, f1
/* 8043A204  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8043A208  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8043A20C  EC 20 08 28 */	fsubs f1, f0, f1
/* 8043A210  4B F8 11 01 */	bl add_calc_short_angle2
/* 8043A214  3C 60 80 64 */	lis r3, lit_920@ha /* 0x806442DC@ha */
/* 8043A218  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 8043A21C  38 A3 42 DC */	addi r5, r3, lit_920@l /* 0x806442DC@l */
/* 8043A220  38 C0 00 5B */	li r6, 0x5b
/* 8043A224  C8 A5 00 00 */	lfd f5, 0(r5)
/* 8043A228  38 A4 42 4C */	addi r5, r4, lit_469@l /* 0x8064424C@l */
/* 8043A22C  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8043A230  C8 85 00 00 */	lfd f4, 0(r5)
/* 8043A234  FC 40 28 34 */	frsqrte f2, f5
/* 8043A238  38 83 42 54 */	addi r4, r3, lit_470@l /* 0x80644254@l */
/* 8043A23C  C8 64 00 00 */	lfd f3, 0(r4)
/* 8043A240  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8043A244  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 8043A248  38 7E 06 12 */	addi r3, r30, 0x612
/* 8043A24C  FC 22 00 B2 */	fmul f1, f2, f2
/* 8043A250  38 80 00 00 */	li r4, 0
/* 8043A254  38 A0 00 B6 */	li r5, 0xb6
/* 8043A258  FC 44 00 B2 */	fmul f2, f4, f2
/* 8043A25C  FC 25 00 72 */	fmul f1, f5, f1
/* 8043A260  FC 23 08 28 */	fsub f1, f3, f1
/* 8043A264  FC 42 00 72 */	fmul f2, f2, f1
/* 8043A268  FC 22 00 B2 */	fmul f1, f2, f2
/* 8043A26C  FC 44 00 B2 */	fmul f2, f4, f2
/* 8043A270  FC 25 00 72 */	fmul f1, f5, f1
/* 8043A274  FC 23 08 28 */	fsub f1, f3, f1
/* 8043A278  FC 42 00 72 */	fmul f2, f2, f1
/* 8043A27C  FC 22 00 B2 */	fmul f1, f2, f2
/* 8043A280  FC 44 00 B2 */	fmul f2, f4, f2
/* 8043A284  FC 25 00 72 */	fmul f1, f5, f1
/* 8043A288  FC 23 08 28 */	fsub f1, f3, f1
/* 8043A28C  FC 22 00 72 */	fmul f1, f2, f1
/* 8043A290  FC 25 00 72 */	fmul f1, f5, f1
/* 8043A294  FC 20 08 18 */	frsp f1, f1
/* 8043A298  D0 21 00 08 */	stfs f1, 8(r1)
/* 8043A29C  C0 21 00 08 */	lfs f1, 8(r1)
/* 8043A2A0  EC 20 08 28 */	fsubs f1, f0, f1
/* 8043A2A4  4B F8 10 6D */	bl add_calc_short_angle2
/* 8043A2A8  7F C3 F3 78 */	mr r3, r30
/* 8043A2AC  7F E4 FB 78 */	mr r4, r31
/* 8043A2B0  4B FF F9 AD */	bl mfish_afish_base_FishMove
/* 8043A2B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8043A2B8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8043A2BC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8043A2C0  7C 08 03 A6 */	mtlr r0
/* 8043A2C4  38 21 00 30 */	addi r1, r1, 0x30
/* 8043A2C8  4E 80 00 20 */	blr 
