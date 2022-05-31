lbl_80632484:
/* 80632484  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80632488  7C 08 02 A6 */	mflr r0
/* 8063248C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80632490  39 61 00 20 */	addi r11, r1, 0x20
/* 80632494  4B A6 8A 41 */	bl func_8009AED4
/* 80632498  83 E5 00 00 */	lwz r31, 0(r5)
/* 8063249C  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 806324A0  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 806324A4  7C 7D 1B 78 */	mr r29, r3
/* 806324A8  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 806324AC  38 7E 00 08 */	addi r3, r30, 8
/* 806324B0  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 806324B4  90 1E 00 00 */	stw r0, 0(r30)
/* 806324B8  80 65 00 00 */	lwz r3, 0(r5)
/* 806324BC  4B DD AF 19 */	bl _Matrix_to_Mtx_new
/* 806324C0  90 7E 00 04 */	stw r3, 4(r30)
/* 806324C4  88 1D 01 2C */	lbz r0, 0x12c(r29)
/* 806324C8  28 00 00 00 */	cmplwi r0, 0
/* 806324CC  41 82 00 40 */	beq lbl_8063250C
/* 806324D0  A8 1D 08 10 */	lha r0, 0x810(r29)
/* 806324D4  3C 80 80 6D */	lis r4, aKonsnowtv_on_anime@ha /* 0x806D7150@ha */
/* 806324D8  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 806324DC  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 806324E0  7C 00 0E 70 */	srawi r0, r0, 1
/* 806324E4  38 C4 71 50 */	addi r6, r4, aKonsnowtv_on_anime@l /* 0x806D7150@l */
/* 806324E8  7C 00 07 34 */	extsh r0, r0
/* 806324EC  38 85 00 08 */	addi r4, r5, 8
/* 806324F0  54 07 10 3A */	slwi r7, r0, 2
/* 806324F4  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 806324F8  7C 66 38 2E */	lwzx r3, r6, r7
/* 806324FC  90 9F 02 D0 */	stw r4, 0x2d0(r31)
/* 80632500  90 05 00 00 */	stw r0, 0(r5)
/* 80632504  90 65 00 04 */	stw r3, 4(r5)
/* 80632508  48 00 00 28 */	b lbl_80632530
lbl_8063250C:
/* 8063250C  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 80632510  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 80632514  3C 60 80 F0 */	lis r3, int_kon_snowtv07a_TA_tex_txt@ha /* 0x80F01FA0@ha */
/* 80632518  38 05 00 08 */	addi r0, r5, 8
/* 8063251C  38 84 00 20 */	addi r4, r4, 0x0020 /* 0xDB060020@l */
/* 80632520  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 80632524  38 03 1F A0 */	addi r0, r3, int_kon_snowtv07a_TA_tex_txt@l /* 0x80F01FA0@l */
/* 80632528  90 85 00 00 */	stw r4, 0(r5)
/* 8063252C  90 05 00 04 */	stw r0, 4(r5)
lbl_80632530:
/* 80632530  80 DF 02 D0 */	lwz r6, 0x2d0(r31)
/* 80632534  3C 80 80 F0 */	lis r4, int_kon_snowtv_face_model@ha /* 0x80F02C40@ha */
/* 80632538  3C 60 80 F0 */	lis r3, int_kon_snowtv_body_model@ha /* 0x80F02C98@ha */
/* 8063253C  3C A0 DE 00 */	lis r5, 0xde00
/* 80632540  38 06 00 08 */	addi r0, r6, 8
/* 80632544  38 84 2C 40 */	addi r4, r4, int_kon_snowtv_face_model@l /* 0x80F02C40@l */
/* 80632548  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 8063254C  38 03 2C 98 */	addi r0, r3, int_kon_snowtv_body_model@l /* 0x80F02C98@l */
/* 80632550  90 A6 00 00 */	stw r5, 0(r6)
/* 80632554  90 86 00 04 */	stw r4, 4(r6)
/* 80632558  80 9F 02 D0 */	lwz r4, 0x2d0(r31)
/* 8063255C  38 64 00 08 */	addi r3, r4, 8
/* 80632560  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80632564  90 A4 00 00 */	stw r5, 0(r4)
/* 80632568  90 04 00 04 */	stw r0, 4(r4)
/* 8063256C  39 61 00 20 */	addi r11, r1, 0x20
/* 80632570  4B A6 89 B1 */	bl func_8009AF20
/* 80632574  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80632578  7C 08 03 A6 */	mtlr r0
/* 8063257C  38 21 00 20 */	addi r1, r1, 0x20
/* 80632580  4E 80 00 20 */	blr 
