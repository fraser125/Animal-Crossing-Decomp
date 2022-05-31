lbl_804E7AE4:
/* 804E7AE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E7AE8  7C 08 02 A6 */	mflr r0
/* 804E7AEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E7AF0  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 804E7AF4  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 804E7AF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E7AFC  93 C1 00 08 */	stw r30, 8(r1)
/* 804E7B00  7C BF 2B 78 */	mr r31, r5
/* 804E7B04  FF E0 08 90 */	fmr f31, f1
/* 804E7B08  2C 1F 00 09 */	cmpwi r31, 9
/* 804E7B0C  7C 7E 1B 78 */	mr r30, r3
/* 804E7B10  38 00 00 00 */	li r0, 0
/* 804E7B14  41 80 00 10 */	blt lbl_804E7B24
/* 804E7B18  2C 1F 00 0B */	cmpwi r31, 0xb
/* 804E7B1C  40 80 00 08 */	bge lbl_804E7B24
/* 804E7B20  38 00 00 01 */	li r0, 1
lbl_804E7B24:
/* 804E7B24  2C 00 00 00 */	cmpwi r0, 0
/* 804E7B28  40 82 00 54 */	bne lbl_804E7B7C
/* 804E7B2C  7F E3 FB 78 */	mr r3, r31
/* 804E7B30  4B EF 11 B1 */	bl mPlib_Get_BasicItemAnimeIndex_fromItemKind
/* 804E7B34  3C A0 80 64 */	lis r5, lit_2671@ha /* 0x80646C4C@ha */
/* 804E7B38  3C 80 80 64 */	lis r4, lit_950@ha /* 0x806468F4@ha */
/* 804E7B3C  38 C5 6C 4C */	addi r6, r5, lit_2671@l /* 0x80646C4C@l */
/* 804E7B40  FC 40 F8 90 */	fmr f2, f31
/* 804E7B44  C0 26 00 00 */	lfs f1, 0(r6)
/* 804E7B48  7C 65 1B 78 */	mr r5, r3
/* 804E7B4C  C0 64 68 F4 */	lfs f3, lit_950@l(r4)  /* 0x806468F4@l */
/* 804E7B50  7F C3 F3 78 */	mr r3, r30
/* 804E7B54  7F E4 FB 78 */	mr r4, r31
/* 804E7B58  38 C0 00 01 */	li r6, 1
/* 804E7B5C  4B FF 95 51 */	bl Player_actor_LoadOrDestruct_Item
/* 804E7B60  7F E3 FB 78 */	mr r3, r31
/* 804E7B64  4B FF 8F 29 */	bl Player_actor_Get_BasicItemMainIndex_fromItemKind
/* 804E7B68  7C 64 1B 78 */	mr r4, r3
/* 804E7B6C  7F C3 F3 78 */	mr r3, r30
/* 804E7B70  4B FE DB 1D */	bl Player_actor_Set_now_item_main_index
/* 804E7B74  9B FE 11 2B */	stb r31, 0x112b(r30)
/* 804E7B78  48 00 00 3C */	b lbl_804E7BB4
lbl_804E7B7C:
/* 804E7B7C  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804E7B80  3C 60 80 64 */	lis r3, lit_950@ha /* 0x806468F4@ha */
/* 804E7B84  C0 24 6C 4C */	lfs f1, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804E7B88  FC 40 F8 90 */	fmr f2, f31
/* 804E7B8C  C0 63 68 F4 */	lfs f3, lit_950@l(r3)  /* 0x806468F4@l */
/* 804E7B90  7F C3 F3 78 */	mr r3, r30
/* 804E7B94  7F E4 FB 78 */	mr r4, r31
/* 804E7B98  38 A0 00 0A */	li r5, 0xa
/* 804E7B9C  38 C0 00 00 */	li r6, 0
/* 804E7BA0  4B FF 95 0D */	bl Player_actor_LoadOrDestruct_Item
/* 804E7BA4  7F C3 F3 78 */	mr r3, r30
/* 804E7BA8  38 80 00 05 */	li r4, 5
/* 804E7BAC  4B FE DA E1 */	bl Player_actor_Set_now_item_main_index
/* 804E7BB0  9B FE 11 2B */	stb r31, 0x112b(r30)
lbl_804E7BB4:
/* 804E7BB4  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 804E7BB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E7BBC  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 804E7BC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E7BC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E7BC8  7C 08 03 A6 */	mtlr r0
/* 804E7BCC  38 21 00 20 */	addi r1, r1, 0x20
/* 804E7BD0  4E 80 00 20 */	blr 
