lbl_8040D91C:
/* 8040D91C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8040D920  7C 08 02 A6 */	mflr r0
/* 8040D924  90 01 00 34 */	stw r0, 0x34(r1)
/* 8040D928  39 61 00 30 */	addi r11, r1, 0x30
/* 8040D92C  4B C8 D5 A9 */	bl func_8009AED4
/* 8040D930  7C 7E 1B 78 */	mr r30, r3
/* 8040D934  3C 60 80 64 */	lis r3, data_8064373C@ha /* 0x8064373C@ha */
/* 8040D938  C0 9E 00 20 */	lfs f4, 0x20(r30)
/* 8040D93C  7C 9F 23 78 */	mr r31, r4
/* 8040D940  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 8040D944  7C BD 2B 78 */	mr r29, r5
/* 8040D948  EC 84 01 32 */	fmuls f4, f4, f4
/* 8040D94C  C0 03 37 3C */	lfs f0, data_8064373C@l(r3)  /* 0x8064373C@l */
/* 8040D950  EC 21 00 72 */	fmuls f1, f1, f1
/* 8040D954  EC 84 08 2A */	fadds f4, f4, f1
/* 8040D958  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8040D95C  40 81 00 6C */	ble lbl_8040D9C8
/* 8040D960  FC 20 20 34 */	frsqrte f1, f4
/* 8040D964  3C 60 80 64 */	lis r3, lit_612@ha /* 0x8064375C@ha */
/* 8040D968  38 83 37 5C */	addi r4, r3, lit_612@l /* 0x8064375C@l */
/* 8040D96C  3C 60 80 64 */	lis r3, lit_613@ha /* 0x80643764@ha */
/* 8040D970  C8 64 00 00 */	lfd f3, 0(r4)
/* 8040D974  FC 01 00 72 */	fmul f0, f1, f1
/* 8040D978  C8 43 37 64 */	lfd f2, lit_613@l(r3)  /* 0x80643764@l */
/* 8040D97C  FC 23 00 72 */	fmul f1, f3, f1
/* 8040D980  FC 04 00 32 */	fmul f0, f4, f0
/* 8040D984  FC 02 00 28 */	fsub f0, f2, f0
/* 8040D988  FC 21 00 32 */	fmul f1, f1, f0
/* 8040D98C  FC 01 00 72 */	fmul f0, f1, f1
/* 8040D990  FC 23 00 72 */	fmul f1, f3, f1
/* 8040D994  FC 04 00 32 */	fmul f0, f4, f0
/* 8040D998  FC 02 00 28 */	fsub f0, f2, f0
/* 8040D99C  FC 21 00 32 */	fmul f1, f1, f0
/* 8040D9A0  FC 01 00 72 */	fmul f0, f1, f1
/* 8040D9A4  FC 23 00 72 */	fmul f1, f3, f1
/* 8040D9A8  FC 04 00 32 */	fmul f0, f4, f0
/* 8040D9AC  FC 02 00 28 */	fsub f0, f2, f0
/* 8040D9B0  FC 01 00 32 */	fmul f0, f1, f0
/* 8040D9B4  FC 04 00 32 */	fmul f0, f4, f0
/* 8040D9B8  FC 00 00 18 */	frsp f0, f0
/* 8040D9BC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8040D9C0  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8040D9C4  48 00 00 08 */	b lbl_8040D9CC
lbl_8040D9C8:
/* 8040D9C8  FC 40 20 90 */	fmr f2, f4
lbl_8040D9CC:
/* 8040D9CC  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 8040D9D0  FC 20 00 50 */	fneg f1, f0
/* 8040D9D4  4B C4 F2 41 */	bl func_8005CC14
/* 8040D9D8  3C 60 80 64 */	lis r3, lit_656@ha /* 0x8064376C@ha */
/* 8040D9DC  C0 03 37 6C */	lfs f0, lit_656@l(r3)  /* 0x8064376C@l */
/* 8040D9E0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8040D9E4  FC 00 00 1E */	fctiwz f0, f0
/* 8040D9E8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8040D9EC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8040D9F0  B0 1F 00 00 */	sth r0, 0(r31)
/* 8040D9F4  A8 1F 00 00 */	lha r0, 0(r31)
/* 8040D9F8  2C 00 40 00 */	cmpwi r0, 0x4000
/* 8040D9FC  41 82 00 0C */	beq lbl_8040DA08
/* 8040DA00  2C 00 C0 00 */	cmpwi r0, -16384
/* 8040DA04  40 82 00 3C */	bne lbl_8040DA40
lbl_8040DA08:
/* 8040DA08  38 00 00 00 */	li r0, 0
/* 8040DA0C  B0 1F 00 04 */	sth r0, 4(r31)
/* 8040DA10  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8040DA14  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8040DA18  FC 20 00 50 */	fneg f1, f0
/* 8040DA1C  4B C4 F1 F9 */	bl func_8005CC14
/* 8040DA20  3C 60 80 64 */	lis r3, lit_656@ha /* 0x8064376C@ha */
/* 8040DA24  C0 03 37 6C */	lfs f0, lit_656@l(r3)  /* 0x8064376C@l */
/* 8040DA28  EC 00 00 72 */	fmuls f0, f0, f1
/* 8040DA2C  FC 00 00 1E */	fctiwz f0, f0
/* 8040DA30  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8040DA34  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8040DA38  B0 1F 00 02 */	sth r0, 2(r31)
/* 8040DA3C  48 00 01 B0 */	b lbl_8040DBEC
lbl_8040DA40:
/* 8040DA40  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 8040DA44  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 8040DA48  4B C4 F1 CD */	bl func_8005CC14
/* 8040DA4C  3C 60 80 64 */	lis r3, lit_656@ha /* 0x8064376C@ha */
/* 8040DA50  2C 1D 00 00 */	cmpwi r29, 0
/* 8040DA54  C0 03 37 6C */	lfs f0, lit_656@l(r3)  /* 0x8064376C@l */
/* 8040DA58  EC 00 00 72 */	fmuls f0, f0, f1
/* 8040DA5C  FC 00 00 1E */	fctiwz f0, f0
/* 8040DA60  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8040DA64  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8040DA68  B0 1F 00 02 */	sth r0, 2(r31)
/* 8040DA6C  40 82 00 30 */	bne lbl_8040DA9C
/* 8040DA70  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8040DA74  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 8040DA78  4B C4 F1 9D */	bl func_8005CC14
/* 8040DA7C  3C 60 80 64 */	lis r3, lit_656@ha /* 0x8064376C@ha */
/* 8040DA80  C0 03 37 6C */	lfs f0, lit_656@l(r3)  /* 0x8064376C@l */
/* 8040DA84  EC 00 00 72 */	fmuls f0, f0, f1
/* 8040DA88  FC 00 00 1E */	fctiwz f0, f0
/* 8040DA8C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8040DA90  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8040DA94  B0 1F 00 04 */	sth r0, 4(r31)
/* 8040DA98  48 00 01 54 */	b lbl_8040DBEC
lbl_8040DA9C:
/* 8040DA9C  C0 9E 00 00 */	lfs f4, 0(r30)
/* 8040DAA0  3C 60 80 64 */	lis r3, data_8064373C@ha /* 0x8064373C@ha */
/* 8040DAA4  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8040DAA8  EC 84 01 32 */	fmuls f4, f4, f4
/* 8040DAAC  C0 BE 00 04 */	lfs f5, 4(r30)
/* 8040DAB0  EC 40 00 32 */	fmuls f2, f0, f0
/* 8040DAB4  C0 03 37 3C */	lfs f0, data_8064373C@l(r3)  /* 0x8064373C@l */
/* 8040DAB8  EC 25 01 72 */	fmuls f1, f5, f5
/* 8040DABC  EC 84 10 2A */	fadds f4, f4, f2
/* 8040DAC0  EC 84 08 2A */	fadds f4, f4, f1
/* 8040DAC4  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8040DAC8  40 81 00 68 */	ble lbl_8040DB30
/* 8040DACC  FC 20 20 34 */	frsqrte f1, f4
/* 8040DAD0  3C 60 80 64 */	lis r3, lit_612@ha /* 0x8064375C@ha */
/* 8040DAD4  38 83 37 5C */	addi r4, r3, lit_612@l /* 0x8064375C@l */
/* 8040DAD8  3C 60 80 64 */	lis r3, lit_613@ha /* 0x80643764@ha */
/* 8040DADC  C8 64 00 00 */	lfd f3, 0(r4)
/* 8040DAE0  FC 01 00 72 */	fmul f0, f1, f1
/* 8040DAE4  C8 43 37 64 */	lfd f2, lit_613@l(r3)  /* 0x80643764@l */
/* 8040DAE8  FC 23 00 72 */	fmul f1, f3, f1
/* 8040DAEC  FC 04 00 32 */	fmul f0, f4, f0
/* 8040DAF0  FC 02 00 28 */	fsub f0, f2, f0
/* 8040DAF4  FC 21 00 32 */	fmul f1, f1, f0
/* 8040DAF8  FC 01 00 72 */	fmul f0, f1, f1
/* 8040DAFC  FC 23 00 72 */	fmul f1, f3, f1
/* 8040DB00  FC 04 00 32 */	fmul f0, f4, f0
/* 8040DB04  FC 02 00 28 */	fsub f0, f2, f0
/* 8040DB08  FC 21 00 32 */	fmul f1, f1, f0
/* 8040DB0C  FC 01 00 72 */	fmul f0, f1, f1
/* 8040DB10  FC 23 00 72 */	fmul f1, f3, f1
/* 8040DB14  FC 04 00 32 */	fmul f0, f4, f0
/* 8040DB18  FC 02 00 28 */	fsub f0, f2, f0
/* 8040DB1C  FC 01 00 32 */	fmul f0, f1, f0
/* 8040DB20  FC 04 00 32 */	fmul f0, f4, f0
/* 8040DB24  FC 00 00 18 */	frsp f0, f0
/* 8040DB28  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8040DB2C  C0 81 00 0C */	lfs f4, 0xc(r1)
lbl_8040DB30:
/* 8040DB30  EC 25 20 24 */	fdivs f1, f5, f4
/* 8040DB34  C0 BE 00 10 */	lfs f5, 0x10(r30)
/* 8040DB38  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 8040DB3C  3C 60 80 64 */	lis r3, data_8064373C@ha /* 0x8064373C@ha */
/* 8040DB40  C0 DE 00 14 */	lfs f6, 0x14(r30)
/* 8040DB44  C0 03 37 3C */	lfs f0, data_8064373C@l(r3)  /* 0x8064373C@l */
/* 8040DB48  EC 62 00 B2 */	fmuls f3, f2, f2
/* 8040DB4C  EC A5 01 72 */	fmuls f5, f5, f5
/* 8040DB50  EC 46 01 B2 */	fmuls f2, f6, f6
/* 8040DB54  EC A5 18 2A */	fadds f5, f5, f3
/* 8040DB58  EC A5 10 2A */	fadds f5, f5, f2
/* 8040DB5C  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 8040DB60  40 81 00 68 */	ble lbl_8040DBC8
/* 8040DB64  FC 40 28 34 */	frsqrte f2, f5
/* 8040DB68  3C 60 80 64 */	lis r3, lit_612@ha /* 0x8064375C@ha */
/* 8040DB6C  38 83 37 5C */	addi r4, r3, lit_612@l /* 0x8064375C@l */
/* 8040DB70  3C 60 80 64 */	lis r3, lit_613@ha /* 0x80643764@ha */
/* 8040DB74  C8 84 00 00 */	lfd f4, 0(r4)
/* 8040DB78  FC 02 00 B2 */	fmul f0, f2, f2
/* 8040DB7C  C8 63 37 64 */	lfd f3, lit_613@l(r3)  /* 0x80643764@l */
/* 8040DB80  FC 44 00 B2 */	fmul f2, f4, f2
/* 8040DB84  FC 05 00 32 */	fmul f0, f5, f0
/* 8040DB88  FC 03 00 28 */	fsub f0, f3, f0
/* 8040DB8C  FC 42 00 32 */	fmul f2, f2, f0
/* 8040DB90  FC 02 00 B2 */	fmul f0, f2, f2
/* 8040DB94  FC 44 00 B2 */	fmul f2, f4, f2
/* 8040DB98  FC 05 00 32 */	fmul f0, f5, f0
/* 8040DB9C  FC 03 00 28 */	fsub f0, f3, f0
/* 8040DBA0  FC 42 00 32 */	fmul f2, f2, f0
/* 8040DBA4  FC 02 00 B2 */	fmul f0, f2, f2
/* 8040DBA8  FC 44 00 B2 */	fmul f2, f4, f2
/* 8040DBAC  FC 05 00 32 */	fmul f0, f5, f0
/* 8040DBB0  FC 03 00 28 */	fsub f0, f3, f0
/* 8040DBB4  FC 02 00 32 */	fmul f0, f2, f0
/* 8040DBB8  FC 05 00 32 */	fmul f0, f5, f0
/* 8040DBBC  FC 00 00 18 */	frsp f0, f0
/* 8040DBC0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8040DBC4  C0 A1 00 08 */	lfs f5, 8(r1)
lbl_8040DBC8:
/* 8040DBC8  EC 46 28 24 */	fdivs f2, f6, f5
/* 8040DBCC  4B C4 F0 49 */	bl func_8005CC14
/* 8040DBD0  3C 60 80 64 */	lis r3, lit_656@ha /* 0x8064376C@ha */
/* 8040DBD4  C0 03 37 6C */	lfs f0, lit_656@l(r3)  /* 0x8064376C@l */
/* 8040DBD8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8040DBDC  FC 00 00 1E */	fctiwz f0, f0
/* 8040DBE0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8040DBE4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8040DBE8  B0 1F 00 04 */	sth r0, 4(r31)
lbl_8040DBEC:
/* 8040DBEC  39 61 00 30 */	addi r11, r1, 0x30
/* 8040DBF0  4B C8 D3 31 */	bl func_8009AF20
/* 8040DBF4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8040DBF8  7C 08 03 A6 */	mtlr r0
/* 8040DBFC  38 21 00 30 */	addi r1, r1, 0x30
/* 8040DC00  4E 80 00 20 */	blr 
