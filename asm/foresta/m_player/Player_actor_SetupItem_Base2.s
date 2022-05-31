lbl_804DA01C:
/* 804DA01C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804DA020  7C 08 02 A6 */	mflr r0
/* 804DA024  90 01 00 44 */	stw r0, 0x44(r1)
/* 804DA028  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804DA02C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804DA030  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 804DA034  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 804DA038  39 61 00 20 */	addi r11, r1, 0x20
/* 804DA03C  4B BC 0E 91 */	bl func_8009AECC
/* 804DA040  7C 7B 1B 78 */	mr r27, r3
/* 804DA044  FF C0 08 90 */	fmr f30, f1
/* 804DA048  7C 9C 23 78 */	mr r28, r4
/* 804DA04C  FF E0 10 90 */	fmr f31, f2
/* 804DA050  80 83 0D 08 */	lwz r4, 0xd08(r3)
/* 804DA054  7C BD 2B 78 */	mr r29, r5
/* 804DA058  7C DE 33 78 */	mr r30, r6
/* 804DA05C  7C FF 3B 78 */	mr r31, r7
/* 804DA060  48 00 69 45 */	bl Player_actor_Get_ItemKind
/* 804DA064  7C 60 07 74 */	extsb r0, r3
/* 804DA068  7C 1C 00 00 */	cmpw r28, r0
/* 804DA06C  40 82 00 4C */	bne lbl_804DA0B8
/* 804DA070  7F 83 E3 78 */	mr r3, r28
/* 804DA074  7F A4 EB 78 */	mr r4, r29
/* 804DA078  48 00 72 1D */	bl Player_actor_Check_ItemAnimationToItemKind
/* 804DA07C  2C 03 00 00 */	cmpwi r3, 0
/* 804DA080  41 82 00 38 */	beq lbl_804DA0B8
/* 804DA084  3C 60 80 64 */	lis r3, lit_2671@ha /* 0x80646C4C@ha */
/* 804DA088  FC 40 F0 90 */	fmr f2, f30
/* 804DA08C  C0 23 6C 4C */	lfs f1, lit_2671@l(r3)  /* 0x80646C4C@l */
/* 804DA090  FC 60 F8 90 */	fmr f3, f31
/* 804DA094  7F 63 DB 78 */	mr r3, r27
/* 804DA098  7F 84 E3 78 */	mr r4, r28
/* 804DA09C  7F A5 EB 78 */	mr r5, r29
/* 804DA0A0  7F E6 FB 78 */	mr r6, r31
/* 804DA0A4  48 00 70 09 */	bl Player_actor_LoadOrDestruct_Item
/* 804DA0A8  7F 63 DB 78 */	mr r3, r27
/* 804DA0AC  7F C4 F3 78 */	mr r4, r30
/* 804DA0B0  4B FF B5 DD */	bl Player_actor_Set_now_item_main_index
/* 804DA0B4  9B 9B 11 2B */	stb r28, 0x112b(r27)
lbl_804DA0B8:
/* 804DA0B8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804DA0BC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804DA0C0  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 804DA0C4  39 61 00 20 */	addi r11, r1, 0x20
/* 804DA0C8  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 804DA0CC  4B BC 0E 4D */	bl func_8009AF18
/* 804DA0D0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804DA0D4  7C 08 03 A6 */	mtlr r0
/* 804DA0D8  38 21 00 40 */	addi r1, r1, 0x40
/* 804DA0DC  4E 80 00 20 */	blr 
