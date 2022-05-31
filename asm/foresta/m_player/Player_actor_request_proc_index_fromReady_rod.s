lbl_804F4DDC:
/* 804F4DDC  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 804F4DE0  7C 08 02 A6 */	mflr r0
/* 804F4DE4  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 804F4DE8  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 804F4DEC  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 804F4DF0  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 804F4DF4  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 804F4DF8  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 804F4DFC  F3 A1 00 78 */	psq_st f29, 120(r1), 0, 0 /* qr0 */
/* 804F4E00  39 61 00 70 */	addi r11, r1, 0x70
/* 804F4E04  4B BA 60 BD */	bl func_8009AEC0
/* 804F4E08  3C A0 80 64 */	lis r5, lit_1375@ha /* 0x80646A30@ha */
/* 804F4E0C  C0 23 01 84 */	lfs f1, 0x184(r3)
/* 804F4E10  C0 05 6A 30 */	lfs f0, lit_1375@l(r5)  /* 0x80646A30@l */
/* 804F4E14  7C 78 1B 78 */	mr r24, r3
/* 804F4E18  7C 9F 23 78 */	mr r31, r4
/* 804F4E1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F4E20  4C 41 13 82 */	cror 2, 1, 2
/* 804F4E24  40 82 01 EC */	bne lbl_804F5010
/* 804F4E28  AB 78 00 DE */	lha r27, 0xde(r24)
/* 804F4E2C  7F 63 DB 78 */	mr r3, r27
/* 804F4E30  4B EC 5C C1 */	bl sin_s
/* 804F4E34  3C 80 80 65 */	lis r4, lit_11384@ha /* 0x80648508@ha */
/* 804F4E38  7F 63 DB 78 */	mr r3, r27
/* 804F4E3C  C0 04 85 08 */	lfs f0, lit_11384@l(r4)  /* 0x80648508@l */
/* 804F4E40  EF C0 00 72 */	fmuls f30, f0, f1
/* 804F4E44  4B EC 5C 59 */	bl cos_s
/* 804F4E48  C0 18 00 28 */	lfs f0, 0x28(r24)
/* 804F4E4C  3C 60 80 65 */	lis r3, lit_11384@ha /* 0x80648508@ha */
/* 804F4E50  38 83 85 08 */	addi r4, r3, lit_11384@l /* 0x80648508@l */
/* 804F4E54  3C C0 80 65 */	lis r6, array_addX@ha /* 0x80648510@ha */
/* 804F4E58  EC 00 F0 2A */	fadds f0, f0, f30
/* 804F4E5C  C0 44 00 00 */	lfs f2, 0(r4)
/* 804F4E60  C3 B8 00 2C */	lfs f29, 0x2c(r24)
/* 804F4E64  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804F4E68  38 E3 65 68 */	addi r7, r3, lit_604@l /* 0x80646568@l */
/* 804F4E6C  3C A0 80 65 */	lis r5, array_addZ@ha /* 0x80648524@ha */
/* 804F4E70  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804F4E74  EC 22 00 72 */	fmuls f1, f2, f1
/* 804F4E78  3C 60 80 64 */	lis r3, lit_2592@ha /* 0x80646C48@ha */
/* 804F4E7C  3C 80 80 6A */	lis r4, lit_11617@ha /* 0x8069E7A8@ha */
/* 804F4E80  C0 18 00 30 */	lfs f0, 0x30(r24)
/* 804F4E84  3B 66 85 10 */	addi r27, r6, array_addX@l /* 0x80648510@l */
/* 804F4E88  C3 C7 00 00 */	lfs f30, 0(r7)
/* 804F4E8C  EC 00 08 2A */	fadds f0, f0, f1
/* 804F4E90  C3 E3 6C 48 */	lfs f31, lit_2592@l(r3)  /* 0x80646C48@l */
/* 804F4E94  D3 C1 00 40 */	stfs f30, 0x40(r1)
/* 804F4E98  3B 85 85 24 */	addi r28, r5, array_addZ@l /* 0x80648524@l */
/* 804F4E9C  3B A4 E7 A8 */	addi r29, r4, lit_11617@l /* 0x8069E7A8@l */
/* 804F4EA0  3B 40 00 01 */	li r26, 1
/* 804F4EA4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804F4EA8  3B 20 00 00 */	li r25, 0
/* 804F4EAC  3B C0 00 00 */	li r30, 0
lbl_804F4EB0:
/* 804F4EB0  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 804F4EB4  38 61 00 24 */	addi r3, r1, 0x24
/* 804F4EB8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804F4EBC  90 81 00 30 */	stw r4, 0x30(r1)
/* 804F4EC0  80 81 00 40 */	lwz r4, 0x40(r1)
/* 804F4EC4  90 01 00 38 */	stw r0, 0x38(r1)
/* 804F4EC8  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 804F4ECC  7C 1B F4 2E */	lfsx f0, r27, r30
/* 804F4ED0  90 81 00 34 */	stw r4, 0x34(r1)
/* 804F4ED4  EC 41 00 2A */	fadds f2, f1, f0
/* 804F4ED8  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 804F4EDC  7C 1C F4 2E */	lfsx f0, r28, r30
/* 804F4EE0  D3 C1 00 34 */	stfs f30, 0x34(r1)
/* 804F4EE4  EC 01 00 2A */	fadds f0, f1, f0
/* 804F4EE8  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 804F4EEC  80 81 00 34 */	lwz r4, 0x34(r1)
/* 804F4EF0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804F4EF4  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 804F4EF8  80 01 00 38 */	lwz r0, 0x38(r1)
/* 804F4EFC  90 A1 00 24 */	stw r5, 0x24(r1)
/* 804F4F00  90 81 00 28 */	stw r4, 0x28(r1)
/* 804F4F04  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804F4F08  4B E9 B3 3D */	bl mCoBG_Wpos2BgAttribute_Original
/* 804F4F0C  7C 60 1B 78 */	mr r0, r3
/* 804F4F10  38 61 00 08 */	addi r3, r1, 8
/* 804F4F14  7C 18 03 78 */	mr r24, r0
/* 804F4F18  38 81 00 30 */	addi r4, r1, 0x30
/* 804F4F1C  4B E9 7C 01 */	bl mCoBG_GetMoveBgHeight
/* 804F4F20  2C 03 FF FF */	cmpwi r3, -1
/* 804F4F24  41 82 00 0C */	beq lbl_804F4F30
/* 804F4F28  3B 40 00 00 */	li r26, 0
/* 804F4F2C  48 00 00 74 */	b lbl_804F4FA0
lbl_804F4F30:
/* 804F4F30  7F 03 C3 78 */	mr r3, r24
/* 804F4F34  4B E9 F3 99 */	bl mCoBG_CheckWaterAttribute
/* 804F4F38  2C 03 00 00 */	cmpwi r3, 0
/* 804F4F3C  40 82 00 0C */	bne lbl_804F4F48
/* 804F4F40  3B 40 00 00 */	li r26, 0
/* 804F4F44  48 00 00 5C */	b lbl_804F4FA0
lbl_804F4F48:
/* 804F4F48  80 E1 00 30 */	lwz r7, 0x30(r1)
/* 804F4F4C  7F A4 EB 78 */	mr r4, r29
/* 804F4F50  80 C1 00 34 */	lwz r6, 0x34(r1)
/* 804F4F54  38 61 00 18 */	addi r3, r1, 0x18
/* 804F4F58  80 01 00 38 */	lwz r0, 0x38(r1)
/* 804F4F5C  38 A0 00 A5 */	li r5, 0xa5
/* 804F4F60  90 E1 00 18 */	stw r7, 0x18(r1)
/* 804F4F64  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 804F4F68  90 01 00 20 */	stw r0, 0x20(r1)
/* 804F4F6C  4B E9 F0 4D */	bl mCoBG_GetWaterHeight_File
/* 804F4F70  FC 00 08 18 */	frsp f0, f1
/* 804F4F74  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 804F4F78  EC 00 E8 28 */	fsubs f0, f0, f29
/* 804F4F7C  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 804F4F80  4C 41 13 82 */	cror 2, 1, 2
/* 804F4F84  40 82 00 0C */	bne lbl_804F4F90
/* 804F4F88  3B 40 00 00 */	li r26, 0
/* 804F4F8C  48 00 00 14 */	b lbl_804F4FA0
lbl_804F4F90:
/* 804F4F90  3B 39 00 01 */	addi r25, r25, 1
/* 804F4F94  3B DE 00 04 */	addi r30, r30, 4
/* 804F4F98  2C 19 00 05 */	cmpwi r25, 5
/* 804F4F9C  41 80 FF 14 */	blt lbl_804F4EB0
lbl_804F4FA0:
/* 804F4FA0  2C 1A 00 00 */	cmpwi r26, 0
/* 804F4FA4  41 82 00 60 */	beq lbl_804F5004
/* 804F4FA8  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 804F4FAC  3C 60 80 6A */	lis r3, lit_11617@ha /* 0x8069E7A8@ha */
/* 804F4FB0  80 C1 00 40 */	lwz r6, 0x40(r1)
/* 804F4FB4  38 83 E7 A8 */	addi r4, r3, lit_11617@l /* 0x8069E7A8@l */
/* 804F4FB8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804F4FBC  38 61 00 0C */	addi r3, r1, 0xc
/* 804F4FC0  90 A1 00 0C */	stw r5, 0xc(r1)
/* 804F4FC4  38 A0 00 B1 */	li r5, 0xb1
/* 804F4FC8  90 C1 00 10 */	stw r6, 0x10(r1)
/* 804F4FCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F4FD0  4B E9 EF E9 */	bl mCoBG_GetWaterHeight_File
/* 804F4FD4  FC 40 08 18 */	frsp f2, f1
/* 804F4FD8  3C 60 80 64 */	lis r3, lit_2592@ha /* 0x80646C48@ha */
/* 804F4FDC  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 804F4FE0  C0 03 6C 48 */	lfs f0, lit_2592@l(r3)  /* 0x80646C48@l */
/* 804F4FE4  EC 22 E8 28 */	fsubs f1, f2, f29
/* 804F4FE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F4FEC  40 80 00 18 */	bge lbl_804F5004
/* 804F4FF0  7F E3 FB 78 */	mr r3, r31
/* 804F4FF4  38 81 00 3C */	addi r4, r1, 0x3c
/* 804F4FF8  38 A0 00 15 */	li r5, 0x15
/* 804F4FFC  48 00 00 E1 */	bl func_804F50DC
/* 804F5000  48 00 00 10 */	b lbl_804F5010
lbl_804F5004:
/* 804F5004  7F E3 FB 78 */	mr r3, r31
/* 804F5008  38 80 00 15 */	li r4, 0x15
/* 804F500C  48 00 04 51 */	bl func_804F545C
lbl_804F5010:
/* 804F5010  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 804F5014  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 804F5018  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 804F501C  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 804F5020  E3 A1 00 78 */	psq_l f29, 120(r1), 0, 0 /* qr0 */
/* 804F5024  39 61 00 70 */	addi r11, r1, 0x70
/* 804F5028  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 804F502C  4B BA 5E E1 */	bl func_8009AF0C
/* 804F5030  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 804F5034  7C 08 03 A6 */	mtlr r0
/* 804F5038  38 21 00 A0 */	addi r1, r1, 0xa0
/* 804F503C  4E 80 00 20 */	blr 
