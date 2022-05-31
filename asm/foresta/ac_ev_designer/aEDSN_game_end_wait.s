lbl_8051DA30:
/* 8051DA30  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8051DA34  7C 08 02 A6 */	mflr r0
/* 8051DA38  90 01 00 34 */	stw r0, 0x34(r1)
/* 8051DA3C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8051DA40  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8051DA44  39 61 00 20 */	addi r11, r1, 0x20
/* 8051DA48  4B B7 D4 8D */	bl func_8009AED4
/* 8051DA4C  7C 7D 1B 78 */	mr r29, r3
/* 8051DA50  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 8051DA54  C3 FD 09 A8 */	lfs f31, 0x9a8(r29)
/* 8051DA58  7C 9E 23 78 */	mr r30, r4
/* 8051DA5C  83 FD 09 AC */	lwz r31, 0x9ac(r29)
/* 8051DA60  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 8051DA64  4B E7 84 AD */	bl chkTrigger
/* 8051DA68  2C 03 00 00 */	cmpwi r3, 0
/* 8051DA6C  41 82 00 34 */	beq lbl_8051DAA0
/* 8051DA70  3C 80 80 65 */	lis r4, lit_700@ha /* 0x806490D8@ha */
/* 8051DA74  3C 60 80 65 */	lis r3, lit_701@ha /* 0x806490DC@ha */
/* 8051DA78  C0 24 90 D8 */	lfs f1, lit_700@l(r4)  /* 0x806490D8@l */
/* 8051DA7C  80 BF 00 00 */	lwz r5, 0(r31)
/* 8051DA80  EF FF 08 2A */	fadds f31, f31, f1
/* 8051DA84  C0 03 90 DC */	lfs f0, lit_701@l(r3)  /* 0x806490DC@l */
/* 8051DA88  38 05 00 01 */	addi r0, r5, 1
/* 8051DA8C  90 1F 00 00 */	stw r0, 0(r31)
/* 8051DA90  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8051DA94  40 81 00 2C */	ble lbl_8051DAC0
/* 8051DA98  FF E0 00 90 */	fmr f31, f0
/* 8051DA9C  48 00 00 24 */	b lbl_8051DAC0
lbl_8051DAA0:
/* 8051DAA0  3C 80 80 65 */	lis r4, lit_702@ha /* 0x806490E0@ha */
/* 8051DAA4  3C 60 80 65 */	lis r3, lit_703@ha /* 0x806490E4@ha */
/* 8051DAA8  C0 24 90 E0 */	lfs f1, lit_702@l(r4)  /* 0x806490E0@l */
/* 8051DAAC  C0 03 90 E4 */	lfs f0, lit_703@l(r3)  /* 0x806490E4@l */
/* 8051DAB0  EF FF 08 28 */	fsubs f31, f31, f1
/* 8051DAB4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8051DAB8  40 80 00 08 */	bge lbl_8051DAC0
/* 8051DABC  FF E0 00 90 */	fmr f31, f0
lbl_8051DAC0:
/* 8051DAC0  FC 20 F8 90 */	fmr f1, f31
/* 8051DAC4  D3 FD 09 A8 */	stfs f31, 0x9a8(r29)
/* 8051DAC8  4B EB FE 89 */	bl mPlib_Set_AnimeSpeedWashCar
/* 8051DACC  A8 7D 09 A4 */	lha r3, 0x9a4(r29)
/* 8051DAD0  38 03 FF FF */	addi r0, r3, -1
/* 8051DAD4  B0 1D 09 A4 */	sth r0, 0x9a4(r29)
/* 8051DAD8  A8 9D 09 A4 */	lha r4, 0x9a4(r29)
/* 8051DADC  7C 80 07 35 */	extsh. r0, r4
/* 8051DAE0  41 81 00 20 */	bgt lbl_8051DB00
/* 8051DAE4  38 00 00 02 */	li r0, 2
/* 8051DAE8  7F A3 EB 78 */	mr r3, r29
/* 8051DAEC  90 1F 00 04 */	stw r0, 4(r31)
/* 8051DAF0  7F C4 F3 78 */	mr r4, r30
/* 8051DAF4  38 A0 00 04 */	li r5, 4
/* 8051DAF8  48 00 02 4D */	bl aEDSN_setup_think_proc
/* 8051DAFC  48 00 00 38 */	b lbl_8051DB34
lbl_8051DB00:
/* 8051DB00  80 1F 00 00 */	lwz r0, 0(r31)
/* 8051DB04  2C 00 00 64 */	cmpwi r0, 0x64
/* 8051DB08  41 80 00 2C */	blt lbl_8051DB34
/* 8051DB0C  38 00 01 68 */	li r0, 0x168
/* 8051DB10  54 85 0F FE */	srwi r5, r4, 0x1f
/* 8051DB14  7C 06 FE 70 */	srawi r6, r0, 0x1f
/* 8051DB18  7F A3 EB 78 */	mr r3, r29
/* 8051DB1C  7C 04 00 10 */	subfc r0, r4, r0
/* 8051DB20  7F C4 F3 78 */	mr r4, r30
/* 8051DB24  7C 06 29 14 */	adde r0, r6, r5
/* 8051DB28  38 A0 00 04 */	li r5, 4
/* 8051DB2C  90 1F 00 04 */	stw r0, 4(r31)
/* 8051DB30  48 00 02 15 */	bl aEDSN_setup_think_proc
lbl_8051DB34:
/* 8051DB34  88 1D 07 F6 */	lbz r0, 0x7f6(r29)
/* 8051DB38  28 00 00 FF */	cmplwi r0, 0xff
/* 8051DB3C  40 82 00 30 */	bne lbl_8051DB6C
/* 8051DB40  88 1D 07 F5 */	lbz r0, 0x7f5(r29)
/* 8051DB44  28 00 00 03 */	cmplwi r0, 3
/* 8051DB48  40 82 00 24 */	bne lbl_8051DB6C
/* 8051DB4C  7F A3 EB 78 */	mr r3, r29
/* 8051DB50  38 80 00 01 */	li r4, 1
/* 8051DB54  38 A0 00 00 */	li r5, 0
/* 8051DB58  38 C0 00 02 */	li r6, 2
/* 8051DB5C  38 E0 00 01 */	li r7, 1
/* 8051DB60  39 00 00 00 */	li r8, 0
/* 8051DB64  39 20 00 00 */	li r9, 0
/* 8051DB68  4B FF F3 3D */	bl func_8051CEA4
lbl_8051DB6C:
/* 8051DB6C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8051DB70  39 61 00 20 */	addi r11, r1, 0x20
/* 8051DB74  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8051DB78  4B B7 D3 A9 */	bl func_8009AF20
/* 8051DB7C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8051DB80  7C 08 03 A6 */	mtlr r0
/* 8051DB84  38 21 00 30 */	addi r1, r1, 0x30
/* 8051DB88  4E 80 00 20 */	blr 
