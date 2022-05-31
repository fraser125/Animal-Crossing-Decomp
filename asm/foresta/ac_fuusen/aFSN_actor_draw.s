lbl_8050EDA8:
/* 8050EDA8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8050EDAC  7C 08 02 A6 */	mflr r0
/* 8050EDB0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8050EDB4  39 61 00 30 */	addi r11, r1, 0x30
/* 8050EDB8  4B B8 C1 15 */	bl func_8009AECC
/* 8050EDBC  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 8050EDC0  7C 7C 1B 78 */	mr r28, r3
/* 8050EDC4  83 A4 00 00 */	lwz r29, 0(r4)
/* 8050EDC8  7C 9E 23 78 */	mr r30, r4
/* 8050EDCC  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8050EDD0  1C 60 00 C0 */	mulli r3, r0, 0xc0
/* 8050EDD4  3B E3 02 58 */	addi r31, r3, 0x258
/* 8050EDD8  7F FC FA 14 */	add r31, r28, r31
/* 8050EDDC  4B E7 00 79 */	bl Camera2_CheckCullingMode
/* 8050EDE0  2C 03 00 00 */	cmpwi r3, 0
/* 8050EDE4  41 82 00 20 */	beq lbl_8050EE04
/* 8050EDE8  3C 60 80 65 */	lis r3, lit_799@ha /* 0x80648F9C@ha */
/* 8050EDEC  C0 3C 00 28 */	lfs f1, 0x28(r28)
/* 8050EDF0  C0 5C 00 30 */	lfs f2, 0x30(r28)
/* 8050EDF4  C0 63 8F 9C */	lfs f3, lit_799@l(r3)  /* 0x80648F9C@l */
/* 8050EDF8  4B E7 01 B9 */	bl Camera2_CheckEnterCullingArea
/* 8050EDFC  2C 03 00 00 */	cmpwi r3, 0
/* 8050EE00  40 82 01 6C */	bne lbl_8050EF6C
lbl_8050EE04:
/* 8050EE04  4B EF D3 D1 */	bl Matrix_push
/* 8050EE08  80 7C 01 74 */	lwz r3, 0x174(r28)
/* 8050EE0C  2C 03 00 03 */	cmpwi r3, 3
/* 8050EE10  40 82 00 24 */	bne lbl_8050EE34
/* 8050EE14  80 1C 01 84 */	lwz r0, 0x184(r28)
/* 8050EE18  2C 00 06 12 */	cmpwi r0, 0x612
/* 8050EE1C  41 82 00 18 */	beq lbl_8050EE34
/* 8050EE20  2C 03 00 03 */	cmpwi r3, 3
/* 8050EE24  40 82 00 B8 */	bne lbl_8050EEDC
/* 8050EE28  80 1C 01 8C */	lwz r0, 0x18c(r28)
/* 8050EE2C  2C 00 00 00 */	cmpwi r0, 0
/* 8050EE30  40 82 00 AC */	bne lbl_8050EEDC
lbl_8050EE34:
/* 8050EE34  C0 3C 00 28 */	lfs f1, 0x28(r28)
/* 8050EE38  38 60 00 00 */	li r3, 0
/* 8050EE3C  C0 5C 00 2C */	lfs f2, 0x2c(r28)
/* 8050EE40  C0 7C 00 30 */	lfs f3, 0x30(r28)
/* 8050EE44  4B EF D4 BD */	bl Matrix_translate
/* 8050EE48  3C 80 80 65 */	lis r4, lit_935@ha /* 0x80648FA0@ha */
/* 8050EE4C  38 60 00 01 */	li r3, 1
/* 8050EE50  C0 24 8F A0 */	lfs f1, lit_935@l(r4)  /* 0x80648FA0@l */
/* 8050EE54  FC 40 08 90 */	fmr f2, f1
/* 8050EE58  FC 60 08 90 */	fmr f3, f1
/* 8050EE5C  4B EF D5 91 */	bl Matrix_scale
/* 8050EE60  A8 7C 00 DC */	lha r3, 0xdc(r28)
/* 8050EE64  38 80 00 01 */	li r4, 1
/* 8050EE68  4B EF D6 51 */	bl Matrix_RotateX
/* 8050EE6C  A8 7C 00 E0 */	lha r3, 0xe0(r28)
/* 8050EE70  38 80 00 01 */	li r4, 1
/* 8050EE74  4B EF D9 7D */	bl Matrix_RotateZ
/* 8050EE78  A8 7C 00 DE */	lha r3, 0xde(r28)
/* 8050EE7C  38 80 00 01 */	li r4, 1
/* 8050EE80  4B EF D7 DD */	bl Matrix_RotateY
/* 8050EE84  7F A3 EB 78 */	mr r3, r29
/* 8050EE88  4B ED 62 81 */	bl _texture_z_light_fog_prim
/* 8050EE8C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8050EE90  83 7D 02 D0 */	lwz r27, 0x2d0(r29)
/* 8050EE94  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8050EE98  7F A3 EB 78 */	mr r3, r29
/* 8050EE9C  90 1B 00 00 */	stw r0, 0(r27)
/* 8050EEA0  4B EF E5 35 */	bl _Matrix_to_Mtx_new
/* 8050EEA4  90 7B 00 04 */	stw r3, 4(r27)
/* 8050EEA8  3C A0 DE 00 */	lis r5, 0xde00
/* 8050EEAC  3C 80 80 EE */	lis r4, present_DL_mode@ha /* 0x80EE21A0@ha */
/* 8050EEB0  3C 60 80 EE */	lis r3, present_DL_vtx@ha /* 0x80EE21E8@ha */
/* 8050EEB4  90 BB 00 08 */	stw r5, 8(r27)
/* 8050EEB8  38 84 21 A0 */	addi r4, r4, present_DL_mode@l /* 0x80EE21A0@l */
/* 8050EEBC  38 03 21 E8 */	addi r0, r3, present_DL_vtx@l /* 0x80EE21E8@l */
/* 8050EEC0  90 9B 00 0C */	stw r4, 0xc(r27)
/* 8050EEC4  3B 7B 00 10 */	addi r27, r27, 0x10
/* 8050EEC8  7F 63 DB 78 */	mr r3, r27
/* 8050EECC  90 BB 00 00 */	stw r5, 0(r27)
/* 8050EED0  3B 7B 00 08 */	addi r27, r27, 8
/* 8050EED4  90 03 00 04 */	stw r0, 4(r3)
/* 8050EED8  93 7D 02 D0 */	stw r27, 0x2d0(r29)
lbl_8050EEDC:
/* 8050EEDC  7F C4 F3 78 */	mr r4, r30
/* 8050EEE0  38 7C 00 28 */	addi r3, r28, 0x28
/* 8050EEE4  4B E6 70 99 */	bl Setpos_HiliteReflect_init
/* 8050EEE8  3C 80 80 51 */	lis r4, aFSN_actor_draw_before@ha /* 0x8050ECC0@ha */
/* 8050EEEC  7F C3 F3 78 */	mr r3, r30
/* 8050EEF0  38 C4 EC C0 */	addi r6, r4, aFSN_actor_draw_before@l /* 0x8050ECC0@l */
/* 8050EEF4  7F E5 FB 78 */	mr r5, r31
/* 8050EEF8  7F 88 E3 78 */	mr r8, r28
/* 8050EEFC  38 9C 01 A8 */	addi r4, r28, 0x1a8
/* 8050EF00  38 E0 00 00 */	li r7, 0
/* 8050EF04  4B E6 28 35 */	bl cKF_Si3_draw_R_SV
/* 8050EF08  80 DD 02 D0 */	lwz r6, 0x2d0(r29)
/* 8050EF0C  3C A0 80 6A */	lis r5, offset0@ha /* 0x8069F214@ha */
/* 8050EF10  3C 60 80 65 */	lis r3, lit_936@ha /* 0x80648FA4@ha */
/* 8050EF14  3C 80 CE 00 */	lis r4, 0xCE00 /* 0xCE000000@ha */
/* 8050EF18  7C C7 33 78 */	mr r7, r6
/* 8050EF1C  38 00 00 90 */	li r0, 0x90
/* 8050EF20  90 86 00 00 */	stw r4, 0(r6)
/* 8050EF24  38 83 8F A4 */	addi r4, r3, lit_936@l /* 0x80648FA4@l */
/* 8050EF28  38 C6 00 08 */	addi r6, r6, 8
/* 8050EF2C  39 25 F2 14 */	addi r9, r5, offset0@l /* 0x8069F214@l */
/* 8050EF30  90 07 00 04 */	stw r0, 4(r7)
/* 8050EF34  7F 83 E3 78 */	mr r3, r28
/* 8050EF38  C0 24 00 00 */	lfs f1, 0x0000(r4)  /* 0xCE000000@l */
/* 8050EF3C  7F C4 F3 78 */	mr r4, r30
/* 8050EF40  90 DD 02 D0 */	stw r6, 0x2d0(r29)
/* 8050EF44  38 C1 00 08 */	addi r6, r1, 8
/* 8050EF48  38 A0 00 00 */	li r5, 0
/* 8050EF4C  81 09 00 00 */	lwz r8, 0(r9)
/* 8050EF50  80 E9 00 04 */	lwz r7, 4(r9)
/* 8050EF54  80 09 00 08 */	lwz r0, 8(r9)
/* 8050EF58  91 01 00 08 */	stw r8, 8(r1)
/* 8050EF5C  90 E1 00 0C */	stw r7, 0xc(r1)
/* 8050EF60  90 01 00 10 */	stw r0, 0x10(r1)
/* 8050EF64  4B E6 7D 2D */	bl mAc_ActorShadowDraw_ShadowDrawFlagOn
/* 8050EF68  4B EF D2 AD */	bl Matrix_pull
lbl_8050EF6C:
/* 8050EF6C  39 61 00 30 */	addi r11, r1, 0x30
/* 8050EF70  4B B8 BF A9 */	bl func_8009AF18
/* 8050EF74  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8050EF78  7C 08 03 A6 */	mtlr r0
/* 8050EF7C  38 21 00 30 */	addi r1, r1, 0x30
/* 8050EF80  4E 80 00 20 */	blr 
