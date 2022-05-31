lbl_80418BB0:
/* 80418BB0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80418BB4  7C 08 02 A6 */	mflr r0
/* 80418BB8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80418BBC  39 61 00 40 */	addi r11, r1, 0x40
/* 80418BC0  4B C8 23 0D */	bl func_8009AECC
/* 80418BC4  7C 9D 23 78 */	mr r29, r4
/* 80418BC8  7C 7C 1B 78 */	mr r28, r3
/* 80418BCC  80 64 00 00 */	lwz r3, 0(r4)
/* 80418BD0  4B FC C5 39 */	bl _texture_z_light_fog_prim
/* 80418BD4  80 7D 00 00 */	lwz r3, 0(r29)
/* 80418BD8  4B FC C5 81 */	bl _texture_z_light_fog_prim_xlu
/* 80418BDC  80 1D 00 A0 */	lwz r0, 0xa0(r29)
/* 80418BE0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80418BE4  41 82 00 0C */	beq lbl_80418BF0
/* 80418BE8  3B FC 00 70 */	addi r31, r28, 0x70
/* 80418BEC  48 00 00 08 */	b lbl_80418BF4
lbl_80418BF0:
/* 80418BF0  3B FC 01 F0 */	addi r31, r28, 0x1f0
lbl_80418BF4:
/* 80418BF4  83 DD 00 00 */	lwz r30, 0(r29)
/* 80418BF8  38 60 00 00 */	li r3, 0
/* 80418BFC  C0 3C 03 70 */	lfs f1, 0x370(r28)
/* 80418C00  C0 5C 03 74 */	lfs f2, 0x374(r28)
/* 80418C04  C0 7C 03 78 */	lfs f3, 0x378(r28)
/* 80418C08  4B FF 36 F9 */	bl Matrix_translate
/* 80418C0C  3C 80 80 64 */	lis r4, lit_1047@ha /* 0x80643D18@ha */
/* 80418C10  38 60 00 01 */	li r3, 1
/* 80418C14  C0 24 3D 18 */	lfs f1, lit_1047@l(r4)  /* 0x80643D18@l */
/* 80418C18  FC 40 08 90 */	fmr f2, f1
/* 80418C1C  FC 60 08 90 */	fmr f3, f1
/* 80418C20  4B FF 37 CD */	bl Matrix_scale
/* 80418C24  A8 1C 03 B8 */	lha r0, 0x3b8(r28)
/* 80418C28  2C 00 00 46 */	cmpwi r0, 0x46
/* 80418C2C  40 80 00 94 */	bge lbl_80418CC0
/* 80418C30  80 FE 02 D0 */	lwz r7, 0x2d0(r30)
/* 80418C34  3C C0 E2 00 */	lis r6, 0xE200 /* 0xE200001C@ha */
/* 80418C38  3C A0 C8 11 */	lis r5, 0xC811 /* 0xC8113078@ha */
/* 80418C3C  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 80418C40  38 07 00 08 */	addi r0, r7, 8
/* 80418C44  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80418C48  90 1E 02 D0 */	stw r0, 0x2d0(r30)
/* 80418C4C  38 06 00 1C */	addi r0, r6, 0x001C /* 0xE200001C@l */
/* 80418C50  38 C5 30 78 */	addi r6, r5, 0x3078 /* 0xC8113078@l */
/* 80418C54  38 A4 00 FF */	addi r5, r4, 0x00FF /* 0xFA0000FF@l */
/* 80418C58  90 07 00 00 */	stw r0, 0(r7)
/* 80418C5C  38 80 FF 01 */	li r4, -255
/* 80418C60  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80418C64  90 C7 00 04 */	stw r6, 4(r7)
/* 80418C68  80 DE 02 D0 */	lwz r6, 0x2d0(r30)
/* 80418C6C  38 66 00 08 */	addi r3, r6, 8
/* 80418C70  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 80418C74  90 A6 00 00 */	stw r5, 0(r6)
/* 80418C78  90 86 00 04 */	stw r4, 4(r6)
/* 80418C7C  83 7E 02 D0 */	lwz r27, 0x2d0(r30)
/* 80418C80  38 7B 00 08 */	addi r3, r27, 8
/* 80418C84  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 80418C88  90 1B 00 00 */	stw r0, 0(r27)
/* 80418C8C  80 7D 00 00 */	lwz r3, 0(r29)
/* 80418C90  4B FF 47 45 */	bl _Matrix_to_Mtx_new
/* 80418C94  3C A0 80 42 */	lis r5, EffectBG_object_before_display@ha /* 0x8041862C@ha */
/* 80418C98  3C 80 80 42 */	lis r4, EffectBG_object_after_display@ha /* 0x80418AEC@ha */
/* 80418C9C  90 7B 00 04 */	stw r3, 4(r27)
/* 80418CA0  38 C5 86 2C */	addi r6, r5, EffectBG_object_before_display@l /* 0x8041862C@l */
/* 80418CA4  38 E4 8A EC */	addi r7, r4, EffectBG_object_after_display@l /* 0x80418AEC@l */
/* 80418CA8  7F A3 EB 78 */	mr r3, r29
/* 80418CAC  7F 84 E3 78 */	mr r4, r28
/* 80418CB0  7F E5 FB 78 */	mr r5, r31
/* 80418CB4  7F 88 E3 78 */	mr r8, r28
/* 80418CB8  4B F5 8A 81 */	bl cKF_Si3_draw_R_SV
/* 80418CBC  48 00 01 2C */	b lbl_80418DE8
lbl_80418CC0:
/* 80418CC0  80 BE 02 E0 */	lwz r5, 0x2e0(r30)
/* 80418CC4  3C 80 E2 00 */	lis r4, 0xE200 /* 0xE200001C@ha */
/* 80418CC8  3C 60 C8 10 */	lis r3, 0xC810 /* 0xC8104B50@ha */
/* 80418CCC  38 05 00 08 */	addi r0, r5, 8
/* 80418CD0  38 84 00 1C */	addi r4, r4, 0x001C /* 0xE200001C@l */
/* 80418CD4  90 1E 02 E0 */	stw r0, 0x2e0(r30)
/* 80418CD8  38 03 4B 50 */	addi r0, r3, 0x4B50 /* 0xC8104B50@l */
/* 80418CDC  90 85 00 00 */	stw r4, 0(r5)
/* 80418CE0  90 05 00 04 */	stw r0, 4(r5)
/* 80418CE4  A8 1C 03 BC */	lha r0, 0x3bc(r28)
/* 80418CE8  2C 00 00 02 */	cmpwi r0, 2
/* 80418CEC  41 82 00 0C */	beq lbl_80418CF8
/* 80418CF0  2C 00 00 01 */	cmpwi r0, 1
/* 80418CF4  40 82 00 8C */	bne lbl_80418D80
lbl_80418CF8:
/* 80418CF8  A8 DC 03 BA */	lha r6, 0x3ba(r28)
/* 80418CFC  3C A0 43 30 */	lis r5, 0x4330
/* 80418D00  A8 9C 03 B8 */	lha r4, 0x3b8(r28)
/* 80418D04  3C E0 80 64 */	lis r7, lit_988@ha /* 0x80643D0C@ha */
/* 80418D08  3C 60 80 64 */	lis r3, lit_760@ha /* 0x80643CE4@ha */
/* 80418D0C  38 06 FF BA */	addi r0, r6, -70
/* 80418D10  7C 84 30 50 */	subf r4, r4, r6
/* 80418D14  90 A1 00 08 */	stw r5, 8(r1)
/* 80418D18  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80418D1C  38 C3 3C E4 */	addi r6, r3, lit_760@l /* 0x80643CE4@l */
/* 80418D20  90 81 00 0C */	stw r4, 0xc(r1)
/* 80418D24  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 80418D28  C8 46 00 00 */	lfd f2, 0(r6)
/* 80418D2C  38 00 FF 00 */	li r0, -256
/* 80418D30  C8 01 00 08 */	lfd f0, 8(r1)
/* 80418D34  90 61 00 14 */	stw r3, 0x14(r1)
/* 80418D38  EC 20 10 28 */	fsubs f1, f0, f2
/* 80418D3C  80 9E 02 E0 */	lwz r4, 0x2e0(r30)
/* 80418D40  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80418D44  38 64 00 08 */	addi r3, r4, 8
/* 80418D48  C0 67 3D 0C */	lfs f3, lit_988@l(r7)  /* 0x80643D0C@l */
/* 80418D4C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80418D50  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 80418D54  EC 00 10 28 */	fsubs f0, f0, f2
/* 80418D58  EC 01 00 24 */	fdivs f0, f1, f0
/* 80418D5C  EC 03 00 32 */	fmuls f0, f3, f0
/* 80418D60  FC 00 00 1E */	fctiwz f0, f0
/* 80418D64  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80418D68  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80418D6C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80418D70  64 63 FA 00 */	oris r3, r3, 0xfa00
/* 80418D74  90 64 00 00 */	stw r3, 0(r4)
/* 80418D78  90 04 00 04 */	stw r0, 4(r4)
/* 80418D7C  48 00 00 24 */	b lbl_80418DA0
lbl_80418D80:
/* 80418D80  80 BE 02 E0 */	lwz r5, 0x2e0(r30)
/* 80418D84  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA0000FF@ha */
/* 80418D88  38 63 00 FF */	addi r3, r3, 0x00FF /* 0xFA0000FF@l */
/* 80418D8C  38 00 FF 01 */	li r0, -255
/* 80418D90  38 85 00 08 */	addi r4, r5, 8
/* 80418D94  90 9E 02 E0 */	stw r4, 0x2e0(r30)
/* 80418D98  90 65 00 00 */	stw r3, 0(r5)
/* 80418D9C  90 05 00 04 */	stw r0, 4(r5)
lbl_80418DA0:
/* 80418DA0  83 7E 02 E0 */	lwz r27, 0x2e0(r30)
/* 80418DA4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80418DA8  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80418DAC  38 7B 00 08 */	addi r3, r27, 8
/* 80418DB0  90 7E 02 E0 */	stw r3, 0x2e0(r30)
/* 80418DB4  90 1B 00 00 */	stw r0, 0(r27)
/* 80418DB8  80 7D 00 00 */	lwz r3, 0(r29)
/* 80418DBC  4B FF 46 19 */	bl _Matrix_to_Mtx_new
/* 80418DC0  3C A0 80 42 */	lis r5, EffectBG_object_before_display_xlu@ha /* 0x80418854@ha */
/* 80418DC4  3C 80 80 42 */	lis r4, EffectBG_object_after_display@ha /* 0x80418AEC@ha */
/* 80418DC8  90 7B 00 04 */	stw r3, 4(r27)
/* 80418DCC  38 C5 88 54 */	addi r6, r5, EffectBG_object_before_display_xlu@l /* 0x80418854@l */
/* 80418DD0  38 E4 8A EC */	addi r7, r4, EffectBG_object_after_display@l /* 0x80418AEC@l */
/* 80418DD4  7F A3 EB 78 */	mr r3, r29
/* 80418DD8  7F 84 E3 78 */	mr r4, r28
/* 80418DDC  7F E5 FB 78 */	mr r5, r31
/* 80418DE0  7F 88 E3 78 */	mr r8, r28
/* 80418DE4  4B F5 89 55 */	bl cKF_Si3_draw_R_SV
lbl_80418DE8:
/* 80418DE8  39 61 00 40 */	addi r11, r1, 0x40
/* 80418DEC  4B C8 21 2D */	bl func_8009AF18
/* 80418DF0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80418DF4  7C 08 03 A6 */	mtlr r0
/* 80418DF8  38 21 00 40 */	addi r1, r1, 0x40
/* 80418DFC  4E 80 00 20 */	blr 
