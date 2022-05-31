lbl_804EE578:
/* 804EE578  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804EE57C  7C 08 02 A6 */	mflr r0
/* 804EE580  90 01 00 34 */	stw r0, 0x34(r1)
/* 804EE584  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804EE588  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804EE58C  39 61 00 20 */	addi r11, r1, 0x20
/* 804EE590  4B BA C9 3D */	bl func_8009AECC
/* 804EE594  3C 80 80 64 */	lis r4, lit_1375@ha /* 0x80646A30@ha */
/* 804EE598  7C 7D 1B 78 */	mr r29, r3
/* 804EE59C  C3 E3 01 84 */	lfs f31, 0x184(r3)
/* 804EE5A0  3B FD 0D 24 */	addi r31, r29, 0xd24
/* 804EE5A4  C0 24 6A 30 */	lfs f1, lit_1375@l(r4)  /* 0x80646A30@l */
/* 804EE5A8  3B DD 0D 3C */	addi r30, r29, 0xd3c
/* 804EE5AC  3B 7D 0D 30 */	addi r27, r29, 0xd30
/* 804EE5B0  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 804EE5B4  4C 40 13 82 */	cror 2, 0, 2
/* 804EE5B8  40 82 00 70 */	bne lbl_804EE628
/* 804EE5BC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804EE5C0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804EE5C4  3F 83 00 02 */	addis r28, r3, 2
/* 804EE5C8  80 7C 60 8C */	lwz r3, 0x608c(r28)
/* 804EE5CC  81 83 00 44 */	lwz r12, 0x44(r3)
/* 804EE5D0  7D 89 03 A6 */	mtctr r12
/* 804EE5D4  4E 80 04 21 */	bctrl 
/* 804EE5D8  2C 03 00 00 */	cmpwi r3, 0
/* 804EE5DC  41 82 00 18 */	beq lbl_804EE5F4
/* 804EE5E0  80 9C 60 8C */	lwz r4, 0x608c(r28)
/* 804EE5E4  7F E3 FB 78 */	mr r3, r31
/* 804EE5E8  81 84 00 48 */	lwz r12, 0x48(r4)
/* 804EE5EC  7D 89 03 A6 */	mtctr r12
/* 804EE5F0  4E 80 04 21 */	bctrl 
lbl_804EE5F4:
/* 804EE5F4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804EE5F8  C0 1D 10 5C */	lfs f0, 0x105c(r29)
/* 804EE5FC  EC 01 00 28 */	fsubs f0, f1, f0
/* 804EE600  D0 1B 00 00 */	stfs f0, 0(r27)
/* 804EE604  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804EE608  C0 1D 10 60 */	lfs f0, 0x1060(r29)
/* 804EE60C  EC 01 00 28 */	fsubs f0, f1, f0
/* 804EE610  D0 1B 00 04 */	stfs f0, 4(r27)
/* 804EE614  C0 3F 00 08 */	lfs f1, 8(r31)
/* 804EE618  C0 1D 10 64 */	lfs f0, 0x1064(r29)
/* 804EE61C  EC 01 00 28 */	fsubs f0, f1, f0
/* 804EE620  D0 1B 00 08 */	stfs f0, 8(r27)
/* 804EE624  48 00 00 8C */	b lbl_804EE6B0
lbl_804EE628:
/* 804EE628  3C 60 80 64 */	lis r3, lit_2591@ha /* 0x80646C44@ha */
/* 804EE62C  C0 03 6C 44 */	lfs f0, lit_2591@l(r3)  /* 0x80646C44@l */
/* 804EE630  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804EE634  4C 40 13 82 */	cror 2, 0, 2
/* 804EE638  40 82 00 60 */	bne lbl_804EE698
/* 804EE63C  3C 60 80 65 */	lis r3, lit_6902@ha /* 0x806480FC@ha */
/* 804EE640  EC 1F 08 28 */	fsubs f0, f31, f1
/* 804EE644  C0 23 80 FC */	lfs f1, lit_6902@l(r3)  /* 0x806480FC@l */
/* 804EE648  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804EE64C  C0 64 65 64 */	lfs f3, lit_603@l(r4)  /* 0x80646564@l */
/* 804EE650  EC 41 00 32 */	fmuls f2, f1, f0
/* 804EE654  C0 1B 00 00 */	lfs f0, 0(r27)
/* 804EE658  C0 3D 10 5C */	lfs f1, 0x105c(r29)
/* 804EE65C  EC 43 10 28 */	fsubs f2, f3, f2
/* 804EE660  EC 02 00 32 */	fmuls f0, f2, f0
/* 804EE664  EC 01 00 2A */	fadds f0, f1, f0
/* 804EE668  D0 1F 00 00 */	stfs f0, 0(r31)
/* 804EE66C  C0 1B 00 04 */	lfs f0, 4(r27)
/* 804EE670  C0 3D 10 60 */	lfs f1, 0x1060(r29)
/* 804EE674  EC 02 00 32 */	fmuls f0, f2, f0
/* 804EE678  EC 01 00 2A */	fadds f0, f1, f0
/* 804EE67C  D0 1F 00 04 */	stfs f0, 4(r31)
/* 804EE680  C0 1B 00 08 */	lfs f0, 8(r27)
/* 804EE684  C0 3D 10 64 */	lfs f1, 0x1064(r29)
/* 804EE688  EC 02 00 32 */	fmuls f0, f2, f0
/* 804EE68C  EC 01 00 2A */	fadds f0, f1, f0
/* 804EE690  D0 1F 00 08 */	stfs f0, 8(r31)
/* 804EE694  48 00 00 1C */	b lbl_804EE6B0
lbl_804EE698:
/* 804EE698  80 7D 10 5C */	lwz r3, 0x105c(r29)
/* 804EE69C  80 1D 10 60 */	lwz r0, 0x1060(r29)
/* 804EE6A0  90 7F 00 00 */	stw r3, 0(r31)
/* 804EE6A4  90 1F 00 04 */	stw r0, 4(r31)
/* 804EE6A8  80 1D 10 64 */	lwz r0, 0x1064(r29)
/* 804EE6AC  90 1F 00 08 */	stw r0, 8(r31)
lbl_804EE6B0:
/* 804EE6B0  3C 60 80 64 */	lis r3, lit_1375@ha /* 0x80646A30@ha */
/* 804EE6B4  C0 23 6A 30 */	lfs f1, lit_1375@l(r3)  /* 0x80646A30@l */
/* 804EE6B8  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 804EE6BC  4C 40 13 82 */	cror 2, 0, 2
/* 804EE6C0  40 82 00 14 */	bne lbl_804EE6D4
/* 804EE6C4  3C 60 80 64 */	lis r3, lit_790@ha /* 0x80646668@ha */
/* 804EE6C8  C0 03 66 68 */	lfs f0, lit_790@l(r3)  /* 0x80646668@l */
/* 804EE6CC  D0 1E 00 00 */	stfs f0, 0(r30)
/* 804EE6D0  48 00 00 4C */	b lbl_804EE71C
lbl_804EE6D4:
/* 804EE6D4  3C 60 80 64 */	lis r3, lit_2591@ha /* 0x80646C44@ha */
/* 804EE6D8  C0 03 6C 44 */	lfs f0, lit_2591@l(r3)  /* 0x80646C44@l */
/* 804EE6DC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804EE6E0  4C 40 13 82 */	cror 2, 0, 2
/* 804EE6E4  40 82 00 2C */	bne lbl_804EE710
/* 804EE6E8  3C 80 80 64 */	lis r4, lit_790@ha /* 0x80646668@ha */
/* 804EE6EC  EC 1F 08 28 */	fsubs f0, f31, f1
/* 804EE6F0  C0 44 66 68 */	lfs f2, lit_790@l(r4)  /* 0x80646668@l */
/* 804EE6F4  3C 60 80 65 */	lis r3, lit_6902@ha /* 0x806480FC@ha */
/* 804EE6F8  C0 23 80 FC */	lfs f1, lit_6902@l(r3)  /* 0x806480FC@l */
/* 804EE6FC  EC 02 00 32 */	fmuls f0, f2, f0
/* 804EE700  EC 01 00 32 */	fmuls f0, f1, f0
/* 804EE704  EC 02 00 28 */	fsubs f0, f2, f0
/* 804EE708  D0 1E 00 00 */	stfs f0, 0(r30)
/* 804EE70C  48 00 00 10 */	b lbl_804EE71C
lbl_804EE710:
/* 804EE710  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804EE714  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804EE718  D0 1E 00 00 */	stfs f0, 0(r30)
lbl_804EE71C:
/* 804EE71C  3C 60 80 64 */	lis r3, lit_790@ha /* 0x80646668@ha */
/* 804EE720  C0 3E 00 00 */	lfs f1, 0(r30)
/* 804EE724  C0 03 66 68 */	lfs f0, lit_790@l(r3)  /* 0x80646668@l */
/* 804EE728  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804EE72C  40 81 00 0C */	ble lbl_804EE738
/* 804EE730  D0 1E 00 00 */	stfs f0, 0(r30)
/* 804EE734  48 00 00 18 */	b lbl_804EE74C
lbl_804EE738:
/* 804EE738  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804EE73C  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804EE740  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804EE744  40 80 00 08 */	bge lbl_804EE74C
/* 804EE748  D0 1E 00 00 */	stfs f0, 0(r30)
lbl_804EE74C:
/* 804EE74C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804EE750  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804EE754  3F 83 00 02 */	addis r28, r3, 2
/* 804EE758  80 7C 60 8C */	lwz r3, 0x608c(r28)
/* 804EE75C  28 03 00 00 */	cmplwi r3, 0
/* 804EE760  41 82 00 30 */	beq lbl_804EE790
/* 804EE764  81 83 00 44 */	lwz r12, 0x44(r3)
/* 804EE768  7D 89 03 A6 */	mtctr r12
/* 804EE76C  4E 80 04 21 */	bctrl 
/* 804EE770  2C 03 00 00 */	cmpwi r3, 0
/* 804EE774  41 82 00 1C */	beq lbl_804EE790
/* 804EE778  80 9C 60 8C */	lwz r4, 0x608c(r28)
/* 804EE77C  7F E3 FB 78 */	mr r3, r31
/* 804EE780  C0 3E 00 00 */	lfs f1, 0(r30)
/* 804EE784  81 84 00 40 */	lwz r12, 0x40(r4)
/* 804EE788  7D 89 03 A6 */	mtctr r12
/* 804EE78C  4E 80 04 21 */	bctrl 
lbl_804EE790:
/* 804EE790  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804EE794  39 61 00 20 */	addi r11, r1, 0x20
/* 804EE798  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804EE79C  4B BA C7 7D */	bl func_8009AF18
/* 804EE7A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804EE7A4  7C 08 03 A6 */	mtlr r0
/* 804EE7A8  38 21 00 30 */	addi r1, r1, 0x30
/* 804EE7AC  4E 80 00 20 */	blr 
