lbl_804F312C:
/* 804F312C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804F3130  7C 08 02 A6 */	mflr r0
/* 804F3134  90 01 00 64 */	stw r0, 0x64(r1)
/* 804F3138  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 804F313C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 804F3140  39 61 00 50 */	addi r11, r1, 0x50
/* 804F3144  4B BA 7D 75 */	bl func_8009AEB8
/* 804F3148  7C 76 1B 78 */	mr r22, r3
/* 804F314C  7C 97 23 78 */	mr r23, r4
/* 804F3150  7C B8 2B 78 */	mr r24, r5
/* 804F3154  4B FF FF B1 */	bl Player_actor_CheckCaptureForce_forNet
/* 804F3158  2C 03 00 00 */	cmpwi r3, 0
/* 804F315C  41 82 00 0C */	beq lbl_804F3168
/* 804F3160  38 60 00 01 */	li r3, 1
/* 804F3164  48 00 01 0C */	b lbl_804F3270
lbl_804F3168:
/* 804F3168  83 F6 0F 20 */	lwz r31, 0xf20(r22)
/* 804F316C  2C 1F 00 00 */	cmpwi r31, 0
/* 804F3170  40 81 00 FC */	ble lbl_804F326C
/* 804F3174  2C 1F 00 08 */	cmpwi r31, 8
/* 804F3178  41 81 00 F4 */	bgt lbl_804F326C
/* 804F317C  3B D6 0E 78 */	addi r30, r22, 0xe78
/* 804F3180  3B B6 0E 98 */	addi r29, r22, 0xe98
/* 804F3184  3B 96 0E A0 */	addi r28, r22, 0xea0
/* 804F3188  3B 76 0F 00 */	addi r27, r22, 0xf00
/* 804F318C  3B 56 0E 44 */	addi r26, r22, 0xe44
/* 804F3190  4B FE D7 B1 */	bl Player_actor_Get_ItemKind_from_submenu
/* 804F3194  7C 60 07 74 */	extsb r0, r3
/* 804F3198  2C 00 00 0A */	cmpwi r0, 0xa
/* 804F319C  40 82 00 10 */	bne lbl_804F31AC
/* 804F31A0  3C 60 80 64 */	lis r3, lit_2592@ha /* 0x80646C48@ha */
/* 804F31A4  C0 63 6C 48 */	lfs f3, lit_2592@l(r3)  /* 0x80646C48@l */
/* 804F31A8  48 00 00 0C */	b lbl_804F31B4
lbl_804F31AC:
/* 804F31AC  3C 60 80 64 */	lis r3, lit_5205@ha /* 0x80647CE0@ha */
/* 804F31B0  C0 63 7C E0 */	lfs f3, lit_5205@l(r3)  /* 0x80647CE0@l */
lbl_804F31B4:
/* 804F31B4  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804F31B8  C0 56 0E 50 */	lfs f2, 0xe50(r22)
/* 804F31BC  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 804F31C0  EF E3 00 F2 */	fmuls f31, f3, f3
/* 804F31C4  C0 3A 00 00 */	lfs f1, 0(r26)
/* 804F31C8  3B 20 00 00 */	li r25, 0
/* 804F31CC  EC 80 18 24 */	fdivs f4, f0, f3
/* 804F31D0  EC 42 08 28 */	fsubs f2, f2, f1
/* 804F31D4  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 804F31D8  C0 36 0E 54 */	lfs f1, 0xe54(r22)
/* 804F31DC  C0 1A 00 04 */	lfs f0, 4(r26)
/* 804F31E0  EC 01 00 28 */	fsubs f0, f1, f0
/* 804F31E4  EC 22 01 32 */	fmuls f1, f2, f4
/* 804F31E8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804F31EC  EC 00 01 32 */	fmuls f0, f0, f4
/* 804F31F0  C0 76 0E 58 */	lfs f3, 0xe58(r22)
/* 804F31F4  C0 5A 00 08 */	lfs f2, 8(r26)
/* 804F31F8  EC 43 10 28 */	fsubs f2, f3, f2
/* 804F31FC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804F3200  D0 21 00 08 */	stfs f1, 8(r1)
/* 804F3204  EC 02 01 32 */	fmuls f0, f2, f4
/* 804F3208  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 804F320C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804F3210  48 00 00 54 */	b lbl_804F3264
lbl_804F3214:
/* 804F3214  FC 20 F8 90 */	fmr f1, f31
/* 804F3218  C0 5B 00 00 */	lfs f2, 0(r27)
/* 804F321C  7F 43 D3 78 */	mr r3, r26
/* 804F3220  7F 86 E3 78 */	mr r6, r28
/* 804F3224  38 81 00 14 */	addi r4, r1, 0x14
/* 804F3228  38 A1 00 08 */	addi r5, r1, 8
/* 804F322C  4B FF FC 3D */	bl Player_actor_Item_CheckLocalCapture_forNet
/* 804F3230  2C 03 00 00 */	cmpwi r3, 0
/* 804F3234  41 82 00 1C */	beq lbl_804F3250
/* 804F3238  80 1E 00 00 */	lwz r0, 0(r30)
/* 804F323C  38 60 00 01 */	li r3, 1
/* 804F3240  90 17 00 00 */	stw r0, 0(r23)
/* 804F3244  88 1D 00 00 */	lbz r0, 0(r29)
/* 804F3248  98 18 00 00 */	stb r0, 0(r24)
/* 804F324C  48 00 00 24 */	b lbl_804F3270
lbl_804F3250:
/* 804F3250  3B DE 00 04 */	addi r30, r30, 4
/* 804F3254  3B BD 00 01 */	addi r29, r29, 1
/* 804F3258  3B 9C 00 0C */	addi r28, r28, 0xc
/* 804F325C  3B 7B 00 04 */	addi r27, r27, 4
/* 804F3260  3B 39 00 01 */	addi r25, r25, 1
lbl_804F3264:
/* 804F3264  7C 19 F8 00 */	cmpw r25, r31
/* 804F3268  41 80 FF AC */	blt lbl_804F3214
lbl_804F326C:
/* 804F326C  38 60 00 00 */	li r3, 0
lbl_804F3270:
/* 804F3270  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 804F3274  39 61 00 50 */	addi r11, r1, 0x50
/* 804F3278  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 804F327C  4B BA 7C 89 */	bl func_8009AF04
/* 804F3280  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804F3284  7C 08 03 A6 */	mtlr r0
/* 804F3288  38 21 00 60 */	addi r1, r1, 0x60
/* 804F328C  4E 80 00 20 */	blr 
