lbl_8058DB74:
/* 8058DB74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058DB78  7C 08 02 A6 */	mflr r0
/* 8058DB7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058DB80  39 61 00 20 */	addi r11, r1, 0x20
/* 8058DB84  4B B0 D3 51 */	bl func_8009AED4
/* 8058DB88  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8058DB8C  7C 7D 1B 78 */	mr r29, r3
/* 8058DB90  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8058DB94  7C 9E 23 78 */	mr r30, r4
/* 8058DB98  3F E5 00 02 */	addis r31, r5, 2
/* 8058DB9C  38 A0 FF FF */	li r5, -1
/* 8058DBA0  80 FF 60 4C */	lwz r7, 0x604c(r31)
/* 8058DBA4  38 C0 00 01 */	li r6, 1
/* 8058DBA8  81 87 01 20 */	lwz r12, 0x120(r7)
/* 8058DBAC  7D 89 03 A6 */	mtctr r12
/* 8058DBB0  4E 80 04 21 */	bctrl 
/* 8058DBB4  2C 03 00 00 */	cmpwi r3, 0
/* 8058DBB8  40 82 00 24 */	bne lbl_8058DBDC
/* 8058DBBC  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 8058DBC0  7F A3 EB 78 */	mr r3, r29
/* 8058DBC4  7F C4 F3 78 */	mr r4, r30
/* 8058DBC8  38 A0 FF FF */	li r5, -1
/* 8058DBCC  81 86 01 20 */	lwz r12, 0x120(r6)
/* 8058DBD0  38 C0 00 02 */	li r6, 2
/* 8058DBD4  7D 89 03 A6 */	mtctr r12
/* 8058DBD8  4E 80 04 21 */	bctrl 
lbl_8058DBDC:
/* 8058DBDC  88 1D 07 F5 */	lbz r0, 0x7f5(r29)
/* 8058DBE0  28 00 00 16 */	cmplwi r0, 0x16
/* 8058DBE4  40 82 00 70 */	bne lbl_8058DC54
/* 8058DBE8  AB FD 00 DE */	lha r31, 0xde(r29)
/* 8058DBEC  7F E3 FB 78 */	mr r3, r31
/* 8058DBF0  4B E2 CF 01 */	bl sin_s
/* 8058DBF4  3C 80 80 65 */	lis r4, data_80649BC4@ha /* 0x80649BC4@ha */
/* 8058DBF8  3C 60 80 65 */	lis r3, lit_535@ha /* 0x80649BC8@ha */
/* 8058DBFC  C0 64 9B C4 */	lfs f3, data_80649BC4@l(r4)  /* 0x80649BC4@l */
/* 8058DC00  C0 03 9B C8 */	lfs f0, lit_535@l(r3)  /* 0x80649BC8@l */
/* 8058DC04  7F E3 FB 78 */	mr r3, r31
/* 8058DC08  EC 23 00 72 */	fmuls f1, f3, f1
/* 8058DC0C  C0 5D 00 48 */	lfs f2, 0x48(r29)
/* 8058DC10  EC 22 08 2A */	fadds f1, f2, f1
/* 8058DC14  D0 3D 08 20 */	stfs f1, 0x820(r29)
/* 8058DC18  C0 3D 00 4C */	lfs f1, 0x4c(r29)
/* 8058DC1C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8058DC20  D0 1D 08 24 */	stfs f0, 0x824(r29)
/* 8058DC24  4B E2 CE 79 */	bl cos_s
/* 8058DC28  3C 60 80 65 */	lis r3, data_80649BC4@ha /* 0x80649BC4@ha */
/* 8058DC2C  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 8058DC30  38 83 9B C4 */	addi r4, r3, data_80649BC4@l /* 0x80649BC4@l */
/* 8058DC34  38 60 00 03 */	li r3, 3
/* 8058DC38  C0 44 00 00 */	lfs f2, 0(r4)
/* 8058DC3C  38 00 00 02 */	li r0, 2
/* 8058DC40  EC 22 00 72 */	fmuls f1, f2, f1
/* 8058DC44  EC 00 08 2A */	fadds f0, f0, f1
/* 8058DC48  D0 1D 08 28 */	stfs f0, 0x828(r29)
/* 8058DC4C  98 7D 08 1A */	stb r3, 0x81a(r29)
/* 8058DC50  98 1D 08 1B */	stb r0, 0x81b(r29)
lbl_8058DC54:
/* 8058DC54  39 61 00 20 */	addi r11, r1, 0x20
/* 8058DC58  4B B0 D2 C9 */	bl func_8009AF20
/* 8058DC5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058DC60  7C 08 03 A6 */	mtlr r0
/* 8058DC64  38 21 00 20 */	addi r1, r1, 0x20
/* 8058DC68  4E 80 00 20 */	blr 
