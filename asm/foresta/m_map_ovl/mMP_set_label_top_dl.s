lbl_805E7470:
/* 805E7470  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805E7474  7C 08 02 A6 */	mflr r0
/* 805E7478  90 01 00 34 */	stw r0, 0x34(r1)
/* 805E747C  39 61 00 30 */	addi r11, r1, 0x30
/* 805E7480  4B AB 3A 3D */	bl func_8009AEBC
/* 805E7484  7C 97 23 78 */	mr r23, r4
/* 805E7488  3C 80 80 6D */	lis r4, mMP_label_data@ha /* 0x806CDE0C@ha */
/* 805E748C  A8 17 00 12 */	lha r0, 0x12(r23)
/* 805E7490  38 84 DE 0C */	addi r4, r4, mMP_label_data@l /* 0x806CDE0C@l */
/* 805E7494  7C 79 1B 78 */	mr r25, r3
/* 805E7498  54 00 10 3A */	slwi r0, r0, 2
/* 805E749C  7F A4 00 2E */	lwzx r29, r4, r0
/* 805E74A0  28 1D 00 00 */	cmplwi r29, 0
/* 805E74A4  41 82 01 10 */	beq lbl_805E75B4
/* 805E74A8  7E E3 BB 78 */	mr r3, r23
/* 805E74AC  4B FF F5 75 */	bl mMP_get_label_cnt
/* 805E74B0  83 59 02 D0 */	lwz r26, 0x2d0(r25)
/* 805E74B4  7C 7E 1B 78 */	mr r30, r3
/* 805E74B8  4B E2 4D 1D */	bl Matrix_push
/* 805E74BC  3C 60 80 65 */	lis r3, lit_799@ha /* 0x8064B580@ha */
/* 805E74C0  C0 3D 00 00 */	lfs f1, 0(r29)
/* 805E74C4  C0 63 B5 80 */	lfs f3, lit_799@l(r3)  /* 0x8064B580@l */
/* 805E74C8  38 60 00 01 */	li r3, 1
/* 805E74CC  C0 5D 00 04 */	lfs f2, 4(r29)
/* 805E74D0  4B E2 4E 31 */	bl Matrix_translate
/* 805E74D4  A8 17 00 12 */	lha r0, 0x12(r23)
/* 805E74D8  2C 00 00 00 */	cmpwi r0, 0
/* 805E74DC  40 82 00 0C */	bne lbl_805E74E8
/* 805E74E0  7E FC BB 78 */	mr r28, r23
/* 805E74E4  48 00 00 08 */	b lbl_805E74EC
lbl_805E74E8:
/* 805E74E8  3B 80 00 00 */	li r28, 0
lbl_805E74EC:
/* 805E74EC  3C A0 DA 38 */	lis r5, 0xDA38 /* 0xDA380003@ha */
/* 805E74F0  3C 80 80 65 */	lis r4, lit_799@ha /* 0x8064B580@ha */
/* 805E74F4  3C 60 80 65 */	lis r3, lit_994@ha /* 0x8064B5AC@ha */
/* 805E74F8  3B 60 00 00 */	li r27, 0
/* 805E74FC  3B E5 00 03 */	addi r31, r5, 0x0003 /* 0xDA380003@l */
/* 805E7500  3A E4 B5 80 */	addi r23, r4, lit_799@l /* 0x8064B580@l */
/* 805E7504  3B 03 B5 AC */	addi r24, r3, lit_994@l /* 0x8064B5AC@l */
/* 805E7508  48 00 00 9C */	b lbl_805E75A4
lbl_805E750C:
/* 805E750C  93 FA 00 00 */	stw r31, 0(r26)
/* 805E7510  7F 23 CB 78 */	mr r3, r25
/* 805E7514  4B E2 5E C1 */	bl _Matrix_to_Mtx_new
/* 805E7518  28 1C 00 00 */	cmplwi r28, 0
/* 805E751C  90 7A 00 04 */	stw r3, 4(r26)
/* 805E7520  41 82 00 4C */	beq lbl_805E756C
/* 805E7524  80 7C 00 00 */	lwz r3, 0(r28)
/* 805E7528  28 03 00 00 */	cmplwi r3, 0
/* 805E752C  41 82 00 40 */	beq lbl_805E756C
/* 805E7530  88 03 00 09 */	lbz r0, 9(r3)
/* 805E7534  28 00 00 00 */	cmplwi r0, 0
/* 805E7538  41 82 00 34 */	beq lbl_805E756C
/* 805E753C  3C 00 DE 00 */	lis r0, 0xde00
/* 805E7540  3C 60 80 6D */	lis r3, kan_win_npcT_table@ha /* 0x806CDBD4@ha */
/* 805E7544  90 1A 00 08 */	stw r0, 8(r26)
/* 805E7548  38 63 DB D4 */	addi r3, r3, kan_win_npcT_table@l /* 0x806CDBD4@l */
/* 805E754C  80 9C 00 00 */	lwz r4, 0(r28)
/* 805E7550  3B 9C 00 04 */	addi r28, r28, 4
/* 805E7554  88 04 00 09 */	lbz r0, 9(r4)
/* 805E7558  54 00 10 3A */	slwi r0, r0, 2
/* 805E755C  7C 03 00 2E */	lwzx r0, r3, r0
/* 805E7560  90 1A 00 0C */	stw r0, 0xc(r26)
/* 805E7564  3B 5A 00 10 */	addi r26, r26, 0x10
/* 805E7568  48 00 00 24 */	b lbl_805E758C
lbl_805E756C:
/* 805E756C  3C 00 DE 00 */	lis r0, 0xde00
/* 805E7570  28 1C 00 00 */	cmplwi r28, 0
/* 805E7574  90 1A 00 08 */	stw r0, 8(r26)
/* 805E7578  80 1D 00 08 */	lwz r0, 8(r29)
/* 805E757C  90 1A 00 0C */	stw r0, 0xc(r26)
/* 805E7580  3B 5A 00 10 */	addi r26, r26, 0x10
/* 805E7584  41 82 00 08 */	beq lbl_805E758C
/* 805E7588  3B 9C 00 04 */	addi r28, r28, 4
lbl_805E758C:
/* 805E758C  C0 37 00 00 */	lfs f1, 0(r23)
/* 805E7590  38 60 00 01 */	li r3, 1
/* 805E7594  C0 58 00 00 */	lfs f2, 0(r24)
/* 805E7598  FC 60 08 90 */	fmr f3, f1
/* 805E759C  4B E2 4D 65 */	bl Matrix_translate
/* 805E75A0  3B 7B 00 01 */	addi r27, r27, 1
lbl_805E75A4:
/* 805E75A4  7C 1B F0 00 */	cmpw r27, r30
/* 805E75A8  41 80 FF 64 */	blt lbl_805E750C
/* 805E75AC  4B E2 4C 69 */	bl Matrix_pull
/* 805E75B0  93 59 02 D0 */	stw r26, 0x2d0(r25)
lbl_805E75B4:
/* 805E75B4  39 61 00 30 */	addi r11, r1, 0x30
/* 805E75B8  4B AB 39 51 */	bl func_8009AF08
/* 805E75BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805E75C0  7C 08 03 A6 */	mtlr r0
/* 805E75C4  38 21 00 30 */	addi r1, r1, 0x30
/* 805E75C8  4E 80 00 20 */	blr 
