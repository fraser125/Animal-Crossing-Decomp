lbl_805E7318:
/* 805E7318  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805E731C  7C 08 02 A6 */	mflr r0
/* 805E7320  90 01 00 24 */	stw r0, 0x24(r1)
/* 805E7324  39 61 00 20 */	addi r11, r1, 0x20
/* 805E7328  4B AB 3B AD */	bl func_8009AED4
/* 805E732C  7C 7E 1B 78 */	mr r30, r3
/* 805E7330  3C E0 DB 06 */	lis r7, 0xDB06 /* 0xDB060020@ha */
/* 805E7334  A9 25 00 10 */	lha r9, 0x10(r5)
/* 805E7338  3C A0 80 6D */	lis r5, kan_win_evw_anime_1_tex_table@ha /* 0x806CDBA8@ha */
/* 805E733C  83 E3 02 D0 */	lwz r31, 0x2d0(r3)
/* 805E7340  38 07 00 20 */	addi r0, r7, 0x0020 /* 0xDB060020@l */
/* 805E7344  3C 60 80 6D */	lis r3, kan_win_evw_anime_2_tex_table@ha /* 0x806CDBBC@ha */
/* 805E7348  3D 00 81 21 */	lis r8, data_812125A0@ha /* 0x812125A0@ha */
/* 805E734C  90 1F 00 00 */	stw r0, 0(r31)
/* 805E7350  38 A5 DB A8 */	addi r5, r5, kan_win_evw_anime_1_tex_table@l /* 0x806CDBA8@l */
/* 805E7354  38 07 00 24 */	addi r0, r7, 0x24
/* 805E7358  38 63 DB BC */	addi r3, r3, kan_win_evw_anime_2_tex_table@l /* 0x806CDBBC@l */
/* 805E735C  88 C4 00 00 */	lbz r6, 0(r4)
/* 805E7360  2C 09 00 04 */	cmpwi r9, 4
/* 805E7364  39 08 25 A0 */	addi r8, r8, data_812125A0@l /* 0x812125A0@l */
/* 805E7368  54 C6 10 3A */	slwi r6, r6, 2
/* 805E736C  7C A5 30 2E */	lwzx r5, r5, r6
/* 805E7370  90 BF 00 04 */	stw r5, 4(r31)
/* 805E7374  90 1F 00 08 */	stw r0, 8(r31)
/* 805E7378  88 04 00 01 */	lbz r0, 1(r4)
/* 805E737C  54 00 10 3A */	slwi r0, r0, 2
/* 805E7380  7C 03 00 2E */	lwzx r0, r3, r0
/* 805E7384  90 1F 00 0C */	stw r0, 0xc(r31)
/* 805E7388  40 82 00 1C */	bne lbl_805E73A4
/* 805E738C  38 07 00 28 */	addi r0, r7, 0x28
/* 805E7390  90 1F 00 10 */	stw r0, 0x10(r31)
/* 805E7394  80 08 00 10 */	lwz r0, 0x10(r8)
/* 805E7398  90 1F 00 14 */	stw r0, 0x14(r31)
/* 805E739C  3B FF 00 18 */	addi r31, r31, 0x18
/* 805E73A0  48 00 00 78 */	b lbl_805E7418
lbl_805E73A4:
/* 805E73A4  2C 09 00 03 */	cmpwi r9, 3
/* 805E73A8  40 82 00 1C */	bne lbl_805E73C4
/* 805E73AC  38 07 00 28 */	addi r0, r7, 0x28
/* 805E73B0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 805E73B4  80 08 00 0C */	lwz r0, 0xc(r8)
/* 805E73B8  90 1F 00 14 */	stw r0, 0x14(r31)
/* 805E73BC  3B FF 00 18 */	addi r31, r31, 0x18
/* 805E73C0  48 00 00 58 */	b lbl_805E7418
lbl_805E73C4:
/* 805E73C4  2C 09 00 01 */	cmpwi r9, 1
/* 805E73C8  40 82 00 1C */	bne lbl_805E73E4
/* 805E73CC  38 07 00 28 */	addi r0, r7, 0x28
/* 805E73D0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 805E73D4  80 08 00 00 */	lwz r0, 0(r8)
/* 805E73D8  90 1F 00 14 */	stw r0, 0x14(r31)
/* 805E73DC  3B FF 00 18 */	addi r31, r31, 0x18
/* 805E73E0  48 00 00 38 */	b lbl_805E7418
lbl_805E73E4:
/* 805E73E4  2C 09 00 00 */	cmpwi r9, 0
/* 805E73E8  40 82 00 1C */	bne lbl_805E7404
/* 805E73EC  38 07 00 28 */	addi r0, r7, 0x28
/* 805E73F0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 805E73F4  80 08 00 04 */	lwz r0, 4(r8)
/* 805E73F8  90 1F 00 14 */	stw r0, 0x14(r31)
/* 805E73FC  3B FF 00 18 */	addi r31, r31, 0x18
/* 805E7400  48 00 00 18 */	b lbl_805E7418
lbl_805E7404:
/* 805E7404  38 07 00 28 */	addi r0, r7, 0x28
/* 805E7408  90 1F 00 10 */	stw r0, 0x10(r31)
/* 805E740C  80 08 00 08 */	lwz r0, 8(r8)
/* 805E7410  90 1F 00 14 */	stw r0, 0x14(r31)
/* 805E7414  3B FF 00 18 */	addi r31, r31, 0x18
lbl_805E7418:
/* 805E7418  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805E741C  7F FD FB 78 */	mr r29, r31
/* 805E7420  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805E7424  7F C3 F3 78 */	mr r3, r30
/* 805E7428  90 1F 00 00 */	stw r0, 0(r31)
/* 805E742C  3B FF 00 08 */	addi r31, r31, 8
/* 805E7430  4B E2 5F A5 */	bl _Matrix_to_Mtx_new
/* 805E7434  90 7D 00 04 */	stw r3, 4(r29)
/* 805E7438  7F E4 FB 78 */	mr r4, r31
/* 805E743C  3C 00 DE 00 */	lis r0, 0xde00
/* 805E7440  3C 60 80 B0 */	lis r3, kan_win_model2@ha /* 0x80B07330@ha */
/* 805E7444  90 1F 00 00 */	stw r0, 0(r31)
/* 805E7448  38 03 73 30 */	addi r0, r3, kan_win_model2@l /* 0x80B07330@l */
/* 805E744C  3B FF 00 08 */	addi r31, r31, 8
/* 805E7450  90 04 00 04 */	stw r0, 4(r4)
/* 805E7454  93 FE 02 D0 */	stw r31, 0x2d0(r30)
/* 805E7458  39 61 00 20 */	addi r11, r1, 0x20
/* 805E745C  4B AB 3A C5 */	bl func_8009AF20
/* 805E7460  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E7464  7C 08 03 A6 */	mtlr r0
/* 805E7468  38 21 00 20 */	addi r1, r1, 0x20
/* 805E746C  4E 80 00 20 */	blr 
