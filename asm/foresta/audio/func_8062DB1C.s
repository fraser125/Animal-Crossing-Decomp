lbl_8062DB1C:
/* 8062DB1C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8062DB20  7C 08 02 A6 */	mflr r0
/* 8062DB24  90 01 00 54 */	stw r0, 0x54(r1)
/* 8062DB28  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8062DB2C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8062DB30  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8062DB34  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 8062DB38  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 8062DB3C  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 8062DB40  39 61 00 20 */	addi r11, r1, 0x20
/* 8062DB44  4B A6 D3 91 */	bl func_8009AED4
/* 8062DB48  3C C0 81 1C */	lis r6, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8062DB4C  7C 7D 1B 78 */	mr r29, r3
/* 8062DB50  38 66 52 F0 */	addi r3, r6, data_811C52F0@l /* 0x811C52F0@l */
/* 8062DB54  7C 9E 23 78 */	mr r30, r4
/* 8062DB58  80 63 00 00 */	lwz r3, 0(r3)
/* 8062DB5C  7C BF 2B 78 */	mr r31, r5
/* 8062DB60  4B D5 16 61 */	bl Camera2_getMicPos_p
/* 8062DB64  C0 7F 00 00 */	lfs f3, 0(r31)
/* 8062DB68  C0 43 00 00 */	lfs f2, 0(r3)
/* 8062DB6C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8062DB70  C0 03 00 08 */	lfs f0, 8(r3)
/* 8062DB74  EF E3 10 28 */	fsubs f31, f3, f2
/* 8062DB78  C0 7F 00 04 */	lfs f3, 4(r31)
/* 8062DB7C  EF A1 00 28 */	fsubs f29, f1, f0
/* 8062DB80  C0 03 00 04 */	lfs f0, 4(r3)
/* 8062DB84  FC 40 F8 90 */	fmr f2, f31
/* 8062DB88  EF C3 00 28 */	fsubs f30, f3, f0
/* 8062DB8C  FC 20 E8 90 */	fmr f1, f29
/* 8062DB90  4B DD E4 71 */	bl atans_table
/* 8062DB94  28 1D 00 00 */	cmplwi r29, 0
/* 8062DB98  41 82 00 90 */	beq lbl_8062DC28
/* 8062DB9C  EC 5F 07 F2 */	fmuls f2, f31, f31
/* 8062DBA0  3C 80 80 65 */	lis r4, data_8064D254@ha /* 0x8064D254@ha */
/* 8062DBA4  EC 3E 07 B2 */	fmuls f1, f30, f30
/* 8062DBA8  C0 04 D2 54 */	lfs f0, data_8064D254@l(r4)  /* 0x8064D254@l */
/* 8062DBAC  EC 7D 07 72 */	fmuls f3, f29, f29
/* 8062DBB0  EC 22 08 2A */	fadds f1, f2, f1
/* 8062DBB4  EC 83 08 2A */	fadds f4, f3, f1
/* 8062DBB8  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8062DBBC  40 81 00 68 */	ble lbl_8062DC24
/* 8062DBC0  FC 20 20 34 */	frsqrte f1, f4
/* 8062DBC4  3C 80 80 65 */	lis r4, lit_388@ha /* 0x8064D25C@ha */
/* 8062DBC8  38 A4 D2 5C */	addi r5, r4, lit_388@l /* 0x8064D25C@l */
/* 8062DBCC  3C 80 80 65 */	lis r4, lit_389@ha /* 0x8064D264@ha */
/* 8062DBD0  C8 65 00 00 */	lfd f3, 0(r5)
/* 8062DBD4  FC 01 00 72 */	fmul f0, f1, f1
/* 8062DBD8  C8 44 D2 64 */	lfd f2, lit_389@l(r4)  /* 0x8064D264@l */
/* 8062DBDC  FC 23 00 72 */	fmul f1, f3, f1
/* 8062DBE0  FC 04 00 32 */	fmul f0, f4, f0
/* 8062DBE4  FC 02 00 28 */	fsub f0, f2, f0
/* 8062DBE8  FC 21 00 32 */	fmul f1, f1, f0
/* 8062DBEC  FC 01 00 72 */	fmul f0, f1, f1
/* 8062DBF0  FC 23 00 72 */	fmul f1, f3, f1
/* 8062DBF4  FC 04 00 32 */	fmul f0, f4, f0
/* 8062DBF8  FC 02 00 28 */	fsub f0, f2, f0
/* 8062DBFC  FC 21 00 32 */	fmul f1, f1, f0
/* 8062DC00  FC 01 00 72 */	fmul f0, f1, f1
/* 8062DC04  FC 23 00 72 */	fmul f1, f3, f1
/* 8062DC08  FC 04 00 32 */	fmul f0, f4, f0
/* 8062DC0C  FC 02 00 28 */	fsub f0, f2, f0
/* 8062DC10  FC 01 00 32 */	fmul f0, f1, f0
/* 8062DC14  FC 04 00 32 */	fmul f0, f4, f0
/* 8062DC18  FC 00 00 18 */	frsp f0, f0
/* 8062DC1C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8062DC20  C0 81 00 08 */	lfs f4, 8(r1)
lbl_8062DC24:
/* 8062DC24  D0 9D 00 00 */	stfs f4, 0(r29)
lbl_8062DC28:
/* 8062DC28  28 1E 00 00 */	cmplwi r30, 0
/* 8062DC2C  41 82 00 08 */	beq lbl_8062DC34
/* 8062DC30  B0 7E 00 00 */	sth r3, 0(r30)
lbl_8062DC34:
/* 8062DC34  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8062DC38  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8062DC3C  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 8062DC40  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8062DC44  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 8062DC48  39 61 00 20 */	addi r11, r1, 0x20
/* 8062DC4C  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 8062DC50  4B A6 D2 D1 */	bl func_8009AF20
/* 8062DC54  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8062DC58  7C 08 03 A6 */	mtlr r0
/* 8062DC5C  38 21 00 50 */	addi r1, r1, 0x50
/* 8062DC60  4E 80 00 20 */	blr 
