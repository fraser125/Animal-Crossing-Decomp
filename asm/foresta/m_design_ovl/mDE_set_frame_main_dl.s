lbl_805D72E4:
/* 805D72E4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805D72E8  7C 08 02 A6 */	mflr r0
/* 805D72EC  90 01 00 44 */	stw r0, 0x44(r1)
/* 805D72F0  39 61 00 40 */	addi r11, r1, 0x40
/* 805D72F4  4B AC 3B BD */	bl func_8009AEB0
/* 805D72F8  3C C0 80 65 */	lis r6, lit_1909@ha /* 0x8064B180@ha */
/* 805D72FC  80 E3 00 2C */	lwz r7, 0x2c(r3)
/* 805D7300  C0 26 B1 80 */	lfs f1, lit_1909@l(r6)  /* 0x8064B180@l */
/* 805D7304  3C 60 80 65 */	lis r3, lit_605@ha /* 0x8064B16C@ha */
/* 805D7308  C0 63 B1 6C */	lfs f3, lit_605@l(r3)  /* 0x8064B16C@l */
/* 805D730C  7C B4 2B 78 */	mr r20, r5
/* 805D7310  FC 40 08 90 */	fmr f2, f1
/* 805D7314  83 84 00 00 */	lwz r28, 0(r4)
/* 805D7318  83 67 09 E0 */	lwz r27, 0x9e0(r7)
/* 805D731C  38 60 00 00 */	li r3, 0
/* 805D7320  4B E3 50 CD */	bl Matrix_scale
/* 805D7324  3C 60 80 65 */	lis r3, lit_1910@ha /* 0x8064B184@ha */
/* 805D7328  C0 34 00 18 */	lfs f1, 0x18(r20)
/* 805D732C  C0 63 B1 84 */	lfs f3, lit_1910@l(r3)  /* 0x8064B184@l */
/* 805D7330  38 60 00 01 */	li r3, 1
/* 805D7334  C0 54 00 1C */	lfs f2, 0x1c(r20)
/* 805D7338  4B E3 4F C9 */	bl Matrix_translate
/* 805D733C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805D7340  83 5C 02 D0 */	lwz r26, 0x2d0(r28)
/* 805D7344  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805D7348  7F 83 E3 78 */	mr r3, r28
/* 805D734C  90 1A 00 00 */	stw r0, 0(r26)
/* 805D7350  4B E3 60 85 */	bl _Matrix_to_Mtx_new
/* 805D7354  90 7A 00 04 */	stw r3, 4(r26)
/* 805D7358  3D 00 DE 00 */	lis r8, 0xde00
/* 805D735C  3C 80 80 A5 */	lis r4, des_win_before_model@ha /* 0x80A52D58@ha */
/* 805D7360  3C 60 80 6D */	lis r3, area_table@ha /* 0x806CC7A8@ha */
/* 805D7364  91 1A 00 08 */	stw r8, 8(r26)
/* 805D7368  38 A4 2D 58 */	addi r5, r4, des_win_before_model@l /* 0x80A52D58@l */
/* 805D736C  38 00 00 04 */	li r0, 4
/* 805D7370  38 83 C7 A8 */	addi r4, r3, area_table@l /* 0x806CC7A8@l */
/* 805D7374  90 BA 00 0C */	stw r5, 0xc(r26)
/* 805D7378  39 20 00 00 */	li r9, 0
/* 805D737C  38 60 00 00 */	li r3, 0
/* 805D7380  7C 09 03 A6 */	mtctr r0
/* 805D7384  3C E0 FA 00 */	lis r7, 0xFA00 /* 0xFA0000FF@ha */
/* 805D7388  3C C0 28 EC */	lis r6, 0x28EC /* 0x28EBA0B4@ha */
/* 805D738C  3C A0 5A 46 */	lis r5, 0x5A46 /* 0x5A4628B4@ha */
/* 805D7390  3B 5A 00 10 */	addi r26, r26, 0x10
/* 805D7394  38 E7 00 FF */	addi r7, r7, 0x00FF /* 0xFA0000FF@l */
/* 805D7398  38 C6 A0 B4 */	addi r6, r6, 0xA0B4 /* 0x28EBA0B4@l */
/* 805D739C  38 A5 28 B4 */	addi r5, r5, 0x28B4 /* 0x5A4628B4@l */
lbl_805D73A0:
/* 805D73A0  88 1B 06 A7 */	lbz r0, 0x6a7(r27)
/* 805D73A4  7C 09 00 00 */	cmpw r9, r0
/* 805D73A8  40 82 00 14 */	bne lbl_805D73BC
/* 805D73AC  90 FA 00 00 */	stw r7, 0(r26)
/* 805D73B0  90 DA 00 04 */	stw r6, 4(r26)
/* 805D73B4  3B 5A 00 08 */	addi r26, r26, 8
/* 805D73B8  48 00 00 10 */	b lbl_805D73C8
lbl_805D73BC:
/* 805D73BC  90 FA 00 00 */	stw r7, 0(r26)
/* 805D73C0  90 BA 00 04 */	stw r5, 4(r26)
/* 805D73C4  3B 5A 00 08 */	addi r26, r26, 8
lbl_805D73C8:
/* 805D73C8  91 1A 00 00 */	stw r8, 0(r26)
/* 805D73CC  39 29 00 01 */	addi r9, r9, 1
/* 805D73D0  7C 04 18 2E */	lwzx r0, r4, r3
/* 805D73D4  38 63 00 04 */	addi r3, r3, 4
/* 805D73D8  90 1A 00 04 */	stw r0, 4(r26)
/* 805D73DC  3B 5A 00 08 */	addi r26, r26, 8
/* 805D73E0  42 00 FF C0 */	bdnz lbl_805D73A0
/* 805D73E4  3D 80 DE 00 */	lis r12, 0xde00
/* 805D73E8  3C 60 80 A5 */	lis r3, des_win_before_model_2@ha /* 0x80A52D70@ha */
/* 805D73EC  91 9A 00 00 */	stw r12, 0(r26)
/* 805D73F0  38 03 2D 70 */	addi r0, r3, des_win_before_model_2@l /* 0x80A52D70@l */
/* 805D73F4  3C 80 80 A5 */	lis r4, des_win_waku_model@ha /* 0x80A52910@ha */
/* 805D73F8  3C 60 E3 00 */	lis r3, 0xE300 /* 0xE3001201@ha */
/* 805D73FC  90 1A 00 04 */	stw r0, 4(r26)
/* 805D7400  3D 00 F0 8F */	lis r8, 0xF08F /* 0xF08F4010@ha */
/* 805D7404  3C E0 FD 44 */	lis r7, 0xFD44 /* 0xFD441C1F@ha */
/* 805D7408  3C C0 D2 F1 */	lis r6, 0xD2F1 /* 0xD2F0FA00@ha */
/* 805D740C  91 9A 00 08 */	stw r12, 8(r26)
/* 805D7410  38 04 29 10 */	addi r0, r4, des_win_waku_model@l /* 0x80A52910@l */
/* 805D7414  3C A0 80 A5 */	lis r5, des_win_toubai_model@ha /* 0x80A52950@ha */
/* 805D7418  3C 80 80 A5 */	lis r4, des_win_main_model@ha /* 0x80A52988@ha */
/* 805D741C  90 1A 00 0C */	stw r0, 0xc(r26)
/* 805D7420  39 63 12 01 */	addi r11, r3, 0x1201 /* 0xE3001201@l */
/* 805D7424  3C 60 80 A5 */	lis r3, des_win_color_before_model@ha /* 0x80A52A08@ha */
/* 805D7428  39 40 00 00 */	li r10, 0
/* 805D742C  91 7A 00 10 */	stw r11, 0x10(r26)
/* 805D7430  38 08 40 10 */	addi r0, r8, 0x4010 /* 0xF08F4010@l */
/* 805D7434  39 27 1C 1F */	addi r9, r7, 0x1C1F /* 0xFD441C1F@l */
/* 805D7438  39 1B 00 20 */	addi r8, r27, 0x20
/* 805D743C  91 5A 00 14 */	stw r10, 0x14(r26)
/* 805D7440  38 E6 FA 00 */	addi r7, r6, 0xFA00 /* 0xD2F0FA00@l */
/* 805D7444  38 C5 29 50 */	addi r6, r5, des_win_toubai_model@l /* 0x80A52950@l */
/* 805D7448  38 A4 29 88 */	addi r5, r4, des_win_main_model@l /* 0x80A52988@l */
/* 805D744C  90 1A 00 18 */	stw r0, 0x18(r26)
/* 805D7450  38 80 20 00 */	li r4, 0x2000
/* 805D7454  38 03 2A 08 */	addi r0, r3, des_win_color_before_model@l /* 0x80A52A08@l */
/* 805D7458  80 7B 00 00 */	lwz r3, 0(r27)
/* 805D745C  90 7A 00 1C */	stw r3, 0x1c(r26)
/* 805D7460  91 3A 00 20 */	stw r9, 0x20(r26)
/* 805D7464  91 1A 00 24 */	stw r8, 0x24(r26)
/* 805D7468  90 FA 00 28 */	stw r7, 0x28(r26)
/* 805D746C  91 9A 00 30 */	stw r12, 0x30(r26)
/* 805D7470  90 DA 00 34 */	stw r6, 0x34(r26)
/* 805D7474  91 9A 00 38 */	stw r12, 0x38(r26)
/* 805D7478  90 BA 00 3C */	stw r5, 0x3c(r26)
/* 805D747C  91 7A 00 40 */	stw r11, 0x40(r26)
/* 805D7480  90 9A 00 44 */	stw r4, 0x44(r26)
/* 805D7484  91 9A 00 48 */	stw r12, 0x48(r26)
/* 805D7488  90 1A 00 4C */	stw r0, 0x4c(r26)
/* 805D748C  3B 5A 00 50 */	addi r26, r26, 0x50
/* 805D7490  4B E3 4D 45 */	bl Matrix_push
/* 805D7494  3C E0 80 A5 */	lis r7, des_win_color_model@ha /* 0x80A52A30@ha */
/* 805D7498  3C C0 FA 00 */	lis r6, 0xFA00 /* 0xFA000080@ha */
/* 805D749C  3C A0 80 65 */	lis r5, lit_1949@ha /* 0x8064B18C@ha */
/* 805D74A0  3C 80 80 65 */	lis r4, lit_2321@ha /* 0x8064B1C4@ha */
/* 805D74A4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805D74A8  3B C7 2A 30 */	addi r30, r7, des_win_color_model@l /* 0x80A52A30@l */
/* 805D74AC  3B E6 00 80 */	addi r31, r6, 0x0080 /* 0xFA000080@l */
/* 805D74B0  3A C5 B1 8C */	addi r22, r5, lit_1949@l /* 0x8064B18C@l */
/* 805D74B4  3A E4 B1 C4 */	addi r23, r4, lit_2321@l /* 0x8064B1C4@l */
/* 805D74B8  3B 03 00 03 */	addi r24, r3, 0x0003 /* 0xDA380003@l */
/* 805D74BC  3B A0 00 00 */	li r29, 0
/* 805D74C0  3B 20 00 00 */	li r25, 0
/* 805D74C4  3E A0 DE 00 */	lis r21, 0xde00
lbl_805D74C8:
/* 805D74C8  93 FA 00 00 */	stw r31, 0(r26)
/* 805D74CC  7C BB CA 14 */	add r5, r27, r25
/* 805D74D0  C0 36 00 00 */	lfs f1, 0(r22)
/* 805D74D4  38 60 00 01 */	li r3, 1
/* 805D74D8  88 05 06 24 */	lbz r0, 0x624(r5)
/* 805D74DC  88 85 06 23 */	lbz r4, 0x623(r5)
/* 805D74E0  FC 60 08 90 */	fmr f3, f1
/* 805D74E4  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 805D74E8  88 A5 06 25 */	lbz r5, 0x625(r5)
/* 805D74EC  50 80 C0 0E */	rlwimi r0, r4, 0x18, 0, 7
/* 805D74F0  C0 57 00 00 */	lfs f2, 0(r23)
/* 805D74F4  50 A0 44 2E */	rlwimi r0, r5, 8, 0x10, 0x17
/* 805D74F8  60 00 00 FF */	ori r0, r0, 0xff
/* 805D74FC  90 1A 00 04 */	stw r0, 4(r26)
/* 805D7500  92 BA 00 08 */	stw r21, 8(r26)
/* 805D7504  93 DA 00 0C */	stw r30, 0xc(r26)
/* 805D7508  3B 5A 00 10 */	addi r26, r26, 0x10
/* 805D750C  4B E3 4D F5 */	bl Matrix_translate
/* 805D7510  93 1A 00 00 */	stw r24, 0(r26)
/* 805D7514  7F 54 D3 78 */	mr r20, r26
/* 805D7518  7F 83 E3 78 */	mr r3, r28
/* 805D751C  3B 5A 00 08 */	addi r26, r26, 8
/* 805D7520  4B E3 5E B5 */	bl _Matrix_to_Mtx_new
/* 805D7524  3B BD 00 01 */	addi r29, r29, 1
/* 805D7528  90 74 00 04 */	stw r3, 4(r20)
/* 805D752C  2C 1D 00 0F */	cmpwi r29, 0xf
/* 805D7530  3B 39 00 03 */	addi r25, r25, 3
/* 805D7534  41 80 FF 94 */	blt lbl_805D74C8
/* 805D7538  4B E3 4C DD */	bl Matrix_pull
/* 805D753C  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805D7540  7F 83 E3 78 */	mr r3, r28
/* 805D7544  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805D7548  90 1A 00 00 */	stw r0, 0(r26)
/* 805D754C  4B E3 5E 89 */	bl _Matrix_to_Mtx_new
/* 805D7550  90 7A 00 04 */	stw r3, 4(r26)
/* 805D7554  3C 80 DE 00 */	lis r4, 0xde00
/* 805D7558  3C 60 80 A5 */	lis r3, des_win_waku2_model@ha /* 0x80A52A48@ha */
/* 805D755C  90 9A 00 08 */	stw r4, 8(r26)
/* 805D7560  38 03 2A 48 */	addi r0, r3, des_win_waku2_model@l /* 0x80A52A48@l */
/* 805D7564  90 1A 00 0C */	stw r0, 0xc(r26)
/* 805D7568  3B 5A 00 10 */	addi r26, r26, 0x10
/* 805D756C  88 1B 06 9D */	lbz r0, 0x69d(r27)
/* 805D7570  28 00 00 00 */	cmplwi r0, 0
/* 805D7574  41 82 00 28 */	beq lbl_805D759C
/* 805D7578  3C 60 80 A5 */	lis r3, des_win_grid_model@ha /* 0x80A529C0@ha */
/* 805D757C  90 9A 00 00 */	stw r4, 0(r26)
/* 805D7580  38 03 29 C0 */	addi r0, r3, des_win_grid_model@l /* 0x80A529C0@l */
/* 805D7584  3C 60 80 A5 */	lis r3, des_win_grid2_model@ha /* 0x80A52AC0@ha */
/* 805D7588  90 1A 00 04 */	stw r0, 4(r26)
/* 805D758C  38 03 2A C0 */	addi r0, r3, des_win_grid2_model@l /* 0x80A52AC0@l */
/* 805D7590  90 9A 00 08 */	stw r4, 8(r26)
/* 805D7594  90 1A 00 0C */	stw r0, 0xc(r26)
/* 805D7598  3B 5A 00 10 */	addi r26, r26, 0x10
lbl_805D759C:
/* 805D759C  93 5C 02 D0 */	stw r26, 0x2d0(r28)
/* 805D75A0  39 61 00 40 */	addi r11, r1, 0x40
/* 805D75A4  4B AC 39 59 */	bl func_8009AEFC
/* 805D75A8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805D75AC  7C 08 03 A6 */	mtlr r0
/* 805D75B0  38 21 00 40 */	addi r1, r1, 0x40
/* 805D75B4  4E 80 00 20 */	blr 
