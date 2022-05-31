lbl_805959CC:
/* 805959CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805959D0  7C 08 02 A6 */	mflr r0
/* 805959D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 805959D8  39 61 00 30 */	addi r11, r1, 0x30
/* 805959DC  4B B0 54 ED */	bl func_8009AEC8
/* 805959E0  7C 9B 23 78 */	mr r27, r4
/* 805959E4  3B C3 01 74 */	addi r30, r3, 0x174
/* 805959E8  83 E4 00 00 */	lwz r31, 0(r4)
/* 805959EC  4B E7 67 E9 */	bl Matrix_push
/* 805959F0  7F E3 FB 78 */	mr r3, r31
/* 805959F4  4B E4 F7 65 */	bl _texture_z_light_fog_prim_xlu
/* 805959F8  3B A0 00 00 */	li r29, 0
lbl_805959FC:
/* 805959FC  C0 1E 01 E0 */	lfs f0, 0x1e0(r30)
/* 80595A00  80 1E 01 CC */	lwz r0, 0x1cc(r30)
/* 80595A04  FC 00 00 1E */	fctiwz f0, f0
/* 80595A08  2C 00 00 01 */	cmpwi r0, 1
/* 80595A0C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80595A10  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80595A14  54 9C 08 3C */	slwi r28, r4, 1
/* 80595A18  40 82 01 48 */	bne lbl_80595B60
/* 80595A1C  88 1E 00 B5 */	lbz r0, 0xb5(r30)
/* 80595A20  28 00 00 00 */	cmplwi r0, 0
/* 80595A24  41 82 01 3C */	beq lbl_80595B60
/* 80595A28  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 80595A2C  54 00 06 74 */	rlwinm r0, r0, 0, 0x19, 0x1a
/* 80595A30  28 00 00 60 */	cmplwi r0, 0x60
/* 80595A34  40 82 01 2C */	bne lbl_80595B60
/* 80595A38  80 1E 01 B8 */	lwz r0, 0x1b8(r30)
/* 80595A3C  2C 00 00 01 */	cmpwi r0, 1
/* 80595A40  40 82 00 14 */	bne lbl_80595A54
/* 80595A44  80 1E 01 D0 */	lwz r0, 0x1d0(r30)
/* 80595A48  2C 00 00 28 */	cmpwi r0, 0x28
/* 80595A4C  41 82 00 08 */	beq lbl_80595A54
/* 80595A50  3B 80 00 00 */	li r28, 0
lbl_80595A54:
/* 80595A54  80 1E 01 D0 */	lwz r0, 0x1d0(r30)
/* 80595A58  2C 00 00 1B */	cmpwi r0, 0x1b
/* 80595A5C  41 82 00 08 */	beq lbl_80595A64
/* 80595A60  48 00 00 20 */	b lbl_80595A80
lbl_80595A64:
/* 80595A64  80 7E 02 64 */	lwz r3, 0x264(r30)
/* 80595A68  7C 9C 23 78 */	mr r28, r4
/* 80595A6C  80 1E 02 5C */	lwz r0, 0x25c(r30)
/* 80595A70  7F 43 00 51 */	subf. r26, r3, r0
/* 80595A74  40 80 00 48 */	bge lbl_80595ABC
/* 80595A78  3B 40 00 00 */	li r26, 0
/* 80595A7C  48 00 00 40 */	b lbl_80595ABC
lbl_80595A80:
/* 80595A80  83 5E 02 5C */	lwz r26, 0x25c(r30)
/* 80595A84  4B E4 66 35 */	bl mPlib_Get_item_net_catch_label
/* 80595A88  7C 03 F0 40 */	cmplw r3, r30
/* 80595A8C  41 82 00 30 */	beq lbl_80595ABC
/* 80595A90  4B DE 93 C5 */	bl Camera2_CheckCullingMode
/* 80595A94  2C 03 00 00 */	cmpwi r3, 0
/* 80595A98  41 82 00 24 */	beq lbl_80595ABC
/* 80595A9C  3C 60 80 65 */	lis r3, lit_956@ha /* 0x80649D7C@ha */
/* 80595AA0  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80595AA4  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 80595AA8  C0 63 9D 7C */	lfs f3, lit_956@l(r3)  /* 0x80649D7C@l */
/* 80595AAC  4B DE 95 05 */	bl Camera2_CheckEnterCullingArea
/* 80595AB0  2C 03 00 00 */	cmpwi r3, 0
/* 80595AB4  41 82 00 08 */	beq lbl_80595ABC
/* 80595AB8  3B 40 00 00 */	li r26, 0
lbl_80595ABC:
/* 80595ABC  7F E3 FB 78 */	mr r3, r31
/* 80595AC0  7F C4 F3 78 */	mr r4, r30
/* 80595AC4  7F 65 DB 78 */	mr r5, r27
/* 80595AC8  7F 86 E3 78 */	mr r6, r28
/* 80595ACC  7F 47 D3 78 */	mr r7, r26
/* 80595AD0  4B FF FC 29 */	bl func_805956F8
/* 80595AD4  80 1E 01 D0 */	lwz r0, 0x1d0(r30)
/* 80595AD8  2C 00 00 28 */	cmpwi r0, 0x28
/* 80595ADC  41 82 00 64 */	beq lbl_80595B40
/* 80595AE0  40 80 00 48 */	bge lbl_80595B28
/* 80595AE4  2C 00 00 1B */	cmpwi r0, 0x1b
/* 80595AE8  41 82 00 08 */	beq lbl_80595AF0
/* 80595AEC  48 00 00 3C */	b lbl_80595B28
lbl_80595AF0:
/* 80595AF0  C0 1E 01 E4 */	lfs f0, 0x1e4(r30)
/* 80595AF4  80 7E 02 64 */	lwz r3, 0x264(r30)
/* 80595AF8  FC 00 00 1E */	fctiwz f0, f0
/* 80595AFC  80 1E 02 60 */	lwz r0, 0x260(r30)
/* 80595B00  7C E3 00 51 */	subf. r7, r3, r0
/* 80595B04  D8 01 00 08 */	stfd f0, 8(r1)
/* 80595B08  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 80595B0C  40 80 00 08 */	bge lbl_80595B14
/* 80595B10  38 E0 00 00 */	li r7, 0
lbl_80595B14:
/* 80595B14  7F E3 FB 78 */	mr r3, r31
/* 80595B18  7F C4 F3 78 */	mr r4, r30
/* 80595B1C  7F 65 DB 78 */	mr r5, r27
/* 80595B20  4B FF FB D9 */	bl func_805956F8
/* 80595B24  48 00 00 1C */	b lbl_80595B40
lbl_80595B28:
/* 80595B28  7F E3 FB 78 */	mr r3, r31
/* 80595B2C  7F C4 F3 78 */	mr r4, r30
/* 80595B30  7F 65 DB 78 */	mr r5, r27
/* 80595B34  7F 47 D3 78 */	mr r7, r26
/* 80595B38  38 DC 00 01 */	addi r6, r28, 1
/* 80595B3C  4B FF FB BD */	bl func_805956F8
lbl_80595B40:
/* 80595B40  3C 80 80 65 */	lis r4, data_80649D14@ha /* 0x80649D14@ha */
/* 80595B44  7F C3 F3 78 */	mr r3, r30
/* 80595B48  38 A4 9D 14 */	addi r5, r4, data_80649D14@l /* 0x80649D14@l */
/* 80595B4C  7F 64 DB 78 */	mr r4, r27
/* 80595B50  C0 25 00 00 */	lfs f1, 0(r5)
/* 80595B54  4B DE 13 49 */	bl mAc_NormalActorShadow
/* 80595B58  38 00 00 00 */	li r0, 0
/* 80595B5C  90 1E 01 B8 */	stw r0, 0x1b8(r30)
lbl_80595B60:
/* 80595B60  3B BD 00 01 */	addi r29, r29, 1
/* 80595B64  3B DE 02 88 */	addi r30, r30, 0x288
/* 80595B68  2C 1D 00 09 */	cmpwi r29, 9
/* 80595B6C  41 80 FE 90 */	blt lbl_805959FC
/* 80595B70  4B E7 66 A5 */	bl Matrix_pull
/* 80595B74  39 61 00 30 */	addi r11, r1, 0x30
/* 80595B78  4B B0 53 9D */	bl func_8009AF14
/* 80595B7C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80595B80  7C 08 03 A6 */	mtlr r0
/* 80595B84  38 21 00 30 */	addi r1, r1, 0x30
/* 80595B88  4E 80 00 20 */	blr 
