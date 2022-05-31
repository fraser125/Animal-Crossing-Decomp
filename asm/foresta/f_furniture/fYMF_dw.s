lbl_8063F180:
/* 8063F180  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063F184  7C 08 02 A6 */	mflr r0
/* 8063F188  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063F18C  39 61 00 20 */	addi r11, r1, 0x20
/* 8063F190  4B A5 BD 45 */	bl func_8009AED4
/* 8063F194  A8 03 00 02 */	lha r0, 2(r3)
/* 8063F198  2C 00 00 01 */	cmpwi r0, 1
/* 8063F19C  40 82 00 0C */	bne lbl_8063F1A8
/* 8063F1A0  83 A5 20 90 */	lwz r29, 0x2090(r5)
/* 8063F1A4  48 00 00 08 */	b lbl_8063F1AC
lbl_8063F1A8:
/* 8063F1A8  83 A5 00 A0 */	lwz r29, 0xa0(r5)
lbl_8063F1AC:
/* 8063F1AC  83 E5 00 00 */	lwz r31, 0(r5)
/* 8063F1B0  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8063F1B4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8063F1B8  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 8063F1BC  38 7E 00 08 */	addi r3, r30, 8
/* 8063F1C0  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063F1C4  90 1E 00 00 */	stw r0, 0(r30)
/* 8063F1C8  80 65 00 00 */	lwz r3, 0(r5)
/* 8063F1CC  4B DC E2 09 */	bl _Matrix_to_Mtx_new
/* 8063F1D0  38 00 00 14 */	li r0, 0x14
/* 8063F1D4  90 7E 00 04 */	stw r3, 4(r30)
/* 8063F1D8  7C 1D 03 96 */	divwu r0, r29, r0
/* 8063F1DC  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060024@ha */
/* 8063F1E0  80 FF 02 D0 */	lwz r7, 0x2d0(r31)
/* 8063F1E4  3C 80 81 12 */	lis r4, int_yaz_mario_flower_hana_model@ha /* 0x8111ABB0@ha */
/* 8063F1E8  38 A5 00 24 */	addi r5, r5, 0x0024 /* 0xDB060024@l */
/* 8063F1EC  38 C7 00 08 */	addi r6, r7, 8
/* 8063F1F0  90 DF 02 D0 */	stw r6, 0x2d0(r31)
/* 8063F1F4  3C 60 80 6E */	lis r3, fYMF_palette_table@ha /* 0x806DF428@ha */
/* 8063F1F8  38 C3 F4 28 */	addi r6, r3, fYMF_palette_table@l /* 0x806DF428@l */
/* 8063F1FC  54 00 17 3A */	rlwinm r0, r0, 2, 0x1c, 0x1d
/* 8063F200  90 A7 00 00 */	stw r5, 0(r7)
/* 8063F204  3C 60 81 12 */	lis r3, int_yaz_mario_flower_body_model@ha /* 0x8111AC18@ha */
/* 8063F208  3C A0 DE 00 */	lis r5, 0xde00
/* 8063F20C  38 84 AB B0 */	addi r4, r4, int_yaz_mario_flower_hana_model@l /* 0x8111ABB0@l */
/* 8063F210  7C C6 00 2E */	lwzx r6, r6, r0
/* 8063F214  38 03 AC 18 */	addi r0, r3, int_yaz_mario_flower_body_model@l /* 0x8111AC18@l */
/* 8063F218  39 61 00 20 */	addi r11, r1, 0x20
/* 8063F21C  90 C7 00 04 */	stw r6, 4(r7)
/* 8063F220  80 DF 02 D0 */	lwz r6, 0x2d0(r31)
/* 8063F224  38 66 00 08 */	addi r3, r6, 8
/* 8063F228  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063F22C  90 A6 00 00 */	stw r5, 0(r6)
/* 8063F230  90 86 00 04 */	stw r4, 4(r6)
/* 8063F234  80 9F 02 D0 */	lwz r4, 0x2d0(r31)
/* 8063F238  38 64 00 08 */	addi r3, r4, 8
/* 8063F23C  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063F240  90 A4 00 00 */	stw r5, 0(r4)
/* 8063F244  90 04 00 04 */	stw r0, 4(r4)
/* 8063F248  4B A5 BC D9 */	bl func_8009AF20
/* 8063F24C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063F250  7C 08 03 A6 */	mtlr r0
/* 8063F254  38 21 00 20 */	addi r1, r1, 0x20
/* 8063F258  4E 80 00 20 */	blr 
