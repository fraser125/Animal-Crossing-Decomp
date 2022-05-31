lbl_806344B4:
/* 806344B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806344B8  7C 08 02 A6 */	mflr r0
/* 806344BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 806344C0  39 61 00 20 */	addi r11, r1, 0x20
/* 806344C4  4B A6 6A 0D */	bl func_8009AED0
/* 806344C8  A8 03 00 02 */	lha r0, 2(r3)
/* 806344CC  7C BC 2B 78 */	mr r28, r5
/* 806344D0  2C 00 00 01 */	cmpwi r0, 1
/* 806344D4  40 82 00 0C */	bne lbl_806344E0
/* 806344D8  80 1C 20 90 */	lwz r0, 0x2090(r28)
/* 806344DC  48 00 00 08 */	b lbl_806344E4
lbl_806344E0:
/* 806344E0  80 1C 00 A0 */	lwz r0, 0xa0(r28)
lbl_806344E4:
/* 806344E4  1C 60 00 03 */	mulli r3, r0, 3
/* 806344E8  7F 85 E3 78 */	mr r5, r28
/* 806344EC  38 80 00 00 */	li r4, 0
/* 806344F0  4B FF FF 71 */	bl fNSH_GetTileGfx
/* 806344F4  83 DC 00 00 */	lwz r30, 0(r28)
/* 806344F8  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 806344FC  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 80634500  7C 7F 1B 78 */	mr r31, r3
/* 80634504  83 BE 02 D0 */	lwz r29, 0x2d0(r30)
/* 80634508  38 7D 00 08 */	addi r3, r29, 8
/* 8063450C  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 80634510  90 1D 00 00 */	stw r0, 0(r29)
/* 80634514  80 7C 00 00 */	lwz r3, 0(r28)
/* 80634518  4B DD 8E BD */	bl _Matrix_to_Mtx_new
/* 8063451C  90 7D 00 04 */	stw r3, 4(r29)
/* 80634520  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80634524  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80634528  83 BE 02 E0 */	lwz r29, 0x2e0(r30)
/* 8063452C  38 7D 00 08 */	addi r3, r29, 8
/* 80634530  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 80634534  90 1D 00 00 */	stw r0, 0(r29)
/* 80634538  80 7C 00 00 */	lwz r3, 0(r28)
/* 8063453C  4B DD 8E 99 */	bl _Matrix_to_Mtx_new
/* 80634540  90 7D 00 04 */	stw r3, 4(r29)
/* 80634544  3C E0 DB 06 */	lis r7, 0xDB06 /* 0xDB060024@ha */
/* 80634548  3C C0 80 F6 */	lis r6, int_nog_shrine_grass_model@ha /* 0x80F62640@ha */
/* 8063454C  3C A0 80 F6 */	lis r5, int_nog_shrine_figure_model@ha /* 0x80F62698@ha */
/* 80634550  81 3E 02 E0 */	lwz r9, 0x2e0(r30)
/* 80634554  3C 80 80 F6 */	lis r4, int_nog_shrine_baseT_model@ha /* 0x80F62720@ha */
/* 80634558  3C 60 80 F6 */	lis r3, int_nog_shrine_waterT_model@ha /* 0x80F627F8@ha */
/* 8063455C  38 07 00 24 */	addi r0, r7, 0x0024 /* 0xDB060024@l */
/* 80634560  39 09 00 08 */	addi r8, r9, 8
/* 80634564  3C E0 DE 00 */	lis r7, 0xde00
/* 80634568  91 1E 02 E0 */	stw r8, 0x2e0(r30)
/* 8063456C  38 C6 26 40 */	addi r6, r6, int_nog_shrine_grass_model@l /* 0x80F62640@l */
/* 80634570  38 A5 26 98 */	addi r5, r5, int_nog_shrine_figure_model@l /* 0x80F62698@l */
/* 80634574  38 84 27 20 */	addi r4, r4, int_nog_shrine_baseT_model@l /* 0x80F62720@l */
/* 80634578  90 09 00 00 */	stw r0, 0(r9)
/* 8063457C  38 03 27 F8 */	addi r0, r3, int_nog_shrine_waterT_model@l /* 0x80F627F8@l */
/* 80634580  93 E9 00 04 */	stw r31, 4(r9)
/* 80634584  81 1E 02 D0 */	lwz r8, 0x2d0(r30)
/* 80634588  38 68 00 08 */	addi r3, r8, 8
/* 8063458C  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 80634590  90 E8 00 00 */	stw r7, 0(r8)
/* 80634594  90 C8 00 04 */	stw r6, 4(r8)
/* 80634598  80 DE 02 D0 */	lwz r6, 0x2d0(r30)
/* 8063459C  38 66 00 08 */	addi r3, r6, 8
/* 806345A0  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 806345A4  90 E6 00 00 */	stw r7, 0(r6)
/* 806345A8  90 A6 00 04 */	stw r5, 4(r6)
/* 806345AC  80 BE 02 D0 */	lwz r5, 0x2d0(r30)
/* 806345B0  38 65 00 08 */	addi r3, r5, 8
/* 806345B4  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 806345B8  90 E5 00 00 */	stw r7, 0(r5)
/* 806345BC  90 85 00 04 */	stw r4, 4(r5)
/* 806345C0  80 9E 02 E0 */	lwz r4, 0x2e0(r30)
/* 806345C4  38 64 00 08 */	addi r3, r4, 8
/* 806345C8  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 806345CC  90 E4 00 00 */	stw r7, 0(r4)
/* 806345D0  90 04 00 04 */	stw r0, 4(r4)
/* 806345D4  39 61 00 20 */	addi r11, r1, 0x20
/* 806345D8  4B A6 69 45 */	bl func_8009AF1C
/* 806345DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806345E0  7C 08 03 A6 */	mtlr r0
/* 806345E4  38 21 00 20 */	addi r1, r1, 0x20
/* 806345E8  4E 80 00 20 */	blr 
