lbl_805DB45C:
/* 805DB45C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805DB460  7C 08 02 A6 */	mflr r0
/* 805DB464  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DB468  39 61 00 20 */	addi r11, r1, 0x20
/* 805DB46C  4B AB FA 69 */	bl func_8009AED4
/* 805DB470  7C 7E 1B 78 */	mr r30, r3
/* 805DB474  8B E4 00 00 */	lbz r31, 0(r4)
/* 805DB478  4B E3 0D 5D */	bl Matrix_push
/* 805DB47C  2C 1F 00 03 */	cmpwi r31, 3
/* 805DB480  41 80 00 3C */	blt lbl_805DB4BC
/* 805DB484  2C 1F 00 05 */	cmpwi r31, 5
/* 805DB488  41 81 00 34 */	bgt lbl_805DB4BC
/* 805DB48C  3C C0 80 65 */	lis r6, lit_1798@ha /* 0x8064B218@ha */
/* 805DB490  3C A0 80 65 */	lis r5, lit_1799@ha /* 0x8064B21C@ha */
/* 805DB494  3C 80 80 65 */	lis r4, lit_1800@ha /* 0x8064B220@ha */
/* 805DB498  C0 26 B2 18 */	lfs f1, lit_1798@l(r6)  /* 0x8064B218@l */
/* 805DB49C  C0 45 B2 1C */	lfs f2, lit_1799@l(r5)  /* 0x8064B21C@l */
/* 805DB4A0  38 60 00 01 */	li r3, 1
/* 805DB4A4  C0 64 B2 20 */	lfs f3, lit_1800@l(r4)  /* 0x8064B220@l */
/* 805DB4A8  4B E3 0E 59 */	bl Matrix_translate
/* 805DB4AC  38 60 80 00 */	li r3, -32768
/* 805DB4B0  38 80 00 01 */	li r4, 1
/* 805DB4B4  4B E3 11 A9 */	bl Matrix_RotateY
/* 805DB4B8  48 00 00 24 */	b lbl_805DB4DC
lbl_805DB4BC:
/* 805DB4BC  3C C0 80 65 */	lis r6, lit_1801@ha /* 0x8064B224@ha */
/* 805DB4C0  3C A0 80 65 */	lis r5, lit_1799@ha /* 0x8064B21C@ha */
/* 805DB4C4  3C 80 80 65 */	lis r4, lit_1800@ha /* 0x8064B220@ha */
/* 805DB4C8  C0 26 B2 24 */	lfs f1, lit_1801@l(r6)  /* 0x8064B224@l */
/* 805DB4CC  C0 45 B2 1C */	lfs f2, lit_1799@l(r5)  /* 0x8064B21C@l */
/* 805DB4D0  38 60 00 01 */	li r3, 1
/* 805DB4D4  C0 64 B2 20 */	lfs f3, lit_1800@l(r4)  /* 0x8064B220@l */
/* 805DB4D8  4B E3 0E 29 */	bl Matrix_translate
lbl_805DB4DC:
/* 805DB4DC  83 BE 02 D0 */	lwz r29, 0x2d0(r30)
/* 805DB4E0  3C 00 DE 00 */	lis r0, 0xde00
/* 805DB4E4  3C 80 80 A7 */	lis r4, kai_sousa_3DT_model@ha /* 0x80A6DC58@ha */
/* 805DB4E8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805DB4EC  90 1D 00 00 */	stw r0, 0(r29)
/* 805DB4F0  38 84 DC 58 */	addi r4, r4, kai_sousa_3DT_model@l /* 0x80A6DC58@l */
/* 805DB4F4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805DB4F8  7F C3 F3 78 */	mr r3, r30
/* 805DB4FC  90 9D 00 04 */	stw r4, 4(r29)
/* 805DB500  94 1D 00 08 */	stwu r0, 8(r29)
/* 805DB504  4B E3 1E D1 */	bl _Matrix_to_Mtx_new
/* 805DB508  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 805DB50C  90 7D 00 04 */	stw r3, 4(r29)
/* 805DB510  38 04 00 20 */	addi r0, r4, 0x0020 /* 0xDB060020@l */
/* 805DB514  3C 80 80 6D */	lis r4, tex_1766@ha /* 0x806CCEEC@ha */
/* 805DB518  90 1D 00 08 */	stw r0, 8(r29)
/* 805DB51C  3C 60 80 A7 */	lis r3, kai_sousa_3DstT_model@ha /* 0x80A6DC98@ha */
/* 805DB520  57 E0 10 3A */	slwi r0, r31, 2
/* 805DB524  38 84 CE EC */	addi r4, r4, tex_1766@l /* 0x806CCEEC@l */
/* 805DB528  7C A4 00 2E */	lwzx r5, r4, r0
/* 805DB52C  3C 80 DE 00 */	lis r4, 0xde00
/* 805DB530  38 03 DC 98 */	addi r0, r3, kai_sousa_3DstT_model@l /* 0x80A6DC98@l */
/* 805DB534  90 BD 00 0C */	stw r5, 0xc(r29)
/* 805DB538  3B BD 00 10 */	addi r29, r29, 0x10
/* 805DB53C  7F A3 EB 78 */	mr r3, r29
/* 805DB540  90 9D 00 00 */	stw r4, 0(r29)
/* 805DB544  3B BD 00 08 */	addi r29, r29, 8
/* 805DB548  90 03 00 04 */	stw r0, 4(r3)
/* 805DB54C  93 BE 02 D0 */	stw r29, 0x2d0(r30)
/* 805DB550  4B E3 0C C5 */	bl Matrix_pull
/* 805DB554  39 61 00 20 */	addi r11, r1, 0x20
/* 805DB558  4B AB F9 C9 */	bl func_8009AF20
/* 805DB55C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DB560  7C 08 03 A6 */	mtlr r0
/* 805DB564  38 21 00 20 */	addi r1, r1, 0x20
/* 805DB568  4E 80 00 20 */	blr 
