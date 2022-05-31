lbl_8061C208:
/* 8061C208  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8061C20C  7C 08 02 A6 */	mflr r0
/* 8061C210  90 01 00 64 */	stw r0, 0x64(r1)
/* 8061C214  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8061C218  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8061C21C  39 61 00 50 */	addi r11, r1, 0x50
/* 8061C220  4B A7 EC B5 */	bl func_8009AED4
/* 8061C224  3C A0 81 16 */	lis r5, debug_mode@ha /* 0x81166138@ha */
/* 8061C228  3C 00 43 30 */	lis r0, 0x4330
/* 8061C22C  38 C5 61 38 */	addi r6, r5, debug_mode@l /* 0x81166138@l */
/* 8061C230  7C 9E 23 78 */	mr r30, r4
/* 8061C234  80 E6 00 00 */	lwz r7, 0(r6)
/* 8061C238  3C A0 80 65 */	lis r5, lit_387@ha /* 0x8064CAC4@ha */
/* 8061C23C  3C C0 80 65 */	lis r6, lit_405@ha /* 0x8064CAD8@ha */
/* 8061C240  90 01 00 08 */	stw r0, 8(r1)
/* 8061C244  A8 E7 19 14 */	lha r7, 0x1914(r7)
/* 8061C248  7C 7D 1B 78 */	mr r29, r3
/* 8061C24C  C8 25 CA C4 */	lfd f1, lit_387@l(r5)  /* 0x8064CAC4@l */
/* 8061C250  38 07 00 2A */	addi r0, r7, 0x2a
/* 8061C254  C0 46 CA D8 */	lfs f2, lit_405@l(r6)  /* 0x8064CAD8@l */
/* 8061C258  7C 05 07 34 */	extsh r5, r0
/* 8061C25C  A8 83 00 00 */	lha r4, 0(r3)
/* 8061C260  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 8061C264  90 01 00 0C */	stw r0, 0xc(r1)
/* 8061C268  7C 04 28 50 */	subf r0, r4, r5
/* 8061C26C  7C 1F 07 34 */	extsh r31, r0
/* 8061C270  C8 01 00 08 */	lfd f0, 8(r1)
/* 8061C274  EC 00 08 28 */	fsubs f0, f0, f1
/* 8061C278  EC 02 00 32 */	fmuls f0, f2, f0
/* 8061C27C  FC 00 00 1E */	fctiwz f0, f0
/* 8061C280  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8061C284  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061C288  7C 00 07 34 */	extsh r0, r0
/* 8061C28C  7C 1F 00 00 */	cmpw r31, r0
/* 8061C290  41 81 00 50 */	bgt lbl_8061C2E0
/* 8061C294  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8061C298  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8061C29C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8061C2A0  3C C0 80 65 */	lis r6, lit_435@ha /* 0x8064CAE0@ha */
/* 8061C2A4  3C 63 00 02 */	addis r3, r3, 2
/* 8061C2A8  3C A0 80 65 */	lis r5, lit_436@ha /* 0x8064CAE4@ha */
/* 8061C2AC  80 83 60 9C */	lwz r4, 0x609c(r3)
/* 8061C2B0  38 E6 CA E0 */	addi r7, r6, lit_435@l /* 0x8064CAE0@l */
/* 8061C2B4  38 C5 CA E4 */	addi r6, r5, lit_436@l /* 0x8064CAE4@l */
/* 8061C2B8  7F E3 FB 78 */	mr r3, r31
/* 8061C2BC  81 84 00 14 */	lwz r12, 0x14(r4)
/* 8061C2C0  38 80 00 00 */	li r4, 0
/* 8061C2C4  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 8061C2C8  C0 27 00 00 */	lfs f1, 0(r7)
/* 8061C2CC  C0 46 00 00 */	lfs f2, 0(r6)
/* 8061C2D0  7D 89 03 A6 */	mtctr r12
/* 8061C2D4  4E 80 04 21 */	bctrl 
/* 8061C2D8  FF E0 08 90 */	fmr f31, f1
/* 8061C2DC  48 00 00 40 */	b lbl_8061C31C
lbl_8061C2E0:
/* 8061C2E0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8061C2E4  3C E0 80 65 */	lis r7, lit_436@ha /* 0x8064CAE4@ha */
/* 8061C2E8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8061C2EC  3C C0 80 65 */	lis r6, lit_435@ha /* 0x8064CAE0@ha */
/* 8061C2F0  3C 63 00 02 */	addis r3, r3, 2
/* 8061C2F4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8061C2F8  80 83 60 9C */	lwz r4, 0x609c(r3)
/* 8061C2FC  7F E3 FB 78 */	mr r3, r31
/* 8061C300  C0 27 CA E4 */	lfs f1, lit_436@l(r7)  /* 0x8064CAE4@l */
/* 8061C304  81 84 00 14 */	lwz r12, 0x14(r4)
/* 8061C308  80 81 00 24 */	lwz r4, 0x24(r1)
/* 8061C30C  C0 46 CA E0 */	lfs f2, lit_435@l(r6)  /* 0x8064CAE0@l */
/* 8061C310  7D 89 03 A6 */	mtctr r12
/* 8061C314  4E 80 04 21 */	bctrl 
/* 8061C318  FF E0 08 90 */	fmr f31, f1
lbl_8061C31C:
/* 8061C31C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8061C320  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 8061C324  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8061C328  80 C4 61 38 */	lwz r6, debug_mode@l(r4)  /* 0x81166138@l */
/* 8061C32C  3C 63 00 02 */	addis r3, r3, 2
/* 8061C330  3C A0 80 65 */	lis r5, lit_403@ha /* 0x8064CAD0@ha */
/* 8061C334  80 63 60 9C */	lwz r3, 0x609c(r3)
/* 8061C338  3C 80 80 65 */	lis r4, lit_437@ha /* 0x8064CAE8@ha */
/* 8061C33C  A8 C6 19 14 */	lha r6, 0x1914(r6)
/* 8061C340  81 83 00 14 */	lwz r12, 0x14(r3)
/* 8061C344  7F E3 FB 78 */	mr r3, r31
/* 8061C348  38 06 00 2A */	addi r0, r6, 0x2a
/* 8061C34C  C0 25 CA D0 */	lfs f1, lit_403@l(r5)  /* 0x8064CAD0@l */
/* 8061C350  C0 44 CA E8 */	lfs f2, lit_437@l(r4)  /* 0x8064CAE8@l */
/* 8061C354  7C 05 07 34 */	extsh r5, r0
/* 8061C358  38 80 00 00 */	li r4, 0
/* 8061C35C  7D 89 03 A6 */	mtctr r12
/* 8061C360  4E 80 04 21 */	bctrl 
/* 8061C364  FC 00 08 1E */	fctiwz f0, f1
/* 8061C368  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 8061C36C  C0 5D 00 14 */	lfs f2, 0x14(r29)
/* 8061C370  38 60 00 00 */	li r3, 0
/* 8061C374  C0 7D 00 18 */	lfs f3, 0x18(r29)
/* 8061C378  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8061C37C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8061C380  4B DE FF 81 */	bl Matrix_translate
/* 8061C384  38 7E 20 4C */	addi r3, r30, 0x204c
/* 8061C388  38 80 00 01 */	li r4, 1
/* 8061C38C  4B DE FF 0D */	bl Matrix_mult
/* 8061C390  7F E3 FB 78 */	mr r3, r31
/* 8061C394  38 80 00 01 */	li r4, 1
/* 8061C398  4B DF 04 59 */	bl Matrix_RotateZ
/* 8061C39C  C0 3D 00 34 */	lfs f1, 0x34(r29)
/* 8061C3A0  38 60 00 01 */	li r3, 1
/* 8061C3A4  C0 5D 00 38 */	lfs f2, 0x38(r29)
/* 8061C3A8  C0 7D 00 3C */	lfs f3, 0x3c(r29)
/* 8061C3AC  4B DF 00 41 */	bl Matrix_scale
/* 8061C3B0  80 7E 00 00 */	lwz r3, 0(r30)
/* 8061C3B4  4B DC 8D A5 */	bl _texture_z_light_fog_prim_xlu
/* 8061C3B8  83 FE 00 00 */	lwz r31, 0(r30)
/* 8061C3BC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8061C3C0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8061C3C4  83 BF 02 E0 */	lwz r29, 0x2e0(r31)
/* 8061C3C8  38 7D 00 08 */	addi r3, r29, 8
/* 8061C3CC  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8061C3D0  90 1D 00 00 */	stw r0, 0(r29)
/* 8061C3D4  80 7E 00 00 */	lwz r3, 0(r30)
/* 8061C3D8  4B DF 0F FD */	bl _Matrix_to_Mtx_new
/* 8061C3DC  FC 00 F8 1E */	fctiwz f0, f31
/* 8061C3E0  90 7D 00 04 */	stw r3, 4(r29)
/* 8061C3E4  3C C0 FA 00 */	lis r6, 0xFA00 /* 0xFA0000FF@ha */
/* 8061C3E8  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 8061C3EC  81 3F 02 E0 */	lwz r9, 0x2e0(r31)
/* 8061C3F0  3C 80 80 CC */	lis r4, ef_takurami01_normal_render_mode@ha /* 0x80CC0590@ha */
/* 8061C3F4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8061C3F8  38 E9 00 08 */	addi r7, r9, 8
/* 8061C3FC  3C 60 80 CC */	lis r3, ef_takurami01_kira_modelT@ha /* 0x80CC0400@ha */
/* 8061C400  39 06 00 FF */	addi r8, r6, 0x00FF /* 0xFA0000FF@l */
/* 8061C404  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8061C408  38 C5 00 20 */	addi r6, r5, 0x0020 /* 0xDB060020@l */
/* 8061C40C  90 FF 02 E0 */	stw r7, 0x2e0(r31)
/* 8061C410  38 A4 05 90 */	addi r5, r4, ef_takurami01_normal_render_mode@l /* 0x80CC0590@l */
/* 8061C414  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8061C418  3C 80 DE 00 */	lis r4, 0xde00
/* 8061C41C  64 07 FF FF */	oris r7, r0, 0xffff
/* 8061C420  91 09 00 00 */	stw r8, 0(r9)
/* 8061C424  60 E7 FF 00 */	ori r7, r7, 0xff00
/* 8061C428  38 03 04 00 */	addi r0, r3, ef_takurami01_kira_modelT@l /* 0x80CC0400@l */
/* 8061C42C  90 E9 00 04 */	stw r7, 4(r9)
/* 8061C430  80 FF 02 E0 */	lwz r7, 0x2e0(r31)
/* 8061C434  38 67 00 08 */	addi r3, r7, 8
/* 8061C438  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8061C43C  90 C7 00 00 */	stw r6, 0(r7)
/* 8061C440  90 A7 00 04 */	stw r5, 4(r7)
/* 8061C444  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 8061C448  38 65 00 08 */	addi r3, r5, 8
/* 8061C44C  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8061C450  90 85 00 00 */	stw r4, 0(r5)
/* 8061C454  90 05 00 04 */	stw r0, 4(r5)
/* 8061C458  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8061C45C  39 61 00 50 */	addi r11, r1, 0x50
/* 8061C460  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8061C464  4B A7 EA BD */	bl func_8009AF20
/* 8061C468  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8061C46C  7C 08 03 A6 */	mtlr r0
/* 8061C470  38 21 00 60 */	addi r1, r1, 0x60
/* 8061C474  4E 80 00 20 */	blr 
