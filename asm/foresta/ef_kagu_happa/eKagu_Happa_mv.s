lbl_8061130C:
/* 8061130C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80611310  7C 08 02 A6 */	mflr r0
/* 80611314  90 01 00 34 */	stw r0, 0x34(r1)
/* 80611318  39 61 00 30 */	addi r11, r1, 0x30
/* 8061131C  4B A8 9B B9 */	bl func_8009AED4
/* 80611320  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80611324  7C 7D 1B 78 */	mr r29, r3
/* 80611328  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 8061132C  7C 9E 23 78 */	mr r30, r4
/* 80611330  3F E3 00 02 */	addis r31, r3, 2
/* 80611334  A8 7D 00 00 */	lha r3, 0(r29)
/* 80611338  80 DF 60 9C */	lwz r6, 0x609c(r31)
/* 8061133C  38 80 00 08 */	li r4, 8
/* 80611340  C0 3D 00 40 */	lfs f1, 0x40(r29)
/* 80611344  38 A0 00 24 */	li r5, 0x24
/* 80611348  81 86 00 14 */	lwz r12, 0x14(r6)
/* 8061134C  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 80611350  7D 89 03 A6 */	mtctr r12
/* 80611354  4E 80 04 21 */	bctrl 
/* 80611358  D0 3D 00 10 */	stfs f1, 0x10(r29)
/* 8061135C  38 80 00 08 */	li r4, 8
/* 80611360  38 A0 00 24 */	li r5, 0x24
/* 80611364  80 DF 60 9C */	lwz r6, 0x609c(r31)
/* 80611368  A8 7D 00 00 */	lha r3, 0(r29)
/* 8061136C  81 86 00 14 */	lwz r12, 0x14(r6)
/* 80611370  C0 3D 00 44 */	lfs f1, 0x44(r29)
/* 80611374  C0 5D 00 2C */	lfs f2, 0x2c(r29)
/* 80611378  7D 89 03 A6 */	mtctr r12
/* 8061137C  4E 80 04 21 */	bctrl 
/* 80611380  D0 3D 00 14 */	stfs f1, 0x14(r29)
/* 80611384  38 80 00 08 */	li r4, 8
/* 80611388  38 A0 00 1C */	li r5, 0x1c
/* 8061138C  80 DF 60 9C */	lwz r6, 0x609c(r31)
/* 80611390  A8 7D 00 00 */	lha r3, 0(r29)
/* 80611394  81 86 00 14 */	lwz r12, 0x14(r6)
/* 80611398  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 8061139C  C0 5D 00 30 */	lfs f2, 0x30(r29)
/* 806113A0  7D 89 03 A6 */	mtctr r12
/* 806113A4  4E 80 04 21 */	bctrl 
/* 806113A8  3C 60 80 65 */	lis r3, lit_407@ha /* 0x8064C394@ha */
/* 806113AC  3C 80 80 65 */	lis r4, lit_408@ha /* 0x8064C39C@ha */
/* 806113B0  38 A3 C3 94 */	addi r5, r3, lit_407@l /* 0x8064C394@l */
/* 806113B4  C8 E4 C3 9C */	lfd f7, lit_408@l(r4)  /* 0x8064C39C@l */
/* 806113B8  C9 05 00 00 */	lfd f8, 0(r5)
/* 806113BC  3C 60 80 65 */	lis r3, lit_409@ha /* 0x8064C3A4@ha */
/* 806113C0  39 03 C3 A4 */	addi r8, r3, lit_409@l /* 0x8064C3A4@l */
/* 806113C4  3C 80 80 65 */	lis r4, lit_412@ha /* 0x8064C3B4@ha */
/* 806113C8  FC 00 40 34 */	frsqrte f0, f8
/* 806113CC  3C 60 80 65 */	lis r3, lit_411@ha /* 0x8064C3B0@ha */
/* 806113D0  38 C3 C3 B0 */	addi r6, r3, lit_411@l /* 0x8064C3B0@l */
/* 806113D4  38 A4 C3 B4 */	addi r5, r4, lit_412@l /* 0x8064C3B4@l */
/* 806113D8  3C 60 80 65 */	lis r3, lit_413@ha /* 0x8064C3B8@ha */
/* 806113DC  C8 C8 00 00 */	lfd f6, 0(r8)
/* 806113E0  FC 40 00 32 */	fmul f2, f0, f0
/* 806113E4  38 83 C3 B8 */	addi r4, r3, lit_413@l /* 0x8064C3B8@l */
/* 806113E8  3C E0 80 65 */	lis r7, lit_410@ha /* 0x8064C3AC@ha */
/* 806113EC  D0 3D 00 18 */	stfs f1, 0x18(r29)
/* 806113F0  FC A7 00 32 */	fmul f5, f7, f0
/* 806113F4  C0 06 00 00 */	lfs f0, 0(r6)
/* 806113F8  FC 48 00 B2 */	fmul f2, f8, f2
/* 806113FC  C0 27 C3 AC */	lfs f1, lit_410@l(r7)  /* 0x8064C3AC@l */
/* 80611400  C0 65 00 00 */	lfs f3, 0(r5)
/* 80611404  38 7D 00 34 */	addi r3, r29, 0x34
/* 80611408  C0 84 00 00 */	lfs f4, 0(r4)
/* 8061140C  FC 46 10 28 */	fsub f2, f6, f2
/* 80611410  FC A5 00 B2 */	fmul f5, f5, f2
/* 80611414  FC 45 01 72 */	fmul f2, f5, f5
/* 80611418  FC A7 01 72 */	fmul f5, f7, f5
/* 8061141C  FC 48 00 B2 */	fmul f2, f8, f2
/* 80611420  FC 46 10 28 */	fsub f2, f6, f2
/* 80611424  FC A5 00 B2 */	fmul f5, f5, f2
/* 80611428  FC 45 01 72 */	fmul f2, f5, f5
/* 8061142C  FC A7 01 72 */	fmul f5, f7, f5
/* 80611430  FC 48 00 B2 */	fmul f2, f8, f2
/* 80611434  FC 46 10 28 */	fsub f2, f6, f2
/* 80611438  FC 45 00 B2 */	fmul f2, f5, f2
/* 8061143C  FC 48 00 B2 */	fmul f2, f8, f2
/* 80611440  FC 40 10 18 */	frsp f2, f2
/* 80611444  D0 41 00 08 */	stfs f2, 8(r1)
/* 80611448  C0 41 00 08 */	lfs f2, 8(r1)
/* 8061144C  EC 40 10 28 */	fsubs f2, f0, f2
/* 80611450  4B DA 9D 61 */	bl add_calc
/* 80611454  C0 1D 00 34 */	lfs f0, 0x34(r29)
/* 80611458  D0 1D 00 3C */	stfs f0, 0x3c(r29)
/* 8061145C  D0 1D 00 38 */	stfs f0, 0x38(r29)
/* 80611460  A8 1D 00 00 */	lha r0, 0(r29)
/* 80611464  2C 00 00 0A */	cmpwi r0, 0xa
/* 80611468  40 81 00 7C */	ble lbl_806114E4
/* 8061146C  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 80611470  3C 00 43 30 */	lis r0, 0x4330
/* 80611474  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80611478  3C 80 80 65 */	lis r4, lit_419@ha /* 0x8064C3CC@ha */
/* 8061147C  3C 60 80 65 */	lis r3, lit_414@ha /* 0x8064C3BC@ha */
/* 80611480  C8 24 C3 CC */	lfd f1, lit_419@l(r4)  /* 0x8064C3CC@l */
/* 80611484  90 01 00 18 */	stw r0, 0x18(r1)
/* 80611488  38 A3 C3 BC */	addi r5, r3, lit_414@l /* 0x8064C3BC@l */
/* 8061148C  C0 45 00 00 */	lfs f2, 0(r5)
/* 80611490  3C 60 80 65 */	lis r3, lit_415@ha /* 0x8064C3C0@ha */
/* 80611494  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80611498  38 83 C3 C0 */	addi r4, r3, lit_415@l /* 0x8064C3C0@l */
/* 8061149C  3C 60 80 65 */	lis r3, lit_416@ha /* 0x8064C3C4@ha */
/* 806114A0  3C A0 80 65 */	lis r5, data_8064C38C@ha /* 0x8064C38C@ha */
/* 806114A4  EC 60 08 28 */	fsubs f3, f0, f1
/* 806114A8  C0 24 00 00 */	lfs f1, 0(r4)
/* 806114AC  C0 03 C3 C4 */	lfs f0, lit_416@l(r3)  /* 0x8064C3C4@l */
/* 806114B0  C0 9D 00 14 */	lfs f4, 0x14(r29)
/* 806114B4  EC 43 10 28 */	fsubs f2, f3, f2
/* 806114B8  C0 65 C3 8C */	lfs f3, data_8064C38C@l(r5)  /* 0x8064C38C@l */
/* 806114BC  EC 22 08 28 */	fsubs f1, f2, f1
/* 806114C0  EC 00 00 72 */	fmuls f0, f0, f1
/* 806114C4  EC 00 00 72 */	fmuls f0, f0, f1
/* 806114C8  EC 03 00 2A */	fadds f0, f3, f0
/* 806114CC  EC 04 00 2A */	fadds f0, f4, f0
/* 806114D0  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 806114D4  A8 7D 00 4C */	lha r3, 0x4c(r29)
/* 806114D8  38 03 09 24 */	addi r0, r3, 0x924
/* 806114DC  B0 1D 00 4C */	sth r0, 0x4c(r29)
/* 806114E0  48 00 00 68 */	b lbl_80611548
lbl_806114E4:
/* 806114E4  2C 00 00 02 */	cmpwi r0, 2
/* 806114E8  40 82 00 60 */	bne lbl_80611548
/* 806114EC  3C 60 80 65 */	lis r3, lit_417@ha /* 0x8064C3C8@ha */
/* 806114F0  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 806114F4  C0 03 C3 C8 */	lfs f0, lit_417@l(r3)  /* 0x8064C3C8@l */
/* 806114F8  7F C7 F3 78 */	mr r7, r30
/* 806114FC  38 81 00 0C */	addi r4, r1, 0xc
/* 80611500  38 60 00 01 */	li r3, 1
/* 80611504  EC 01 00 2A */	fadds f0, f1, f0
/* 80611508  38 C0 00 00 */	li r6, 0
/* 8061150C  39 20 00 00 */	li r9, 0
/* 80611510  39 40 00 03 */	li r10, 3
/* 80611514  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 80611518  81 1D 00 10 */	lwz r8, 0x10(r29)
/* 8061151C  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 80611520  80 BF 60 9C */	lwz r5, 0x609c(r31)
/* 80611524  91 01 00 0C */	stw r8, 0xc(r1)
/* 80611528  90 01 00 10 */	stw r0, 0x10(r1)
/* 8061152C  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 80611530  90 01 00 14 */	stw r0, 0x14(r1)
/* 80611534  81 85 00 00 */	lwz r12, 0(r5)
/* 80611538  88 BD 00 0E */	lbz r5, 0xe(r29)
/* 8061153C  A1 1D 00 0C */	lhz r8, 0xc(r29)
/* 80611540  7D 89 03 A6 */	mtctr r12
/* 80611544  4E 80 04 21 */	bctrl 
lbl_80611548:
/* 80611548  39 61 00 30 */	addi r11, r1, 0x30
/* 8061154C  4B A8 99 D5 */	bl func_8009AF20
/* 80611550  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80611554  7C 08 03 A6 */	mtlr r0
/* 80611558  38 21 00 30 */	addi r1, r1, 0x30
/* 8061155C  4E 80 00 20 */	blr 