lbl_804DA0E0:
/* 804DA0E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804DA0E4  7C 08 02 A6 */	mflr r0
/* 804DA0E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804DA0EC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804DA0F0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804DA0F4  39 61 00 20 */	addi r11, r1, 0x20
/* 804DA0F8  4B BC 0D D5 */	bl func_8009AECC
/* 804DA0FC  7C 7B 1B 78 */	mr r27, r3
/* 804DA100  FF E0 08 90 */	fmr f31, f1
/* 804DA104  7C 9C 23 78 */	mr r28, r4
/* 804DA108  80 83 0D 08 */	lwz r4, 0xd08(r3)
/* 804DA10C  7C BD 2B 78 */	mr r29, r5
/* 804DA110  7C DE 33 78 */	mr r30, r6
/* 804DA114  48 00 68 91 */	bl Player_actor_Get_ItemKind
/* 804DA118  88 BB 11 2B */	lbz r5, 0x112b(r27)
/* 804DA11C  7C 7F 07 74 */	extsb r31, r3
/* 804DA120  7F 63 DB 78 */	mr r3, r27
/* 804DA124  7F 86 E3 78 */	mr r6, r28
/* 804DA128  7F E4 FB 78 */	mr r4, r31
/* 804DA12C  7F A7 EB 78 */	mr r7, r29
/* 804DA130  7F C8 F3 78 */	mr r8, r30
/* 804DA134  7C A5 07 74 */	extsb r5, r5
/* 804DA138  4B FF FD 51 */	bl Player_actor_SetupItem_Base_windmill
/* 804DA13C  2C 03 00 00 */	cmpwi r3, 0
/* 804DA140  40 82 00 8C */	bne lbl_804DA1CC
/* 804DA144  2C 1F 00 33 */	cmpwi r31, 0x33
/* 804DA148  38 00 00 00 */	li r0, 0
/* 804DA14C  41 80 00 10 */	blt lbl_804DA15C
/* 804DA150  2C 1F 00 35 */	cmpwi r31, 0x35
/* 804DA154  40 80 00 08 */	bge lbl_804DA15C
/* 804DA158  38 00 00 01 */	li r0, 1
lbl_804DA15C:
/* 804DA15C  2C 00 00 00 */	cmpwi r0, 0
/* 804DA160  40 82 00 40 */	bne lbl_804DA1A0
/* 804DA164  7F E3 FB 78 */	mr r3, r31
/* 804DA168  4B EF EB 79 */	bl mPlib_Get_BasicItemAnimeIndex_fromItemKind
/* 804DA16C  3C A0 80 64 */	lis r5, lit_2671@ha /* 0x80646C4C@ha */
/* 804DA170  3C 80 80 64 */	lis r4, lit_950@ha /* 0x806468F4@ha */
/* 804DA174  38 C5 6C 4C */	addi r6, r5, lit_2671@l /* 0x80646C4C@l */
/* 804DA178  FC 40 F8 90 */	fmr f2, f31
/* 804DA17C  C0 26 00 00 */	lfs f1, 0(r6)
/* 804DA180  7C 65 1B 78 */	mr r5, r3
/* 804DA184  C0 64 68 F4 */	lfs f3, lit_950@l(r4)  /* 0x806468F4@l */
/* 804DA188  7F 63 DB 78 */	mr r3, r27
/* 804DA18C  7F 84 E3 78 */	mr r4, r28
/* 804DA190  7F A6 EB 78 */	mr r6, r29
/* 804DA194  7F C7 F3 78 */	mr r7, r30
/* 804DA198  4B FF FC 0D */	bl Player_actor_SetupItem_Base0
/* 804DA19C  48 00 00 30 */	b lbl_804DA1CC
lbl_804DA1A0:
/* 804DA1A0  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804DA1A4  3C 60 80 64 */	lis r3, lit_950@ha /* 0x806468F4@ha */
/* 804DA1A8  C0 24 6C 4C */	lfs f1, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804DA1AC  FC 40 F8 90 */	fmr f2, f31
/* 804DA1B0  C0 63 68 F4 */	lfs f3, lit_950@l(r3)  /* 0x806468F4@l */
/* 804DA1B4  7F 63 DB 78 */	mr r3, r27
/* 804DA1B8  7F 84 E3 78 */	mr r4, r28
/* 804DA1BC  7F A6 EB 78 */	mr r6, r29
/* 804DA1C0  7F C7 F3 78 */	mr r7, r30
/* 804DA1C4  38 A0 00 10 */	li r5, 0x10
/* 804DA1C8  4B FF FB DD */	bl Player_actor_SetupItem_Base0
lbl_804DA1CC:
/* 804DA1CC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804DA1D0  39 61 00 20 */	addi r11, r1, 0x20
/* 804DA1D4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804DA1D8  4B BC 0D 41 */	bl func_8009AF18
/* 804DA1DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804DA1E0  7C 08 03 A6 */	mtlr r0
/* 804DA1E4  38 21 00 30 */	addi r1, r1, 0x30
/* 804DA1E8  4E 80 00 20 */	blr 
