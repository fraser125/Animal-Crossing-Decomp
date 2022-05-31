lbl_805CA7C8:
/* 805CA7C8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805CA7CC  7C 08 02 A6 */	mflr r0
/* 805CA7D0  90 01 00 44 */	stw r0, 0x44(r1)
/* 805CA7D4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805CA7D8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805CA7DC  39 61 00 30 */	addi r11, r1, 0x30
/* 805CA7E0  4B AD 06 E5 */	bl func_8009AEC4
/* 805CA7E4  7C 9B 23 78 */	mr r27, r4
/* 805CA7E8  7C 7A 1B 78 */	mr r26, r3
/* 805CA7EC  83 84 00 00 */	lwz r28, 0(r4)
/* 805CA7F0  83 E3 50 80 */	lwz r31, 0x5080(r3)
/* 805CA7F4  83 DC 02 E0 */	lwz r30, 0x2e0(r28)
/* 805CA7F8  38 1E 00 08 */	addi r0, r30, 8
/* 805CA7FC  90 1C 02 E0 */	stw r0, 0x2e0(r28)
/* 805CA800  83 BC 02 E0 */	lwz r29, 0x2e0(r28)
/* 805CA804  80 64 00 00 */	lwz r3, 0(r4)
/* 805CA808  4B E1 A9 01 */	bl _texture_z_light_fog_prim
/* 805CA80C  80 7B 00 00 */	lwz r3, 0(r27)
/* 805CA810  4B E1 A9 49 */	bl _texture_z_light_fog_prim_xlu
/* 805CA814  A0 7A 00 00 */	lhz r3, 0(r26)
/* 805CA818  4B EA 96 81 */	bl aMR_GetAlphaEdge
/* 805CA81C  80 BC 02 D0 */	lwz r5, 0x2d0(r28)
/* 805CA820  3C 80 CE 00 */	lis r4, 0xce00
/* 805CA824  54 66 06 3E */	clrlwi r6, r3, 0x18
/* 805CA828  38 05 00 08 */	addi r0, r5, 8
/* 805CA82C  90 1C 02 D0 */	stw r0, 0x2d0(r28)
/* 805CA830  90 85 00 00 */	stw r4, 0(r5)
/* 805CA834  90 C5 00 04 */	stw r6, 4(r5)
/* 805CA838  80 7C 02 E0 */	lwz r3, 0x2e0(r28)
/* 805CA83C  38 03 00 08 */	addi r0, r3, 8
/* 805CA840  90 1C 02 E0 */	stw r0, 0x2e0(r28)
/* 805CA844  90 83 00 00 */	stw r4, 0(r3)
/* 805CA848  90 C3 00 04 */	stw r6, 4(r3)
/* 805CA84C  A0 7A 00 00 */	lhz r3, 0(r26)
/* 805CA850  4B EA 96 DD */	bl aMR_DrawDolphinMode
/* 805CA854  2C 03 00 00 */	cmpwi r3, 0
/* 805CA858  41 82 00 3C */	beq lbl_805CA894
/* 805CA85C  80 DC 02 D0 */	lwz r6, 0x2d0(r28)
/* 805CA860  3C 60 D5 02 */	lis r3, 0xD502 /* 0xD5020001@ha */
/* 805CA864  38 A3 00 01 */	addi r5, r3, 0x0001 /* 0xD5020001@l */
/* 805CA868  38 80 00 00 */	li r4, 0
/* 805CA86C  38 06 00 08 */	addi r0, r6, 8
/* 805CA870  90 1C 02 D0 */	stw r0, 0x2d0(r28)
/* 805CA874  90 A6 00 00 */	stw r5, 0(r6)
/* 805CA878  90 86 00 04 */	stw r4, 4(r6)
/* 805CA87C  80 7C 02 E0 */	lwz r3, 0x2e0(r28)
/* 805CA880  38 03 00 08 */	addi r0, r3, 8
/* 805CA884  90 1C 02 E0 */	stw r0, 0x2e0(r28)
/* 805CA888  90 A3 00 00 */	stw r5, 0(r3)
/* 805CA88C  90 83 00 04 */	stw r4, 4(r3)
/* 805CA890  48 00 00 34 */	b lbl_805CA8C4
lbl_805CA894:
/* 805CA894  80 7C 02 D0 */	lwz r3, 0x2d0(r28)
/* 805CA898  3C A0 D5 02 */	lis r5, 0xd502
/* 805CA89C  38 80 00 00 */	li r4, 0
/* 805CA8A0  38 03 00 08 */	addi r0, r3, 8
/* 805CA8A4  90 1C 02 D0 */	stw r0, 0x2d0(r28)
/* 805CA8A8  90 A3 00 00 */	stw r5, 0(r3)
/* 805CA8AC  90 83 00 04 */	stw r4, 4(r3)
/* 805CA8B0  80 7C 02 E0 */	lwz r3, 0x2e0(r28)
/* 805CA8B4  38 03 00 08 */	addi r0, r3, 8
/* 805CA8B8  90 1C 02 E0 */	stw r0, 0x2e0(r28)
/* 805CA8BC  90 A3 00 00 */	stw r5, 0(r3)
/* 805CA8C0  90 83 00 04 */	stw r4, 4(r3)
lbl_805CA8C4:
/* 805CA8C4  80 BC 02 D0 */	lwz r5, 0x2d0(r28)
/* 805CA8C8  3C 80 DC 08 */	lis r4, 0xDC08 /* 0xDC08060A@ha */
/* 805CA8CC  3C 60 80 6D */	lis r3, light_data@ha /* 0x806CB6D8@ha */
/* 805CA8D0  3D 40 DB 02 */	lis r10, 0xdb02
/* 805CA8D4  38 05 00 08 */	addi r0, r5, 8
/* 805CA8D8  39 20 00 18 */	li r9, 0x18
/* 805CA8DC  90 1C 02 D0 */	stw r0, 0x2d0(r28)
/* 805CA8E0  38 E3 B6 D8 */	addi r7, r3, light_data@l /* 0x806CB6D8@l */
/* 805CA8E4  39 04 06 0A */	addi r8, r4, 0x060A /* 0xDC08060A@l */
/* 805CA8E8  38 C4 09 0A */	addi r6, r4, 0x90a
/* 805CA8EC  91 45 00 00 */	stw r10, 0(r5)
/* 805CA8F0  39 67 00 08 */	addi r11, r7, 8
/* 805CA8F4  7F E3 FB 78 */	mr r3, r31
/* 805CA8F8  7F 64 DB 78 */	mr r4, r27
/* 805CA8FC  91 25 00 04 */	stw r9, 4(r5)
/* 805CA900  80 BC 02 D0 */	lwz r5, 0x2d0(r28)
/* 805CA904  38 05 00 08 */	addi r0, r5, 8
/* 805CA908  90 1C 02 D0 */	stw r0, 0x2d0(r28)
/* 805CA90C  91 05 00 00 */	stw r8, 0(r5)
/* 805CA910  91 65 00 04 */	stw r11, 4(r5)
/* 805CA914  80 BC 02 D0 */	lwz r5, 0x2d0(r28)
/* 805CA918  38 05 00 08 */	addi r0, r5, 8
/* 805CA91C  90 1C 02 D0 */	stw r0, 0x2d0(r28)
/* 805CA920  90 C5 00 00 */	stw r6, 0(r5)
/* 805CA924  90 E5 00 04 */	stw r7, 4(r5)
/* 805CA928  80 BC 02 E0 */	lwz r5, 0x2e0(r28)
/* 805CA92C  38 05 00 08 */	addi r0, r5, 8
/* 805CA930  90 1C 02 E0 */	stw r0, 0x2e0(r28)
/* 805CA934  91 45 00 00 */	stw r10, 0(r5)
/* 805CA938  91 25 00 04 */	stw r9, 4(r5)
/* 805CA93C  80 BC 02 E0 */	lwz r5, 0x2e0(r28)
/* 805CA940  38 05 00 08 */	addi r0, r5, 8
/* 805CA944  90 1C 02 E0 */	stw r0, 0x2e0(r28)
/* 805CA948  91 05 00 00 */	stw r8, 0(r5)
/* 805CA94C  91 65 00 04 */	stw r11, 4(r5)
/* 805CA950  80 BC 02 E0 */	lwz r5, 0x2e0(r28)
/* 805CA954  38 05 00 08 */	addi r0, r5, 8
/* 805CA958  90 1C 02 E0 */	stw r0, 0x2e0(r28)
/* 805CA95C  90 C5 00 00 */	stw r6, 0(r5)
/* 805CA960  90 E5 00 04 */	stw r7, 4(r5)
/* 805CA964  4B FF F7 E5 */	bl mCL_LoadTexturePal
/* 805CA968  7F E3 FB 78 */	mr r3, r31
/* 805CA96C  7F 64 DB 78 */	mr r4, r27
/* 805CA970  4B FF FB 79 */	bl mCL_SetKankyoMapping
/* 805CA974  3C 60 80 65 */	lis r3, lit_868@ha /* 0x8064AF30@ha */
/* 805CA978  3C 80 80 65 */	lis r4, lit_867@ha /* 0x8064AF2C@ha */
/* 805CA97C  C0 1A 00 34 */	lfs f0, 0x34(r26)
/* 805CA980  C0 23 AF 30 */	lfs f1, lit_868@l(r3)  /* 0x8064AF30@l */
/* 805CA984  C0 44 AF 2C */	lfs f2, lit_867@l(r4)  /* 0x8064AF2C@l */
/* 805CA988  38 80 00 00 */	li r4, 0
/* 805CA98C  EC 01 00 32 */	fmuls f0, f1, f0
/* 805CA990  C3 FA 50 90 */	lfs f31, 0x5090(r26)
/* 805CA994  EC 02 00 32 */	fmuls f0, f2, f0
/* 805CA998  FC 00 00 1E */	fctiwz f0, f0
/* 805CA99C  D8 01 00 08 */	stfd f0, 8(r1)
/* 805CA9A0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805CA9A4  4B E4 1C B9 */	bl Matrix_RotateY
/* 805CA9A8  FC 20 F8 90 */	fmr f1, f31
/* 805CA9AC  38 60 00 01 */	li r3, 1
/* 805CA9B0  FC 40 F8 90 */	fmr f2, f31
/* 805CA9B4  FC 60 F8 90 */	fmr f3, f31
/* 805CA9B8  4B E4 1A 35 */	bl Matrix_scale
/* 805CA9BC  C0 3A 00 08 */	lfs f1, 8(r26)
/* 805CA9C0  38 60 00 01 */	li r3, 1
/* 805CA9C4  C0 5A 00 0C */	lfs f2, 0xc(r26)
/* 805CA9C8  C0 7A 00 10 */	lfs f3, 0x10(r26)
/* 805CA9CC  4B E4 19 35 */	bl Matrix_translate
/* 805CA9D0  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 805CA9D4  38 60 00 01 */	li r3, 1
/* 805CA9D8  FC 40 08 90 */	fmr f2, f1
/* 805CA9DC  FC 60 08 90 */	fmr f3, f1
/* 805CA9E0  4B E4 1A 0D */	bl Matrix_scale
/* 805CA9E4  83 3C 02 D0 */	lwz r25, 0x2d0(r28)
/* 805CA9E8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805CA9EC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805CA9F0  38 79 00 08 */	addi r3, r25, 8
/* 805CA9F4  90 7C 02 D0 */	stw r3, 0x2d0(r28)
/* 805CA9F8  90 19 00 00 */	stw r0, 0(r25)
/* 805CA9FC  80 7B 00 00 */	lwz r3, 0(r27)
/* 805CAA00  4B E4 29 D5 */	bl _Matrix_to_Mtx_new
/* 805CAA04  90 79 00 04 */	stw r3, 4(r25)
/* 805CAA08  7F 43 D3 78 */	mr r3, r26
/* 805CAA0C  7F E4 FB 78 */	mr r4, r31
/* 805CAA10  7F 65 DB 78 */	mr r5, r27
/* 805CAA14  4B FF FB A5 */	bl mCL_SetLoopTextureAnime
/* 805CAA18  7F E3 FB 78 */	mr r3, r31
/* 805CAA1C  7F 64 DB 78 */	mr r4, r27
/* 805CAA20  4B FF FB ED */	bl mCL_DrawRegistModel
/* 805CAA24  7F 43 D3 78 */	mr r3, r26
/* 805CAA28  7F E4 FB 78 */	mr r4, r31
/* 805CAA2C  7F 65 DB 78 */	mr r5, r27
/* 805CAA30  4B FF FC 85 */	bl mCL_DrawSkelShape
/* 805CAA34  7F 43 D3 78 */	mr r3, r26
/* 805CAA38  7F E4 FB 78 */	mr r4, r31
/* 805CAA3C  7F 65 DB 78 */	mr r5, r27
/* 805CAA40  4B FF FC CD */	bl mCL_DrawUniqueShape
/* 805CAA44  81 3C 02 E0 */	lwz r9, 0x2e0(r28)
/* 805CAA48  3C E0 DF 00 */	lis r7, 0xdf00
/* 805CAA4C  39 00 00 00 */	li r8, 0
/* 805CAA50  3C 60 DE 01 */	lis r3, 0xde01
/* 805CAA54  38 89 00 08 */	addi r4, r9, 8
/* 805CAA58  3C 00 DE 00 */	lis r0, 0xde00
/* 805CAA5C  90 9C 02 E0 */	stw r4, 0x2e0(r28)
/* 805CAA60  3C C0 CE 00 */	lis r6, 0xce00
/* 805CAA64  38 A0 00 90 */	li r5, 0x90
/* 805CAA68  3C 80 D5 02 */	lis r4, 0xd502
/* 805CAA6C  90 E9 00 00 */	stw r7, 0(r9)
/* 805CAA70  91 09 00 04 */	stw r8, 4(r9)
/* 805CAA74  90 7E 00 00 */	stw r3, 0(r30)
/* 805CAA78  80 7C 02 E0 */	lwz r3, 0x2e0(r28)
/* 805CAA7C  90 7E 00 04 */	stw r3, 4(r30)
/* 805CAA80  80 FC 02 D0 */	lwz r7, 0x2d0(r28)
/* 805CAA84  38 67 00 08 */	addi r3, r7, 8
/* 805CAA88  90 7C 02 D0 */	stw r3, 0x2d0(r28)
/* 805CAA8C  90 07 00 00 */	stw r0, 0(r7)
/* 805CAA90  93 A7 00 04 */	stw r29, 4(r7)
/* 805CAA94  80 7C 02 D0 */	lwz r3, 0x2d0(r28)
/* 805CAA98  38 03 00 08 */	addi r0, r3, 8
/* 805CAA9C  90 1C 02 D0 */	stw r0, 0x2d0(r28)
/* 805CAAA0  90 C3 00 00 */	stw r6, 0(r3)
/* 805CAAA4  90 A3 00 04 */	stw r5, 4(r3)
/* 805CAAA8  80 7C 02 E0 */	lwz r3, 0x2e0(r28)
/* 805CAAAC  38 03 00 08 */	addi r0, r3, 8
/* 805CAAB0  90 1C 02 E0 */	stw r0, 0x2e0(r28)
/* 805CAAB4  90 C3 00 00 */	stw r6, 0(r3)
/* 805CAAB8  90 A3 00 04 */	stw r5, 4(r3)
/* 805CAABC  80 7C 02 D0 */	lwz r3, 0x2d0(r28)
/* 805CAAC0  38 03 00 08 */	addi r0, r3, 8
/* 805CAAC4  90 1C 02 D0 */	stw r0, 0x2d0(r28)
/* 805CAAC8  90 83 00 00 */	stw r4, 0(r3)
/* 805CAACC  91 03 00 04 */	stw r8, 4(r3)
/* 805CAAD0  80 7C 02 E0 */	lwz r3, 0x2e0(r28)
/* 805CAAD4  38 03 00 08 */	addi r0, r3, 8
/* 805CAAD8  90 1C 02 E0 */	stw r0, 0x2e0(r28)
/* 805CAADC  90 83 00 00 */	stw r4, 0(r3)
/* 805CAAE0  91 03 00 04 */	stw r8, 4(r3)
/* 805CAAE4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805CAAE8  39 61 00 30 */	addi r11, r1, 0x30
/* 805CAAEC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805CAAF0  4B AD 04 21 */	bl func_8009AF10
/* 805CAAF4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805CAAF8  7C 08 03 A6 */	mtlr r0
/* 805CAAFC  38 21 00 40 */	addi r1, r1, 0x40
/* 805CAB00  4E 80 00 20 */	blr 
