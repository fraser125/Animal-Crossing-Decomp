lbl_804CFD54:
/* 804CFD54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804CFD58  7C 08 02 A6 */	mflr r0
/* 804CFD5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804CFD60  39 61 00 20 */	addi r11, r1, 0x20
/* 804CFD64  4B BC B1 71 */	bl func_8009AED4
/* 804CFD68  7C 7D 1B 78 */	mr r29, r3
/* 804CFD6C  7C 9E 23 78 */	mr r30, r4
/* 804CFD70  4B EE 9A E1 */	bl mKK_windowlight_alpha_get
/* 804CFD74  3C 60 80 64 */	lis r3, lit_521@ha /* 0x8064637C@ha */
/* 804CFD78  C0 03 63 7C */	lfs f0, lit_521@l(r3)  /* 0x8064637C@l */
/* 804CFD7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CFD80  41 80 00 64 */	blt lbl_804CFDE4
/* 804CFD84  3C 60 80 64 */	lis r3, lit_391@ha /* 0x80646338@ha */
/* 804CFD88  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 804CFD8C  C0 23 63 38 */	lfs f1, lit_391@l(r3)  /* 0x80646338@l */
/* 804CFD90  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804CFD94  40 82 00 08 */	bne lbl_804CFD9C
/* 804CFD98  48 00 00 4C */	b lbl_804CFDE4
lbl_804CFD9C:
/* 804CFD9C  7F A3 EB 78 */	mr r3, r29
/* 804CFDA0  7F C4 F3 78 */	mr r4, r30
/* 804CFDA4  38 A0 00 00 */	li r5, 0
/* 804CFDA8  4B FF FE 15 */	bl cull_check_from_camera
/* 804CFDAC  2C 03 00 00 */	cmpwi r3, 0
/* 804CFDB0  40 82 00 34 */	bne lbl_804CFDE4
/* 804CFDB4  83 FE 00 00 */	lwz r31, 0(r30)
/* 804CFDB8  7F A3 EB 78 */	mr r3, r29
/* 804CFDBC  7F C4 F3 78 */	mr r4, r30
/* 804CFDC0  4B FF FE 3D */	bl setup_mode_Ef_Room_Sunshine_Police
/* 804CFDC4  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 804CFDC8  3C 60 80 9C */	lis r3, obj_koban_shine_modelT@ha /* 0x809C7B90@ha */
/* 804CFDCC  3C 80 DE 00 */	lis r4, 0xde00
/* 804CFDD0  38 A6 00 08 */	addi r5, r6, 8
/* 804CFDD4  38 03 7B 90 */	addi r0, r3, obj_koban_shine_modelT@l /* 0x809C7B90@l */
/* 804CFDD8  90 BF 02 E0 */	stw r5, 0x2e0(r31)
/* 804CFDDC  90 86 00 00 */	stw r4, 0(r6)
/* 804CFDE0  90 06 00 04 */	stw r0, 4(r6)
lbl_804CFDE4:
/* 804CFDE4  39 61 00 20 */	addi r11, r1, 0x20
/* 804CFDE8  4B BC B1 39 */	bl func_8009AF20
/* 804CFDEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804CFDF0  7C 08 03 A6 */	mtlr r0
/* 804CFDF4  38 21 00 20 */	addi r1, r1, 0x20
/* 804CFDF8  4E 80 00 20 */	blr 
