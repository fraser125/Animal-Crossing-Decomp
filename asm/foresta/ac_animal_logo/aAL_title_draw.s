lbl_8041150C:
/* 8041150C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80411510  7C 08 02 A6 */	mflr r0
/* 80411514  90 01 00 24 */	stw r0, 0x24(r1)
/* 80411518  39 61 00 20 */	addi r11, r1, 0x20
/* 8041151C  4B C8 99 B1 */	bl func_8009AECC
/* 80411520  7C 7D 1B 78 */	mr r29, r3
/* 80411524  7C 9E 23 78 */	mr r30, r4
/* 80411528  83 E3 00 00 */	lwz r31, 0(r3)
/* 8041152C  4B FF AC A9 */	bl Matrix_push
/* 80411530  3C 60 80 64 */	lis r3, lit_548@ha /* 0x80643844@ha */
/* 80411534  3C 80 80 64 */	lis r4, lit_669@ha /* 0x806438E4@ha */
/* 80411538  38 A3 38 44 */	addi r5, r3, lit_548@l /* 0x80643844@l */
/* 8041153C  C0 44 38 E4 */	lfs f2, lit_669@l(r4)  /* 0x806438E4@l */
/* 80411540  C0 25 00 00 */	lfs f1, 0(r5)
/* 80411544  38 60 00 01 */	li r3, 1
/* 80411548  FC 60 08 90 */	fmr f3, f1
/* 8041154C  4B FF AD B5 */	bl Matrix_translate
/* 80411550  3C 80 80 64 */	lis r4, lit_670@ha /* 0x806438E8@ha */
/* 80411554  38 60 00 01 */	li r3, 1
/* 80411558  C0 24 38 E8 */	lfs f1, lit_670@l(r4)  /* 0x806438E8@l */
/* 8041155C  FC 40 08 90 */	fmr f2, f1
/* 80411560  FC 60 08 90 */	fmr f3, f1
/* 80411564  4B FF AE 89 */	bl Matrix_scale
/* 80411568  83 7F 02 D0 */	lwz r27, 0x2d0(r31)
/* 8041156C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80411570  80 9F 02 F0 */	lwz r4, 0x2f0(r31)
/* 80411574  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80411578  7F E3 FB 78 */	mr r3, r31
/* 8041157C  90 9F 02 D0 */	stw r4, 0x2d0(r31)
/* 80411580  83 9F 02 D0 */	lwz r28, 0x2d0(r31)
/* 80411584  38 9C 00 08 */	addi r4, r28, 8
/* 80411588  90 9F 02 D0 */	stw r4, 0x2d0(r31)
/* 8041158C  90 1C 00 00 */	stw r0, 0(r28)
/* 80411590  4B FF BE 45 */	bl _Matrix_to_Mtx_new
/* 80411594  90 7C 00 04 */	stw r3, 4(r28)
/* 80411598  3C 80 80 64 */	lis r4, init_disp_733@ha /* 0x80643974@ha */
/* 8041159C  3C A0 DE 00 */	lis r5, 0xde00
/* 804115A0  7F A3 EB 78 */	mr r3, r29
/* 804115A4  80 FF 02 D0 */	lwz r7, 0x2d0(r31)
/* 804115A8  38 04 39 74 */	addi r0, r4, init_disp_733@l /* 0x80643974@l */
/* 804115AC  38 9E 01 7C */	addi r4, r30, 0x17c
/* 804115B0  38 C7 00 08 */	addi r6, r7, 8
/* 804115B4  90 DF 02 D0 */	stw r6, 0x2d0(r31)
/* 804115B8  90 A7 00 00 */	stw r5, 0(r7)
/* 804115BC  90 07 00 04 */	stw r0, 4(r7)
/* 804115C0  4B FF FF 01 */	bl aAL_skl_draw
/* 804115C4  7F A3 EB 78 */	mr r3, r29
/* 804115C8  38 9E 01 F4 */	addi r4, r30, 0x1f4
/* 804115CC  4B FF FE F5 */	bl aAL_skl_draw
/* 804115D0  7F A3 EB 78 */	mr r3, r29
/* 804115D4  38 9E 02 6C */	addi r4, r30, 0x26c
/* 804115D8  4B FF FE E9 */	bl aAL_skl_draw
/* 804115DC  80 1F 02 D0 */	lwz r0, 0x2d0(r31)
/* 804115E0  90 1F 02 F0 */	stw r0, 0x2f0(r31)
/* 804115E4  93 7F 02 D0 */	stw r27, 0x2d0(r31)
/* 804115E8  4B FF AC 2D */	bl Matrix_pull
/* 804115EC  39 61 00 20 */	addi r11, r1, 0x20
/* 804115F0  4B C8 99 29 */	bl func_8009AF18
/* 804115F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804115F8  7C 08 03 A6 */	mtlr r0
/* 804115FC  38 21 00 20 */	addi r1, r1, 0x20
/* 80411600  4E 80 00 20 */	blr 
