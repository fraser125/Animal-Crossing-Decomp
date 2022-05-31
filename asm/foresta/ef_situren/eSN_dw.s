lbl_8061D9AC:
/* 8061D9AC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8061D9B0  7C 08 02 A6 */	mflr r0
/* 8061D9B4  90 01 00 84 */	stw r0, 0x84(r1)
/* 8061D9B8  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8061D9BC  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 8061D9C0  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 8061D9C4  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 8061D9C8  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 8061D9CC  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 8061D9D0  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 8061D9D4  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 8061D9D8  DB 61 00 30 */	stfd f27, 0x30(r1)
/* 8061D9DC  F3 61 00 38 */	psq_st f27, 56(r1), 0, 0 /* qr0 */
/* 8061D9E0  39 61 00 30 */	addi r11, r1, 0x30
/* 8061D9E4  4B A7 D4 E9 */	bl func_8009AECC
/* 8061D9E8  7C 7C 1B 78 */	mr r28, r3
/* 8061D9EC  7C 9D 23 78 */	mr r29, r4
/* 8061D9F0  A8 03 00 00 */	lha r0, 0(r3)
/* 8061D9F4  AB E3 00 4C */	lha r31, 0x4c(r3)
/* 8061D9F8  20 00 00 80 */	subfic r0, r0, 0x80
/* 8061D9FC  7F E3 FB 78 */	mr r3, r31
/* 8061DA00  7C 1E 07 34 */	extsh r30, r0
/* 8061DA04  4B D9 D0 ED */	bl sin_s
/* 8061DA08  FF 60 08 90 */	fmr f27, f1
/* 8061DA0C  7F E3 FB 78 */	mr r3, r31
/* 8061DA10  4B D9 D0 8D */	bl cos_s
/* 8061DA14  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8061DA18  3C A0 80 65 */	lis r5, lit_424@ha /* 0x8064CBB4@ha */
/* 8061DA1C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8061DA20  C0 45 CB B4 */	lfs f2, lit_424@l(r5)  /* 0x8064CBB4@l */
/* 8061DA24  3F E3 00 02 */	addis r31, r3, 2
/* 8061DA28  3C C0 80 65 */	lis r6, lit_423@ha /* 0x8064CBB0@ha */
/* 8061DA2C  80 9F 60 9C */	lwz r4, 0x609c(r31)
/* 8061DA30  FF 80 08 90 */	fmr f28, f1
/* 8061DA34  7F C3 F3 78 */	mr r3, r30
/* 8061DA38  C0 26 CB B0 */	lfs f1, lit_423@l(r6)  /* 0x8064CBB0@l */
/* 8061DA3C  81 84 00 14 */	lwz r12, 0x14(r4)
/* 8061DA40  38 80 00 00 */	li r4, 0
/* 8061DA44  38 A0 00 06 */	li r5, 6
/* 8061DA48  7D 89 03 A6 */	mtctr r12
/* 8061DA4C  4E 80 04 21 */	bctrl 
/* 8061DA50  80 7F 60 9C */	lwz r3, 0x609c(r31)
/* 8061DA54  3C 80 80 65 */	lis r4, lit_426@ha /* 0x8064CBBC@ha */
/* 8061DA58  C0 44 CB BC */	lfs f2, lit_426@l(r4)  /* 0x8064CBBC@l */
/* 8061DA5C  3C A0 80 65 */	lis r5, lit_425@ha /* 0x8064CBB8@ha */
/* 8061DA60  81 83 00 14 */	lwz r12, 0x14(r3)
/* 8061DA64  FF A0 08 90 */	fmr f29, f1
/* 8061DA68  C0 25 CB B8 */	lfs f1, lit_425@l(r5)  /* 0x8064CBB8@l */
/* 8061DA6C  7F C3 F3 78 */	mr r3, r30
/* 8061DA70  38 80 00 00 */	li r4, 0
/* 8061DA74  38 A0 00 2A */	li r5, 0x2a
/* 8061DA78  7D 89 03 A6 */	mtctr r12
/* 8061DA7C  4E 80 04 21 */	bctrl 
/* 8061DA80  80 7F 60 9C */	lwz r3, 0x609c(r31)
/* 8061DA84  3C 80 80 65 */	lis r4, lit_426@ha /* 0x8064CBBC@ha */
/* 8061DA88  C0 44 CB BC */	lfs f2, lit_426@l(r4)  /* 0x8064CBBC@l */
/* 8061DA8C  3C A0 80 65 */	lis r5, lit_427@ha /* 0x8064CBC0@ha */
/* 8061DA90  81 83 00 14 */	lwz r12, 0x14(r3)
/* 8061DA94  FF C0 08 90 */	fmr f30, f1
/* 8061DA98  C0 25 CB C0 */	lfs f1, lit_427@l(r5)  /* 0x8064CBC0@l */
/* 8061DA9C  7F C3 F3 78 */	mr r3, r30
/* 8061DAA0  38 80 00 00 */	li r4, 0
/* 8061DAA4  38 A0 00 2A */	li r5, 0x2a
/* 8061DAA8  7D 89 03 A6 */	mtctr r12
/* 8061DAAC  4E 80 04 21 */	bctrl 
/* 8061DAB0  80 7F 60 9C */	lwz r3, 0x609c(r31)
/* 8061DAB4  3C 80 80 65 */	lis r4, lit_423@ha /* 0x8064CBB0@ha */
/* 8061DAB8  C0 44 CB B0 */	lfs f2, lit_423@l(r4)  /* 0x8064CBB0@l */
/* 8061DABC  3C A0 80 65 */	lis r5, lit_428@ha /* 0x8064CBC4@ha */
/* 8061DAC0  81 83 00 14 */	lwz r12, 0x14(r3)
/* 8061DAC4  FF E0 08 90 */	fmr f31, f1
/* 8061DAC8  C0 25 CB C4 */	lfs f1, lit_428@l(r5)  /* 0x8064CBC4@l */
/* 8061DACC  7F C3 F3 78 */	mr r3, r30
/* 8061DAD0  38 80 00 6C */	li r4, 0x6c
/* 8061DAD4  38 A0 00 80 */	li r5, 0x80
/* 8061DAD8  7D 89 03 A6 */	mtctr r12
/* 8061DADC  4E 80 04 21 */	bctrl 
/* 8061DAE0  3C 60 80 65 */	lis r3, lit_426@ha /* 0x8064CBBC@ha */
/* 8061DAE4  3C 80 80 65 */	lis r4, lit_429@ha /* 0x8064CBC8@ha */
/* 8061DAE8  C0 03 CB BC */	lfs f0, lit_426@l(r3)  /* 0x8064CBBC@l */
/* 8061DAEC  FC 40 08 1E */	fctiwz f2, f1
/* 8061DAF0  C0 64 CB C8 */	lfs f3, lit_429@l(r4)  /* 0x8064CBC8@l */
/* 8061DAF4  EC 9E F8 28 */	fsubs f4, f30, f31
/* 8061DAF8  EC 20 D8 2A */	fadds f1, f0, f27
/* 8061DAFC  3C 60 80 65 */	lis r3, lit_424@ha /* 0x8064CBB4@ha */
/* 8061DB00  D8 41 00 08 */	stfd f2, 8(r1)
/* 8061DB04  EC 00 E0 2A */	fadds f0, f0, f28
/* 8061DB08  2C 1E 00 3C */	cmpwi r30, 0x3c
/* 8061DB0C  EC 43 00 72 */	fmuls f2, f3, f1
/* 8061DB10  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8061DB14  EC 23 00 32 */	fmuls f1, f3, f0
/* 8061DB18  C0 03 CB B4 */	lfs f0, lit_424@l(r3)  /* 0x8064CBB4@l */
/* 8061DB1C  EC 42 01 32 */	fmuls f2, f2, f4
/* 8061DB20  54 1B 06 3E */	clrlwi r27, r0, 0x18
/* 8061DB24  EC 21 01 32 */	fmuls f1, f1, f4
/* 8061DB28  EC 5F 10 2A */	fadds f2, f31, f2
/* 8061DB2C  EC 3F 08 2A */	fadds f1, f31, f1
/* 8061DB30  EC 5D 00 B2 */	fmuls f2, f29, f2
/* 8061DB34  EC 3D 00 72 */	fmuls f1, f29, f1
/* 8061DB38  D0 5C 00 34 */	stfs f2, 0x34(r28)
/* 8061DB3C  D0 3C 00 38 */	stfs f1, 0x38(r28)
/* 8061DB40  D0 1C 00 3C */	stfs f0, 0x3c(r28)
/* 8061DB44  40 82 00 14 */	bne lbl_8061DB58
/* 8061DB48  3C 60 80 CC */	lis r3, ef_situren01_01_modelT@ha /* 0x80CBF200@ha */
/* 8061DB4C  38 03 F2 00 */	addi r0, r3, ef_situren01_01_modelT@l /* 0x80CBF200@l */
/* 8061DB50  7C 1F 03 78 */	mr r31, r0
/* 8061DB54  48 00 00 24 */	b lbl_8061DB78
lbl_8061DB58:
/* 8061DB58  40 81 00 14 */	ble lbl_8061DB6C
/* 8061DB5C  3C 60 80 CC */	lis r3, ef_situren01_02_modelT@ha /* 0x80CBF2D8@ha */
/* 8061DB60  38 03 F2 D8 */	addi r0, r3, ef_situren01_02_modelT@l /* 0x80CBF2D8@l */
/* 8061DB64  7C 1F 03 78 */	mr r31, r0
/* 8061DB68  48 00 00 10 */	b lbl_8061DB78
lbl_8061DB6C:
/* 8061DB6C  3C 60 80 CC */	lis r3, ef_situren01_00_modelT@ha /* 0x80CBEF20@ha */
/* 8061DB70  38 03 EF 20 */	addi r0, r3, ef_situren01_00_modelT@l /* 0x80CBEF20@l */
/* 8061DB74  7C 1F 03 78 */	mr r31, r0
lbl_8061DB78:
/* 8061DB78  83 DD 00 00 */	lwz r30, 0(r29)
/* 8061DB7C  7F C3 F3 78 */	mr r3, r30
/* 8061DB80  4B DC 75 D9 */	bl _texture_z_light_fog_prim_xlu
/* 8061DB84  C0 3C 00 10 */	lfs f1, 0x10(r28)
/* 8061DB88  38 60 00 00 */	li r3, 0
/* 8061DB8C  C0 5C 00 14 */	lfs f2, 0x14(r28)
/* 8061DB90  C0 7C 00 18 */	lfs f3, 0x18(r28)
/* 8061DB94  4B DE E7 6D */	bl Matrix_translate
/* 8061DB98  38 7D 20 4C */	addi r3, r29, 0x204c
/* 8061DB9C  38 80 00 01 */	li r4, 1
/* 8061DBA0  4B DE E6 F9 */	bl Matrix_mult
/* 8061DBA4  C0 3C 00 40 */	lfs f1, 0x40(r28)
/* 8061DBA8  38 60 00 01 */	li r3, 1
/* 8061DBAC  C0 5C 00 44 */	lfs f2, 0x44(r28)
/* 8061DBB0  C0 7C 00 48 */	lfs f3, 0x48(r28)
/* 8061DBB4  4B DE E7 4D */	bl Matrix_translate
/* 8061DBB8  C0 3C 00 34 */	lfs f1, 0x34(r28)
/* 8061DBBC  38 60 00 01 */	li r3, 1
/* 8061DBC0  C0 5C 00 38 */	lfs f2, 0x38(r28)
/* 8061DBC4  C0 7C 00 3C */	lfs f3, 0x3c(r28)
/* 8061DBC8  4B DE E8 25 */	bl Matrix_scale
/* 8061DBCC  83 9E 02 E0 */	lwz r28, 0x2e0(r30)
/* 8061DBD0  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8061DBD4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8061DBD8  38 7C 00 08 */	addi r3, r28, 8
/* 8061DBDC  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8061DBE0  90 1C 00 00 */	stw r0, 0(r28)
/* 8061DBE4  80 7D 00 00 */	lwz r3, 0(r29)
/* 8061DBE8  4B DE F7 ED */	bl _Matrix_to_Mtx_new
/* 8061DBEC  90 7C 00 04 */	stw r3, 4(r28)
/* 8061DBF0  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 8061DBF4  67 63 FF C8 */	oris r3, r27, 0xffc8
/* 8061DBF8  3C 00 DE 00 */	lis r0, 0xde00
/* 8061DBFC  80 DE 02 E0 */	lwz r6, 0x2e0(r30)
/* 8061DC00  38 84 00 FF */	addi r4, r4, 0x00FF /* 0xFA0000FF@l */
/* 8061DC04  60 63 FF 00 */	ori r3, r3, 0xff00
/* 8061DC08  38 A6 00 08 */	addi r5, r6, 8
/* 8061DC0C  90 BE 02 E0 */	stw r5, 0x2e0(r30)
/* 8061DC10  90 86 00 00 */	stw r4, 0(r6)
/* 8061DC14  90 66 00 04 */	stw r3, 4(r6)
/* 8061DC18  80 9E 02 E0 */	lwz r4, 0x2e0(r30)
/* 8061DC1C  38 64 00 08 */	addi r3, r4, 8
/* 8061DC20  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 8061DC24  90 04 00 00 */	stw r0, 0(r4)
/* 8061DC28  93 E4 00 04 */	stw r31, 4(r4)
/* 8061DC2C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 8061DC30  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8061DC34  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 8061DC38  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 8061DC3C  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 8061DC40  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 8061DC44  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 8061DC48  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 8061DC4C  E3 61 00 38 */	psq_l f27, 56(r1), 0, 0 /* qr0 */
/* 8061DC50  39 61 00 30 */	addi r11, r1, 0x30
/* 8061DC54  CB 61 00 30 */	lfd f27, 0x30(r1)
/* 8061DC58  4B A7 D2 C1 */	bl func_8009AF18
/* 8061DC5C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8061DC60  7C 08 03 A6 */	mtlr r0
/* 8061DC64  38 21 00 80 */	addi r1, r1, 0x80
/* 8061DC68  4E 80 00 20 */	blr 
