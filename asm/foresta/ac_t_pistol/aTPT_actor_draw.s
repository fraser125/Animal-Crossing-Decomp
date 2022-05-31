lbl_804A9688:
/* 804A9688  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A968C  7C 08 02 A6 */	mflr r0
/* 804A9690  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A9694  39 61 00 20 */	addi r11, r1, 0x20
/* 804A9698  4B BF 18 3D */	bl func_8009AED4
/* 804A969C  7C 7D 1B 78 */	mr r29, r3
/* 804A96A0  83 E4 00 00 */	lwz r31, 0(r4)
/* 804A96A4  80 03 01 B8 */	lwz r0, 0x1b8(r3)
/* 804A96A8  2C 00 00 01 */	cmpwi r0, 1
/* 804A96AC  40 82 00 20 */	bne lbl_804A96CC
/* 804A96B0  38 7D 01 78 */	addi r3, r29, 0x178
/* 804A96B4  4B F6 2B A5 */	bl Matrix_put
/* 804A96B8  38 7D 00 28 */	addi r3, r29, 0x28
/* 804A96BC  4B F6 3E 01 */	bl Matrix_Position_Zero
/* 804A96C0  38 00 00 00 */	li r0, 0
/* 804A96C4  90 1D 01 B8 */	stw r0, 0x1b8(r29)
/* 804A96C8  48 00 00 30 */	b lbl_804A96F8
lbl_804A96CC:
/* 804A96CC  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 804A96D0  38 60 00 00 */	li r3, 0
/* 804A96D4  C0 5D 00 2C */	lfs f2, 0x2c(r29)
/* 804A96D8  C0 7D 00 30 */	lfs f3, 0x30(r29)
/* 804A96DC  4B F6 2C 25 */	bl Matrix_translate
/* 804A96E0  3C 80 80 64 */	lis r4, lit_495@ha /* 0x80645E10@ha */
/* 804A96E4  38 60 00 01 */	li r3, 1
/* 804A96E8  C0 24 5E 10 */	lfs f1, lit_495@l(r4)  /* 0x80645E10@l */
/* 804A96EC  FC 40 08 90 */	fmr f2, f1
/* 804A96F0  FC 60 08 90 */	fmr f3, f1
/* 804A96F4  4B F6 2C F9 */	bl Matrix_scale
lbl_804A96F8:
/* 804A96F8  C0 3D 00 5C */	lfs f1, 0x5c(r29)
/* 804A96FC  38 60 00 01 */	li r3, 1
/* 804A9700  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 804A9704  C0 7D 00 64 */	lfs f3, 0x64(r29)
/* 804A9708  4B F6 2C E5 */	bl Matrix_scale
/* 804A970C  7F E3 FB 78 */	mr r3, r31
/* 804A9710  4B F3 BA 99 */	bl _texture_z_light_fog_prim_npc
/* 804A9714  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 804A9718  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804A971C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804A9720  7F E3 FB 78 */	mr r3, r31
/* 804A9724  90 1E 00 00 */	stw r0, 0(r30)
/* 804A9728  7F DD F3 78 */	mr r29, r30
/* 804A972C  3B DE 00 08 */	addi r30, r30, 8
/* 804A9730  4B F6 3C A5 */	bl _Matrix_to_Mtx_new
/* 804A9734  90 7D 00 04 */	stw r3, 4(r29)
/* 804A9738  7F C4 F3 78 */	mr r4, r30
/* 804A973C  3C 00 DE 00 */	lis r0, 0xde00
/* 804A9740  3C 60 80 C1 */	lis r3, tol_kenjyu_1T_model@ha /* 0x80C14130@ha */
/* 804A9744  90 1E 00 00 */	stw r0, 0(r30)
/* 804A9748  38 03 41 30 */	addi r0, r3, tol_kenjyu_1T_model@l /* 0x80C14130@l */
/* 804A974C  3B DE 00 08 */	addi r30, r30, 8
/* 804A9750  90 04 00 04 */	stw r0, 4(r4)
/* 804A9754  93 DF 02 D0 */	stw r30, 0x2d0(r31)
/* 804A9758  39 61 00 20 */	addi r11, r1, 0x20
/* 804A975C  4B BF 17 C5 */	bl func_8009AF20
/* 804A9760  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A9764  7C 08 03 A6 */	mtlr r0
/* 804A9768  38 21 00 20 */	addi r1, r1, 0x20
/* 804A976C  4E 80 00 20 */	blr 
