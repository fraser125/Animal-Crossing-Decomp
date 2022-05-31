lbl_806213A0:
/* 806213A0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 806213A4  7C 08 02 A6 */	mflr r0
/* 806213A8  90 01 00 74 */	stw r0, 0x74(r1)
/* 806213AC  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 806213B0  7C 7F 1B 78 */	mr r31, r3
/* 806213B4  38 7F 00 1C */	addi r3, r31, 0x1c
/* 806213B8  7C 65 1B 78 */	mr r5, r3
/* 806213BC  38 9F 00 28 */	addi r4, r31, 0x28
/* 806213C0  4B D9 9B 85 */	bl xyz_t_add
/* 806213C4  38 7F 00 10 */	addi r3, r31, 0x10
/* 806213C8  38 9F 00 1C */	addi r4, r31, 0x1c
/* 806213CC  7C 65 1B 78 */	mr r5, r3
/* 806213D0  4B D9 9B 75 */	bl xyz_t_add
/* 806213D4  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 806213D8  3C 60 80 65 */	lis r3, lit_393@ha /* 0x8064CD90@ha */
/* 806213DC  38 A3 CD 90 */	addi r5, r3, lit_393@l /* 0x8064CD90@l */
/* 806213E0  38 81 00 44 */	addi r4, r1, 0x44
/* 806213E4  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 806213E8  38 60 00 00 */	li r3, 0
/* 806213EC  C0 25 00 00 */	lfs f1, 0(r5)
/* 806213F0  80 BF 00 10 */	lwz r5, 0x10(r31)
/* 806213F4  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 806213F8  90 A1 00 44 */	stw r5, 0x44(r1)
/* 806213FC  90 01 00 48 */	stw r0, 0x48(r1)
/* 80621400  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 80621404  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80621408  4B D6 E2 B1 */	bl func_8038F6B8
/* 8062140C  3C 60 80 65 */	lis r3, lit_392@ha /* 0x8064CD8C@ha */
/* 80621410  C0 03 CD 8C */	lfs f0, lit_392@l(r3)  /* 0x8064CD8C@l */
/* 80621414  EC 00 08 2A */	fadds f0, f0, f1
/* 80621418  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 8062141C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80621420  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80621424  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80621428  40 80 05 58 */	bge lbl_80621980
/* 8062142C  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80621430  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80621434  40 81 00 90 */	ble lbl_806214C4
/* 80621438  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8062143C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80621440  EC 01 00 28 */	fsubs f0, f1, f0
/* 80621444  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 80621448  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8062144C  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80621450  EC 01 00 28 */	fsubs f0, f1, f0
/* 80621454  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 80621458  4B A3 B8 9D */	bl fqrand
/* 8062145C  3C 80 80 65 */	lis r4, lit_496@ha /* 0x8064CDA0@ha */
/* 80621460  3C 60 80 65 */	lis r3, lit_497@ha /* 0x8064CDA4@ha */
/* 80621464  C0 64 CD A0 */	lfs f3, lit_496@l(r4)  /* 0x8064CDA0@l */
/* 80621468  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 8062146C  EC 23 00 72 */	fmuls f1, f3, f1
/* 80621470  C0 03 CD A4 */	lfs f0, lit_497@l(r3)  /* 0x8064CDA4@l */
/* 80621474  FC 20 08 50 */	fneg f1, f1
/* 80621478  EC 22 00 72 */	fmuls f1, f2, f1
/* 8062147C  D0 3F 00 1C */	stfs f1, 0x1c(r31)
/* 80621480  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80621484  EC 01 00 32 */	fmuls f0, f1, f0
/* 80621488  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8062148C  4B A3 B8 69 */	bl fqrand
/* 80621490  3C 60 80 65 */	lis r3, lit_496@ha /* 0x8064CDA0@ha */
/* 80621494  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80621498  C0 43 CD A0 */	lfs f2, lit_496@l(r3)  /* 0x8064CDA0@l */
/* 8062149C  38 9F 00 10 */	addi r4, r31, 0x10
/* 806214A0  38 60 01 53 */	li r3, 0x153
/* 806214A4  EC 22 00 72 */	fmuls f1, f2, f1
/* 806214A8  FC 20 08 50 */	fneg f1, f1
/* 806214AC  EC 00 00 72 */	fmuls f0, f0, f1
/* 806214B0  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 806214B4  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 806214B8  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 806214BC  48 00 CA ED */	bl sAdo_OngenTrgStart
/* 806214C0  48 00 04 C0 */	b lbl_80621980
lbl_806214C4:
/* 806214C4  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 806214C8  38 61 00 38 */	addi r3, r1, 0x38
/* 806214CC  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 806214D0  90 81 00 38 */	stw r4, 0x38(r1)
/* 806214D4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 806214D8  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 806214DC  90 01 00 40 */	stw r0, 0x40(r1)
/* 806214E0  4B D8 5F 51 */	bl mFI_GetUnitFG
/* 806214E4  28 03 00 00 */	cmplwi r3, 0
/* 806214E8  41 82 04 28 */	beq lbl_80621910
/* 806214EC  A0 03 00 00 */	lhz r0, 0(r3)
/* 806214F0  28 00 F1 11 */	cmplwi r0, 0xf111
/* 806214F4  40 82 04 1C */	bne lbl_80621910
/* 806214F8  80 BF 00 10 */	lwz r5, 0x10(r31)
/* 806214FC  38 61 00 50 */	addi r3, r1, 0x50
/* 80621500  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 80621504  38 81 00 2C */	addi r4, r1, 0x2c
/* 80621508  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 8062150C  90 01 00 30 */	stw r0, 0x30(r1)
/* 80621510  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 80621514  90 01 00 34 */	stw r0, 0x34(r1)
/* 80621518  4B D8 40 25 */	bl mFI_Wpos2UtCenterWpos
/* 8062151C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 80621520  3C 60 80 65 */	lis r3, lit_393@ha /* 0x8064CD90@ha */
/* 80621524  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 80621528  C0 23 CD 90 */	lfs f1, lit_393@l(r3)  /* 0x8064CD90@l */
/* 8062152C  38 61 00 20 */	addi r3, r1, 0x20
/* 80621530  90 81 00 20 */	stw r4, 0x20(r1)
/* 80621534  90 01 00 24 */	stw r0, 0x24(r1)
/* 80621538  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8062153C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80621540  4B D6 E4 59 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 80621544  3C 80 80 65 */	lis r4, lit_499@ha /* 0x8064CDAC@ha */
/* 80621548  3C C0 80 65 */	lis r6, lit_498@ha /* 0x8064CDA8@ha */
/* 8062154C  38 A4 CD AC */	addi r5, r4, lit_499@l /* 0x8064CDAC@l */
/* 80621550  3C 60 80 65 */	lis r3, lit_500@ha /* 0x8064CDB4@ha */
/* 80621554  C8 C5 00 00 */	lfd f6, 0(r5)
/* 80621558  38 83 CD B4 */	addi r4, r3, lit_500@l /* 0x8064CDB4@l */
/* 8062155C  C0 46 CD A8 */	lfs f2, lit_498@l(r6)  /* 0x8064CDA8@l */
/* 80621560  3C 60 80 65 */	lis r3, lit_501@ha /* 0x8064CDBC@ha */
/* 80621564  FD 00 30 34 */	frsqrte f8, f6
/* 80621568  C0 63 CD BC */	lfs f3, lit_501@l(r3)  /* 0x8064CDBC@l */
/* 8062156C  EC E2 08 2A */	fadds f7, f2, f1
/* 80621570  C8 A5 00 00 */	lfd f5, 0(r5)
/* 80621574  C8 84 00 00 */	lfd f4, 0(r4)
/* 80621578  38 7F 00 10 */	addi r3, r31, 0x10
/* 8062157C  FC 08 02 32 */	fmul f0, f8, f8
/* 80621580  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 80621584  D0 E1 00 54 */	stfs f7, 0x54(r1)
/* 80621588  FC 45 02 32 */	fmul f2, f5, f8
/* 8062158C  FC 06 00 32 */	fmul f0, f6, f0
/* 80621590  FC 04 00 28 */	fsub f0, f4, f0
/* 80621594  FC 42 00 32 */	fmul f2, f2, f0
/* 80621598  FC 02 00 B2 */	fmul f0, f2, f2
/* 8062159C  FC 45 00 B2 */	fmul f2, f5, f2
/* 806215A0  FC 06 00 32 */	fmul f0, f6, f0
/* 806215A4  FC 04 00 28 */	fsub f0, f4, f0
/* 806215A8  FC 42 00 32 */	fmul f2, f2, f0
/* 806215AC  FC 02 00 B2 */	fmul f0, f2, f2
/* 806215B0  FC 45 00 B2 */	fmul f2, f5, f2
/* 806215B4  FC 06 00 32 */	fmul f0, f6, f0
/* 806215B8  FC 04 00 28 */	fsub f0, f4, f0
/* 806215BC  FC 02 00 32 */	fmul f0, f2, f0
/* 806215C0  FC 06 00 32 */	fmul f0, f6, f0
/* 806215C4  FC 00 00 18 */	frsp f0, f0
/* 806215C8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806215CC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 806215D0  EC 43 00 28 */	fsubs f2, f3, f0
/* 806215D4  4B D9 9C C1 */	bl add_calc2
/* 806215D8  3C 60 80 65 */	lis r3, lit_499@ha /* 0x8064CDAC@ha */
/* 806215DC  3C 80 80 65 */	lis r4, lit_500@ha /* 0x8064CDB4@ha */
/* 806215E0  38 E3 CD AC */	addi r7, r3, lit_499@l /* 0x8064CDAC@l */
/* 806215E4  3C 60 80 65 */	lis r3, lit_501@ha /* 0x8064CDBC@ha */
/* 806215E8  C8 E7 00 00 */	lfd f7, 0(r7)
/* 806215EC  38 C4 CD B4 */	addi r6, r4, lit_500@l /* 0x8064CDB4@l */
/* 806215F0  38 A3 CD BC */	addi r5, r3, lit_501@l /* 0x8064CDBC@l */
/* 806215F4  3C 60 80 65 */	lis r3, lit_502@ha /* 0x8064CDC0@ha */
/* 806215F8  FC 80 38 34 */	frsqrte f4, f7
/* 806215FC  C8 C7 00 00 */	lfd f6, 0(r7)
/* 80621600  38 83 CD C0 */	addi r4, r3, lit_502@l /* 0x8064CDC0@l */
/* 80621604  C8 A6 00 00 */	lfd f5, 0(r6)
/* 80621608  C0 05 00 00 */	lfs f0, 0(r5)
/* 8062160C  38 7F 00 14 */	addi r3, r31, 0x14
/* 80621610  FC 44 01 32 */	fmul f2, f4, f4
/* 80621614  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 80621618  C0 64 00 00 */	lfs f3, 0(r4)
/* 8062161C  FC 86 01 32 */	fmul f4, f6, f4
/* 80621620  FC 47 00 B2 */	fmul f2, f7, f2
/* 80621624  FC 45 10 28 */	fsub f2, f5, f2
/* 80621628  FC 84 00 B2 */	fmul f4, f4, f2
/* 8062162C  FC 44 01 32 */	fmul f2, f4, f4
/* 80621630  FC 86 01 32 */	fmul f4, f6, f4
/* 80621634  FC 47 00 B2 */	fmul f2, f7, f2
/* 80621638  FC 45 10 28 */	fsub f2, f5, f2
/* 8062163C  FC 84 00 B2 */	fmul f4, f4, f2
/* 80621640  FC 44 01 32 */	fmul f2, f4, f4
/* 80621644  FC 86 01 32 */	fmul f4, f6, f4
/* 80621648  FC 47 00 B2 */	fmul f2, f7, f2
/* 8062164C  FC 45 10 28 */	fsub f2, f5, f2
/* 80621650  FC 44 00 B2 */	fmul f2, f4, f2
/* 80621654  FC 47 00 B2 */	fmul f2, f7, f2
/* 80621658  FC 40 10 18 */	frsp f2, f2
/* 8062165C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80621660  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80621664  EC 40 10 28 */	fsubs f2, f0, f2
/* 80621668  4B D9 9C 2D */	bl add_calc2
/* 8062166C  3C 60 80 65 */	lis r3, lit_499@ha /* 0x8064CDAC@ha */
/* 80621670  3C 80 80 65 */	lis r4, lit_500@ha /* 0x8064CDB4@ha */
/* 80621674  38 A3 CD AC */	addi r5, r3, lit_499@l /* 0x8064CDAC@l */
/* 80621678  C8 84 CD B4 */	lfd f4, lit_500@l(r4)  /* 0x8064CDB4@l */
/* 8062167C  C8 C5 00 00 */	lfd f6, 0(r5)
/* 80621680  3C 60 80 65 */	lis r3, lit_501@ha /* 0x8064CDBC@ha */
/* 80621684  C0 63 CD BC */	lfs f3, lit_501@l(r3)  /* 0x8064CDBC@l */
/* 80621688  38 7F 00 18 */	addi r3, r31, 0x18
/* 8062168C  FC 40 30 34 */	frsqrte f2, f6
/* 80621690  C8 A5 00 00 */	lfd f5, 0(r5)
/* 80621694  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 80621698  FC 02 00 B2 */	fmul f0, f2, f2
/* 8062169C  FC 45 00 B2 */	fmul f2, f5, f2
/* 806216A0  FC 06 00 32 */	fmul f0, f6, f0
/* 806216A4  FC 04 00 28 */	fsub f0, f4, f0
/* 806216A8  FC 42 00 32 */	fmul f2, f2, f0
/* 806216AC  FC 02 00 B2 */	fmul f0, f2, f2
/* 806216B0  FC 45 00 B2 */	fmul f2, f5, f2
/* 806216B4  FC 06 00 32 */	fmul f0, f6, f0
/* 806216B8  FC 04 00 28 */	fsub f0, f4, f0
/* 806216BC  FC 42 00 32 */	fmul f2, f2, f0
/* 806216C0  FC 02 00 B2 */	fmul f0, f2, f2
/* 806216C4  FC 45 00 B2 */	fmul f2, f5, f2
/* 806216C8  FC 06 00 32 */	fmul f0, f6, f0
/* 806216CC  FC 04 00 28 */	fsub f0, f4, f0
/* 806216D0  FC 02 00 32 */	fmul f0, f2, f0
/* 806216D4  FC 06 00 32 */	fmul f0, f6, f0
/* 806216D8  FC 00 00 18 */	frsp f0, f0
/* 806216DC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806216E0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 806216E4  EC 43 00 28 */	fsubs f2, f3, f0
/* 806216E8  4B D9 9B AD */	bl add_calc2
/* 806216EC  3C 60 80 65 */	lis r3, lit_499@ha /* 0x8064CDAC@ha */
/* 806216F0  3C 80 80 65 */	lis r4, lit_500@ha /* 0x8064CDB4@ha */
/* 806216F4  38 E3 CD AC */	addi r7, r3, lit_499@l /* 0x8064CDAC@l */
/* 806216F8  3C 60 80 65 */	lis r3, lit_501@ha /* 0x8064CDBC@ha */
/* 806216FC  C8 C7 00 00 */	lfd f6, 0(r7)
/* 80621700  38 C4 CD B4 */	addi r6, r4, lit_500@l /* 0x8064CDB4@l */
/* 80621704  38 A3 CD BC */	addi r5, r3, lit_501@l /* 0x8064CDBC@l */
/* 80621708  3C 60 80 65 */	lis r3, lit_503@ha /* 0x8064CDC4@ha */
/* 8062170C  FC 60 30 34 */	frsqrte f3, f6
/* 80621710  C8 A7 00 00 */	lfd f5, 0(r7)
/* 80621714  38 83 CD C4 */	addi r4, r3, lit_503@l /* 0x8064CDC4@l */
/* 80621718  C8 86 00 00 */	lfd f4, 0(r6)
/* 8062171C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80621720  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80621724  FC 23 00 F2 */	fmul f1, f3, f3
/* 80621728  C0 44 00 00 */	lfs f2, 0(r4)
/* 8062172C  FC 65 00 F2 */	fmul f3, f5, f3
/* 80621730  FC 26 00 72 */	fmul f1, f6, f1
/* 80621734  FC 24 08 28 */	fsub f1, f4, f1
/* 80621738  FC 63 00 72 */	fmul f3, f3, f1
/* 8062173C  FC 23 00 F2 */	fmul f1, f3, f3
/* 80621740  FC 65 00 F2 */	fmul f3, f5, f3
/* 80621744  FC 26 00 72 */	fmul f1, f6, f1
/* 80621748  FC 24 08 28 */	fsub f1, f4, f1
/* 8062174C  FC 63 00 72 */	fmul f3, f3, f1
/* 80621750  FC 23 00 F2 */	fmul f1, f3, f3
/* 80621754  FC 65 00 F2 */	fmul f3, f5, f3
/* 80621758  FC 26 00 72 */	fmul f1, f6, f1
/* 8062175C  FC 24 08 28 */	fsub f1, f4, f1
/* 80621760  FC 23 00 72 */	fmul f1, f3, f1
/* 80621764  FC 26 00 72 */	fmul f1, f6, f1
/* 80621768  FC 20 08 18 */	frsp f1, f1
/* 8062176C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80621770  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80621774  EC 20 08 28 */	fsubs f1, f0, f1
/* 80621778  4B D9 9B 61 */	bl add_calc0
/* 8062177C  3C 60 80 65 */	lis r3, lit_499@ha /* 0x8064CDAC@ha */
/* 80621780  3C 80 80 65 */	lis r4, lit_500@ha /* 0x8064CDB4@ha */
/* 80621784  38 E3 CD AC */	addi r7, r3, lit_499@l /* 0x8064CDAC@l */
/* 80621788  3C 60 80 65 */	lis r3, lit_501@ha /* 0x8064CDBC@ha */
/* 8062178C  C8 C7 00 00 */	lfd f6, 0(r7)
/* 80621790  38 C4 CD B4 */	addi r6, r4, lit_500@l /* 0x8064CDB4@l */
/* 80621794  38 A3 CD BC */	addi r5, r3, lit_501@l /* 0x8064CDBC@l */
/* 80621798  3C 60 80 65 */	lis r3, lit_503@ha /* 0x8064CDC4@ha */
/* 8062179C  FC 60 30 34 */	frsqrte f3, f6
/* 806217A0  C8 A7 00 00 */	lfd f5, 0(r7)
/* 806217A4  38 83 CD C4 */	addi r4, r3, lit_503@l /* 0x8064CDC4@l */
/* 806217A8  C8 86 00 00 */	lfd f4, 0(r6)
/* 806217AC  C0 05 00 00 */	lfs f0, 0(r5)
/* 806217B0  38 7F 00 20 */	addi r3, r31, 0x20
/* 806217B4  FC 23 00 F2 */	fmul f1, f3, f3
/* 806217B8  C0 44 00 00 */	lfs f2, 0(r4)
/* 806217BC  FC 65 00 F2 */	fmul f3, f5, f3
/* 806217C0  FC 26 00 72 */	fmul f1, f6, f1
/* 806217C4  FC 24 08 28 */	fsub f1, f4, f1
/* 806217C8  FC 63 00 72 */	fmul f3, f3, f1
/* 806217CC  FC 23 00 F2 */	fmul f1, f3, f3
/* 806217D0  FC 65 00 F2 */	fmul f3, f5, f3
/* 806217D4  FC 26 00 72 */	fmul f1, f6, f1
/* 806217D8  FC 24 08 28 */	fsub f1, f4, f1
/* 806217DC  FC 63 00 72 */	fmul f3, f3, f1
/* 806217E0  FC 23 00 F2 */	fmul f1, f3, f3
/* 806217E4  FC 65 00 F2 */	fmul f3, f5, f3
/* 806217E8  FC 26 00 72 */	fmul f1, f6, f1
/* 806217EC  FC 24 08 28 */	fsub f1, f4, f1
/* 806217F0  FC 23 00 72 */	fmul f1, f3, f1
/* 806217F4  FC 26 00 72 */	fmul f1, f6, f1
/* 806217F8  FC 20 08 18 */	frsp f1, f1
/* 806217FC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80621800  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80621804  EC 20 08 28 */	fsubs f1, f0, f1
/* 80621808  4B D9 9A D1 */	bl add_calc0
/* 8062180C  3C 60 80 65 */	lis r3, lit_499@ha /* 0x8064CDAC@ha */
/* 80621810  3C 80 80 65 */	lis r4, lit_500@ha /* 0x8064CDB4@ha */
/* 80621814  38 E3 CD AC */	addi r7, r3, lit_499@l /* 0x8064CDAC@l */
/* 80621818  3C 60 80 65 */	lis r3, lit_501@ha /* 0x8064CDBC@ha */
/* 8062181C  C8 C7 00 00 */	lfd f6, 0(r7)
/* 80621820  38 C4 CD B4 */	addi r6, r4, lit_500@l /* 0x8064CDB4@l */
/* 80621824  38 A3 CD BC */	addi r5, r3, lit_501@l /* 0x8064CDBC@l */
/* 80621828  3C 60 80 65 */	lis r3, lit_503@ha /* 0x8064CDC4@ha */
/* 8062182C  FC 60 30 34 */	frsqrte f3, f6
/* 80621830  C8 A7 00 00 */	lfd f5, 0(r7)
/* 80621834  38 83 CD C4 */	addi r4, r3, lit_503@l /* 0x8064CDC4@l */
/* 80621838  C8 86 00 00 */	lfd f4, 0(r6)
/* 8062183C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80621840  38 7F 00 24 */	addi r3, r31, 0x24
/* 80621844  FC 23 00 F2 */	fmul f1, f3, f3
/* 80621848  C0 44 00 00 */	lfs f2, 0(r4)
/* 8062184C  FC 65 00 F2 */	fmul f3, f5, f3
/* 80621850  FC 26 00 72 */	fmul f1, f6, f1
/* 80621854  FC 24 08 28 */	fsub f1, f4, f1
/* 80621858  FC 63 00 72 */	fmul f3, f3, f1
/* 8062185C  FC 23 00 F2 */	fmul f1, f3, f3
/* 80621860  FC 65 00 F2 */	fmul f3, f5, f3
/* 80621864  FC 26 00 72 */	fmul f1, f6, f1
/* 80621868  FC 24 08 28 */	fsub f1, f4, f1
/* 8062186C  FC 63 00 72 */	fmul f3, f3, f1
/* 80621870  FC 23 00 F2 */	fmul f1, f3, f3
/* 80621874  FC 65 00 F2 */	fmul f3, f5, f3
/* 80621878  FC 26 00 72 */	fmul f1, f6, f1
/* 8062187C  FC 24 08 28 */	fsub f1, f4, f1
/* 80621880  FC 23 00 72 */	fmul f1, f3, f1
/* 80621884  FC 26 00 72 */	fmul f1, f6, f1
/* 80621888  FC 20 08 18 */	frsp f1, f1
/* 8062188C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80621890  C0 21 00 08 */	lfs f1, 8(r1)
/* 80621894  EC 20 08 28 */	fsubs f1, f0, f1
/* 80621898  4B D9 9A 41 */	bl add_calc0
/* 8062189C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 806218A0  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 806218A4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 806218A8  40 81 00 08 */	ble lbl_806218B0
/* 806218AC  48 00 00 08 */	b lbl_806218B4
lbl_806218B0:
/* 806218B0  FC 00 08 90 */	fmr f0, f1
lbl_806218B4:
/* 806218B4  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 806218B8  A8 1F 00 50 */	lha r0, 0x50(r31)
/* 806218BC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 806218C0  40 82 00 1C */	bne lbl_806218DC
/* 806218C4  38 9F 00 10 */	addi r4, r31, 0x10
/* 806218C8  38 60 01 54 */	li r3, 0x154
/* 806218CC  48 00 C6 DD */	bl sAdo_OngenTrgStart
/* 806218D0  A8 1F 00 50 */	lha r0, 0x50(r31)
/* 806218D4  60 00 00 02 */	ori r0, r0, 2
/* 806218D8  B0 1F 00 50 */	sth r0, 0x50(r31)
lbl_806218DC:
/* 806218DC  A8 1F 00 50 */	lha r0, 0x50(r31)
/* 806218E0  38 7F 00 10 */	addi r3, r31, 0x10
/* 806218E4  38 81 00 50 */	addi r4, r1, 0x50
/* 806218E8  60 00 00 01 */	ori r0, r0, 1
/* 806218EC  B0 1F 00 50 */	sth r0, 0x50(r31)
/* 806218F0  4B D9 96 E5 */	bl search_position_distance
/* 806218F4  3C 60 80 65 */	lis r3, lit_501@ha /* 0x8064CDBC@ha */
/* 806218F8  C0 03 CD BC */	lfs f0, lit_501@l(r3)  /* 0x8064CDBC@l */
/* 806218FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80621900  40 80 00 80 */	bge lbl_80621980
/* 80621904  38 00 00 00 */	li r0, 0
/* 80621908  B0 1F 00 00 */	sth r0, 0(r31)
/* 8062190C  48 00 00 74 */	b lbl_80621980
lbl_80621910:
/* 80621910  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80621914  3C 60 80 65 */	lis r3, lit_497@ha /* 0x8064CDA4@ha */
/* 80621918  38 A3 CD A4 */	addi r5, r3, lit_497@l /* 0x8064CDA4@l */
/* 8062191C  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 80621920  3C 60 80 65 */	lis r3, lit_502@ha /* 0x8064CDC0@ha */
/* 80621924  38 83 CD C0 */	addi r4, r3, lit_502@l /* 0x8064CDC0@l */
/* 80621928  C0 05 00 00 */	lfs f0, 0(r5)
/* 8062192C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80621930  3C 60 80 65 */	lis r3, lit_504@ha /* 0x8064CDC8@ha */
/* 80621934  C0 44 00 00 */	lfs f2, 0(r4)
/* 80621938  EC 21 00 32 */	fmuls f1, f1, f0
/* 8062193C  C0 03 CD C8 */	lfs f0, lit_504@l(r3)  /* 0x8064CDC8@l */
/* 80621940  D0 3F 00 20 */	stfs f1, 0x20(r31)
/* 80621944  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80621948  EC 21 00 B2 */	fmuls f1, f1, f2
/* 8062194C  D0 3F 00 1C */	stfs f1, 0x1c(r31)
/* 80621950  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80621954  EC 21 00 B2 */	fmuls f1, f1, f2
/* 80621958  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 8062195C  A8 1F 00 4E */	lha r0, 0x4e(r31)
/* 80621960  7C 00 0E 70 */	srawi r0, r0, 1
/* 80621964  B0 1F 00 4E */	sth r0, 0x4e(r31)
/* 80621968  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8062196C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80621970  40 81 00 10 */	ble lbl_80621980
/* 80621974  38 9F 00 10 */	addi r4, r31, 0x10
/* 80621978  38 60 01 55 */	li r3, 0x155
/* 8062197C  48 00 C6 2D */	bl sAdo_OngenTrgStart
lbl_80621980:
/* 80621980  A8 9F 00 4C */	lha r4, 0x4c(r31)
/* 80621984  3C 60 80 65 */	lis r3, lit_393@ha /* 0x8064CD90@ha */
/* 80621988  A8 1F 00 4E */	lha r0, 0x4e(r31)
/* 8062198C  C0 03 CD 90 */	lfs f0, lit_393@l(r3)  /* 0x8064CD90@l */
/* 80621990  7C 04 02 14 */	add r0, r4, r0
/* 80621994  B0 1F 00 4C */	sth r0, 0x4c(r31)
/* 80621998  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 8062199C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806219A0  4C 41 13 82 */	cror 2, 1, 2
/* 806219A4  40 82 00 08 */	bne lbl_806219AC
/* 806219A8  48 00 00 08 */	b lbl_806219B0
lbl_806219AC:
/* 806219AC  FC 40 10 50 */	fneg f2, f2
lbl_806219B0:
/* 806219B0  3C 60 80 65 */	lis r3, lit_506@ha /* 0x8064CDD0@ha */
/* 806219B4  3C 80 80 65 */	lis r4, lit_505@ha /* 0x8064CDCC@ha */
/* 806219B8  C0 03 CD D0 */	lfs f0, lit_506@l(r3)  /* 0x8064CDD0@l */
/* 806219BC  3C A0 80 65 */	lis r5, data_8064CD7C@ha /* 0x8064CD7C@ha */
/* 806219C0  C0 24 CD CC */	lfs f1, lit_505@l(r4)  /* 0x8064CDCC@l */
/* 806219C4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 806219C8  C0 45 CD 7C */	lfs f2, data_8064CD7C@l(r5)  /* 0x8064CD7C@l */
/* 806219CC  EC 01 00 2A */	fadds f0, f1, f0
/* 806219D0  EC 02 00 32 */	fmuls f0, f2, f0
/* 806219D4  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 806219D8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 806219DC  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 806219E0  7C 08 03 A6 */	mtlr r0
/* 806219E4  38 21 00 70 */	addi r1, r1, 0x70
/* 806219E8  4E 80 00 20 */	blr 
