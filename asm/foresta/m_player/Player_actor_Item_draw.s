lbl_804E3D8C:
/* 804E3D8C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E3D90  7C 08 02 A6 */	mflr r0
/* 804E3D94  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E3D98  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804E3D9C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804E3DA0  39 61 00 20 */	addi r11, r1, 0x20
/* 804E3DA4  4B BB 71 25 */	bl func_8009AEC8
/* 804E3DA8  7C 7F 1B 78 */	mr r31, r3
/* 804E3DAC  7C 9A 23 78 */	mr r26, r4
/* 804E3DB0  80 03 0D 04 */	lwz r0, 0xd04(r3)
/* 804E3DB4  2C 00 00 00 */	cmpwi r0, 0
/* 804E3DB8  41 80 01 34 */	blt lbl_804E3EEC
/* 804E3DBC  2C 00 00 18 */	cmpwi r0, 0x18
/* 804E3DC0  40 80 01 2C */	bge lbl_804E3EEC
/* 804E3DC4  2C 00 00 00 */	cmpwi r0, 0
/* 804E3DC8  83 7A 00 00 */	lwz r27, 0(r26)
/* 804E3DCC  40 82 00 84 */	bne lbl_804E3E50
/* 804E3DD0  7F 43 D3 78 */	mr r3, r26
/* 804E3DD4  4B EF 58 9D */	bl mPlib_get_player_actor_main_index
/* 804E3DD8  2C 03 00 54 */	cmpwi r3, 0x54
/* 804E3DDC  40 82 00 64 */	bne lbl_804E3E40
/* 804E3DE0  7F 63 DB 78 */	mr r3, r27
/* 804E3DE4  4B F0 13 25 */	bl _texture_z_light_fog_prim
/* 804E3DE8  4B F2 83 ED */	bl Matrix_push
/* 804E3DEC  38 7F 10 68 */	addi r3, r31, 0x1068
/* 804E3DF0  4B F2 84 69 */	bl Matrix_put
/* 804E3DF4  80 7A 00 00 */	lwz r3, 0(r26)
/* 804E3DF8  4B F2 95 DD */	bl _Matrix_to_Mtx_new
/* 804E3DFC  28 03 00 00 */	cmplwi r3, 0
/* 804E3E00  41 82 00 40 */	beq lbl_804E3E40
/* 804E3E04  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 804E3E08  80 DB 02 D0 */	lwz r6, 0x2d0(r27)
/* 804E3E0C  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 804E3E10  3C 80 80 64 */	lis r4, data_806464E4@ha /* 0x806464E4@ha */
/* 804E3E14  90 06 00 00 */	stw r0, 0(r6)
/* 804E3E18  3C A0 DE 00 */	lis r5, 0xde00
/* 804E3E1C  38 04 64 E4 */	addi r0, r4, data_806464E4@l /* 0x806464E4@l */
/* 804E3E20  90 66 00 04 */	stw r3, 4(r6)
/* 804E3E24  38 C6 00 08 */	addi r6, r6, 8
/* 804E3E28  7C C3 33 78 */	mr r3, r6
/* 804E3E2C  90 A6 00 00 */	stw r5, 0(r6)
/* 804E3E30  38 C6 00 08 */	addi r6, r6, 8
/* 804E3E34  90 03 00 04 */	stw r0, 4(r3)
/* 804E3E38  90 DB 02 D0 */	stw r6, 0x2d0(r27)
/* 804E3E3C  4B F2 83 D9 */	bl Matrix_pull
lbl_804E3E40:
/* 804E3E40  38 00 00 00 */	li r0, 0
/* 804E3E44  90 1F 0F 4C */	stw r0, 0xf4c(r31)
/* 804E3E48  90 1F 11 70 */	stw r0, 0x1170(r31)
/* 804E3E4C  48 00 00 A0 */	b lbl_804E3EEC
lbl_804E3E50:
/* 804E3E50  3C 60 80 65 */	lis r3, proc_7023@ha /* 0x806481D4@ha */
/* 804E3E54  54 1C 10 3A */	slwi r28, r0, 2
/* 804E3E58  3B A3 81 D4 */	addi r29, r3, proc_7023@l /* 0x806481D4@l */
/* 804E3E5C  7C 1D E0 2E */	lwzx r0, r29, r28
/* 804E3E60  28 00 00 00 */	cmplwi r0, 0
/* 804E3E64  41 82 00 88 */	beq lbl_804E3EEC
/* 804E3E68  C3 FF 0D F8 */	lfs f31, 0xdf8(r31)
/* 804E3E6C  4B F2 83 69 */	bl Matrix_push
/* 804E3E70  38 7F 10 68 */	addi r3, r31, 0x1068
/* 804E3E74  4B F2 83 E5 */	bl Matrix_put
/* 804E3E78  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804E3E7C  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 804E3E80  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 804E3E84  41 82 00 18 */	beq lbl_804E3E9C
/* 804E3E88  FC 20 F8 90 */	fmr f1, f31
/* 804E3E8C  38 60 00 01 */	li r3, 1
/* 804E3E90  FC 40 F8 90 */	fmr f2, f31
/* 804E3E94  FC 60 F8 90 */	fmr f3, f31
/* 804E3E98  4B F2 85 55 */	bl Matrix_scale
lbl_804E3E9C:
/* 804E3E9C  80 7A 00 00 */	lwz r3, 0(r26)
/* 804E3EA0  4B F2 95 35 */	bl _Matrix_to_Mtx_new
/* 804E3EA4  7C 7E 1B 79 */	or. r30, r3, r3
/* 804E3EA8  41 82 00 40 */	beq lbl_804E3EE8
/* 804E3EAC  7F 63 DB 78 */	mr r3, r27
/* 804E3EB0  4B F0 12 59 */	bl _texture_z_light_fog_prim
/* 804E3EB4  80 BB 02 D0 */	lwz r5, 0x2d0(r27)
/* 804E3EB8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804E3EBC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804E3EC0  7D 9D E0 2E */	lwzx r12, r29, r28
/* 804E3EC4  7C A6 2B 78 */	mr r6, r5
/* 804E3EC8  38 A5 00 08 */	addi r5, r5, 8
/* 804E3ECC  90 06 00 00 */	stw r0, 0(r6)
/* 804E3ED0  7F E3 FB 78 */	mr r3, r31
/* 804E3ED4  7F 44 D3 78 */	mr r4, r26
/* 804E3ED8  93 C6 00 04 */	stw r30, 4(r6)
/* 804E3EDC  90 BB 02 D0 */	stw r5, 0x2d0(r27)
/* 804E3EE0  7D 89 03 A6 */	mtctr r12
/* 804E3EE4  4E 80 04 21 */	bctrl 
lbl_804E3EE8:
/* 804E3EE8  4B F2 83 2D */	bl Matrix_pull
lbl_804E3EEC:
/* 804E3EEC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804E3EF0  39 61 00 20 */	addi r11, r1, 0x20
/* 804E3EF4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804E3EF8  4B BB 70 1D */	bl func_8009AF14
/* 804E3EFC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E3F00  7C 08 03 A6 */	mtlr r0
/* 804E3F04  38 21 00 30 */	addi r1, r1, 0x30
/* 804E3F08  4E 80 00 20 */	blr 
