lbl_8045D9F4:
/* 8045D9F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045D9F8  7C 08 02 A6 */	mflr r0
/* 8045D9FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045DA00  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8045DA04  7C 9F 23 78 */	mr r31, r4
/* 8045DA08  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8045DA0C  7C 7E 1B 78 */	mr r30, r3
/* 8045DA10  80 03 00 00 */	lwz r0, 0(r3)
/* 8045DA14  2C 00 00 03 */	cmpwi r0, 3
/* 8045DA18  40 82 02 0C */	bne lbl_8045DC24
/* 8045DA1C  3C 60 80 64 */	lis r3, lit_509@ha /* 0x806445FC@ha */
/* 8045DA20  3C 80 80 64 */	lis r4, lit_510@ha /* 0x80644604@ha */
/* 8045DA24  38 C3 45 FC */	addi r6, r3, lit_509@l /* 0x806445FC@l */
/* 8045DA28  C8 C6 00 00 */	lfd f6, 0(r6)
/* 8045DA2C  38 A4 46 04 */	addi r5, r4, lit_510@l /* 0x80644604@l */
/* 8045DA30  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8045DA34  C8 A6 00 00 */	lfd f5, 0(r6)
/* 8045DA38  FC 60 30 34 */	frsqrte f3, f6
/* 8045DA3C  38 83 46 0C */	addi r4, r3, lit_511@l /* 0x8064460C@l */
/* 8045DA40  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045DA44  C8 85 00 00 */	lfd f4, 0(r5)
/* 8045DA48  C0 44 00 00 */	lfs f2, 0(r4)
/* 8045DA4C  FC 23 00 F2 */	fmul f1, f3, f3
/* 8045DA50  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045DA54  FC 65 00 F2 */	fmul f3, f5, f3
/* 8045DA58  FC 26 00 72 */	fmul f1, f6, f1
/* 8045DA5C  FC 24 08 28 */	fsub f1, f4, f1
/* 8045DA60  FC 63 00 72 */	fmul f3, f3, f1
/* 8045DA64  FC 23 00 F2 */	fmul f1, f3, f3
/* 8045DA68  FC 65 00 F2 */	fmul f3, f5, f3
/* 8045DA6C  FC 26 00 72 */	fmul f1, f6, f1
/* 8045DA70  FC 24 08 28 */	fsub f1, f4, f1
/* 8045DA74  FC 63 00 72 */	fmul f3, f3, f1
/* 8045DA78  FC 23 00 F2 */	fmul f1, f3, f3
/* 8045DA7C  FC 65 00 F2 */	fmul f3, f5, f3
/* 8045DA80  FC 26 00 72 */	fmul f1, f6, f1
/* 8045DA84  FC 24 08 28 */	fsub f1, f4, f1
/* 8045DA88  FC 23 00 72 */	fmul f1, f3, f1
/* 8045DA8C  FC 26 00 72 */	fmul f1, f6, f1
/* 8045DA90  FC 20 08 18 */	frsp f1, f1
/* 8045DA94  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8045DA98  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8045DA9C  EC 22 08 28 */	fsubs f1, f2, f1
/* 8045DAA0  EC 42 08 28 */	fsubs f2, f2, f1
/* 8045DAA4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8045DAA8  40 81 00 54 */	ble lbl_8045DAFC
/* 8045DAAC  FC 20 10 34 */	frsqrte f1, f2
/* 8045DAB0  FC 01 00 72 */	fmul f0, f1, f1
/* 8045DAB4  FC 25 00 72 */	fmul f1, f5, f1
/* 8045DAB8  FC 02 00 32 */	fmul f0, f2, f0
/* 8045DABC  FC 04 00 28 */	fsub f0, f4, f0
/* 8045DAC0  FC 21 00 32 */	fmul f1, f1, f0
/* 8045DAC4  FC 01 00 72 */	fmul f0, f1, f1
/* 8045DAC8  FC 25 00 72 */	fmul f1, f5, f1
/* 8045DACC  FC 02 00 32 */	fmul f0, f2, f0
/* 8045DAD0  FC 04 00 28 */	fsub f0, f4, f0
/* 8045DAD4  FC 21 00 32 */	fmul f1, f1, f0
/* 8045DAD8  FC 01 00 72 */	fmul f0, f1, f1
/* 8045DADC  FC 25 00 72 */	fmul f1, f5, f1
/* 8045DAE0  FC 02 00 32 */	fmul f0, f2, f0
/* 8045DAE4  FC 04 00 28 */	fsub f0, f4, f0
/* 8045DAE8  FC 01 00 32 */	fmul f0, f1, f0
/* 8045DAEC  FC 02 00 32 */	fmul f0, f2, f0
/* 8045DAF0  FC 00 00 18 */	frsp f0, f0
/* 8045DAF4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8045DAF8  C0 41 00 10 */	lfs f2, 0x10(r1)
lbl_8045DAFC:
/* 8045DAFC  3C 80 80 64 */	lis r4, lit_511@ha /* 0x8064460C@ha */
/* 8045DB00  38 7E 00 6A */	addi r3, r30, 0x6a
/* 8045DB04  38 A4 46 0C */	addi r5, r4, lit_511@l /* 0x8064460C@l */
/* 8045DB08  38 80 40 00 */	li r4, 0x4000
/* 8045DB0C  C0 05 00 00 */	lfs f0, 0(r5)
/* 8045DB10  38 A0 01 C7 */	li r5, 0x1c7
/* 8045DB14  38 C0 00 2D */	li r6, 0x2d
/* 8045DB18  EC 20 10 28 */	fsubs f1, f0, f2
/* 8045DB1C  4B F5 D7 F5 */	bl add_calc_short_angle2
/* 8045DB20  3C 60 80 64 */	lis r3, lit_509@ha /* 0x806445FC@ha */
/* 8045DB24  3C 80 80 64 */	lis r4, lit_510@ha /* 0x80644604@ha */
/* 8045DB28  38 C3 45 FC */	addi r6, r3, lit_509@l /* 0x806445FC@l */
/* 8045DB2C  C8 C6 00 00 */	lfd f6, 0(r6)
/* 8045DB30  38 A4 46 04 */	addi r5, r4, lit_510@l /* 0x80644604@l */
/* 8045DB34  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8045DB38  C8 A6 00 00 */	lfd f5, 0(r6)
/* 8045DB3C  FC 60 30 34 */	frsqrte f3, f6
/* 8045DB40  38 83 46 0C */	addi r4, r3, lit_511@l /* 0x8064460C@l */
/* 8045DB44  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045DB48  C8 85 00 00 */	lfd f4, 0(r5)
/* 8045DB4C  C0 44 00 00 */	lfs f2, 0(r4)
/* 8045DB50  FC 23 00 F2 */	fmul f1, f3, f3
/* 8045DB54  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045DB58  FC 65 00 F2 */	fmul f3, f5, f3
/* 8045DB5C  FC 26 00 72 */	fmul f1, f6, f1
/* 8045DB60  FC 24 08 28 */	fsub f1, f4, f1
/* 8045DB64  FC 63 00 72 */	fmul f3, f3, f1
/* 8045DB68  FC 23 00 F2 */	fmul f1, f3, f3
/* 8045DB6C  FC 65 00 F2 */	fmul f3, f5, f3
/* 8045DB70  FC 26 00 72 */	fmul f1, f6, f1
/* 8045DB74  FC 24 08 28 */	fsub f1, f4, f1
/* 8045DB78  FC 63 00 72 */	fmul f3, f3, f1
/* 8045DB7C  FC 23 00 F2 */	fmul f1, f3, f3
/* 8045DB80  FC 65 00 F2 */	fmul f3, f5, f3
/* 8045DB84  FC 26 00 72 */	fmul f1, f6, f1
/* 8045DB88  FC 24 08 28 */	fsub f1, f4, f1
/* 8045DB8C  FC 23 00 72 */	fmul f1, f3, f1
/* 8045DB90  FC 26 00 72 */	fmul f1, f6, f1
/* 8045DB94  FC 20 08 18 */	frsp f1, f1
/* 8045DB98  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8045DB9C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8045DBA0  EC 22 08 28 */	fsubs f1, f2, f1
/* 8045DBA4  EC 42 08 28 */	fsubs f2, f2, f1
/* 8045DBA8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8045DBAC  40 81 00 54 */	ble lbl_8045DC00
/* 8045DBB0  FC 20 10 34 */	frsqrte f1, f2
/* 8045DBB4  FC 01 00 72 */	fmul f0, f1, f1
/* 8045DBB8  FC 25 00 72 */	fmul f1, f5, f1
/* 8045DBBC  FC 02 00 32 */	fmul f0, f2, f0
/* 8045DBC0  FC 04 00 28 */	fsub f0, f4, f0
/* 8045DBC4  FC 21 00 32 */	fmul f1, f1, f0
/* 8045DBC8  FC 01 00 72 */	fmul f0, f1, f1
/* 8045DBCC  FC 25 00 72 */	fmul f1, f5, f1
/* 8045DBD0  FC 02 00 32 */	fmul f0, f2, f0
/* 8045DBD4  FC 04 00 28 */	fsub f0, f4, f0
/* 8045DBD8  FC 21 00 32 */	fmul f1, f1, f0
/* 8045DBDC  FC 01 00 72 */	fmul f0, f1, f1
/* 8045DBE0  FC 25 00 72 */	fmul f1, f5, f1
/* 8045DBE4  FC 02 00 32 */	fmul f0, f2, f0
/* 8045DBE8  FC 04 00 28 */	fsub f0, f4, f0
/* 8045DBEC  FC 01 00 32 */	fmul f0, f1, f0
/* 8045DBF0  FC 02 00 32 */	fmul f0, f2, f0
/* 8045DBF4  FC 00 00 18 */	frsp f0, f0
/* 8045DBF8  D0 01 00 08 */	stfs f0, 8(r1)
/* 8045DBFC  C0 41 00 08 */	lfs f2, 8(r1)
lbl_8045DC00:
/* 8045DC00  3C 80 80 64 */	lis r4, lit_511@ha /* 0x8064460C@ha */
/* 8045DC04  38 7E 00 68 */	addi r3, r30, 0x68
/* 8045DC08  38 A4 46 0C */	addi r5, r4, lit_511@l /* 0x8064460C@l */
/* 8045DC0C  38 80 00 00 */	li r4, 0
/* 8045DC10  C0 05 00 00 */	lfs f0, 0(r5)
/* 8045DC14  38 A0 02 AA */	li r5, 0x2aa
/* 8045DC18  38 C0 00 5B */	li r6, 0x5b
/* 8045DC1C  EC 20 10 28 */	fsubs f1, f0, f2
/* 8045DC20  4B F5 D6 F1 */	bl add_calc_short_angle2
lbl_8045DC24:
/* 8045DC24  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 8045DC28  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 8045DC2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8045DC30  40 81 00 20 */	ble lbl_8045DC50
/* 8045DC34  A8 1E 00 68 */	lha r0, 0x68(r30)
/* 8045DC38  2C 00 00 00 */	cmpwi r0, 0
/* 8045DC3C  40 82 00 14 */	bne lbl_8045DC50
/* 8045DC40  7F C3 F3 78 */	mr r3, r30
/* 8045DC44  7F E4 FB 78 */	mr r4, r31
/* 8045DC48  4B FF EE AD */	bl minsect_chou_normal_process_init
/* 8045DC4C  48 00 00 38 */	b lbl_8045DC84
lbl_8045DC50:
/* 8045DC50  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045DC54  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 8045DC58  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045DC5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8045DC60  40 80 00 24 */	bge lbl_8045DC84
/* 8045DC64  4B BF F0 91 */	bl fqrand
/* 8045DC68  3C 80 80 64 */	lis r4, lit_507@ha /* 0x806445EC@ha */
/* 8045DC6C  3C 60 80 64 */	lis r3, lit_506@ha /* 0x806445E8@ha */
/* 8045DC70  C0 44 45 EC */	lfs f2, lit_507@l(r4)  /* 0x806445EC@l */
/* 8045DC74  C0 03 45 E8 */	lfs f0, lit_506@l(r3)  /* 0x806445E8@l */
/* 8045DC78  EC 22 08 2A */	fadds f1, f2, f1
/* 8045DC7C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045DC80  D0 1E 00 38 */	stfs f0, 0x38(r30)
lbl_8045DC84:
/* 8045DC84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045DC88  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8045DC8C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8045DC90  7C 08 03 A6 */	mtlr r0
/* 8045DC94  38 21 00 20 */	addi r1, r1, 0x20
/* 8045DC98  4E 80 00 20 */	blr 
