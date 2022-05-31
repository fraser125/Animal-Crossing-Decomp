lbl_8040DC04:
/* 8040DC04  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8040DC08  7C 08 02 A6 */	mflr r0
/* 8040DC0C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8040DC10  39 61 00 30 */	addi r11, r1, 0x30
/* 8040DC14  4B C8 D2 C1 */	bl func_8009AED4
/* 8040DC18  7C 7E 1B 78 */	mr r30, r3
/* 8040DC1C  3C 60 80 64 */	lis r3, data_8064373C@ha /* 0x8064373C@ha */
/* 8040DC20  C0 9E 00 00 */	lfs f4, 0(r30)
/* 8040DC24  7C 9F 23 78 */	mr r31, r4
/* 8040DC28  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8040DC2C  7C BD 2B 78 */	mr r29, r5
/* 8040DC30  EC 84 01 32 */	fmuls f4, f4, f4
/* 8040DC34  C0 03 37 3C */	lfs f0, data_8064373C@l(r3)  /* 0x8064373C@l */
/* 8040DC38  EC 21 00 72 */	fmuls f1, f1, f1
/* 8040DC3C  EC 84 08 2A */	fadds f4, f4, f1
/* 8040DC40  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8040DC44  40 81 00 6C */	ble lbl_8040DCB0
/* 8040DC48  FC 20 20 34 */	frsqrte f1, f4
/* 8040DC4C  3C 60 80 64 */	lis r3, lit_612@ha /* 0x8064375C@ha */
/* 8040DC50  38 83 37 5C */	addi r4, r3, lit_612@l /* 0x8064375C@l */
/* 8040DC54  3C 60 80 64 */	lis r3, lit_613@ha /* 0x80643764@ha */
/* 8040DC58  C8 64 00 00 */	lfd f3, 0(r4)
/* 8040DC5C  FC 01 00 72 */	fmul f0, f1, f1
/* 8040DC60  C8 43 37 64 */	lfd f2, lit_613@l(r3)  /* 0x80643764@l */
/* 8040DC64  FC 23 00 72 */	fmul f1, f3, f1
/* 8040DC68  FC 04 00 32 */	fmul f0, f4, f0
/* 8040DC6C  FC 02 00 28 */	fsub f0, f2, f0
/* 8040DC70  FC 21 00 32 */	fmul f1, f1, f0
/* 8040DC74  FC 01 00 72 */	fmul f0, f1, f1
/* 8040DC78  FC 23 00 72 */	fmul f1, f3, f1
/* 8040DC7C  FC 04 00 32 */	fmul f0, f4, f0
/* 8040DC80  FC 02 00 28 */	fsub f0, f2, f0
/* 8040DC84  FC 21 00 32 */	fmul f1, f1, f0
/* 8040DC88  FC 01 00 72 */	fmul f0, f1, f1
/* 8040DC8C  FC 23 00 72 */	fmul f1, f3, f1
/* 8040DC90  FC 04 00 32 */	fmul f0, f4, f0
/* 8040DC94  FC 02 00 28 */	fsub f0, f2, f0
/* 8040DC98  FC 01 00 32 */	fmul f0, f1, f0
/* 8040DC9C  FC 04 00 32 */	fmul f0, f4, f0
/* 8040DCA0  FC 00 00 18 */	frsp f0, f0
/* 8040DCA4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8040DCA8  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8040DCAC  48 00 00 08 */	b lbl_8040DCB4
lbl_8040DCB0:
/* 8040DCB0  FC 40 20 90 */	fmr f2, f4
lbl_8040DCB4:
/* 8040DCB4  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8040DCB8  FC 20 00 50 */	fneg f1, f0
/* 8040DCBC  4B C4 EF 59 */	bl func_8005CC14
/* 8040DCC0  3C 60 80 64 */	lis r3, lit_656@ha /* 0x8064376C@ha */
/* 8040DCC4  C0 03 37 6C */	lfs f0, lit_656@l(r3)  /* 0x8064376C@l */
/* 8040DCC8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8040DCCC  FC 00 00 1E */	fctiwz f0, f0
/* 8040DCD0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8040DCD4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8040DCD8  B0 1F 00 02 */	sth r0, 2(r31)
/* 8040DCDC  A8 1F 00 02 */	lha r0, 2(r31)
/* 8040DCE0  2C 00 40 00 */	cmpwi r0, 0x4000
/* 8040DCE4  41 82 00 0C */	beq lbl_8040DCF0
/* 8040DCE8  2C 00 C0 00 */	cmpwi r0, -16384
/* 8040DCEC  40 82 00 3C */	bne lbl_8040DD28
lbl_8040DCF0:
/* 8040DCF0  38 00 00 00 */	li r0, 0
/* 8040DCF4  B0 1F 00 00 */	sth r0, 0(r31)
/* 8040DCF8  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8040DCFC  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 8040DD00  FC 20 00 50 */	fneg f1, f0
/* 8040DD04  4B C4 EF 11 */	bl func_8005CC14
/* 8040DD08  3C 60 80 64 */	lis r3, lit_656@ha /* 0x8064376C@ha */
/* 8040DD0C  C0 03 37 6C */	lfs f0, lit_656@l(r3)  /* 0x8064376C@l */
/* 8040DD10  EC 00 00 72 */	fmuls f0, f0, f1
/* 8040DD14  FC 00 00 1E */	fctiwz f0, f0
/* 8040DD18  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8040DD1C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8040DD20  B0 1F 00 04 */	sth r0, 4(r31)
/* 8040DD24  48 00 01 B0 */	b lbl_8040DED4
lbl_8040DD28:
/* 8040DD28  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8040DD2C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8040DD30  4B C4 EE E5 */	bl func_8005CC14
/* 8040DD34  3C 60 80 64 */	lis r3, lit_656@ha /* 0x8064376C@ha */
/* 8040DD38  2C 1D 00 00 */	cmpwi r29, 0
/* 8040DD3C  C0 03 37 6C */	lfs f0, lit_656@l(r3)  /* 0x8064376C@l */
/* 8040DD40  EC 00 00 72 */	fmuls f0, f0, f1
/* 8040DD44  FC 00 00 1E */	fctiwz f0, f0
/* 8040DD48  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8040DD4C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8040DD50  B0 1F 00 04 */	sth r0, 4(r31)
/* 8040DD54  40 82 00 30 */	bne lbl_8040DD84
/* 8040DD58  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8040DD5C  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 8040DD60  4B C4 EE B5 */	bl func_8005CC14
/* 8040DD64  3C 60 80 64 */	lis r3, lit_656@ha /* 0x8064376C@ha */
/* 8040DD68  C0 03 37 6C */	lfs f0, lit_656@l(r3)  /* 0x8064376C@l */
/* 8040DD6C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8040DD70  FC 00 00 1E */	fctiwz f0, f0
/* 8040DD74  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8040DD78  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8040DD7C  B0 1F 00 00 */	sth r0, 0(r31)
/* 8040DD80  48 00 01 54 */	b lbl_8040DED4
lbl_8040DD84:
/* 8040DD84  C0 9E 00 10 */	lfs f4, 0x10(r30)
/* 8040DD88  3C 60 80 64 */	lis r3, data_8064373C@ha /* 0x8064373C@ha */
/* 8040DD8C  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8040DD90  EC 84 01 32 */	fmuls f4, f4, f4
/* 8040DD94  C0 BE 00 18 */	lfs f5, 0x18(r30)
/* 8040DD98  EC 40 00 32 */	fmuls f2, f0, f0
/* 8040DD9C  C0 03 37 3C */	lfs f0, data_8064373C@l(r3)  /* 0x8064373C@l */
/* 8040DDA0  EC 25 01 72 */	fmuls f1, f5, f5
/* 8040DDA4  EC 84 10 2A */	fadds f4, f4, f2
/* 8040DDA8  EC 84 08 2A */	fadds f4, f4, f1
/* 8040DDAC  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8040DDB0  40 81 00 68 */	ble lbl_8040DE18
/* 8040DDB4  FC 20 20 34 */	frsqrte f1, f4
/* 8040DDB8  3C 60 80 64 */	lis r3, lit_612@ha /* 0x8064375C@ha */
/* 8040DDBC  38 83 37 5C */	addi r4, r3, lit_612@l /* 0x8064375C@l */
/* 8040DDC0  3C 60 80 64 */	lis r3, lit_613@ha /* 0x80643764@ha */
/* 8040DDC4  C8 64 00 00 */	lfd f3, 0(r4)
/* 8040DDC8  FC 01 00 72 */	fmul f0, f1, f1
/* 8040DDCC  C8 43 37 64 */	lfd f2, lit_613@l(r3)  /* 0x80643764@l */
/* 8040DDD0  FC 23 00 72 */	fmul f1, f3, f1
/* 8040DDD4  FC 04 00 32 */	fmul f0, f4, f0
/* 8040DDD8  FC 02 00 28 */	fsub f0, f2, f0
/* 8040DDDC  FC 21 00 32 */	fmul f1, f1, f0
/* 8040DDE0  FC 01 00 72 */	fmul f0, f1, f1
/* 8040DDE4  FC 23 00 72 */	fmul f1, f3, f1
/* 8040DDE8  FC 04 00 32 */	fmul f0, f4, f0
/* 8040DDEC  FC 02 00 28 */	fsub f0, f2, f0
/* 8040DDF0  FC 21 00 32 */	fmul f1, f1, f0
/* 8040DDF4  FC 01 00 72 */	fmul f0, f1, f1
/* 8040DDF8  FC 23 00 72 */	fmul f1, f3, f1
/* 8040DDFC  FC 04 00 32 */	fmul f0, f4, f0
/* 8040DE00  FC 02 00 28 */	fsub f0, f2, f0
/* 8040DE04  FC 01 00 32 */	fmul f0, f1, f0
/* 8040DE08  FC 04 00 32 */	fmul f0, f4, f0
/* 8040DE0C  FC 00 00 18 */	frsp f0, f0
/* 8040DE10  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8040DE14  C0 81 00 0C */	lfs f4, 0xc(r1)
lbl_8040DE18:
/* 8040DE18  EC 25 20 24 */	fdivs f1, f5, f4
/* 8040DE1C  C0 BE 00 20 */	lfs f5, 0x20(r30)
/* 8040DE20  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 8040DE24  3C 60 80 64 */	lis r3, data_8064373C@ha /* 0x8064373C@ha */
/* 8040DE28  C0 DE 00 28 */	lfs f6, 0x28(r30)
/* 8040DE2C  C0 03 37 3C */	lfs f0, data_8064373C@l(r3)  /* 0x8064373C@l */
/* 8040DE30  EC 62 00 B2 */	fmuls f3, f2, f2
/* 8040DE34  EC A5 01 72 */	fmuls f5, f5, f5
/* 8040DE38  EC 46 01 B2 */	fmuls f2, f6, f6
/* 8040DE3C  EC A5 18 2A */	fadds f5, f5, f3
/* 8040DE40  EC A5 10 2A */	fadds f5, f5, f2
/* 8040DE44  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 8040DE48  40 81 00 68 */	ble lbl_8040DEB0
/* 8040DE4C  FC 40 28 34 */	frsqrte f2, f5
/* 8040DE50  3C 60 80 64 */	lis r3, lit_612@ha /* 0x8064375C@ha */
/* 8040DE54  38 83 37 5C */	addi r4, r3, lit_612@l /* 0x8064375C@l */
/* 8040DE58  3C 60 80 64 */	lis r3, lit_613@ha /* 0x80643764@ha */
/* 8040DE5C  C8 84 00 00 */	lfd f4, 0(r4)
/* 8040DE60  FC 02 00 B2 */	fmul f0, f2, f2
/* 8040DE64  C8 63 37 64 */	lfd f3, lit_613@l(r3)  /* 0x80643764@l */
/* 8040DE68  FC 44 00 B2 */	fmul f2, f4, f2
/* 8040DE6C  FC 05 00 32 */	fmul f0, f5, f0
/* 8040DE70  FC 03 00 28 */	fsub f0, f3, f0
/* 8040DE74  FC 42 00 32 */	fmul f2, f2, f0
/* 8040DE78  FC 02 00 B2 */	fmul f0, f2, f2
/* 8040DE7C  FC 44 00 B2 */	fmul f2, f4, f2
/* 8040DE80  FC 05 00 32 */	fmul f0, f5, f0
/* 8040DE84  FC 03 00 28 */	fsub f0, f3, f0
/* 8040DE88  FC 42 00 32 */	fmul f2, f2, f0
/* 8040DE8C  FC 02 00 B2 */	fmul f0, f2, f2
/* 8040DE90  FC 44 00 B2 */	fmul f2, f4, f2
/* 8040DE94  FC 05 00 32 */	fmul f0, f5, f0
/* 8040DE98  FC 03 00 28 */	fsub f0, f3, f0
/* 8040DE9C  FC 02 00 32 */	fmul f0, f2, f0
/* 8040DEA0  FC 05 00 32 */	fmul f0, f5, f0
/* 8040DEA4  FC 00 00 18 */	frsp f0, f0
/* 8040DEA8  D0 01 00 08 */	stfs f0, 8(r1)
/* 8040DEAC  C0 A1 00 08 */	lfs f5, 8(r1)
lbl_8040DEB0:
/* 8040DEB0  EC 46 28 24 */	fdivs f2, f6, f5
/* 8040DEB4  4B C4 ED 61 */	bl func_8005CC14
/* 8040DEB8  3C 60 80 64 */	lis r3, lit_656@ha /* 0x8064376C@ha */
/* 8040DEBC  C0 03 37 6C */	lfs f0, lit_656@l(r3)  /* 0x8064376C@l */
/* 8040DEC0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8040DEC4  FC 00 00 1E */	fctiwz f0, f0
/* 8040DEC8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8040DECC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8040DED0  B0 1F 00 00 */	sth r0, 0(r31)
lbl_8040DED4:
/* 8040DED4  39 61 00 30 */	addi r11, r1, 0x30
/* 8040DED8  4B C8 D0 49 */	bl func_8009AF20
/* 8040DEDC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8040DEE0  7C 08 03 A6 */	mtlr r0
/* 8040DEE4  38 21 00 30 */	addi r1, r1, 0x30
/* 8040DEE8  4E 80 00 20 */	blr 
