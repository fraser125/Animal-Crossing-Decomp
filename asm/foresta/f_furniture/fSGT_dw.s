lbl_8063EE80:
/* 8063EE80  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8063EE84  7C 08 02 A6 */	mflr r0
/* 8063EE88  90 01 00 34 */	stw r0, 0x34(r1)
/* 8063EE8C  39 61 00 30 */	addi r11, r1, 0x30
/* 8063EE90  4B A5 C0 35 */	bl func_8009AEC4
/* 8063EE94  7C BB 2B 78 */	mr r27, r5
/* 8063EE98  7C 7A 1B 78 */	mr r26, r3
/* 8063EE9C  80 E5 00 A0 */	lwz r7, 0xa0(r5)
/* 8063EEA0  3B DA 01 34 */	addi r30, r26, 0x134
/* 8063EEA4  A8 03 00 02 */	lha r0, 2(r3)
/* 8063EEA8  38 60 00 00 */	li r3, 0
/* 8063EEAC  54 E5 07 FE */	clrlwi r5, r7, 0x1f
/* 8063EEB0  38 80 00 00 */	li r4, 0
/* 8063EEB4  1C C5 03 00 */	mulli r6, r5, 0x300
/* 8063EEB8  2C 00 00 01 */	cmpwi r0, 1
/* 8063EEBC  38 A0 00 00 */	li r5, 0
/* 8063EEC0  3B A6 02 10 */	addi r29, r6, 0x210
/* 8063EEC4  7F BA EA 14 */	add r29, r26, r29
/* 8063EEC8  40 82 00 08 */	bne lbl_8063EED0
/* 8063EECC  80 FB 20 90 */	lwz r7, 0x2090(r27)
lbl_8063EED0:
/* 8063EED0  7C 07 00 D0 */	neg r0, r7
/* 8063EED4  7F 67 DB 78 */	mr r7, r27
/* 8063EED8  54 06 18 38 */	slwi r6, r0, 3
/* 8063EEDC  4B FF FF 51 */	bl fSGT_GetTwoTileGfx
/* 8063EEE0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8063EEE4  41 82 00 90 */	beq lbl_8063EF74
/* 8063EEE8  83 9B 00 00 */	lwz r28, 0(r27)
/* 8063EEEC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8063EEF0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8063EEF4  83 3C 02 D0 */	lwz r25, 0x2d0(r28)
/* 8063EEF8  38 79 00 08 */	addi r3, r25, 8
/* 8063EEFC  90 7C 02 D0 */	stw r3, 0x2d0(r28)
/* 8063EF00  90 19 00 00 */	stw r0, 0(r25)
/* 8063EF04  80 7B 00 00 */	lwz r3, 0(r27)
/* 8063EF08  4B DC E4 CD */	bl _Matrix_to_Mtx_new
/* 8063EF0C  90 79 00 04 */	stw r3, 4(r25)
/* 8063EF10  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8063EF14  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8063EF18  83 3C 02 E0 */	lwz r25, 0x2e0(r28)
/* 8063EF1C  38 79 00 08 */	addi r3, r25, 8
/* 8063EF20  90 7C 02 E0 */	stw r3, 0x2e0(r28)
/* 8063EF24  90 19 00 00 */	stw r0, 0(r25)
/* 8063EF28  80 7B 00 00 */	lwz r3, 0(r27)
/* 8063EF2C  4B DC E4 A9 */	bl _Matrix_to_Mtx_new
/* 8063EF30  90 79 00 04 */	stw r3, 4(r25)
/* 8063EF34  3C 80 80 64 */	lis r4, fSGT_DwBefore@ha /* 0x8063EE14@ha */
/* 8063EF38  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060024@ha */
/* 8063EF3C  3C 60 80 64 */	lis r3, fSGT_DwAfter@ha /* 0x8063ECCC@ha */
/* 8063EF40  81 3C 02 E0 */	lwz r9, 0x2e0(r28)
/* 8063EF44  38 C4 EE 14 */	addi r6, r4, fSGT_DwBefore@l /* 0x8063EE14@l */
/* 8063EF48  38 05 00 24 */	addi r0, r5, 0x0024 /* 0xDB060024@l */
/* 8063EF4C  38 E3 EC CC */	addi r7, r3, fSGT_DwAfter@l /* 0x8063ECCC@l */
/* 8063EF50  38 89 00 08 */	addi r4, r9, 8
/* 8063EF54  7F 63 DB 78 */	mr r3, r27
/* 8063EF58  90 9C 02 E0 */	stw r4, 0x2e0(r28)
/* 8063EF5C  7F C4 F3 78 */	mr r4, r30
/* 8063EF60  7F A5 EB 78 */	mr r5, r29
/* 8063EF64  7F 48 D3 78 */	mr r8, r26
/* 8063EF68  90 09 00 00 */	stw r0, 0(r9)
/* 8063EF6C  93 E9 00 04 */	stw r31, 4(r9)
/* 8063EF70  4B D3 27 C9 */	bl cKF_Si3_draw_R_SV
lbl_8063EF74:
/* 8063EF74  39 61 00 30 */	addi r11, r1, 0x30
/* 8063EF78  4B A5 BF 99 */	bl func_8009AF10
/* 8063EF7C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8063EF80  7C 08 03 A6 */	mtlr r0
/* 8063EF84  38 21 00 30 */	addi r1, r1, 0x30
/* 8063EF88  4E 80 00 20 */	blr 
