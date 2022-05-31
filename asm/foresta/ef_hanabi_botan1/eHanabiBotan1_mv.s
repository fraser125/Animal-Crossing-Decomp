lbl_8060D8F8:
/* 8060D8F8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8060D8FC  7C 08 02 A6 */	mflr r0
/* 8060D900  90 01 00 74 */	stw r0, 0x74(r1)
/* 8060D904  39 61 00 70 */	addi r11, r1, 0x70
/* 8060D908  4B A8 D5 C9 */	bl func_8009AED0
/* 8060D90C  7C 7C 1B 78 */	mr r28, r3
/* 8060D910  7C 9D 23 78 */	mr r29, r4
/* 8060D914  A8 63 00 4C */	lha r3, 0x4c(r3)
/* 8060D918  A8 9C 00 00 */	lha r4, 0(r28)
/* 8060D91C  38 03 03 00 */	addi r0, r3, 0x300
/* 8060D920  B0 1C 00 4C */	sth r0, 0x4c(r28)
/* 8060D924  20 04 00 6E */	subfic r0, r4, 0x6e
/* 8060D928  7C 1E 07 34 */	extsh r30, r0
/* 8060D92C  A8 7C 00 4E */	lha r3, 0x4e(r28)
/* 8060D930  38 03 01 00 */	addi r0, r3, 0x100
/* 8060D934  B0 1C 00 4E */	sth r0, 0x4e(r28)
/* 8060D938  A8 7C 00 50 */	lha r3, 0x50(r28)
/* 8060D93C  38 03 00 80 */	addi r0, r3, 0x80
/* 8060D940  B0 1C 00 50 */	sth r0, 0x50(r28)
/* 8060D944  A8 7C 00 4E */	lha r3, 0x4e(r28)
/* 8060D948  4B DA D1 A9 */	bl sin_s
/* 8060D94C  3C 60 80 65 */	lis r3, lit_419@ha /* 0x8064C100@ha */
/* 8060D950  C0 03 C1 00 */	lfs f0, lit_419@l(r3)  /* 0x8064C100@l */
/* 8060D954  EC 00 00 72 */	fmuls f0, f0, f1
/* 8060D958  D0 1C 00 40 */	stfs f0, 0x40(r28)
/* 8060D95C  A8 1C 00 4E */	lha r0, 0x4e(r28)
/* 8060D960  7C 00 00 D0 */	neg r0, r0
/* 8060D964  7C 03 07 34 */	extsh r3, r0
/* 8060D968  4B DA D1 89 */	bl sin_s
/* 8060D96C  3C 60 80 65 */	lis r3, lit_420@ha /* 0x8064C104@ha */
/* 8060D970  3C 80 80 65 */	lis r4, lit_421@ha /* 0x8064C10C@ha */
/* 8060D974  38 A3 C1 04 */	addi r5, r3, lit_420@l /* 0x8064C104@l */
/* 8060D978  C8 C4 C1 0C */	lfd f6, lit_421@l(r4)  /* 0x8064C10C@l */
/* 8060D97C  C8 E5 00 00 */	lfd f7, 0(r5)
/* 8060D980  3C 60 80 65 */	lis r3, lit_422@ha /* 0x8064C114@ha */
/* 8060D984  38 C3 C1 14 */	addi r6, r3, lit_422@l /* 0x8064C114@l */
/* 8060D988  FC 60 38 34 */	frsqrte f3, f7
/* 8060D98C  3C 60 80 65 */	lis r3, lit_419@ha /* 0x8064C100@ha */
/* 8060D990  38 83 C1 00 */	addi r4, r3, lit_419@l /* 0x8064C100@l */
/* 8060D994  C8 A6 00 00 */	lfd f5, 0(r6)
/* 8060D998  C0 44 00 00 */	lfs f2, 0(r4)
/* 8060D99C  3C 60 80 65 */	lis r3, lit_424@ha /* 0x8064C120@ha */
/* 8060D9A0  FC 03 00 F2 */	fmul f0, f3, f3
/* 8060D9A4  38 A3 C1 20 */	addi r5, r3, lit_424@l /* 0x8064C120@l */
/* 8060D9A8  3C 80 80 65 */	lis r4, lit_423@ha /* 0x8064C11C@ha */
/* 8060D9AC  3C 60 80 65 */	lis r3, lit_425@ha /* 0x8064C124@ha */
/* 8060D9B0  EC 42 00 72 */	fmuls f2, f2, f1
/* 8060D9B4  38 C4 C1 1C */	addi r6, r4, lit_423@l /* 0x8064C11C@l */
/* 8060D9B8  FC 27 00 32 */	fmul f1, f7, f0
/* 8060D9BC  D0 5C 00 48 */	stfs f2, 0x48(r28)
/* 8060D9C0  38 83 C1 24 */	addi r4, r3, lit_425@l /* 0x8064C124@l */
/* 8060D9C4  C0 05 00 00 */	lfs f0, 0(r5)
/* 8060D9C8  FC 86 00 F2 */	fmul f4, f6, f3
/* 8060D9CC  C0 64 00 00 */	lfs f3, 0(r4)
/* 8060D9D0  FC 45 08 28 */	fsub f2, f5, f1
/* 8060D9D4  C0 26 00 00 */	lfs f1, 0(r6)
/* 8060D9D8  38 7C 00 34 */	addi r3, r28, 0x34
/* 8060D9DC  FC 84 00 B2 */	fmul f4, f4, f2
/* 8060D9E0  FC 44 01 32 */	fmul f2, f4, f4
/* 8060D9E4  FC 86 01 32 */	fmul f4, f6, f4
/* 8060D9E8  FC 47 00 B2 */	fmul f2, f7, f2
/* 8060D9EC  FC 45 10 28 */	fsub f2, f5, f2
/* 8060D9F0  FC 84 00 B2 */	fmul f4, f4, f2
/* 8060D9F4  FC 44 01 32 */	fmul f2, f4, f4
/* 8060D9F8  FC 86 01 32 */	fmul f4, f6, f4
/* 8060D9FC  FC 47 00 B2 */	fmul f2, f7, f2
/* 8060DA00  FC 45 10 28 */	fsub f2, f5, f2
/* 8060DA04  FC 44 00 B2 */	fmul f2, f4, f2
/* 8060DA08  FC 47 00 B2 */	fmul f2, f7, f2
/* 8060DA0C  FC 40 10 18 */	frsp f2, f2
/* 8060DA10  D0 41 00 08 */	stfs f2, 8(r1)
/* 8060DA14  C0 41 00 08 */	lfs f2, 8(r1)
/* 8060DA18  EC 40 10 28 */	fsubs f2, f0, f2
/* 8060DA1C  4B DA D8 79 */	bl add_calc2
/* 8060DA20  C0 1C 00 34 */	lfs f0, 0x34(r28)
/* 8060DA24  2C 1E 00 0A */	cmpwi r30, 0xa
/* 8060DA28  D0 1C 00 38 */	stfs f0, 0x38(r28)
/* 8060DA2C  C0 1C 00 34 */	lfs f0, 0x34(r28)
/* 8060DA30  D0 1C 00 3C */	stfs f0, 0x3c(r28)
/* 8060DA34  40 82 01 44 */	bne lbl_8060DB78
/* 8060DA38  80 9C 00 10 */	lwz r4, 0x10(r28)
/* 8060DA3C  3C C0 80 6D */	lis r6, botan1_light@ha /* 0x806D2578@ha */
/* 8060DA40  80 1C 00 14 */	lwz r0, 0x14(r28)
/* 8060DA44  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8060DA48  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8060DA4C  3C A0 80 65 */	lis r5, lit_419@ha /* 0x8064C100@ha */
/* 8060DA50  90 81 00 18 */	stw r4, 0x18(r1)
/* 8060DA54  3F E3 00 02 */	addis r31, r3, 2
/* 8060DA58  3C 80 80 65 */	lis r4, lit_385@ha /* 0x8064C0F8@ha */
/* 8060DA5C  3C 60 80 65 */	lis r3, lit_426@ha /* 0x8064C128@ha */
/* 8060DA60  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8060DA64  39 45 C1 00 */	addi r10, r5, lit_419@l /* 0x8064C100@l */
/* 8060DA68  39 24 C0 F8 */	addi r9, r4, lit_385@l /* 0x8064C0F8@l */
/* 8060DA6C  39 03 C1 28 */	addi r8, r3, lit_426@l /* 0x8064C128@l */
/* 8060DA70  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 8060DA74  39 66 25 78 */	addi r11, r6, botan1_light@l /* 0x806D2578@l */
/* 8060DA78  80 FF 60 9C */	lwz r7, 0x609c(r31)
/* 8060DA7C  7F A6 EB 78 */	mr r6, r29
/* 8060DA80  90 01 00 20 */	stw r0, 0x20(r1)
/* 8060DA84  38 61 00 14 */	addi r3, r1, 0x14
/* 8060DA88  38 81 00 10 */	addi r4, r1, 0x10
/* 8060DA8C  38 A1 00 18 */	addi r5, r1, 0x18
/* 8060DA90  A8 1C 00 52 */	lha r0, 0x52(r28)
/* 8060DA94  C0 2A 00 00 */	lfs f1, 0(r10)
/* 8060DA98  54 00 10 3A */	slwi r0, r0, 2
/* 8060DA9C  C0 49 00 00 */	lfs f2, 0(r9)
/* 8060DAA0  7C 0B 00 2E */	lwzx r0, r11, r0
/* 8060DAA4  C0 68 00 00 */	lfs f3, 0(r8)
/* 8060DAA8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8060DAAC  81 87 00 34 */	lwz r12, 0x34(r7)
/* 8060DAB0  7D 89 03 A6 */	mtctr r12
/* 8060DAB4  4E 80 04 21 */	bctrl 
/* 8060DAB8  A8 1C 00 06 */	lha r0, 6(r28)
/* 8060DABC  2C 00 00 00 */	cmpwi r0, 0
/* 8060DAC0  41 82 00 90 */	beq lbl_8060DB50
/* 8060DAC4  88 C1 00 14 */	lbz r6, 0x14(r1)
/* 8060DAC8  3C 80 43 30 */	lis r4, 0x4330
/* 8060DACC  88 61 00 15 */	lbz r3, 0x15(r1)
/* 8060DAD0  3C A0 80 65 */	lis r5, lit_430@ha /* 0x8064C134@ha */
/* 8060DAD4  90 C1 00 34 */	stw r6, 0x34(r1)
/* 8060DAD8  3C C0 80 65 */	lis r6, lit_427@ha /* 0x8064C12C@ha */
/* 8060DADC  88 01 00 16 */	lbz r0, 0x16(r1)
/* 8060DAE0  90 81 00 30 */	stw r4, 0x30(r1)
/* 8060DAE4  C8 65 C1 34 */	lfd f3, lit_430@l(r5)  /* 0x8064C134@l */
/* 8060DAE8  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8060DAEC  90 61 00 44 */	stw r3, 0x44(r1)
/* 8060DAF0  EC 20 18 28 */	fsubs f1, f0, f3
/* 8060DAF4  C0 86 C1 2C */	lfs f4, lit_427@l(r6)  /* 0x8064C12C@l */
/* 8060DAF8  90 81 00 40 */	stw r4, 0x40(r1)
/* 8060DAFC  EC 44 00 72 */	fmuls f2, f4, f1
/* 8060DB00  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 8060DB04  90 01 00 54 */	stw r0, 0x54(r1)
/* 8060DB08  EC 20 18 28 */	fsubs f1, f0, f3
/* 8060DB0C  90 81 00 50 */	stw r4, 0x50(r1)
/* 8060DB10  FC 40 10 1E */	fctiwz f2, f2
/* 8060DB14  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 8060DB18  EC 24 00 72 */	fmuls f1, f4, f1
/* 8060DB1C  D8 41 00 38 */	stfd f2, 0x38(r1)
/* 8060DB20  EC 00 18 28 */	fsubs f0, f0, f3
/* 8060DB24  FC 20 08 1E */	fctiwz f1, f1
/* 8060DB28  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8060DB2C  EC 04 00 32 */	fmuls f0, f4, f0
/* 8060DB30  98 01 00 14 */	stb r0, 0x14(r1)
/* 8060DB34  D8 21 00 48 */	stfd f1, 0x48(r1)
/* 8060DB38  FC 00 00 1E */	fctiwz f0, f0
/* 8060DB3C  80 61 00 4C */	lwz r3, 0x4c(r1)
/* 8060DB40  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 8060DB44  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8060DB48  98 61 00 15 */	stb r3, 0x15(r1)
/* 8060DB4C  98 01 00 16 */	stb r0, 0x16(r1)
lbl_8060DB50:
/* 8060DB50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8060DB54  38 61 00 0C */	addi r3, r1, 0xc
/* 8060DB58  80 FF 60 9C */	lwz r7, 0x609c(r31)
/* 8060DB5C  38 80 00 14 */	li r4, 0x14
/* 8060DB60  90 01 00 0C */	stw r0, 0xc(r1)
/* 8060DB64  38 A0 00 32 */	li r5, 0x32
/* 8060DB68  38 C0 00 01 */	li r6, 1
/* 8060DB6C  81 87 00 30 */	lwz r12, 0x30(r7)
/* 8060DB70  7D 89 03 A6 */	mtctr r12
/* 8060DB74  4E 80 04 21 */	bctrl 
lbl_8060DB78:
/* 8060DB78  2C 1E 00 48 */	cmpwi r30, 0x48
/* 8060DB7C  40 82 00 3C */	bne lbl_8060DBB8
/* 8060DB80  80 BC 00 10 */	lwz r5, 0x10(r28)
/* 8060DB84  3C 60 80 65 */	lis r3, lit_428@ha /* 0x8064C130@ha */
/* 8060DB88  80 1C 00 14 */	lwz r0, 0x14(r28)
/* 8060DB8C  38 81 00 24 */	addi r4, r1, 0x24
/* 8060DB90  C0 03 C1 30 */	lfs f0, lit_428@l(r3)  /* 0x8064C130@l */
/* 8060DB94  38 60 21 0F */	li r3, 0x210f
/* 8060DB98  90 01 00 28 */	stw r0, 0x28(r1)
/* 8060DB9C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8060DBA0  90 A1 00 24 */	stw r5, 0x24(r1)
/* 8060DBA4  EC 01 00 2A */	fadds f0, f1, f0
/* 8060DBA8  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 8060DBAC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8060DBB0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8060DBB4  48 02 03 F5 */	bl sAdo_OngenTrgStart
lbl_8060DBB8:
/* 8060DBB8  39 61 00 70 */	addi r11, r1, 0x70
/* 8060DBBC  4B A8 D3 61 */	bl func_8009AF1C
/* 8060DBC0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8060DBC4  7C 08 03 A6 */	mtlr r0
/* 8060DBC8  38 21 00 70 */	addi r1, r1, 0x70
/* 8060DBCC  4E 80 00 20 */	blr 
