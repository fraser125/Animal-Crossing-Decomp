lbl_804A0560:
/* 804A0560  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804A0564  7C 08 02 A6 */	mflr r0
/* 804A0568  90 01 00 54 */	stw r0, 0x54(r1)
/* 804A056C  39 61 00 50 */	addi r11, r1, 0x50
/* 804A0570  4B BF A9 3D */	bl func_8009AEAC
/* 804A0574  7C 77 1B 78 */	mr r23, r3
/* 804A0578  7C 98 23 78 */	mr r24, r4
/* 804A057C  83 43 01 78 */	lwz r26, 0x178(r3)
/* 804A0580  83 63 01 74 */	lwz r27, 0x174(r3)
/* 804A0584  28 1A 00 00 */	cmplwi r26, 0
/* 804A0588  41 82 01 6C */	beq lbl_804A06F4
/* 804A058C  3C A0 80 9F */	lis r5, obj_shop_manekin_model@ha /* 0x809EC370@ha */
/* 804A0590  3C 80 80 64 */	lis r4, lit_608@ha /* 0x80645BFC@ha */
/* 804A0594  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804A0598  3B 20 00 00 */	li r25, 0
/* 804A059C  3B C5 C3 70 */	addi r30, r5, obj_shop_manekin_model@l /* 0x809EC370@l */
/* 804A05A0  3B E4 5B FC */	addi r31, r4, lit_608@l /* 0x80645BFC@l */
/* 804A05A4  3A 83 00 03 */	addi r20, r3, 0x0003 /* 0xDA380003@l */
/* 804A05A8  3A C0 00 00 */	li r22, 0
/* 804A05AC  3E A0 DE 00 */	lis r21, 0xde00
/* 804A05B0  48 00 01 3C */	b lbl_804A06EC
lbl_804A05B4:
/* 804A05B4  7F 9A B2 14 */	add r28, r26, r22
/* 804A05B8  80 7C 00 00 */	lwz r3, 0(r28)
/* 804A05BC  80 1C 00 04 */	lwz r0, 4(r28)
/* 804A05C0  90 61 00 08 */	stw r3, 8(r1)
/* 804A05C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 804A05C8  80 1C 00 08 */	lwz r0, 8(r28)
/* 804A05CC  90 01 00 10 */	stw r0, 0x10(r1)
/* 804A05D0  83 B8 00 00 */	lwz r29, 0(r24)
/* 804A05D4  7F A3 EB 78 */	mr r3, r29
/* 804A05D8  4B F4 4B 31 */	bl _texture_z_light_fog_prim
/* 804A05DC  C0 21 00 08 */	lfs f1, 8(r1)
/* 804A05E0  38 60 00 00 */	li r3, 0
/* 804A05E4  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 804A05E8  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 804A05EC  4B F6 BD 15 */	bl Matrix_translate
/* 804A05F0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804A05F4  38 60 00 01 */	li r3, 1
/* 804A05F8  FC 40 08 90 */	fmr f2, f1
/* 804A05FC  FC 60 08 90 */	fmr f3, f1
/* 804A0600  4B F6 BD ED */	bl Matrix_scale
/* 804A0604  80 98 00 00 */	lwz r4, 0(r24)
/* 804A0608  38 78 1D 90 */	addi r3, r24, 0x1d90
/* 804A060C  4B F1 BB 31 */	bl Global_light_read
/* 804A0610  80 98 1D 90 */	lwz r4, 0x1d90(r24)
/* 804A0614  7C 73 1B 78 */	mr r19, r3
/* 804A0618  38 A1 00 08 */	addi r5, r1, 8
/* 804A061C  4B F1 B9 15 */	bl LightsN_list_check
/* 804A0620  80 98 00 00 */	lwz r4, 0(r24)
/* 804A0624  7E 63 9B 78 */	mr r3, r19
/* 804A0628  4B F1 B3 D1 */	bl LightsN_disp
/* 804A062C  80 1C 00 50 */	lwz r0, 0x50(r28)
/* 804A0630  2C 00 00 00 */	cmpwi r0, 0
/* 804A0634  41 82 00 44 */	beq lbl_804A0678
/* 804A0638  80 DD 02 D0 */	lwz r6, 0x2d0(r29)
/* 804A063C  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 804A0640  38 83 00 20 */	addi r4, r3, 0x0020 /* 0xDB060020@l */
/* 804A0644  38 A6 00 08 */	addi r5, r6, 8
/* 804A0648  38 03 00 24 */	addi r0, r3, 0x24
/* 804A064C  90 BD 02 D0 */	stw r5, 0x2d0(r29)
/* 804A0650  90 86 00 00 */	stw r4, 0(r6)
/* 804A0654  80 77 01 94 */	lwz r3, 0x194(r23)
/* 804A0658  90 66 00 04 */	stw r3, 4(r6)
/* 804A065C  80 9D 02 D0 */	lwz r4, 0x2d0(r29)
/* 804A0660  38 64 00 08 */	addi r3, r4, 8
/* 804A0664  90 7D 02 D0 */	stw r3, 0x2d0(r29)
/* 804A0668  90 04 00 00 */	stw r0, 0(r4)
/* 804A066C  80 17 01 98 */	lwz r0, 0x198(r23)
/* 804A0670  90 04 00 04 */	stw r0, 4(r4)
/* 804A0674  48 00 00 40 */	b lbl_804A06B4
lbl_804A0678:
/* 804A0678  80 DD 02 D0 */	lwz r6, 0x2d0(r29)
/* 804A067C  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 804A0680  38 83 00 20 */	addi r4, r3, 0x0020 /* 0xDB060020@l */
/* 804A0684  38 A6 00 08 */	addi r5, r6, 8
/* 804A0688  38 03 00 24 */	addi r0, r3, 0x24
/* 804A068C  90 BD 02 D0 */	stw r5, 0x2d0(r29)
/* 804A0690  90 86 00 00 */	stw r4, 0(r6)
/* 804A0694  80 7C 00 18 */	lwz r3, 0x18(r28)
/* 804A0698  90 66 00 04 */	stw r3, 4(r6)
/* 804A069C  80 9D 02 D0 */	lwz r4, 0x2d0(r29)
/* 804A06A0  38 64 00 08 */	addi r3, r4, 8
/* 804A06A4  90 7D 02 D0 */	stw r3, 0x2d0(r29)
/* 804A06A8  90 04 00 00 */	stw r0, 0(r4)
/* 804A06AC  80 1C 00 1C */	lwz r0, 0x1c(r28)
/* 804A06B0  90 04 00 04 */	stw r0, 4(r4)
lbl_804A06B4:
/* 804A06B4  83 9D 02 D0 */	lwz r28, 0x2d0(r29)
/* 804A06B8  38 1C 00 08 */	addi r0, r28, 8
/* 804A06BC  90 1D 02 D0 */	stw r0, 0x2d0(r29)
/* 804A06C0  92 9C 00 00 */	stw r20, 0(r28)
/* 804A06C4  80 78 00 00 */	lwz r3, 0(r24)
/* 804A06C8  4B F6 CD 0D */	bl _Matrix_to_Mtx_new
/* 804A06CC  90 7C 00 04 */	stw r3, 4(r28)
/* 804A06D0  3B 39 00 01 */	addi r25, r25, 1
/* 804A06D4  3A D6 00 54 */	addi r22, r22, 0x54
/* 804A06D8  80 7D 02 D0 */	lwz r3, 0x2d0(r29)
/* 804A06DC  38 03 00 08 */	addi r0, r3, 8
/* 804A06E0  90 1D 02 D0 */	stw r0, 0x2d0(r29)
/* 804A06E4  92 A3 00 00 */	stw r21, 0(r3)
/* 804A06E8  93 C3 00 04 */	stw r30, 4(r3)
lbl_804A06EC:
/* 804A06EC  7C 19 D8 00 */	cmpw r25, r27
/* 804A06F0  41 80 FE C4 */	blt lbl_804A05B4
lbl_804A06F4:
/* 804A06F4  39 61 00 50 */	addi r11, r1, 0x50
/* 804A06F8  4B BF A8 01 */	bl func_8009AEF8
/* 804A06FC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804A0700  7C 08 03 A6 */	mtlr r0
/* 804A0704  38 21 00 50 */	addi r1, r1, 0x50
/* 804A0708  4E 80 00 20 */	blr 
