lbl_804CFDFC:
/* 804CFDFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804CFE00  7C 08 02 A6 */	mflr r0
/* 804CFE04  90 01 00 24 */	stw r0, 0x24(r1)
/* 804CFE08  39 61 00 20 */	addi r11, r1, 0x20
/* 804CFE0C  4B BC B0 C9 */	bl func_8009AED4
/* 804CFE10  7C 7D 1B 78 */	mr r29, r3
/* 804CFE14  7C 9E 23 78 */	mr r30, r4
/* 804CFE18  4B EE 9A 39 */	bl mKK_windowlight_alpha_get
/* 804CFE1C  3C 60 80 64 */	lis r3, lit_521@ha /* 0x8064637C@ha */
/* 804CFE20  C0 03 63 7C */	lfs f0, lit_521@l(r3)  /* 0x8064637C@l */
/* 804CFE24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CFE28  41 80 00 64 */	blt lbl_804CFE8C
/* 804CFE2C  3C 60 80 64 */	lis r3, lit_391@ha /* 0x80646338@ha */
/* 804CFE30  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 804CFE34  C0 23 63 38 */	lfs f1, lit_391@l(r3)  /* 0x80646338@l */
/* 804CFE38  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804CFE3C  40 82 00 08 */	bne lbl_804CFE44
/* 804CFE40  48 00 00 4C */	b lbl_804CFE8C
lbl_804CFE44:
/* 804CFE44  7F A3 EB 78 */	mr r3, r29
/* 804CFE48  7F C4 F3 78 */	mr r4, r30
/* 804CFE4C  38 A0 00 01 */	li r5, 1
/* 804CFE50  4B FF FD 6D */	bl cull_check_from_camera
/* 804CFE54  2C 03 00 00 */	cmpwi r3, 0
/* 804CFE58  40 82 00 34 */	bne lbl_804CFE8C
/* 804CFE5C  83 FE 00 00 */	lwz r31, 0(r30)
/* 804CFE60  7F A3 EB 78 */	mr r3, r29
/* 804CFE64  7F C4 F3 78 */	mr r4, r30
/* 804CFE68  4B FF FD 95 */	bl setup_mode_Ef_Room_Sunshine_Police
/* 804CFE6C  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 804CFE70  3C 60 80 9C */	lis r3, obj_koban_shine_modelT@ha /* 0x809C7B90@ha */
/* 804CFE74  3C 80 DE 00 */	lis r4, 0xde00
/* 804CFE78  38 A6 00 08 */	addi r5, r6, 8
/* 804CFE7C  38 03 7B 90 */	addi r0, r3, obj_koban_shine_modelT@l /* 0x809C7B90@l */
/* 804CFE80  90 BF 02 E0 */	stw r5, 0x2e0(r31)
/* 804CFE84  90 86 00 00 */	stw r4, 0(r6)
/* 804CFE88  90 06 00 04 */	stw r0, 4(r6)
lbl_804CFE8C:
/* 804CFE8C  39 61 00 20 */	addi r11, r1, 0x20
/* 804CFE90  4B BC B0 91 */	bl func_8009AF20
/* 804CFE94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804CFE98  7C 08 03 A6 */	mtlr r0
/* 804CFE9C  38 21 00 20 */	addi r1, r1, 0x20
/* 804CFEA0  4E 80 00 20 */	blr 
