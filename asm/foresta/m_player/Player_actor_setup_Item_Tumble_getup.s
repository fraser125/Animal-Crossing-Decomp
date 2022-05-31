lbl_804E8158:
/* 804E8158  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804E815C  7C 08 02 A6 */	mflr r0
/* 804E8160  90 01 00 44 */	stw r0, 0x44(r1)
/* 804E8164  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804E8168  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804E816C  39 61 00 30 */	addi r11, r1, 0x30
/* 804E8170  4B BB 2D 65 */	bl func_8009AED4
/* 804E8174  7C BF 2B 78 */	mr r31, r5
/* 804E8178  7C 7E 1B 78 */	mr r30, r3
/* 804E817C  FF E0 08 90 */	fmr f31, f1
/* 804E8180  2C 1F 00 37 */	cmpwi r31, 0x37
/* 804E8184  80 63 11 74 */	lwz r3, 0x1174(r3)
/* 804E8188  7C 9D 23 78 */	mr r29, r4
/* 804E818C  38 00 00 00 */	li r0, 0
/* 804E8190  41 80 00 10 */	blt lbl_804E81A0
/* 804E8194  2C 1F 00 3F */	cmpwi r31, 0x3f
/* 804E8198  40 80 00 08 */	bge lbl_804E81A0
/* 804E819C  38 00 00 01 */	li r0, 1
lbl_804E81A0:
/* 804E81A0  2C 00 00 00 */	cmpwi r0, 0
/* 804E81A4  41 82 00 90 */	beq lbl_804E8234
/* 804E81A8  28 03 00 00 */	cmplwi r3, 0
/* 804E81AC  41 82 00 88 */	beq lbl_804E8234
/* 804E81B0  7F E3 FB 78 */	mr r3, r31
/* 804E81B4  4B EF 1B C9 */	bl mPlib_Get_ItemKindTOBalloonShapeType
/* 804E81B8  90 7E 0D 18 */	stw r3, 0xd18(r30)
/* 804E81BC  3B E0 FF FF */	li r31, -1
/* 804E81C0  38 60 00 00 */	li r3, 0
/* 804E81C4  4B FF 86 ED */	bl func_804E08B0
/* 804E81C8  A8 DE 11 90 */	lha r6, 0x1190(r30)
/* 804E81CC  3C 60 80 65 */	lis r3, lit_8275@ha /* 0x8064843C@ha */
/* 804E81D0  A8 9E 11 7A */	lha r4, 0x117a(r30)
/* 804E81D4  38 00 00 00 */	li r0, 0
/* 804E81D8  A8 BE 11 78 */	lha r5, 0x1178(r30)
/* 804E81DC  39 01 00 10 */	addi r8, r1, 0x10
/* 804E81E0  7C 84 32 14 */	add r4, r4, r6
/* 804E81E4  C0 43 84 3C */	lfs f2, lit_8275@l(r3)  /* 0x8064843C@l */
/* 804E81E8  7C 65 22 14 */	add r3, r5, r4
/* 804E81EC  C0 3E 0A 28 */	lfs f1, 0xa28(r30)
/* 804E81F0  7F A4 EB 78 */	mr r4, r29
/* 804E81F4  38 C1 00 08 */	addi r6, r1, 8
/* 804E81F8  B0 61 00 08 */	sth r3, 8(r1)
/* 804E81FC  A8 7E 00 DE */	lha r3, 0xde(r30)
/* 804E8200  B0 61 00 0A */	sth r3, 0xa(r1)
/* 804E8204  B0 01 00 0C */	sth r0, 0xc(r1)
/* 804E8208  80 7E 10 44 */	lwz r3, 0x1044(r30)
/* 804E820C  80 1E 10 48 */	lwz r0, 0x1048(r30)
/* 804E8210  90 61 00 10 */	stw r3, 0x10(r1)
/* 804E8214  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E8218  80 1E 10 4C */	lwz r0, 0x104c(r30)
/* 804E821C  90 01 00 18 */	stw r0, 0x18(r1)
/* 804E8220  80 7E 11 74 */	lwz r3, 0x1174(r30)
/* 804E8224  80 BE 0D 18 */	lwz r5, 0xd18(r30)
/* 804E8228  A8 FE 11 7E */	lha r7, 0x117e(r30)
/* 804E822C  4B F2 BB 55 */	bl Ac_Balloon_request_fly
/* 804E8230  48 00 00 0C */	b lbl_804E823C
lbl_804E8234:
/* 804E8234  38 00 FF FF */	li r0, -1
/* 804E8238  90 1E 0D 18 */	stw r0, 0xd18(r30)
lbl_804E823C:
/* 804E823C  2C 1F 00 09 */	cmpwi r31, 9
/* 804E8240  38 00 00 00 */	li r0, 0
/* 804E8244  41 80 00 10 */	blt lbl_804E8254
/* 804E8248  2C 1F 00 0B */	cmpwi r31, 0xb
/* 804E824C  40 80 00 08 */	bge lbl_804E8254
/* 804E8250  38 00 00 01 */	li r0, 1
lbl_804E8254:
/* 804E8254  2C 00 00 00 */	cmpwi r0, 0
/* 804E8258  40 82 00 54 */	bne lbl_804E82AC
/* 804E825C  7F E3 FB 78 */	mr r3, r31
/* 804E8260  4B EF 0A 81 */	bl mPlib_Get_BasicItemAnimeIndex_fromItemKind
/* 804E8264  3C A0 80 64 */	lis r5, lit_2671@ha /* 0x80646C4C@ha */
/* 804E8268  3C 80 80 64 */	lis r4, lit_950@ha /* 0x806468F4@ha */
/* 804E826C  38 C5 6C 4C */	addi r6, r5, lit_2671@l /* 0x80646C4C@l */
/* 804E8270  FC 40 F8 90 */	fmr f2, f31
/* 804E8274  C0 26 00 00 */	lfs f1, 0(r6)
/* 804E8278  7C 65 1B 78 */	mr r5, r3
/* 804E827C  C0 64 68 F4 */	lfs f3, lit_950@l(r4)  /* 0x806468F4@l */
/* 804E8280  7F C3 F3 78 */	mr r3, r30
/* 804E8284  7F E4 FB 78 */	mr r4, r31
/* 804E8288  38 C0 00 01 */	li r6, 1
/* 804E828C  4B FF 8E 21 */	bl Player_actor_LoadOrDestruct_Item
/* 804E8290  7F E3 FB 78 */	mr r3, r31
/* 804E8294  4B FF 87 F9 */	bl Player_actor_Get_BasicItemMainIndex_fromItemKind
/* 804E8298  7C 64 1B 78 */	mr r4, r3
/* 804E829C  7F C3 F3 78 */	mr r3, r30
/* 804E82A0  4B FE D3 ED */	bl Player_actor_Set_now_item_main_index
/* 804E82A4  9B FE 11 2B */	stb r31, 0x112b(r30)
/* 804E82A8  48 00 00 3C */	b lbl_804E82E4
lbl_804E82AC:
/* 804E82AC  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804E82B0  3C 60 80 64 */	lis r3, lit_950@ha /* 0x806468F4@ha */
/* 804E82B4  C0 24 6C 4C */	lfs f1, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804E82B8  FC 40 F8 90 */	fmr f2, f31
/* 804E82BC  C0 63 68 F4 */	lfs f3, lit_950@l(r3)  /* 0x806468F4@l */
/* 804E82C0  7F C3 F3 78 */	mr r3, r30
/* 804E82C4  7F E4 FB 78 */	mr r4, r31
/* 804E82C8  38 A0 00 09 */	li r5, 9
/* 804E82CC  38 C0 00 00 */	li r6, 0
/* 804E82D0  4B FF 8D DD */	bl Player_actor_LoadOrDestruct_Item
/* 804E82D4  7F C3 F3 78 */	mr r3, r30
/* 804E82D8  38 80 00 06 */	li r4, 6
/* 804E82DC  4B FE D3 B1 */	bl Player_actor_Set_now_item_main_index
/* 804E82E0  9B FE 11 2B */	stb r31, 0x112b(r30)
lbl_804E82E4:
/* 804E82E4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804E82E8  39 61 00 30 */	addi r11, r1, 0x30
/* 804E82EC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804E82F0  4B BB 2C 31 */	bl func_8009AF20
/* 804E82F4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804E82F8  7C 08 03 A6 */	mtlr r0
/* 804E82FC  38 21 00 40 */	addi r1, r1, 0x40
/* 804E8300  4E 80 00 20 */	blr 
