lbl_80441380:
/* 80441380  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80441384  7C 08 02 A6 */	mflr r0
/* 80441388  3C 80 80 64 */	lis r4, lit_920@ha /* 0x806442DC@ha */
/* 8044138C  3C A0 80 64 */	lis r5, lit_469@ha /* 0x8064424C@ha */
/* 80441390  38 C4 42 DC */	addi r6, r4, lit_920@l /* 0x806442DC@l */
/* 80441394  90 01 00 34 */	stw r0, 0x34(r1)
/* 80441398  C8 C6 00 00 */	lfd f6, 0(r6)
/* 8044139C  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 804413A0  38 C4 42 54 */	addi r6, r4, lit_470@l /* 0x80644254@l */
/* 804413A4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804413A8  FC 60 30 34 */	frsqrte f3, f6
/* 804413AC  C8 A5 42 4C */	lfd f5, lit_469@l(r5)  /* 0x8064424C@l */
/* 804413B0  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 804413B4  C8 86 00 00 */	lfd f4, 0(r6)
/* 804413B8  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 804413BC  7C 7F 1B 78 */	mr r31, r3
/* 804413C0  FC 23 00 F2 */	fmul f1, f3, f3
/* 804413C4  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 804413C8  C0 45 00 00 */	lfs f2, 0(r5)
/* 804413CC  FC 65 00 F2 */	fmul f3, f5, f3
/* 804413D0  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 804413D4  FC 26 00 72 */	fmul f1, f6, f1
/* 804413D8  FC 24 08 28 */	fsub f1, f4, f1
/* 804413DC  FC 63 00 72 */	fmul f3, f3, f1
/* 804413E0  FC 23 00 F2 */	fmul f1, f3, f3
/* 804413E4  FC 65 00 F2 */	fmul f3, f5, f3
/* 804413E8  FC 26 00 72 */	fmul f1, f6, f1
/* 804413EC  FC 24 08 28 */	fsub f1, f4, f1
/* 804413F0  FC 63 00 72 */	fmul f3, f3, f1
/* 804413F4  FC 23 00 F2 */	fmul f1, f3, f3
/* 804413F8  FC 65 00 F2 */	fmul f3, f5, f3
/* 804413FC  FC 26 00 72 */	fmul f1, f6, f1
/* 80441400  FC 24 08 28 */	fsub f1, f4, f1
/* 80441404  FC 23 00 72 */	fmul f1, f3, f1
/* 80441408  FC 26 00 72 */	fmul f1, f6, f1
/* 8044140C  FC 20 08 18 */	frsp f1, f1
/* 80441410  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80441414  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80441418  EC 22 08 28 */	fsubs f1, f2, f1
/* 8044141C  EC 42 08 28 */	fsubs f2, f2, f1
/* 80441420  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80441424  40 81 00 54 */	ble lbl_80441478
/* 80441428  FC 20 10 34 */	frsqrte f1, f2
/* 8044142C  FC 01 00 72 */	fmul f0, f1, f1
/* 80441430  FC 25 00 72 */	fmul f1, f5, f1
/* 80441434  FC 02 00 32 */	fmul f0, f2, f0
/* 80441438  FC 04 00 28 */	fsub f0, f4, f0
/* 8044143C  FC 21 00 32 */	fmul f1, f1, f0
/* 80441440  FC 01 00 72 */	fmul f0, f1, f1
/* 80441444  FC 25 00 72 */	fmul f1, f5, f1
/* 80441448  FC 02 00 32 */	fmul f0, f2, f0
/* 8044144C  FC 04 00 28 */	fsub f0, f4, f0
/* 80441450  FC 21 00 32 */	fmul f1, f1, f0
/* 80441454  FC 01 00 72 */	fmul f0, f1, f1
/* 80441458  FC 25 00 72 */	fmul f1, f5, f1
/* 8044145C  FC 02 00 32 */	fmul f0, f2, f0
/* 80441460  FC 04 00 28 */	fsub f0, f4, f0
/* 80441464  FC 01 00 32 */	fmul f0, f1, f0
/* 80441468  FC 02 00 32 */	fmul f0, f2, f0
/* 8044146C  FC 00 00 18 */	frsp f0, f0
/* 80441470  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80441474  C0 41 00 18 */	lfs f2, 0x18(r1)
lbl_80441478:
/* 80441478  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8044147C  A8 9F 06 34 */	lha r4, 0x634(r31)
/* 80441480  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 80441484  38 7F 06 14 */	addi r3, r31, 0x614
/* 80441488  C0 05 00 00 */	lfs f0, 0(r5)
/* 8044148C  38 A0 01 C7 */	li r5, 0x1c7
/* 80441490  38 C0 00 2D */	li r6, 0x2d
/* 80441494  EC 20 10 28 */	fsubs f1, f0, f2
/* 80441498  4B F7 9E 79 */	bl add_calc_short_angle2
/* 8044149C  3C 60 80 64 */	lis r3, lit_1066@ha /* 0x806442FC@ha */
/* 804414A0  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 804414A4  38 A3 42 FC */	addi r5, r3, lit_1066@l /* 0x806442FC@l */
/* 804414A8  C8 A4 42 4C */	lfd f5, lit_469@l(r4)  /* 0x8064424C@l */
/* 804414AC  C8 C5 00 00 */	lfd f6, 0(r5)
/* 804414B0  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 804414B4  38 A3 42 54 */	addi r5, r3, lit_470@l /* 0x80644254@l */
/* 804414B8  FC 60 30 34 */	frsqrte f3, f6
/* 804414BC  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 804414C0  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 804414C4  C8 85 00 00 */	lfd f4, 0(r5)
/* 804414C8  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 804414CC  C0 44 00 00 */	lfs f2, 0(r4)
/* 804414D0  FC 23 00 F2 */	fmul f1, f3, f3
/* 804414D4  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 804414D8  FC 65 00 F2 */	fmul f3, f5, f3
/* 804414DC  FC 26 00 72 */	fmul f1, f6, f1
/* 804414E0  FC 24 08 28 */	fsub f1, f4, f1
/* 804414E4  FC 63 00 72 */	fmul f3, f3, f1
/* 804414E8  FC 23 00 F2 */	fmul f1, f3, f3
/* 804414EC  FC 65 00 F2 */	fmul f3, f5, f3
/* 804414F0  FC 26 00 72 */	fmul f1, f6, f1
/* 804414F4  FC 24 08 28 */	fsub f1, f4, f1
/* 804414F8  FC 63 00 72 */	fmul f3, f3, f1
/* 804414FC  FC 23 00 F2 */	fmul f1, f3, f3
/* 80441500  FC 65 00 F2 */	fmul f3, f5, f3
/* 80441504  FC 26 00 72 */	fmul f1, f6, f1
/* 80441508  FC 24 08 28 */	fsub f1, f4, f1
/* 8044150C  FC 23 00 72 */	fmul f1, f3, f1
/* 80441510  FC 26 00 72 */	fmul f1, f6, f1
/* 80441514  FC 20 08 18 */	frsp f1, f1
/* 80441518  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8044151C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80441520  EC 22 08 28 */	fsubs f1, f2, f1
/* 80441524  EC 42 08 28 */	fsubs f2, f2, f1
/* 80441528  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8044152C  40 81 00 54 */	ble lbl_80441580
/* 80441530  FC 20 10 34 */	frsqrte f1, f2
/* 80441534  FC 01 00 72 */	fmul f0, f1, f1
/* 80441538  FC 25 00 72 */	fmul f1, f5, f1
/* 8044153C  FC 02 00 32 */	fmul f0, f2, f0
/* 80441540  FC 04 00 28 */	fsub f0, f4, f0
/* 80441544  FC 21 00 32 */	fmul f1, f1, f0
/* 80441548  FC 01 00 72 */	fmul f0, f1, f1
/* 8044154C  FC 25 00 72 */	fmul f1, f5, f1
/* 80441550  FC 02 00 32 */	fmul f0, f2, f0
/* 80441554  FC 04 00 28 */	fsub f0, f4, f0
/* 80441558  FC 21 00 32 */	fmul f1, f1, f0
/* 8044155C  FC 01 00 72 */	fmul f0, f1, f1
/* 80441560  FC 25 00 72 */	fmul f1, f5, f1
/* 80441564  FC 02 00 32 */	fmul f0, f2, f0
/* 80441568  FC 04 00 28 */	fsub f0, f4, f0
/* 8044156C  FC 01 00 32 */	fmul f0, f1, f0
/* 80441570  FC 02 00 32 */	fmul f0, f2, f0
/* 80441574  FC 00 00 18 */	frsp f0, f0
/* 80441578  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8044157C  C0 41 00 10 */	lfs f2, 0x10(r1)
lbl_80441580:
/* 80441580  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80441584  A8 9F 06 14 */	lha r4, 0x614(r31)
/* 80441588  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 8044158C  38 7F 06 0E */	addi r3, r31, 0x60e
/* 80441590  C0 05 00 00 */	lfs f0, 0(r5)
/* 80441594  38 A0 00 E3 */	li r5, 0xe3
/* 80441598  38 C0 00 2D */	li r6, 0x2d
/* 8044159C  EC 20 10 28 */	fsubs f1, f0, f2
/* 804415A0  4B F7 9D 71 */	bl add_calc_short_angle2
/* 804415A4  3C 80 80 64 */	lis r4, lit_1066@ha /* 0x806442FC@ha */
/* 804415A8  3C A0 80 64 */	lis r5, lit_469@ha /* 0x8064424C@ha */
/* 804415AC  38 C4 42 FC */	addi r6, r4, lit_1066@l /* 0x806442FC@l */
/* 804415B0  C8 A5 42 4C */	lfd f5, lit_469@l(r5)  /* 0x8064424C@l */
/* 804415B4  C8 C6 00 00 */	lfd f6, 0(r6)
/* 804415B8  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80644254@ha */
/* 804415BC  38 C4 42 54 */	addi r6, r4, lit_470@l /* 0x80644254@l */
/* 804415C0  B0 7F 06 22 */	sth r3, 0x622(r31)
/* 804415C4  FC 60 30 34 */	frsqrte f3, f6
/* 804415C8  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 804415CC  38 A4 42 60 */	addi r5, r4, lit_472@l /* 0x80644260@l */
/* 804415D0  C8 86 00 00 */	lfd f4, 0(r6)
/* 804415D4  3C 80 80 64 */	lis r4, lit_468@ha /* 0x80644248@ha */
/* 804415D8  C0 45 00 00 */	lfs f2, 0(r5)
/* 804415DC  FC 23 00 F2 */	fmul f1, f3, f3
/* 804415E0  C0 04 42 48 */	lfs f0, lit_468@l(r4)  /* 0x80644248@l */
/* 804415E4  FC 65 00 F2 */	fmul f3, f5, f3
/* 804415E8  FC 26 00 72 */	fmul f1, f6, f1
/* 804415EC  FC 24 08 28 */	fsub f1, f4, f1
/* 804415F0  FC 63 00 72 */	fmul f3, f3, f1
/* 804415F4  FC 23 00 F2 */	fmul f1, f3, f3
/* 804415F8  FC 65 00 F2 */	fmul f3, f5, f3
/* 804415FC  FC 26 00 72 */	fmul f1, f6, f1
/* 80441600  FC 24 08 28 */	fsub f1, f4, f1
/* 80441604  FC 63 00 72 */	fmul f3, f3, f1
/* 80441608  FC 23 00 F2 */	fmul f1, f3, f3
/* 8044160C  FC 65 00 F2 */	fmul f3, f5, f3
/* 80441610  FC 26 00 72 */	fmul f1, f6, f1
/* 80441614  FC 24 08 28 */	fsub f1, f4, f1
/* 80441618  FC 23 00 72 */	fmul f1, f3, f1
/* 8044161C  FC 26 00 72 */	fmul f1, f6, f1
/* 80441620  FC 20 08 18 */	frsp f1, f1
/* 80441624  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80441628  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8044162C  EC 22 08 28 */	fsubs f1, f2, f1
/* 80441630  EC 42 08 28 */	fsubs f2, f2, f1
/* 80441634  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80441638  40 81 00 54 */	ble lbl_8044168C
/* 8044163C  FC 20 10 34 */	frsqrte f1, f2
/* 80441640  FC 01 00 72 */	fmul f0, f1, f1
/* 80441644  FC 25 00 72 */	fmul f1, f5, f1
/* 80441648  FC 02 00 32 */	fmul f0, f2, f0
/* 8044164C  FC 04 00 28 */	fsub f0, f4, f0
/* 80441650  FC 21 00 32 */	fmul f1, f1, f0
/* 80441654  FC 01 00 72 */	fmul f0, f1, f1
/* 80441658  FC 25 00 72 */	fmul f1, f5, f1
/* 8044165C  FC 02 00 32 */	fmul f0, f2, f0
/* 80441660  FC 04 00 28 */	fsub f0, f4, f0
/* 80441664  FC 21 00 32 */	fmul f1, f1, f0
/* 80441668  FC 01 00 72 */	fmul f0, f1, f1
/* 8044166C  FC 25 00 72 */	fmul f1, f5, f1
/* 80441670  FC 02 00 32 */	fmul f0, f2, f0
/* 80441674  FC 04 00 28 */	fsub f0, f4, f0
/* 80441678  FC 01 00 32 */	fmul f0, f1, f0
/* 8044167C  FC 02 00 32 */	fmul f0, f2, f0
/* 80441680  FC 00 00 18 */	frsp f0, f0
/* 80441684  D0 01 00 08 */	stfs f0, 8(r1)
/* 80441688  C0 41 00 08 */	lfs f2, 8(r1)
lbl_8044168C:
/* 8044168C  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80441690  A8 9F 06 22 */	lha r4, 0x622(r31)
/* 80441694  38 A3 42 60 */	addi r5, r3, lit_472@l /* 0x80644260@l */
/* 80441698  38 7F 06 1C */	addi r3, r31, 0x61c
/* 8044169C  C0 05 00 00 */	lfs f0, 0(r5)
/* 804416A0  38 A0 00 E3 */	li r5, 0xe3
/* 804416A4  38 C0 00 2D */	li r6, 0x2d
/* 804416A8  EC 20 10 28 */	fsubs f1, f0, f2
/* 804416AC  4B F7 9C 65 */	bl add_calc_short_angle2
/* 804416B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804416B4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804416B8  7C 08 03 A6 */	mtlr r0
/* 804416BC  38 21 00 30 */	addi r1, r1, 0x30
/* 804416C0  4E 80 00 20 */	blr 
