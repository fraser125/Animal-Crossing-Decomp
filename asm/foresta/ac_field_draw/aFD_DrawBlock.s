lbl_804237E8:
/* 804237E8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804237EC  7C 08 02 A6 */	mflr r0
/* 804237F0  90 01 00 44 */	stw r0, 0x44(r1)
/* 804237F4  39 61 00 40 */	addi r11, r1, 0x40
/* 804237F8  4B C7 76 C5 */	bl func_8009AEBC
/* 804237FC  7C 7A 1B 78 */	mr r26, r3
/* 80423800  7C 9B 23 78 */	mr r27, r4
/* 80423804  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80423808  7C BC 2B 78 */	mr r28, r5
/* 8042380C  80 9A 00 10 */	lwz r4, 0x10(r26)
/* 80423810  4B F8 29 D5 */	bl mFI_BkNum2BlockType
/* 80423814  83 FA 00 14 */	lwz r31, 0x14(r26)
/* 80423818  28 1F 00 00 */	cmplwi r31, 0
/* 8042381C  41 82 01 DC */	beq lbl_804239F8
/* 80423820  80 7A 00 0C */	lwz r3, 0xc(r26)
/* 80423824  80 9A 00 10 */	lwz r4, 0x10(r26)
/* 80423828  4B F8 30 91 */	bl mFI_GetBGDisplayListRom
/* 8042382C  7C 60 1B 78 */	mr r0, r3
/* 80423830  80 7A 00 0C */	lwz r3, 0xc(r26)
/* 80423834  80 9A 00 10 */	lwz r4, 0x10(r26)
/* 80423838  7C 1E 03 78 */	mr r30, r0
/* 8042383C  4B F8 30 F1 */	bl mFI_GetBGDisplayListRom_XLU
/* 80423840  80 9A 00 0C */	lwz r4, 0xc(r26)
/* 80423844  7C 7D 1B 78 */	mr r29, r3
/* 80423848  80 BA 00 10 */	lwz r5, 0x10(r26)
/* 8042384C  38 61 00 08 */	addi r3, r1, 8
/* 80423850  4B F8 31 51 */	bl mFI_GetBGTexAnimInfo
/* 80423854  C0 3A 00 00 */	lfs f1, 0(r26)
/* 80423858  7C 78 1B 78 */	mr r24, r3
/* 8042385C  C0 5A 00 04 */	lfs f2, 4(r26)
/* 80423860  38 60 00 00 */	li r3, 0
/* 80423864  C0 7A 00 08 */	lfs f3, 8(r26)
/* 80423868  4B FE 8A 99 */	bl Matrix_translate
/* 8042386C  3C 80 80 64 */	lis r4, lit_747@ha /* 0x80643E4C@ha */
/* 80423870  38 60 00 01 */	li r3, 1
/* 80423874  C0 24 3E 4C */	lfs f1, lit_747@l(r4)  /* 0x80643E4C@l */
/* 80423878  FC 40 08 90 */	fmr f2, f1
/* 8042387C  FC 60 08 90 */	fmr f3, f1
/* 80423880  4B FE 8B 6D */	bl Matrix_scale
/* 80423884  80 7C 00 00 */	lwz r3, 0(r28)
/* 80423888  4B FC 18 D1 */	bl _texture_z_light_fog_prim_xlu
/* 8042388C  80 7C 00 00 */	lwz r3, 0(r28)
/* 80423890  4B FC 18 51 */	bl _texture_z_light_fog_prim_bg
/* 80423894  82 FC 00 00 */	lwz r23, 0(r28)
/* 80423898  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8042389C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804238A0  83 37 02 E0 */	lwz r25, 0x2e0(r23)
/* 804238A4  38 79 00 08 */	addi r3, r25, 8
/* 804238A8  90 77 02 E0 */	stw r3, 0x2e0(r23)
/* 804238AC  90 19 00 00 */	stw r0, 0(r25)
/* 804238B0  80 7C 00 00 */	lwz r3, 0(r28)
/* 804238B4  4B FE 9B 21 */	bl _Matrix_to_Mtx_new
/* 804238B8  90 79 00 04 */	stw r3, 4(r25)
/* 804238BC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804238C0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804238C4  83 37 03 20 */	lwz r25, 0x320(r23)
/* 804238C8  38 79 00 08 */	addi r3, r25, 8
/* 804238CC  90 77 03 20 */	stw r3, 0x320(r23)
/* 804238D0  90 19 00 00 */	stw r0, 0(r25)
/* 804238D4  80 7C 00 00 */	lwz r3, 0(r28)
/* 804238D8  4B FE 9A FD */	bl _Matrix_to_Mtx_new
/* 804238DC  90 79 00 04 */	stw r3, 4(r25)
/* 804238E0  7F 03 C3 78 */	mr r3, r24
/* 804238E4  7F 84 E3 78 */	mr r4, r28
/* 804238E8  4B FF FC 4D */	bl aFD_SetViewerData
/* 804238EC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804238F0  3C 80 80 68 */	lis r4, draw_proc@ha /* 0x80682A54@ha */
/* 804238F4  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 804238F8  7F 83 E3 78 */	mr r3, r28
/* 804238FC  3C A5 00 02 */	addis r5, r5, 2
/* 80423900  38 84 2A 54 */	addi r4, r4, draw_proc@l /* 0x80682A54@l */
/* 80423904  88 05 60 02 */	lbz r0, 0x6002(r5)
/* 80423908  54 00 10 3A */	slwi r0, r0, 2
/* 8042390C  7D 84 00 2E */	lwzx r12, r4, r0
/* 80423910  7D 89 03 A6 */	mtctr r12
/* 80423914  4E 80 04 21 */	bctrl 
/* 80423918  80 BA 00 0C */	lwz r5, 0xc(r26)
/* 8042391C  7F 63 DB 78 */	mr r3, r27
/* 80423920  80 DA 00 10 */	lwz r6, 0x10(r26)
/* 80423924  7F 84 E3 78 */	mr r4, r28
/* 80423928  4B FF FC 49 */	bl aFD_SetBeachColorOpaSegment
/* 8042392C  2C 03 00 00 */	cmpwi r3, 0
/* 80423930  41 82 00 84 */	beq lbl_804239B4
/* 80423934  80 7A 00 0C */	lwz r3, 0xc(r26)
/* 80423938  80 9A 00 10 */	lwz r4, 0x10(r26)
/* 8042393C  4B F8 29 AD */	bl mFI_BkNum2BlockKind
/* 80423940  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 80423944  38 84 61 38 */	addi r4, r4, debug_mode@l /* 0x81166138@l */
/* 80423948  80 84 00 00 */	lwz r4, 0(r4)
/* 8042394C  A8 04 19 6E */	lha r0, 0x196e(r4)
/* 80423950  2C 00 00 01 */	cmpwi r0, 1
/* 80423954  41 82 00 34 */	beq lbl_80423988
/* 80423958  40 80 00 10 */	bge lbl_80423968
/* 8042395C  2C 00 00 00 */	cmpwi r0, 0
/* 80423960  40 80 00 14 */	bge lbl_80423974
/* 80423964  48 00 00 40 */	b lbl_804239A4
lbl_80423968:
/* 80423968  2C 00 00 03 */	cmpwi r0, 3
/* 8042396C  40 80 00 38 */	bge lbl_804239A4
/* 80423970  48 00 00 44 */	b lbl_804239B4
lbl_80423974:
/* 80423974  7F C3 F3 78 */	mr r3, r30
/* 80423978  7F E4 FB 78 */	mr r4, r31
/* 8042397C  7F 85 E3 78 */	mr r5, r28
/* 80423980  4B FF FD A9 */	bl aFD_DrawBg
/* 80423984  48 00 00 30 */	b lbl_804239B4
lbl_80423988:
/* 80423988  54 60 02 95 */	rlwinm. r0, r3, 0, 0xa, 0xa
/* 8042398C  40 82 00 28 */	bne lbl_804239B4
/* 80423990  7F C3 F3 78 */	mr r3, r30
/* 80423994  7F E4 FB 78 */	mr r4, r31
/* 80423998  7F 85 E3 78 */	mr r5, r28
/* 8042399C  4B FF FD 8D */	bl aFD_DrawBg
/* 804239A0  48 00 00 14 */	b lbl_804239B4
lbl_804239A4:
/* 804239A4  7F C3 F3 78 */	mr r3, r30
/* 804239A8  7F E4 FB 78 */	mr r4, r31
/* 804239AC  7F 85 E3 78 */	mr r5, r28
/* 804239B0  4B FF FD 79 */	bl aFD_DrawBg
lbl_804239B4:
/* 804239B4  80 BA 00 0C */	lwz r5, 0xc(r26)
/* 804239B8  7F 63 DB 78 */	mr r3, r27
/* 804239BC  80 DA 00 10 */	lwz r6, 0x10(r26)
/* 804239C0  7F 84 E3 78 */	mr r4, r28
/* 804239C4  4B FF FC 41 */	bl aFD_SetMarinScrollXluSegment
/* 804239C8  2C 03 00 00 */	cmpwi r3, 0
/* 804239CC  41 82 00 2C */	beq lbl_804239F8
/* 804239D0  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 804239D4  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 804239D8  80 63 00 00 */	lwz r3, 0(r3)
/* 804239DC  A8 03 19 6E */	lha r0, 0x196e(r3)
/* 804239E0  2C 00 00 03 */	cmpwi r0, 3
/* 804239E4  41 82 00 14 */	beq lbl_804239F8
/* 804239E8  7F A3 EB 78 */	mr r3, r29
/* 804239EC  7F E4 FB 78 */	mr r4, r31
/* 804239F0  7F 85 E3 78 */	mr r5, r28
/* 804239F4  4B FF FD 81 */	bl aFD_DrawXluBg
lbl_804239F8:
/* 804239F8  39 61 00 40 */	addi r11, r1, 0x40
/* 804239FC  4B C7 75 0D */	bl func_8009AF08
/* 80423A00  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80423A04  7C 08 03 A6 */	mtlr r0
/* 80423A08  38 21 00 40 */	addi r1, r1, 0x40
/* 80423A0C  4E 80 00 20 */	blr 
