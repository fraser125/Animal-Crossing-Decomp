lbl_80612568:
/* 80612568  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8061256C  7C 08 02 A6 */	mflr r0
/* 80612570  90 01 00 34 */	stw r0, 0x34(r1)
/* 80612574  39 61 00 30 */	addi r11, r1, 0x30
/* 80612578  4B A8 89 55 */	bl func_8009AECC
/* 8061257C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80612580  7C 7B 1B 78 */	mr r27, r3
/* 80612584  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 80612588  A8 1B 00 00 */	lha r0, 0(r27)
/* 8061258C  3F C3 00 02 */	addis r30, r3, 2
/* 80612590  3C C0 80 65 */	lis r6, lit_417@ha /* 0x8064C49C@ha */
/* 80612594  80 7E 60 9C */	lwz r3, 0x609c(r30)
/* 80612598  20 00 00 48 */	subfic r0, r0, 0x48
/* 8061259C  3C A0 80 65 */	lis r5, lit_418@ha /* 0x8064C4A0@ha */
/* 806125A0  7C 9C 23 78 */	mr r28, r4
/* 806125A4  81 83 00 14 */	lwz r12, 0x14(r3)
/* 806125A8  7C 1F 07 34 */	extsh r31, r0
/* 806125AC  C0 45 C4 A0 */	lfs f2, lit_418@l(r5)  /* 0x8064C4A0@l */
/* 806125B0  7F E3 FB 78 */	mr r3, r31
/* 806125B4  C0 26 C4 9C */	lfs f1, lit_417@l(r6)  /* 0x8064C49C@l */
/* 806125B8  38 80 00 40 */	li r4, 0x40
/* 806125BC  38 A0 00 48 */	li r5, 0x48
/* 806125C0  7D 89 03 A6 */	mtctr r12
/* 806125C4  4E 80 04 21 */	bctrl 
/* 806125C8  FC 00 08 1E */	fctiwz f0, f1
/* 806125CC  2C 1F 00 32 */	cmpwi r31, 0x32
/* 806125D0  D8 01 00 08 */	stfd f0, 8(r1)
/* 806125D4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 806125D8  54 1D 06 3E */	clrlwi r29, r0, 0x18
/* 806125DC  40 81 00 08 */	ble lbl_806125E4
/* 806125E0  3B E0 00 32 */	li r31, 0x32
lbl_806125E4:
/* 806125E4  7F E0 07 34 */	extsh r0, r31
/* 806125E8  3C 80 80 65 */	lis r4, lit_419@ha /* 0x8064C4A4@ha */
/* 806125EC  7C 00 0E 70 */	srawi r0, r0, 1
/* 806125F0  3C 60 80 6D */	lis r3, eKT_scale_data@ha /* 0x806D2C10@ha */
/* 806125F4  7C 00 07 34 */	extsh r0, r0
/* 806125F8  38 A4 C4 A4 */	addi r5, r4, lit_419@l /* 0x8064C4A4@l */
/* 806125FC  54 00 18 38 */	slwi r0, r0, 3
/* 80612600  38 83 2C 10 */	addi r4, r3, eKT_scale_data@l /* 0x806D2C10@l */
/* 80612604  C0 25 00 00 */	lfs f1, 0(r5)
/* 80612608  7C 64 02 14 */	add r3, r4, r0
/* 8061260C  7C 04 04 2E */	lfsx f0, r4, r0
/* 80612610  EC 01 00 32 */	fmuls f0, f1, f0
/* 80612614  D0 1B 00 34 */	stfs f0, 0x34(r27)
/* 80612618  C0 03 00 04 */	lfs f0, 4(r3)
/* 8061261C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80612620  D0 1B 00 38 */	stfs f0, 0x38(r27)
/* 80612624  D0 3B 00 3C */	stfs f1, 0x3c(r27)
/* 80612628  83 FC 00 00 */	lwz r31, 0(r28)
/* 8061262C  7F E3 FB 78 */	mr r3, r31
/* 80612630  4B DD 2B 29 */	bl _texture_z_light_fog_prim_xlu
/* 80612634  80 DE 60 9C */	lwz r6, 0x609c(r30)
/* 80612638  7F 83 E3 78 */	mr r3, r28
/* 8061263C  38 9B 00 10 */	addi r4, r27, 0x10
/* 80612640  38 BB 00 34 */	addi r5, r27, 0x34
/* 80612644  81 86 00 1C */	lwz r12, 0x1c(r6)
/* 80612648  38 DB 00 40 */	addi r6, r27, 0x40
/* 8061264C  7D 89 03 A6 */	mtctr r12
/* 80612650  4E 80 04 21 */	bctrl 
/* 80612654  83 7F 02 E0 */	lwz r27, 0x2e0(r31)
/* 80612658  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8061265C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80612660  38 7B 00 08 */	addi r3, r27, 8
/* 80612664  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 80612668  90 1B 00 00 */	stw r0, 0(r27)
/* 8061266C  80 7C 00 00 */	lwz r3, 0(r28)
/* 80612670  4B DF AD 65 */	bl _Matrix_to_Mtx_new
/* 80612674  90 7B 00 04 */	stw r3, 4(r27)
/* 80612678  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA000080@ha */
/* 8061267C  67 A5 FF FF */	oris r5, r29, 0xffff
/* 80612680  3C 60 80 CB */	lis r3, ef_kantanhu01_00_modelT@ha /* 0x80CB6720@ha */
/* 80612684  81 1F 02 E0 */	lwz r8, 0x2e0(r31)
/* 80612688  38 C4 00 80 */	addi r6, r4, 0x0080 /* 0xFA000080@l */
/* 8061268C  60 A5 FF 00 */	ori r5, r5, 0xff00
/* 80612690  3C 80 DE 00 */	lis r4, 0xde00
/* 80612694  38 E8 00 08 */	addi r7, r8, 8
/* 80612698  38 03 67 20 */	addi r0, r3, ef_kantanhu01_00_modelT@l /* 0x80CB6720@l */
/* 8061269C  90 FF 02 E0 */	stw r7, 0x2e0(r31)
/* 806126A0  90 C8 00 00 */	stw r6, 0(r8)
/* 806126A4  90 A8 00 04 */	stw r5, 4(r8)
/* 806126A8  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 806126AC  38 65 00 08 */	addi r3, r5, 8
/* 806126B0  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 806126B4  90 85 00 00 */	stw r4, 0(r5)
/* 806126B8  90 05 00 04 */	stw r0, 4(r5)
/* 806126BC  39 61 00 30 */	addi r11, r1, 0x30
/* 806126C0  4B A8 88 59 */	bl func_8009AF18
/* 806126C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806126C8  7C 08 03 A6 */	mtlr r0
/* 806126CC  38 21 00 30 */	addi r1, r1, 0x30
/* 806126D0  4E 80 00 20 */	blr 
