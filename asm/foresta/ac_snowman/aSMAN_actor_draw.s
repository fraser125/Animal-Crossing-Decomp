lbl_804A7560:
/* 804A7560  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A7564  7C 08 02 A6 */	mflr r0
/* 804A7568  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A756C  39 61 00 20 */	addi r11, r1, 0x20
/* 804A7570  4B BF 39 61 */	bl func_8009AED0
/* 804A7574  A8 03 01 F8 */	lha r0, 0x1f8(r3)
/* 804A7578  7C 7C 1B 78 */	mr r28, r3
/* 804A757C  83 E4 00 00 */	lwz r31, 0(r4)
/* 804A7580  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804A7584  41 82 00 18 */	beq lbl_804A759C
/* 804A7588  3C 60 80 4A */	lis r3, aSMAN_process_combine_head@ha /* 0x804A714C@ha */
/* 804A758C  80 9C 01 90 */	lwz r4, 0x190(r28)
/* 804A7590  38 03 71 4C */	addi r0, r3, aSMAN_process_combine_head@l /* 0x804A714C@l */
/* 804A7594  7C 04 00 40 */	cmplw r4, r0
/* 804A7598  41 82 00 3C */	beq lbl_804A75D4
lbl_804A759C:
/* 804A759C  3C 60 80 64 */	lis r3, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A75A0  C0 5C 01 BC */	lfs f2, 0x1bc(r28)
/* 804A75A4  38 83 5C 8C */	addi r4, r3, data_80645C8C@l /* 0x80645C8C@l */
/* 804A75A8  38 60 00 01 */	li r3, 1
/* 804A75AC  C0 24 00 00 */	lfs f1, 0(r4)
/* 804A75B0  FC 60 08 90 */	fmr f3, f1
/* 804A75B4  4B F6 4D 4D */	bl Matrix_translate
/* 804A75B8  A8 7C 01 EC */	lha r3, 0x1ec(r28)
/* 804A75BC  38 C0 00 01 */	li r6, 1
/* 804A75C0  A8 9C 01 EE */	lha r4, 0x1ee(r28)
/* 804A75C4  A8 BC 01 F0 */	lha r5, 0x1f0(r28)
/* 804A75C8  4B F6 53 CD */	bl Matrix_rotateXYZ
/* 804A75CC  3B C0 00 01 */	li r30, 1
/* 804A75D0  48 00 00 18 */	b lbl_804A75E8
lbl_804A75D4:
/* 804A75D4  C0 3C 01 DC */	lfs f1, 0x1dc(r28)
/* 804A75D8  38 7C 01 EE */	addi r3, r28, 0x1ee
/* 804A75DC  C0 5C 01 D0 */	lfs f2, 0x1d0(r28)
/* 804A75E0  3B C0 00 00 */	li r30, 0
/* 804A75E4  4B F4 FC 39 */	bl mRlib_PSnowmanBreakNeckSwing
lbl_804A75E8:
/* 804A75E8  7F E3 FB 78 */	mr r3, r31
/* 804A75EC  4B F3 DB 1D */	bl _texture_z_light_fog_prim
/* 804A75F0  83 BF 02 D0 */	lwz r29, 0x2d0(r31)
/* 804A75F4  3C 00 E7 00 */	lis r0, 0xe700
/* 804A75F8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804A75FC  38 80 00 00 */	li r4, 0
/* 804A7600  90 1D 00 00 */	stw r0, 0(r29)
/* 804A7604  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804A7608  7F E3 FB 78 */	mr r3, r31
/* 804A760C  90 9D 00 04 */	stw r4, 4(r29)
/* 804A7610  3B BD 00 08 */	addi r29, r29, 8
/* 804A7614  7F BC EB 78 */	mr r28, r29
/* 804A7618  90 1D 00 00 */	stw r0, 0(r29)
/* 804A761C  3B BD 00 08 */	addi r29, r29, 8
/* 804A7620  4B F6 5D B5 */	bl _Matrix_to_Mtx_new
/* 804A7624  90 7C 00 04 */	stw r3, 4(r28)
/* 804A7628  7F A4 EB 78 */	mr r4, r29
/* 804A762C  3C 00 DE 00 */	lis r0, 0xde00
/* 804A7630  3C 60 80 69 */	lis r3, displayList@ha /* 0x8068E8C0@ha */
/* 804A7634  90 1D 00 00 */	stw r0, 0(r29)
/* 804A7638  57 C0 10 3A */	slwi r0, r30, 2
/* 804A763C  38 63 E8 C0 */	addi r3, r3, displayList@l /* 0x8068E8C0@l */
/* 804A7640  3B BD 00 08 */	addi r29, r29, 8
/* 804A7644  7C 03 00 2E */	lwzx r0, r3, r0
/* 804A7648  90 04 00 04 */	stw r0, 4(r4)
/* 804A764C  93 BF 02 D0 */	stw r29, 0x2d0(r31)
/* 804A7650  39 61 00 20 */	addi r11, r1, 0x20
/* 804A7654  4B BF 38 C9 */	bl func_8009AF1C
/* 804A7658  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A765C  7C 08 03 A6 */	mtlr r0
/* 804A7660  38 21 00 20 */	addi r1, r1, 0x20
/* 804A7664  4E 80 00 20 */	blr 
