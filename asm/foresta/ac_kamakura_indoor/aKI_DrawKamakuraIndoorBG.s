lbl_8042B870:
/* 8042B870  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8042B874  7C 08 02 A6 */	mflr r0
/* 8042B878  90 01 00 44 */	stw r0, 0x44(r1)
/* 8042B87C  39 61 00 40 */	addi r11, r1, 0x40
/* 8042B880  4B C6 F6 3D */	bl func_8009AEBC
/* 8042B884  38 00 00 FF */	li r0, 0xff
/* 8042B888  7C 9C 23 78 */	mr r28, r4
/* 8042B88C  90 01 00 08 */	stw r0, 8(r1)
/* 8042B890  7C 7B 1B 78 */	mr r27, r3
/* 8042B894  38 E0 00 80 */	li r7, 0x80
/* 8042B898  39 00 00 FF */	li r8, 0xff
/* 8042B89C  93 81 00 0C */	stw r28, 0xc(r1)
/* 8042B8A0  39 20 00 32 */	li r9, 0x32
/* 8042B8A4  39 40 00 00 */	li r10, 0
/* 8042B8A8  88 63 01 88 */	lbz r3, 0x188(r3)
/* 8042B8AC  88 9B 01 89 */	lbz r4, 0x189(r27)
/* 8042B8B0  88 BB 01 8A */	lbz r5, 0x18a(r27)
/* 8042B8B4  88 DB 01 8B */	lbz r6, 0x18b(r27)
/* 8042B8B8  4B FF FF 1D */	bl aKI_MakePrimEnvColorXluDisp
/* 8042B8BC  38 00 00 FF */	li r0, 0xff
/* 8042B8C0  7C 7E 1B 78 */	mr r30, r3
/* 8042B8C4  90 01 00 08 */	stw r0, 8(r1)
/* 8042B8C8  38 E0 00 80 */	li r7, 0x80
/* 8042B8CC  39 00 00 FF */	li r8, 0xff
/* 8042B8D0  39 20 00 32 */	li r9, 0x32
/* 8042B8D4  93 81 00 0C */	stw r28, 0xc(r1)
/* 8042B8D8  39 40 00 00 */	li r10, 0
/* 8042B8DC  88 7B 01 90 */	lbz r3, 0x190(r27)
/* 8042B8E0  88 9B 01 91 */	lbz r4, 0x191(r27)
/* 8042B8E4  88 BB 01 92 */	lbz r5, 0x192(r27)
/* 8042B8E8  88 DB 01 93 */	lbz r6, 0x193(r27)
/* 8042B8EC  4B FF FE E9 */	bl aKI_MakePrimEnvColorXluDisp
/* 8042B8F0  28 1E 00 00 */	cmplwi r30, 0
/* 8042B8F4  7C 7F 1B 78 */	mr r31, r3
/* 8042B8F8  41 82 01 E4 */	beq lbl_8042BADC
/* 8042B8FC  28 1F 00 00 */	cmplwi r31, 0
/* 8042B900  40 82 00 08 */	bne lbl_8042B908
/* 8042B904  48 00 01 D8 */	b lbl_8042BADC
lbl_8042B908:
/* 8042B908  80 7C 00 00 */	lwz r3, 0(r28)
/* 8042B90C  4B FB 97 FD */	bl _texture_z_light_fog_prim
/* 8042B910  80 7C 00 00 */	lwz r3, 0(r28)
/* 8042B914  4B FB 98 45 */	bl _texture_z_light_fog_prim_xlu
/* 8042B918  7F 83 E3 78 */	mr r3, r28
/* 8042B91C  4B F8 CD FD */	bl Global_kankyo_set_room_prim
/* 8042B920  3C 60 80 64 */	lis r3, lit_497@ha /* 0x80644078@ha */
/* 8042B924  83 BC 00 00 */	lwz r29, 0(r28)
/* 8042B928  38 83 40 78 */	addi r4, r3, lit_497@l /* 0x80644078@l */
/* 8042B92C  38 60 00 00 */	li r3, 0
/* 8042B930  C0 24 00 00 */	lfs f1, 0(r4)
/* 8042B934  FC 40 08 90 */	fmr f2, f1
/* 8042B938  FC 60 08 90 */	fmr f3, f1
/* 8042B93C  4B FE 09 C5 */	bl Matrix_translate
/* 8042B940  3C 80 80 64 */	lis r4, lit_498@ha /* 0x8064407C@ha */
/* 8042B944  38 60 00 01 */	li r3, 1
/* 8042B948  C0 24 40 7C */	lfs f1, lit_498@l(r4)  /* 0x8064407C@l */
/* 8042B94C  FC 40 08 90 */	fmr f2, f1
/* 8042B950  FC 60 08 90 */	fmr f3, f1
/* 8042B954  4B FE 0A 99 */	bl Matrix_scale
/* 8042B958  82 FD 02 E0 */	lwz r23, 0x2e0(r29)
/* 8042B95C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8042B960  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8042B964  38 77 00 08 */	addi r3, r23, 8
/* 8042B968  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 8042B96C  90 17 00 00 */	stw r0, 0(r23)
/* 8042B970  80 7C 00 00 */	lwz r3, 0(r28)
/* 8042B974  4B FE 1A 61 */	bl _Matrix_to_Mtx_new
/* 8042B978  90 77 00 04 */	stw r3, 4(r23)
/* 8042B97C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8042B980  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8042B984  82 FD 02 D0 */	lwz r23, 0x2d0(r29)
/* 8042B988  38 77 00 08 */	addi r3, r23, 8
/* 8042B98C  90 7D 02 D0 */	stw r3, 0x2d0(r29)
/* 8042B990  90 17 00 00 */	stw r0, 0(r23)
/* 8042B994  80 7C 00 00 */	lwz r3, 0(r28)
/* 8042B998  4B FE 1A 3D */	bl _Matrix_to_Mtx_new
/* 8042B99C  90 77 00 04 */	stw r3, 4(r23)
/* 8042B9A0  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060024@ha */
/* 8042B9A4  38 04 00 24 */	addi r0, r4, 0x0024 /* 0xDB060024@l */
/* 8042B9A8  39 40 00 06 */	li r10, 6
/* 8042B9AC  83 1D 02 E0 */	lwz r24, 0x2e0(r29)
/* 8042B9B0  3B 24 00 20 */	addi r25, r4, 0x20
/* 8042B9B4  3B 44 00 28 */	addi r26, r4, 0x28
/* 8042B9B8  39 84 00 30 */	addi r12, r4, 0x30
/* 8042B9BC  38 B8 00 08 */	addi r5, r24, 8
/* 8042B9C0  39 64 00 2C */	addi r11, r4, 0x2c
/* 8042B9C4  90 BD 02 E0 */	stw r5, 0x2e0(r29)
/* 8042B9C8  3C 60 80 68 */	lis r3, rom_kamakura_evw_anime_4_tex_table@ha /* 0x80684238@ha */
/* 8042B9CC  38 A3 42 38 */	addi r5, r3, rom_kamakura_evw_anime_4_tex_table@l /* 0x80684238@l */
/* 8042B9D0  38 80 00 00 */	li r4, 0
/* 8042B9D4  90 18 00 00 */	stw r0, 0(r24)
/* 8042B9D8  38 60 00 20 */	li r3, 0x20
/* 8042B9DC  38 00 00 10 */	li r0, 0x10
/* 8042B9E0  38 C0 00 00 */	li r6, 0
/* 8042B9E4  82 FB 01 84 */	lwz r23, 0x184(r27)
/* 8042B9E8  38 E0 00 20 */	li r7, 0x20
/* 8042B9EC  39 00 00 10 */	li r8, 0x10
/* 8042B9F0  39 20 00 01 */	li r9, 1
/* 8042B9F4  92 F8 00 04 */	stw r23, 4(r24)
/* 8042B9F8  82 FD 02 E0 */	lwz r23, 0x2e0(r29)
/* 8042B9FC  3B 17 00 08 */	addi r24, r23, 8
/* 8042BA00  93 1D 02 E0 */	stw r24, 0x2e0(r29)
/* 8042BA04  93 37 00 00 */	stw r25, 0(r23)
/* 8042BA08  93 D7 00 04 */	stw r30, 4(r23)
/* 8042BA0C  83 3D 02 E0 */	lwz r25, 0x2e0(r29)
/* 8042BA10  3B D9 00 08 */	addi r30, r25, 8
/* 8042BA14  93 DD 02 E0 */	stw r30, 0x2e0(r29)
/* 8042BA18  93 59 00 00 */	stw r26, 0(r25)
/* 8042BA1C  83 7B 01 8C */	lwz r27, 0x18c(r27)
/* 8042BA20  93 79 00 04 */	stw r27, 4(r25)
/* 8042BA24  83 DD 02 E0 */	lwz r30, 0x2e0(r29)
/* 8042BA28  3B 7E 00 08 */	addi r27, r30, 8
/* 8042BA2C  93 7D 02 E0 */	stw r27, 0x2e0(r29)
/* 8042BA30  91 9E 00 00 */	stw r12, 0(r30)
/* 8042BA34  93 FE 00 04 */	stw r31, 4(r30)
/* 8042BA38  83 7D 02 D0 */	lwz r27, 0x2d0(r29)
/* 8042BA3C  39 9B 00 08 */	addi r12, r27, 8
/* 8042BA40  91 9D 02 D0 */	stw r12, 0x2d0(r29)
/* 8042BA44  91 7B 00 00 */	stw r11, 0(r27)
/* 8042BA48  81 7C 00 A0 */	lwz r11, 0xa0(r28)
/* 8042BA4C  7D 4B 53 96 */	divwu r10, r11, r10
/* 8042BA50  55 4A 17 7A */	rlwinm r10, r10, 2, 0x1d, 0x1d
/* 8042BA54  7C A5 50 2E */	lwzx r5, r5, r10
/* 8042BA58  90 BB 00 04 */	stw r5, 4(r27)
/* 8042BA5C  80 BC 00 A0 */	lwz r5, 0xa0(r28)
/* 8042BA60  7C A5 00 D0 */	neg r5, r5
/* 8042BA64  54 AA 08 3C */	slwi r10, r5, 1
/* 8042BA68  7D 4A 00 D0 */	neg r10, r10
/* 8042BA6C  91 41 00 08 */	stw r10, 8(r1)
/* 8042BA70  1D 45 FF FF */	mulli r10, r5, -1
/* 8042BA74  90 61 00 0C */	stw r3, 0xc(r1)
/* 8042BA78  90 01 00 10 */	stw r0, 0x10(r1)
/* 8042BA7C  80 7C 00 00 */	lwz r3, 0(r28)
/* 8042BA80  4B FB 9B 41 */	bl two_tex_scroll_dolphin
/* 8042BA84  81 1D 02 E0 */	lwz r8, 0x2e0(r29)
/* 8042BA88  3C C0 DB 06 */	lis r6, 0xDB06 /* 0xDB060034@ha */
/* 8042BA8C  3C A0 80 ED */	lis r5, rom_kamakura_model@ha /* 0x80ECB8C8@ha */
/* 8042BA90  3C 80 80 ED */	lis r4, rom_kamakura_modelT@ha /* 0x80ECB790@ha */
/* 8042BA94  38 08 00 08 */	addi r0, r8, 8
/* 8042BA98  38 E6 00 34 */	addi r7, r6, 0x0034 /* 0xDB060034@l */
/* 8042BA9C  90 1D 02 E0 */	stw r0, 0x2e0(r29)
/* 8042BAA0  3C C0 DE 00 */	lis r6, 0xde00
/* 8042BAA4  38 A5 B8 C8 */	addi r5, r5, rom_kamakura_model@l /* 0x80ECB8C8@l */
/* 8042BAA8  38 04 B7 90 */	addi r0, r4, rom_kamakura_modelT@l /* 0x80ECB790@l */
/* 8042BAAC  90 E8 00 00 */	stw r7, 0(r8)
/* 8042BAB0  90 68 00 04 */	stw r3, 4(r8)
/* 8042BAB4  80 9D 02 D0 */	lwz r4, 0x2d0(r29)
/* 8042BAB8  38 64 00 08 */	addi r3, r4, 8
/* 8042BABC  90 7D 02 D0 */	stw r3, 0x2d0(r29)
/* 8042BAC0  90 C4 00 00 */	stw r6, 0(r4)
/* 8042BAC4  90 A4 00 04 */	stw r5, 4(r4)
/* 8042BAC8  80 9D 02 E0 */	lwz r4, 0x2e0(r29)
/* 8042BACC  38 64 00 08 */	addi r3, r4, 8
/* 8042BAD0  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 8042BAD4  90 C4 00 00 */	stw r6, 0(r4)
/* 8042BAD8  90 04 00 04 */	stw r0, 4(r4)
lbl_8042BADC:
/* 8042BADC  39 61 00 40 */	addi r11, r1, 0x40
/* 8042BAE0  4B C6 F4 29 */	bl func_8009AF08
/* 8042BAE4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8042BAE8  7C 08 03 A6 */	mtlr r0
/* 8042BAEC  38 21 00 40 */	addi r1, r1, 0x40
/* 8042BAF0  4E 80 00 20 */	blr 
