lbl_804A93DC:
/* 804A93DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A93E0  7C 08 02 A6 */	mflr r0
/* 804A93E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A93E8  39 61 00 20 */	addi r11, r1, 0x20
/* 804A93EC  4B BF 1A E9 */	bl func_8009AED4
/* 804A93F0  7C 7D 1B 78 */	mr r29, r3
/* 804A93F4  83 E4 00 00 */	lwz r31, 0(r4)
/* 804A93F8  80 03 01 B8 */	lwz r0, 0x1b8(r3)
/* 804A93FC  2C 00 00 01 */	cmpwi r0, 1
/* 804A9400  40 82 00 20 */	bne lbl_804A9420
/* 804A9404  38 7D 01 78 */	addi r3, r29, 0x178
/* 804A9408  4B F6 2E 51 */	bl Matrix_put
/* 804A940C  38 7D 00 28 */	addi r3, r29, 0x28
/* 804A9410  4B F6 40 AD */	bl Matrix_Position_Zero
/* 804A9414  38 00 00 00 */	li r0, 0
/* 804A9418  90 1D 01 B8 */	stw r0, 0x1b8(r29)
/* 804A941C  48 00 00 30 */	b lbl_804A944C
lbl_804A9420:
/* 804A9420  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 804A9424  38 60 00 00 */	li r3, 0
/* 804A9428  C0 5D 00 2C */	lfs f2, 0x2c(r29)
/* 804A942C  C0 7D 00 30 */	lfs f3, 0x30(r29)
/* 804A9430  4B F6 2E D1 */	bl Matrix_translate
/* 804A9434  3C 80 80 64 */	lis r4, lit_485@ha /* 0x80645E08@ha */
/* 804A9438  38 60 00 01 */	li r3, 1
/* 804A943C  C0 24 5E 08 */	lfs f1, lit_485@l(r4)  /* 0x80645E08@l */
/* 804A9440  FC 40 08 90 */	fmr f2, f1
/* 804A9444  FC 60 08 90 */	fmr f3, f1
/* 804A9448  4B F6 2F A5 */	bl Matrix_scale
lbl_804A944C:
/* 804A944C  7F E3 FB 78 */	mr r3, r31
/* 804A9450  4B F3 BD 59 */	bl _texture_z_light_fog_prim_npc
/* 804A9454  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804A9458  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 804A945C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804A9460  7F E3 FB 78 */	mr r3, r31
/* 804A9464  90 1E 00 00 */	stw r0, 0(r30)
/* 804A9468  4B F6 3F 6D */	bl _Matrix_to_Mtx_new
/* 804A946C  90 7E 00 04 */	stw r3, 4(r30)
/* 804A9470  3C 00 DE 00 */	lis r0, 0xde00
/* 804A9474  3C 80 80 C1 */	lis r4, tol_npcsao_1_sao_model@ha /* 0x80C14870@ha */
/* 804A9478  38 60 00 00 */	li r3, 0
/* 804A947C  90 1E 00 08 */	stw r0, 8(r30)
/* 804A9480  38 04 48 70 */	addi r0, r4, tol_npcsao_1_sao_model@l /* 0x80C14870@l */
/* 804A9484  90 1E 00 0C */	stw r0, 0xc(r30)
/* 804A9488  3B DE 00 10 */	addi r30, r30, 0x10
/* 804A948C  C0 3D 01 D4 */	lfs f1, 0x1d4(r29)
/* 804A9490  C0 5D 01 D8 */	lfs f2, 0x1d8(r29)
/* 804A9494  C0 7D 01 DC */	lfs f3, 0x1dc(r29)
/* 804A9498  4B F6 2E 69 */	bl Matrix_translate
/* 804A949C  3C 80 80 64 */	lis r4, lit_485@ha /* 0x80645E08@ha */
/* 804A94A0  38 60 00 01 */	li r3, 1
/* 804A94A4  C0 24 5E 08 */	lfs f1, lit_485@l(r4)  /* 0x80645E08@l */
/* 804A94A8  FC 40 08 90 */	fmr f2, f1
/* 804A94AC  FC 60 08 90 */	fmr f3, f1
/* 804A94B0  4B F6 2F 3D */	bl Matrix_scale
/* 804A94B4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804A94B8  7F DD F3 78 */	mr r29, r30
/* 804A94BC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804A94C0  7F E3 FB 78 */	mr r3, r31
/* 804A94C4  90 1E 00 00 */	stw r0, 0(r30)
/* 804A94C8  3B DE 00 08 */	addi r30, r30, 8
/* 804A94CC  4B F6 3F 09 */	bl _Matrix_to_Mtx_new
/* 804A94D0  90 7D 00 04 */	stw r3, 4(r29)
/* 804A94D4  7F C4 F3 78 */	mr r4, r30
/* 804A94D8  3C 00 DE 00 */	lis r0, 0xde00
/* 804A94DC  3C 60 80 C1 */	lis r3, tol_npcsao_1_uki_model@ha /* 0x80C148F0@ha */
/* 804A94E0  90 1E 00 00 */	stw r0, 0(r30)
/* 804A94E4  38 03 48 F0 */	addi r0, r3, tol_npcsao_1_uki_model@l /* 0x80C148F0@l */
/* 804A94E8  3B DE 00 08 */	addi r30, r30, 8
/* 804A94EC  90 04 00 04 */	stw r0, 4(r4)
/* 804A94F0  93 DF 02 D0 */	stw r30, 0x2d0(r31)
/* 804A94F4  39 61 00 20 */	addi r11, r1, 0x20
/* 804A94F8  4B BF 1A 29 */	bl func_8009AF20
/* 804A94FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A9500  7C 08 03 A6 */	mtlr r0
/* 804A9504  38 21 00 20 */	addi r1, r1, 0x20
/* 804A9508  4E 80 00 20 */	blr 
