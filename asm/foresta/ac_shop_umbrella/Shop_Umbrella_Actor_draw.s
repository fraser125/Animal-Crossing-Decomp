lbl_804A0EA0:
/* 804A0EA0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804A0EA4  7C 08 02 A6 */	mflr r0
/* 804A0EA8  90 01 00 64 */	stw r0, 0x64(r1)
/* 804A0EAC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 804A0EB0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 804A0EB4  39 61 00 50 */	addi r11, r1, 0x50
/* 804A0EB8  4B BF 9F F9 */	bl func_8009AEB0
/* 804A0EBC  83 A3 01 78 */	lwz r29, 0x178(r3)
/* 804A0EC0  7C 9A 23 78 */	mr r26, r4
/* 804A0EC4  83 C3 01 74 */	lwz r30, 0x174(r3)
/* 804A0EC8  28 1D 00 00 */	cmplwi r29, 0
/* 804A0ECC  41 82 01 30 */	beq lbl_804A0FFC
/* 804A0ED0  3C A0 DA 38 */	lis r5, 0xDA38 /* 0xDA380003@ha */
/* 804A0ED4  3C 80 80 69 */	lis r4, data_8068E640@ha /* 0x8068E640@ha */
/* 804A0ED8  3C 60 80 69 */	lis r3, aShopUmbrella_xlu_disp_table@ha /* 0x8068E6C0@ha */
/* 804A0EDC  3B 80 00 00 */	li r28, 0
/* 804A0EE0  3B E5 00 03 */	addi r31, r5, 0x0003 /* 0xDA380003@l */
/* 804A0EE4  3A E4 E6 40 */	addi r23, r4, data_8068E640@l /* 0x8068E640@l */
/* 804A0EE8  3B 03 E6 C0 */	addi r24, r3, aShopUmbrella_xlu_disp_table@l /* 0x8068E6C0@l */
/* 804A0EEC  3B 20 00 00 */	li r25, 0
/* 804A0EF0  3E C0 DE 00 */	lis r22, 0xde00
/* 804A0EF4  48 00 01 00 */	b lbl_804A0FF4
lbl_804A0EF8:
/* 804A0EF8  7C 9D CA 14 */	add r4, r29, r25
/* 804A0EFC  80 64 00 00 */	lwz r3, 0(r4)
/* 804A0F00  80 04 00 04 */	lwz r0, 4(r4)
/* 804A0F04  90 61 00 08 */	stw r3, 8(r1)
/* 804A0F08  90 01 00 0C */	stw r0, 0xc(r1)
/* 804A0F0C  80 04 00 08 */	lwz r0, 8(r4)
/* 804A0F10  90 01 00 10 */	stw r0, 0x10(r1)
/* 804A0F14  82 84 00 18 */	lwz r20, 0x18(r4)
/* 804A0F18  C3 FD 00 54 */	lfs f31, 0x54(r29)
/* 804A0F1C  80 7A 00 00 */	lwz r3, 0(r26)
/* 804A0F20  4B F4 41 E9 */	bl _texture_z_light_fog_prim
/* 804A0F24  80 7A 00 00 */	lwz r3, 0(r26)
/* 804A0F28  4B F4 42 31 */	bl _texture_z_light_fog_prim_xlu
/* 804A0F2C  83 7A 00 00 */	lwz r27, 0(r26)
/* 804A0F30  38 7A 1D 90 */	addi r3, r26, 0x1d90
/* 804A0F34  7F 64 DB 78 */	mr r4, r27
/* 804A0F38  4B F1 B2 05 */	bl Global_light_read
/* 804A0F3C  80 9A 1D 90 */	lwz r4, 0x1d90(r26)
/* 804A0F40  7C 75 1B 78 */	mr r21, r3
/* 804A0F44  38 A1 00 08 */	addi r5, r1, 8
/* 804A0F48  4B F1 AF E9 */	bl LightsN_list_check
/* 804A0F4C  80 9A 00 00 */	lwz r4, 0(r26)
/* 804A0F50  7E A3 AB 78 */	mr r3, r21
/* 804A0F54  4B F1 AA A5 */	bl LightsN_disp
/* 804A0F58  C0 21 00 08 */	lfs f1, 8(r1)
/* 804A0F5C  38 60 00 00 */	li r3, 0
/* 804A0F60  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 804A0F64  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 804A0F68  4B F6 B3 99 */	bl Matrix_translate
/* 804A0F6C  FC 20 F8 90 */	fmr f1, f31
/* 804A0F70  38 60 00 01 */	li r3, 1
/* 804A0F74  FC 40 F8 90 */	fmr f2, f31
/* 804A0F78  FC 60 F8 90 */	fmr f3, f31
/* 804A0F7C  4B F6 B4 71 */	bl Matrix_scale
/* 804A0F80  82 BB 02 D0 */	lwz r21, 0x2d0(r27)
/* 804A0F84  38 15 00 08 */	addi r0, r21, 8
/* 804A0F88  90 1B 02 D0 */	stw r0, 0x2d0(r27)
/* 804A0F8C  93 F5 00 00 */	stw r31, 0(r21)
/* 804A0F90  80 7A 00 00 */	lwz r3, 0(r26)
/* 804A0F94  4B F6 C4 41 */	bl _Matrix_to_Mtx_new
/* 804A0F98  90 75 00 04 */	stw r3, 4(r21)
/* 804A0F9C  82 BB 02 E0 */	lwz r21, 0x2e0(r27)
/* 804A0FA0  38 15 00 08 */	addi r0, r21, 8
/* 804A0FA4  90 1B 02 E0 */	stw r0, 0x2e0(r27)
/* 804A0FA8  93 F5 00 00 */	stw r31, 0(r21)
/* 804A0FAC  80 7A 00 00 */	lwz r3, 0(r26)
/* 804A0FB0  4B F6 C4 25 */	bl _Matrix_to_Mtx_new
/* 804A0FB4  90 75 00 04 */	stw r3, 4(r21)
/* 804A0FB8  56 84 10 3A */	slwi r4, r20, 2
/* 804A0FBC  3B 9C 00 01 */	addi r28, r28, 1
/* 804A0FC0  3B 39 00 58 */	addi r25, r25, 0x58
/* 804A0FC4  80 7B 02 D0 */	lwz r3, 0x2d0(r27)
/* 804A0FC8  38 03 00 08 */	addi r0, r3, 8
/* 804A0FCC  90 1B 02 D0 */	stw r0, 0x2d0(r27)
/* 804A0FD0  92 C3 00 00 */	stw r22, 0(r3)
/* 804A0FD4  7C 17 20 2E */	lwzx r0, r23, r4
/* 804A0FD8  90 03 00 04 */	stw r0, 4(r3)
/* 804A0FDC  80 7B 02 E0 */	lwz r3, 0x2e0(r27)
/* 804A0FE0  38 03 00 08 */	addi r0, r3, 8
/* 804A0FE4  90 1B 02 E0 */	stw r0, 0x2e0(r27)
/* 804A0FE8  92 C3 00 00 */	stw r22, 0(r3)
/* 804A0FEC  7C 18 20 2E */	lwzx r0, r24, r4
/* 804A0FF0  90 03 00 04 */	stw r0, 4(r3)
lbl_804A0FF4:
/* 804A0FF4  7C 1C F0 00 */	cmpw r28, r30
/* 804A0FF8  41 80 FF 00 */	blt lbl_804A0EF8
lbl_804A0FFC:
/* 804A0FFC  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 804A1000  39 61 00 50 */	addi r11, r1, 0x50
/* 804A1004  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 804A1008  4B BF 9E F5 */	bl func_8009AEFC
/* 804A100C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804A1010  7C 08 03 A6 */	mtlr r0
/* 804A1014  38 21 00 60 */	addi r1, r1, 0x60
/* 804A1018  4E 80 00 20 */	blr 
