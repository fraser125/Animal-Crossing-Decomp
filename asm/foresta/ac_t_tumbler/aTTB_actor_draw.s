lbl_804A9D54:
/* 804A9D54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A9D58  7C 08 02 A6 */	mflr r0
/* 804A9D5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A9D60  39 61 00 20 */	addi r11, r1, 0x20
/* 804A9D64  4B BF 11 71 */	bl func_8009AED4
/* 804A9D68  7C 7D 1B 78 */	mr r29, r3
/* 804A9D6C  83 E4 00 00 */	lwz r31, 0(r4)
/* 804A9D70  80 03 01 B8 */	lwz r0, 0x1b8(r3)
/* 804A9D74  2C 00 00 01 */	cmpwi r0, 1
/* 804A9D78  40 82 00 20 */	bne lbl_804A9D98
/* 804A9D7C  38 7D 01 78 */	addi r3, r29, 0x178
/* 804A9D80  4B F6 24 D9 */	bl Matrix_put
/* 804A9D84  38 7D 00 28 */	addi r3, r29, 0x28
/* 804A9D88  4B F6 37 35 */	bl Matrix_Position_Zero
/* 804A9D8C  38 00 00 00 */	li r0, 0
/* 804A9D90  90 1D 01 B8 */	stw r0, 0x1b8(r29)
/* 804A9D94  48 00 00 30 */	b lbl_804A9DC4
lbl_804A9D98:
/* 804A9D98  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 804A9D9C  38 60 00 00 */	li r3, 0
/* 804A9DA0  C0 5D 00 2C */	lfs f2, 0x2c(r29)
/* 804A9DA4  C0 7D 00 30 */	lfs f3, 0x30(r29)
/* 804A9DA8  4B F6 25 59 */	bl Matrix_translate
/* 804A9DAC  3C 80 80 64 */	lis r4, lit_495@ha /* 0x80645E28@ha */
/* 804A9DB0  38 60 00 01 */	li r3, 1
/* 804A9DB4  C0 24 5E 28 */	lfs f1, lit_495@l(r4)  /* 0x80645E28@l */
/* 804A9DB8  FC 40 08 90 */	fmr f2, f1
/* 804A9DBC  FC 60 08 90 */	fmr f3, f1
/* 804A9DC0  4B F6 26 2D */	bl Matrix_scale
lbl_804A9DC4:
/* 804A9DC4  C0 3D 00 5C */	lfs f1, 0x5c(r29)
/* 804A9DC8  38 60 00 01 */	li r3, 1
/* 804A9DCC  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 804A9DD0  C0 7D 00 64 */	lfs f3, 0x64(r29)
/* 804A9DD4  4B F6 26 19 */	bl Matrix_scale
/* 804A9DD8  7F E3 FB 78 */	mr r3, r31
/* 804A9DDC  4B F3 B3 CD */	bl _texture_z_light_fog_prim_npc
/* 804A9DE0  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 804A9DE4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804A9DE8  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804A9DEC  7F E3 FB 78 */	mr r3, r31
/* 804A9DF0  90 1E 00 00 */	stw r0, 0(r30)
/* 804A9DF4  7F DD F3 78 */	mr r29, r30
/* 804A9DF8  3B DE 00 08 */	addi r30, r30, 8
/* 804A9DFC  4B F6 35 D9 */	bl _Matrix_to_Mtx_new
/* 804A9E00  90 7D 00 04 */	stw r3, 4(r29)
/* 804A9E04  7F C4 F3 78 */	mr r4, r30
/* 804A9E08  3C 00 DE 00 */	lis r0, 0xde00
/* 804A9E0C  3C 60 80 C1 */	lis r3, tol_kamicup_1T_model@ha /* 0x80C131D0@ha */
/* 804A9E10  90 1E 00 00 */	stw r0, 0(r30)
/* 804A9E14  38 03 31 D0 */	addi r0, r3, tol_kamicup_1T_model@l /* 0x80C131D0@l */
/* 804A9E18  3B DE 00 08 */	addi r30, r30, 8
/* 804A9E1C  90 04 00 04 */	stw r0, 4(r4)
/* 804A9E20  93 DF 02 D0 */	stw r30, 0x2d0(r31)
/* 804A9E24  39 61 00 20 */	addi r11, r1, 0x20
/* 804A9E28  4B BF 10 F9 */	bl func_8009AF20
/* 804A9E2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A9E30  7C 08 03 A6 */	mtlr r0
/* 804A9E34  38 21 00 20 */	addi r1, r1, 0x20
/* 804A9E38  4E 80 00 20 */	blr 
