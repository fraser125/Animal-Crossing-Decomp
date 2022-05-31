lbl_804A85DC:
/* 804A85DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A85E0  7C 08 02 A6 */	mflr r0
/* 804A85E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A85E8  39 61 00 20 */	addi r11, r1, 0x20
/* 804A85EC  4B BF 28 E1 */	bl func_8009AECC
/* 804A85F0  83 C4 00 00 */	lwz r30, 0(r4)
/* 804A85F4  7C 7B 1B 78 */	mr r27, r3
/* 804A85F8  7F 7C DB 78 */	mr r28, r27
/* 804A85FC  7C 9F 23 78 */	mr r31, r4
/* 804A8600  80 7E 02 D4 */	lwz r3, 0x2d4(r30)
/* 804A8604  34 63 FF 10 */	addic. r3, r3, -240
/* 804A8608  90 7E 02 D4 */	stw r3, 0x2d4(r30)
/* 804A860C  7C 7D 1B 78 */	mr r29, r3
/* 804A8610  41 82 00 10 */	beq lbl_804A8620
/* 804A8614  7F 84 E3 78 */	mr r4, r28
/* 804A8618  4B FF FD C1 */	bl aTFL_make_vtx
/* 804A861C  48 00 00 10 */	b lbl_804A862C
lbl_804A8620:
/* 804A8620  3C 60 80 C1 */	lis r3, tol_hata_01_v@ha /* 0x80C10EC0@ha */
/* 804A8624  38 03 0E C0 */	addi r0, r3, tol_hata_01_v@l /* 0x80C10EC0@l */
/* 804A8628  7C 1D 03 78 */	mr r29, r0
lbl_804A862C:
/* 804A862C  80 1C 01 B8 */	lwz r0, 0x1b8(r28)
/* 804A8630  2C 00 00 01 */	cmpwi r0, 1
/* 804A8634  40 82 00 20 */	bne lbl_804A8654
/* 804A8638  38 7B 01 78 */	addi r3, r27, 0x178
/* 804A863C  4B F6 3C 1D */	bl Matrix_put
/* 804A8640  38 7B 00 28 */	addi r3, r27, 0x28
/* 804A8644  4B F6 4E 79 */	bl Matrix_Position_Zero
/* 804A8648  38 00 00 00 */	li r0, 0
/* 804A864C  90 1C 01 B8 */	stw r0, 0x1b8(r28)
/* 804A8650  48 00 00 30 */	b lbl_804A8680
lbl_804A8654:
/* 804A8654  C0 3B 00 28 */	lfs f1, 0x28(r27)
/* 804A8658  38 60 00 00 */	li r3, 0
/* 804A865C  C0 5B 00 2C */	lfs f2, 0x2c(r27)
/* 804A8660  C0 7B 00 30 */	lfs f3, 0x30(r27)
/* 804A8664  4B F6 3C 9D */	bl Matrix_translate
/* 804A8668  3C 80 80 64 */	lis r4, lit_522@ha /* 0x80645DD4@ha */
/* 804A866C  38 60 00 01 */	li r3, 1
/* 804A8670  C0 24 5D D4 */	lfs f1, lit_522@l(r4)  /* 0x80645DD4@l */
/* 804A8674  FC 40 08 90 */	fmr f2, f1
/* 804A8678  FC 60 08 90 */	fmr f3, f1
/* 804A867C  4B F6 3D 71 */	bl Matrix_scale
lbl_804A8680:
/* 804A8680  7F C3 F3 78 */	mr r3, r30
/* 804A8684  4B F3 CB 25 */	bl _texture_z_light_fog_prim_npc
/* 804A8688  83 9E 02 D0 */	lwz r28, 0x2d0(r30)
/* 804A868C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804A8690  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804A8694  7F C3 F3 78 */	mr r3, r30
/* 804A8698  90 1C 00 00 */	stw r0, 0(r28)
/* 804A869C  7F 9B E3 78 */	mr r27, r28
/* 804A86A0  3B 9C 00 08 */	addi r28, r28, 8
/* 804A86A4  4B F6 4D 31 */	bl _Matrix_to_Mtx_new
/* 804A86A8  90 7B 00 04 */	stw r3, 4(r27)
/* 804A86AC  3C 00 DE 00 */	lis r0, 0xde00
/* 804A86B0  3C 60 80 C1 */	lis r3, tol_hata_e_model@ha /* 0x80C10FB0@ha */
/* 804A86B4  7F 84 E3 78 */	mr r4, r28
/* 804A86B8  90 1C 00 00 */	stw r0, 0(r28)
/* 804A86BC  38 03 0F B0 */	addi r0, r3, tol_hata_e_model@l /* 0x80C10FB0@l */
/* 804A86C0  3B 9C 00 08 */	addi r28, r28, 8
/* 804A86C4  3C 60 80 C1 */	lis r3, tol_hata_01_evw_anime@ha /* 0x80C11098@ha */
/* 804A86C8  90 04 00 04 */	stw r0, 4(r4)
/* 804A86CC  38 83 10 98 */	addi r4, r3, tol_hata_01_evw_anime@l /* 0x80C11098@l */
/* 804A86D0  7F E3 FB 78 */	mr r3, r31
/* 804A86D4  93 9E 02 D0 */	stw r28, 0x2d0(r30)
/* 804A86D8  4B EC AE 85 */	bl Evw_Anime_Set
/* 804A86DC  7F C3 F3 78 */	mr r3, r30
/* 804A86E0  4B F3 CA 79 */	bl _texture_z_light_fog_prim_xlu
/* 804A86E4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804A86E8  83 7E 02 E0 */	lwz r27, 0x2e0(r30)
/* 804A86EC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804A86F0  7F C3 F3 78 */	mr r3, r30
/* 804A86F4  90 1B 00 00 */	stw r0, 0(r27)
/* 804A86F8  4B F6 4C DD */	bl _Matrix_to_Mtx_new
/* 804A86FC  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060028@ha */
/* 804A8700  90 7B 00 04 */	stw r3, 4(r27)
/* 804A8704  38 04 00 28 */	addi r0, r4, 0x0028 /* 0xDB060028@l */
/* 804A8708  3C 60 80 C1 */	lis r3, tol_hata_hataT_model@ha /* 0x80C11018@ha */
/* 804A870C  90 1B 00 08 */	stw r0, 8(r27)
/* 804A8710  3C 80 DE 00 */	lis r4, 0xde00
/* 804A8714  38 03 10 18 */	addi r0, r3, tol_hata_hataT_model@l /* 0x80C11018@l */
/* 804A8718  93 BB 00 0C */	stw r29, 0xc(r27)
/* 804A871C  3B 7B 00 10 */	addi r27, r27, 0x10
/* 804A8720  7F 63 DB 78 */	mr r3, r27
/* 804A8724  90 9B 00 00 */	stw r4, 0(r27)
/* 804A8728  3B 7B 00 08 */	addi r27, r27, 8
/* 804A872C  90 03 00 04 */	stw r0, 4(r3)
/* 804A8730  93 7E 02 E0 */	stw r27, 0x2e0(r30)
/* 804A8734  39 61 00 20 */	addi r11, r1, 0x20
/* 804A8738  4B BF 27 E1 */	bl func_8009AF18
/* 804A873C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A8740  7C 08 03 A6 */	mtlr r0
/* 804A8744  38 21 00 20 */	addi r1, r1, 0x20
/* 804A8748  4E 80 00 20 */	blr 
