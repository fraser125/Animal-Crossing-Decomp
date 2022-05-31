lbl_804DA1EC:
/* 804DA1EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DA1F0  7C 08 02 A6 */	mflr r0
/* 804DA1F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DA1F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804DA1FC  7C 9F 23 78 */	mr r31, r4
/* 804DA200  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804DA204  7C 7E 1B 78 */	mr r30, r3
/* 804DA208  80 03 0F 4C */	lwz r0, 0xf4c(r3)
/* 804DA20C  2C 00 00 00 */	cmpwi r0, 0
/* 804DA210  41 82 00 20 */	beq lbl_804DA230
/* 804DA214  80 7E 0F 34 */	lwz r3, 0xf34(r30)
/* 804DA218  80 1E 0F 38 */	lwz r0, 0xf38(r30)
/* 804DA21C  90 7F 00 00 */	stw r3, 0(r31)
/* 804DA220  90 1F 00 04 */	stw r0, 4(r31)
/* 804DA224  80 1E 0F 3C */	lwz r0, 0xf3c(r30)
/* 804DA228  90 1F 00 08 */	stw r0, 8(r31)
/* 804DA22C  48 00 00 A4 */	b lbl_804DA2D0
lbl_804DA230:
/* 804DA230  80 DE 00 28 */	lwz r6, 0x28(r30)
/* 804DA234  3C A0 80 64 */	lis r5, lit_2852@ha /* 0x80646CD4@ha */
/* 804DA238  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 804DA23C  3C 80 80 64 */	lis r4, lit_2853@ha /* 0x80646CD8@ha */
/* 804DA240  C0 05 6C D4 */	lfs f0, lit_2852@l(r5)  /* 0x80646CD4@l */
/* 804DA244  3C 60 80 64 */	lis r3, lit_2854@ha /* 0x80646CDC@ha */
/* 804DA248  90 C1 00 08 */	stw r6, 8(r1)
/* 804DA24C  C0 44 6C D8 */	lfs f2, lit_2853@l(r4)  /* 0x80646CD8@l */
/* 804DA250  90 01 00 0C */	stw r0, 0xc(r1)
/* 804DA254  C0 21 00 08 */	lfs f1, 8(r1)
/* 804DA258  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 804DA25C  EC 81 00 2A */	fadds f4, f1, f0
/* 804DA260  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 804DA264  90 01 00 10 */	stw r0, 0x10(r1)
/* 804DA268  EC 43 10 2A */	fadds f2, f3, f2
/* 804DA26C  C0 03 6C DC */	lfs f0, lit_2854@l(r3)  /* 0x80646CDC@l */
/* 804DA270  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 804DA274  D0 81 00 08 */	stfs f4, 8(r1)
/* 804DA278  EC 01 00 28 */	fsubs f0, f1, f0
/* 804DA27C  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 804DA280  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804DA284  4B F3 1F 51 */	bl Matrix_push
/* 804DA288  C0 21 00 08 */	lfs f1, 8(r1)
/* 804DA28C  38 60 00 00 */	li r3, 0
/* 804DA290  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 804DA294  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 804DA298  4B F3 20 69 */	bl Matrix_translate
/* 804DA29C  A8 7E 00 E0 */	lha r3, 0xe0(r30)
/* 804DA2A0  38 80 00 01 */	li r4, 1
/* 804DA2A4  4B F3 25 4D */	bl Matrix_RotateZ
/* 804DA2A8  A8 7E 00 DC */	lha r3, 0xdc(r30)
/* 804DA2AC  38 80 00 01 */	li r4, 1
/* 804DA2B0  4B F3 22 09 */	bl Matrix_RotateX
/* 804DA2B4  A8 7E 00 DE */	lha r3, 0xde(r30)
/* 804DA2B8  38 80 00 01 */	li r4, 1
/* 804DA2BC  4B F3 23 A1 */	bl Matrix_RotateY
/* 804DA2C0  7F E4 FB 78 */	mr r4, r31
/* 804DA2C4  38 61 00 08 */	addi r3, r1, 8
/* 804DA2C8  4B F3 31 3D */	bl Matrix_Position
/* 804DA2CC  4B F3 1F 49 */	bl Matrix_pull
lbl_804DA2D0:
/* 804DA2D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DA2D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804DA2D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804DA2DC  7C 08 03 A6 */	mtlr r0
/* 804DA2E0  38 21 00 20 */	addi r1, r1, 0x20
/* 804DA2E4  4E 80 00 20 */	blr 
