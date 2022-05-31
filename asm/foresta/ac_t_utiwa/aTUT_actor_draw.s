lbl_804AA55C:
/* 804AA55C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804AA560  7C 08 02 A6 */	mflr r0
/* 804AA564  90 01 00 24 */	stw r0, 0x24(r1)
/* 804AA568  39 61 00 20 */	addi r11, r1, 0x20
/* 804AA56C  4B BF 09 69 */	bl func_8009AED4
/* 804AA570  7C 7D 1B 78 */	mr r29, r3
/* 804AA574  83 E4 00 00 */	lwz r31, 0(r4)
/* 804AA578  80 03 01 B8 */	lwz r0, 0x1b8(r3)
/* 804AA57C  2C 00 00 01 */	cmpwi r0, 1
/* 804AA580  40 82 00 20 */	bne lbl_804AA5A0
/* 804AA584  38 7D 01 78 */	addi r3, r29, 0x178
/* 804AA588  4B F6 1C D1 */	bl Matrix_put
/* 804AA58C  38 7D 00 28 */	addi r3, r29, 0x28
/* 804AA590  4B F6 2F 2D */	bl Matrix_Position_Zero
/* 804AA594  38 00 00 00 */	li r0, 0
/* 804AA598  90 1D 01 B8 */	stw r0, 0x1b8(r29)
/* 804AA59C  48 00 00 30 */	b lbl_804AA5CC
lbl_804AA5A0:
/* 804AA5A0  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 804AA5A4  38 60 00 00 */	li r3, 0
/* 804AA5A8  C0 5D 00 2C */	lfs f2, 0x2c(r29)
/* 804AA5AC  C0 7D 00 30 */	lfs f3, 0x30(r29)
/* 804AA5B0  4B F6 1D 51 */	bl Matrix_translate
/* 804AA5B4  3C 80 80 64 */	lis r4, lit_495@ha /* 0x80645E48@ha */
/* 804AA5B8  38 60 00 01 */	li r3, 1
/* 804AA5BC  C0 24 5E 48 */	lfs f1, lit_495@l(r4)  /* 0x80645E48@l */
/* 804AA5C0  FC 40 08 90 */	fmr f2, f1
/* 804AA5C4  FC 60 08 90 */	fmr f3, f1
/* 804AA5C8  4B F6 1E 25 */	bl Matrix_scale
lbl_804AA5CC:
/* 804AA5CC  C0 3D 00 5C */	lfs f1, 0x5c(r29)
/* 804AA5D0  38 60 00 01 */	li r3, 1
/* 804AA5D4  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 804AA5D8  C0 7D 00 64 */	lfs f3, 0x64(r29)
/* 804AA5DC  4B F6 1E 11 */	bl Matrix_scale
/* 804AA5E0  7F E3 FB 78 */	mr r3, r31
/* 804AA5E4  4B F3 AB C5 */	bl _texture_z_light_fog_prim_npc
/* 804AA5E8  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 804AA5EC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804AA5F0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804AA5F4  7F E3 FB 78 */	mr r3, r31
/* 804AA5F8  90 1E 00 00 */	stw r0, 0(r30)
/* 804AA5FC  7F DD F3 78 */	mr r29, r30
/* 804AA600  3B DE 00 08 */	addi r30, r30, 8
/* 804AA604  4B F6 2D D1 */	bl _Matrix_to_Mtx_new
/* 804AA608  90 7D 00 04 */	stw r3, 4(r29)
/* 804AA60C  7F C4 F3 78 */	mr r4, r30
/* 804AA610  3C 00 DE 00 */	lis r0, 0xde00
/* 804AA614  3C 60 80 C3 */	lis r3, main_utiwa1_model@ha /* 0x80C2B600@ha */
/* 804AA618  90 1E 00 00 */	stw r0, 0(r30)
/* 804AA61C  38 03 B6 00 */	addi r0, r3, main_utiwa1_model@l /* 0x80C2B600@l */
/* 804AA620  3B DE 00 08 */	addi r30, r30, 8
/* 804AA624  90 04 00 04 */	stw r0, 4(r4)
/* 804AA628  93 DF 02 D0 */	stw r30, 0x2d0(r31)
/* 804AA62C  39 61 00 20 */	addi r11, r1, 0x20
/* 804AA630  4B BF 08 F1 */	bl func_8009AF20
/* 804AA634  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804AA638  7C 08 03 A6 */	mtlr r0
/* 804AA63C  38 21 00 20 */	addi r1, r1, 0x20
/* 804AA640  4E 80 00 20 */	blr 
