lbl_804A8284:
/* 804A8284  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A8288  7C 08 02 A6 */	mflr r0
/* 804A828C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A8290  39 61 00 20 */	addi r11, r1, 0x20
/* 804A8294  4B BF 2C 41 */	bl func_8009AED4
/* 804A8298  7C 7D 1B 78 */	mr r29, r3
/* 804A829C  83 E4 00 00 */	lwz r31, 0(r4)
/* 804A82A0  80 03 01 B8 */	lwz r0, 0x1b8(r3)
/* 804A82A4  2C 00 00 01 */	cmpwi r0, 1
/* 804A82A8  40 82 00 20 */	bne lbl_804A82C8
/* 804A82AC  38 7D 01 78 */	addi r3, r29, 0x178
/* 804A82B0  4B F6 3F A9 */	bl Matrix_put
/* 804A82B4  38 7D 00 28 */	addi r3, r29, 0x28
/* 804A82B8  4B F6 52 05 */	bl Matrix_Position_Zero
/* 804A82BC  38 00 00 00 */	li r0, 0
/* 804A82C0  90 1D 01 B8 */	stw r0, 0x1b8(r29)
/* 804A82C4  48 00 00 30 */	b lbl_804A82F4
lbl_804A82C8:
/* 804A82C8  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 804A82CC  38 60 00 00 */	li r3, 0
/* 804A82D0  C0 5D 00 2C */	lfs f2, 0x2c(r29)
/* 804A82D4  C0 7D 00 30 */	lfs f3, 0x30(r29)
/* 804A82D8  4B F6 40 29 */	bl Matrix_translate
/* 804A82DC  3C 80 80 64 */	lis r4, lit_495@ha /* 0x80645DC0@ha */
/* 804A82E0  38 60 00 01 */	li r3, 1
/* 804A82E4  C0 24 5D C0 */	lfs f1, lit_495@l(r4)  /* 0x80645DC0@l */
/* 804A82E8  FC 40 08 90 */	fmr f2, f1
/* 804A82EC  FC 60 08 90 */	fmr f3, f1
/* 804A82F0  4B F6 40 FD */	bl Matrix_scale
lbl_804A82F4:
/* 804A82F4  C0 3D 00 5C */	lfs f1, 0x5c(r29)
/* 804A82F8  38 60 00 01 */	li r3, 1
/* 804A82FC  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 804A8300  C0 7D 00 64 */	lfs f3, 0x64(r29)
/* 804A8304  4B F6 40 E9 */	bl Matrix_scale
/* 804A8308  7F E3 FB 78 */	mr r3, r31
/* 804A830C  4B F3 CE 9D */	bl _texture_z_light_fog_prim_npc
/* 804A8310  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 804A8314  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804A8318  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804A831C  7F E3 FB 78 */	mr r3, r31
/* 804A8320  90 1E 00 00 */	stw r0, 0(r30)
/* 804A8324  7F DD F3 78 */	mr r29, r30
/* 804A8328  3B DE 00 08 */	addi r30, r30, 8
/* 804A832C  4B F6 50 A9 */	bl _Matrix_to_Mtx_new
/* 804A8330  90 7D 00 04 */	stw r3, 4(r29)
/* 804A8334  7F C4 F3 78 */	mr r4, r30
/* 804A8338  3C 00 DE 00 */	lis r0, 0xde00
/* 804A833C  3C 60 80 C1 */	lis r3, tol_cracker_1T_model@ha /* 0x80C10CA0@ha */
/* 804A8340  90 1E 00 00 */	stw r0, 0(r30)
/* 804A8344  38 03 0C A0 */	addi r0, r3, tol_cracker_1T_model@l /* 0x80C10CA0@l */
/* 804A8348  3B DE 00 08 */	addi r30, r30, 8
/* 804A834C  90 04 00 04 */	stw r0, 4(r4)
/* 804A8350  93 DF 02 D0 */	stw r30, 0x2d0(r31)
/* 804A8354  39 61 00 20 */	addi r11, r1, 0x20
/* 804A8358  4B BF 2B C9 */	bl func_8009AF20
/* 804A835C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A8360  7C 08 03 A6 */	mtlr r0
/* 804A8364  38 21 00 20 */	addi r1, r1, 0x20
/* 804A8368  4E 80 00 20 */	blr 
