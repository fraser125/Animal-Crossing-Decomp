lbl_80640928:
/* 80640928  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8064092C  7C 08 02 A6 */	mflr r0
/* 80640930  90 01 00 24 */	stw r0, 0x24(r1)
/* 80640934  39 61 00 20 */	addi r11, r1, 0x20
/* 80640938  4B A5 A5 95 */	bl func_8009AECC
/* 8064093C  A0 C3 00 00 */	lhz r6, 0(r3)
/* 80640940  3C 80 80 6E */	lis r4, fNFL_model_data@ha /* 0x806DFFE0@ha */
/* 80640944  83 E5 00 00 */	lwz r31, 0(r5)
/* 80640948  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8064094C  38 06 FB 22 */	addi r0, r6, -1246
/* 80640950  38 C4 FF E0 */	addi r6, r4, fNFL_model_data@l /* 0x806DFFE0@l */
/* 80640954  1C E0 00 0C */	mulli r7, r0, 0xc
/* 80640958  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 8064095C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80640960  38 7E 00 08 */	addi r3, r30, 8
/* 80640964  7C 86 3A 14 */	add r4, r6, r7
/* 80640968  7F A6 38 2E */	lwzx r29, r6, r7
/* 8064096C  83 84 00 04 */	lwz r28, 4(r4)
/* 80640970  83 64 00 08 */	lwz r27, 8(r4)
/* 80640974  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80640978  90 1E 00 00 */	stw r0, 0(r30)
/* 8064097C  80 65 00 00 */	lwz r3, 0(r5)
/* 80640980  4B DC CA 55 */	bl _Matrix_to_Mtx_new
/* 80640984  90 7E 00 04 */	stw r3, 4(r30)
/* 80640988  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 8064098C  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 80640990  3C 80 DE 00 */	lis r4, 0xde00
/* 80640994  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 80640998  38 65 00 08 */	addi r3, r5, 8
/* 8064099C  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 806409A0  90 05 00 00 */	stw r0, 0(r5)
/* 806409A4  93 65 00 04 */	stw r27, 4(r5)
/* 806409A8  80 7F 02 D0 */	lwz r3, 0x2d0(r31)
/* 806409AC  38 03 00 08 */	addi r0, r3, 8
/* 806409B0  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 806409B4  90 83 00 00 */	stw r4, 0(r3)
/* 806409B8  93 A3 00 04 */	stw r29, 4(r3)
/* 806409BC  80 7F 02 D0 */	lwz r3, 0x2d0(r31)
/* 806409C0  38 03 00 08 */	addi r0, r3, 8
/* 806409C4  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 806409C8  90 83 00 00 */	stw r4, 0(r3)
/* 806409CC  93 83 00 04 */	stw r28, 4(r3)
/* 806409D0  39 61 00 20 */	addi r11, r1, 0x20
/* 806409D4  4B A5 A5 45 */	bl func_8009AF18
/* 806409D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806409DC  7C 08 03 A6 */	mtlr r0
/* 806409E0  38 21 00 20 */	addi r1, r1, 0x20
/* 806409E4  4E 80 00 20 */	blr 
