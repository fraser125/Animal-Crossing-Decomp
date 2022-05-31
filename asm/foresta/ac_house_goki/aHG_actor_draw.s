lbl_8050C158:
/* 8050C158  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050C15C  7C 08 02 A6 */	mflr r0
/* 8050C160  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050C164  39 61 00 20 */	addi r11, r1, 0x20
/* 8050C168  4B B8 ED 69 */	bl func_8009AED0
/* 8050C16C  7C 7C 1B 78 */	mr r28, r3
/* 8050C170  83 E4 00 00 */	lwz r31, 0(r4)
/* 8050C174  4B F0 00 61 */	bl Matrix_push
/* 8050C178  3C 60 80 65 */	lis r3, lit_448@ha /* 0x80648E08@ha */
/* 8050C17C  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 8050C180  C0 43 8E 08 */	lfs f2, lit_448@l(r3)  /* 0x80648E08@l */
/* 8050C184  38 60 00 00 */	li r3, 0
/* 8050C188  C0 3C 00 28 */	lfs f1, 0x28(r28)
/* 8050C18C  EC 42 00 2A */	fadds f2, f2, f0
/* 8050C190  C0 7C 00 30 */	lfs f3, 0x30(r28)
/* 8050C194  4B F0 01 6D */	bl Matrix_translate
/* 8050C198  C0 3C 00 5C */	lfs f1, 0x5c(r28)
/* 8050C19C  38 60 00 01 */	li r3, 1
/* 8050C1A0  C0 5C 00 60 */	lfs f2, 0x60(r28)
/* 8050C1A4  C0 7C 00 64 */	lfs f3, 0x64(r28)
/* 8050C1A8  4B F0 02 45 */	bl Matrix_scale
/* 8050C1AC  A8 7C 00 DC */	lha r3, 0xdc(r28)
/* 8050C1B0  38 80 00 01 */	li r4, 1
/* 8050C1B4  4B F0 03 05 */	bl Matrix_RotateX
/* 8050C1B8  A8 7C 00 DE */	lha r3, 0xde(r28)
/* 8050C1BC  38 80 00 01 */	li r4, 1
/* 8050C1C0  4B F0 04 9D */	bl Matrix_RotateY
/* 8050C1C4  7F E3 FB 78 */	mr r3, r31
/* 8050C1C8  4B ED 8F 91 */	bl _texture_z_light_fog_prim_xlu
/* 8050C1CC  83 DF 02 E0 */	lwz r30, 0x2e0(r31)
/* 8050C1D0  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8050C1D4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8050C1D8  7F E3 FB 78 */	mr r3, r31
/* 8050C1DC  90 1E 00 00 */	stw r0, 0(r30)
/* 8050C1E0  7F DD F3 78 */	mr r29, r30
/* 8050C1E4  3B DE 00 08 */	addi r30, r30, 8
/* 8050C1E8  4B F0 11 ED */	bl _Matrix_to_Mtx_new
/* 8050C1EC  90 7D 00 04 */	stw r3, 4(r29)
/* 8050C1F0  3C 00 FB 00 */	lis r0, 0xfb00
/* 8050C1F4  7F DD F3 78 */	mr r29, r30
/* 8050C1F8  90 1E 00 00 */	stw r0, 0(r30)
/* 8050C1FC  3B DE 00 08 */	addi r30, r30, 8
/* 8050C200  C0 3C 01 90 */	lfs f1, 0x190(r28)
/* 8050C204  4B B8 EB A1 */	bl func_8009ADA4
/* 8050C208  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8050C20C  7F C5 F3 78 */	mr r5, r30
/* 8050C210  64 04 FF FF */	oris r4, r0, 0xffff
/* 8050C214  3C 60 80 6A */	lis r3, aHG_displayList@ha /* 0x8069EFE4@ha */
/* 8050C218  60 84 FF 00 */	ori r4, r4, 0xff00
/* 8050C21C  3C 00 DE 00 */	lis r0, 0xde00
/* 8050C220  90 9D 00 04 */	stw r4, 4(r29)
/* 8050C224  38 63 EF E4 */	addi r3, r3, aHG_displayList@l /* 0x8069EFE4@l */
/* 8050C228  3B DE 00 08 */	addi r30, r30, 8
/* 8050C22C  90 05 00 00 */	stw r0, 0(r5)
/* 8050C230  C0 1C 01 94 */	lfs f0, 0x194(r28)
/* 8050C234  FC 00 00 1E */	fctiwz f0, f0
/* 8050C238  D8 01 00 08 */	stfd f0, 8(r1)
/* 8050C23C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8050C240  54 00 10 3A */	slwi r0, r0, 2
/* 8050C244  7C 03 00 2E */	lwzx r0, r3, r0
/* 8050C248  90 05 00 04 */	stw r0, 4(r5)
/* 8050C24C  93 DF 02 E0 */	stw r30, 0x2e0(r31)
/* 8050C250  4B EF FF C5 */	bl Matrix_pull
/* 8050C254  39 61 00 20 */	addi r11, r1, 0x20
/* 8050C258  4B B8 EC C5 */	bl func_8009AF1C
/* 8050C25C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050C260  7C 08 03 A6 */	mtlr r0
/* 8050C264  38 21 00 20 */	addi r1, r1, 0x20
/* 8050C268  4E 80 00 20 */	blr 
