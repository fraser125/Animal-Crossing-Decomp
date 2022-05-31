lbl_804A88CC:
/* 804A88CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A88D0  7C 08 02 A6 */	mflr r0
/* 804A88D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A88D8  39 61 00 20 */	addi r11, r1, 0x20
/* 804A88DC  4B BF 25 F9 */	bl func_8009AED4
/* 804A88E0  7C 7D 1B 78 */	mr r29, r3
/* 804A88E4  83 E4 00 00 */	lwz r31, 0(r4)
/* 804A88E8  80 03 01 B8 */	lwz r0, 0x1b8(r3)
/* 804A88EC  2C 00 00 01 */	cmpwi r0, 1
/* 804A88F0  40 82 00 20 */	bne lbl_804A8910
/* 804A88F4  38 7D 01 78 */	addi r3, r29, 0x178
/* 804A88F8  4B F6 39 61 */	bl Matrix_put
/* 804A88FC  38 7D 00 28 */	addi r3, r29, 0x28
/* 804A8900  4B F6 4B BD */	bl Matrix_Position_Zero
/* 804A8904  38 00 00 00 */	li r0, 0
/* 804A8908  90 1D 01 B8 */	stw r0, 0x1b8(r29)
/* 804A890C  48 00 00 30 */	b lbl_804A893C
lbl_804A8910:
/* 804A8910  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 804A8914  38 60 00 00 */	li r3, 0
/* 804A8918  C0 5D 00 2C */	lfs f2, 0x2c(r29)
/* 804A891C  C0 7D 00 30 */	lfs f3, 0x30(r29)
/* 804A8920  4B F6 39 E1 */	bl Matrix_translate
/* 804A8924  3C 80 80 64 */	lis r4, lit_499@ha /* 0x80645DE0@ha */
/* 804A8928  38 60 00 01 */	li r3, 1
/* 804A892C  C0 24 5D E0 */	lfs f1, lit_499@l(r4)  /* 0x80645DE0@l */
/* 804A8930  FC 40 08 90 */	fmr f2, f1
/* 804A8934  FC 60 08 90 */	fmr f3, f1
/* 804A8938  4B F6 3A B5 */	bl Matrix_scale
lbl_804A893C:
/* 804A893C  C0 3D 00 5C */	lfs f1, 0x5c(r29)
/* 804A8940  38 60 00 01 */	li r3, 1
/* 804A8944  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 804A8948  C0 7D 00 64 */	lfs f3, 0x64(r29)
/* 804A894C  4B F6 3A A1 */	bl Matrix_scale
/* 804A8950  7F E3 FB 78 */	mr r3, r31
/* 804A8954  4B F3 C8 55 */	bl _texture_z_light_fog_prim_npc
/* 804A8958  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 804A895C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804A8960  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804A8964  7F E3 FB 78 */	mr r3, r31
/* 804A8968  90 1E 00 00 */	stw r0, 0(r30)
/* 804A896C  7F DD F3 78 */	mr r29, r30
/* 804A8970  3B DE 00 08 */	addi r30, r30, 8
/* 804A8974  4B F6 4A 61 */	bl _Matrix_to_Mtx_new
/* 804A8978  90 7D 00 04 */	stw r3, 4(r29)
/* 804A897C  7F C4 F3 78 */	mr r4, r30
/* 804A8980  3C 00 DE 00 */	lis r0, 0xde00
/* 804A8984  3C 60 80 C3 */	lis r3, main_utiwa1_model@ha /* 0x80C2B600@ha */
/* 804A8988  90 1E 00 00 */	stw r0, 0(r30)
/* 804A898C  38 03 B6 00 */	addi r0, r3, main_utiwa1_model@l /* 0x80C2B600@l */
/* 804A8990  3B DE 00 08 */	addi r30, r30, 8
/* 804A8994  90 04 00 04 */	stw r0, 4(r4)
/* 804A8998  93 DF 02 D0 */	stw r30, 0x2d0(r31)
/* 804A899C  39 61 00 20 */	addi r11, r1, 0x20
/* 804A89A0  4B BF 25 81 */	bl func_8009AF20
/* 804A89A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A89A8  7C 08 03 A6 */	mtlr r0
/* 804A89AC  38 21 00 20 */	addi r1, r1, 0x20
/* 804A89B0  4E 80 00 20 */	blr 
