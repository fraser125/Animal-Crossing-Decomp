lbl_804C3E28:
/* 804C3E28  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 804C3E2C  7C 08 02 A6 */	mflr r0
/* 804C3E30  90 01 00 84 */	stw r0, 0x84(r1)
/* 804C3E34  39 61 00 80 */	addi r11, r1, 0x80
/* 804C3E38  4B BD 70 99 */	bl func_8009AED0
/* 804C3E3C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 804C3E40  7C 7C 1B 78 */	mr r28, r3
/* 804C3E44  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 804C3E48  7C 9D 23 78 */	mr r29, r4
/* 804C3E4C  3F E3 00 02 */	addis r31, r3, 2
/* 804C3E50  3B C0 00 00 */	li r30, 0
lbl_804C3E54:
/* 804C3E54  A8 1D 00 10 */	lha r0, 0x10(r29)
/* 804C3E58  2C 00 00 02 */	cmpwi r0, 2
/* 804C3E5C  41 82 00 80 */	beq lbl_804C3EDC
/* 804C3E60  40 80 00 14 */	bge lbl_804C3E74
/* 804C3E64  2C 00 00 00 */	cmpwi r0, 0
/* 804C3E68  41 82 02 B0 */	beq lbl_804C4118
/* 804C3E6C  40 80 00 18 */	bge lbl_804C3E84
/* 804C3E70  48 00 02 A8 */	b lbl_804C4118
lbl_804C3E74:
/* 804C3E74  2C 00 00 04 */	cmpwi r0, 4
/* 804C3E78  41 82 01 94 */	beq lbl_804C400C
/* 804C3E7C  40 80 02 9C */	bge lbl_804C4118
/* 804C3E80  48 00 00 88 */	b lbl_804C3F08
lbl_804C3E84:
/* 804C3E84  A8 7D 00 14 */	lha r3, 0x14(r29)
/* 804C3E88  2C 03 00 00 */	cmpwi r3, 0
/* 804C3E8C  40 81 00 10 */	ble lbl_804C3E9C
/* 804C3E90  38 03 FF FF */	addi r0, r3, -1
/* 804C3E94  B0 1D 00 14 */	sth r0, 0x14(r29)
/* 804C3E98  48 00 02 80 */	b lbl_804C4118
lbl_804C3E9C:
/* 804C3E9C  80 DD 00 00 */	lwz r6, 0(r29)
/* 804C3EA0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804C3EA4  80 1D 00 04 */	lwz r0, 4(r29)
/* 804C3EA8  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804C3EAC  38 81 00 50 */	addi r4, r1, 0x50
/* 804C3EB0  38 A0 00 00 */	li r5, 0
/* 804C3EB4  90 C1 00 50 */	stw r6, 0x50(r1)
/* 804C3EB8  90 01 00 54 */	stw r0, 0x54(r1)
/* 804C3EBC  80 1D 00 08 */	lwz r0, 8(r29)
/* 804C3EC0  90 01 00 58 */	stw r0, 0x58(r1)
/* 804C3EC4  4B EE 39 6D */	bl mFI_SetFG_common
/* 804C3EC8  38 60 00 02 */	li r3, 2
/* 804C3ECC  38 00 00 11 */	li r0, 0x11
/* 804C3ED0  B0 7D 00 10 */	sth r3, 0x10(r29)
/* 804C3ED4  B0 1D 00 14 */	sth r0, 0x14(r29)
/* 804C3ED8  48 00 02 40 */	b lbl_804C4118
lbl_804C3EDC:
/* 804C3EDC  A8 7D 00 14 */	lha r3, 0x14(r29)
/* 804C3EE0  2C 03 00 00 */	cmpwi r3, 0
/* 804C3EE4  41 81 00 18 */	bgt lbl_804C3EFC
/* 804C3EE8  38 60 00 00 */	li r3, 0
/* 804C3EEC  38 00 00 03 */	li r0, 3
/* 804C3EF0  B0 7D 00 14 */	sth r3, 0x14(r29)
/* 804C3EF4  B0 1D 00 10 */	sth r0, 0x10(r29)
/* 804C3EF8  48 00 02 20 */	b lbl_804C4118
lbl_804C3EFC:
/* 804C3EFC  38 03 FF FF */	addi r0, r3, -1
/* 804C3F00  B0 1D 00 14 */	sth r0, 0x14(r29)
/* 804C3F04  48 00 02 14 */	b lbl_804C4118
lbl_804C3F08:
/* 804C3F08  A8 9D 00 14 */	lha r4, 0x14(r29)
/* 804C3F0C  3C 00 43 30 */	lis r0, 0x4330
/* 804C3F10  3C A0 80 64 */	lis r5, lit_770@ha /* 0x8064615C@ha */
/* 804C3F14  3C 60 80 64 */	lis r3, lit_2371@ha /* 0x806461CC@ha */
/* 804C3F18  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 804C3F1C  90 01 00 60 */	stw r0, 0x60(r1)
/* 804C3F20  C8 45 61 5C */	lfd f2, lit_770@l(r5)  /* 0x8064615C@l */
/* 804C3F24  90 81 00 64 */	stw r4, 0x64(r1)
/* 804C3F28  C0 03 61 CC */	lfs f0, lit_2371@l(r3)  /* 0x806461CC@l */
/* 804C3F2C  C8 21 00 60 */	lfd f1, 0x60(r1)
/* 804C3F30  EC 21 10 28 */	fsubs f1, f1, f2
/* 804C3F34  EC 01 00 24 */	fdivs f0, f1, f0
/* 804C3F38  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 804C3F3C  A8 1D 00 14 */	lha r0, 0x14(r29)
/* 804C3F40  2C 00 00 06 */	cmpwi r0, 6
/* 804C3F44  40 82 00 70 */	bne lbl_804C3FB4
/* 804C3F48  7F A4 EB 78 */	mr r4, r29
/* 804C3F4C  38 60 01 3C */	li r3, 0x13c
/* 804C3F50  48 16 A0 59 */	bl sAdo_OngenTrgStart
/* 804C3F54  80 DD 00 00 */	lwz r6, 0(r29)
/* 804C3F58  38 61 00 38 */	addi r3, r1, 0x38
/* 804C3F5C  80 BD 00 04 */	lwz r5, 4(r29)
/* 804C3F60  38 80 00 00 */	li r4, 0
/* 804C3F64  90 C1 00 38 */	stw r6, 0x38(r1)
/* 804C3F68  90 A1 00 3C */	stw r5, 0x3c(r1)
/* 804C3F6C  80 1D 00 08 */	lwz r0, 8(r29)
/* 804C3F70  90 01 00 40 */	stw r0, 0x40(r1)
/* 804C3F74  90 C1 00 44 */	stw r6, 0x44(r1)
/* 804C3F78  90 A1 00 48 */	stw r5, 0x48(r1)
/* 804C3F7C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 804C3F80  4B EC 51 2D */	bl mCoBG_Wpos2Attribute
/* 804C3F84  80 BF 60 9C */	lwz r5, 0x609c(r31)
/* 804C3F88  7C 69 07 34 */	extsh r9, r3
/* 804C3F8C  7F 87 E3 78 */	mr r7, r28
/* 804C3F90  38 81 00 44 */	addi r4, r1, 0x44
/* 804C3F94  81 85 00 00 */	lwz r12, 0(r5)
/* 804C3F98  38 60 00 61 */	li r3, 0x61
/* 804C3F9C  A1 1D 00 1A */	lhz r8, 0x1a(r29)
/* 804C3FA0  38 A0 00 01 */	li r5, 1
/* 804C3FA4  38 C0 00 00 */	li r6, 0
/* 804C3FA8  39 40 00 00 */	li r10, 0
/* 804C3FAC  7D 89 03 A6 */	mtctr r12
/* 804C3FB0  4E 80 04 21 */	bctrl 
lbl_804C3FB4:
/* 804C3FB4  3C 60 80 64 */	lis r3, lit_845@ha /* 0x80646164@ha */
/* 804C3FB8  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 804C3FBC  C0 03 61 64 */	lfs f0, lit_845@l(r3)  /* 0x80646164@l */
/* 804C3FC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C3FC4  4C 41 13 82 */	cror 2, 1, 2
/* 804C3FC8  40 82 00 34 */	bne lbl_804C3FFC
/* 804C3FCC  80 7D 00 00 */	lwz r3, 0(r29)
/* 804C3FD0  38 81 00 2C */	addi r4, r1, 0x2c
/* 804C3FD4  80 1D 00 04 */	lwz r0, 4(r29)
/* 804C3FD8  38 A0 00 01 */	li r5, 1
/* 804C3FDC  90 61 00 2C */	stw r3, 0x2c(r1)
/* 804C3FE0  90 01 00 30 */	stw r0, 0x30(r1)
/* 804C3FE4  80 1D 00 08 */	lwz r0, 8(r29)
/* 804C3FE8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C3FEC  A0 7D 00 12 */	lhz r3, 0x12(r29)
/* 804C3FF0  4B EE 38 41 */	bl mFI_SetFG_common
/* 804C3FF4  38 00 00 00 */	li r0, 0
/* 804C3FF8  B0 1D 00 10 */	sth r0, 0x10(r29)
lbl_804C3FFC:
/* 804C3FFC  A8 7D 00 14 */	lha r3, 0x14(r29)
/* 804C4000  38 03 00 01 */	addi r0, r3, 1
/* 804C4004  B0 1D 00 14 */	sth r0, 0x14(r29)
/* 804C4008  48 00 01 10 */	b lbl_804C4118
lbl_804C400C:
/* 804C400C  A8 9D 00 14 */	lha r4, 0x14(r29)
/* 804C4010  3C 00 43 30 */	lis r0, 0x4330
/* 804C4014  3C A0 80 64 */	lis r5, lit_770@ha /* 0x8064615C@ha */
/* 804C4018  3C 60 80 64 */	lis r3, lit_2372@ha /* 0x806461D0@ha */
/* 804C401C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 804C4020  90 01 00 60 */	stw r0, 0x60(r1)
/* 804C4024  C8 45 61 5C */	lfd f2, lit_770@l(r5)  /* 0x8064615C@l */
/* 804C4028  3C C0 80 64 */	lis r6, lit_845@ha /* 0x80646164@ha */
/* 804C402C  90 81 00 64 */	stw r4, 0x64(r1)
/* 804C4030  C0 03 61 D0 */	lfs f0, lit_2372@l(r3)  /* 0x806461D0@l */
/* 804C4034  C8 21 00 60 */	lfd f1, 0x60(r1)
/* 804C4038  EC 21 10 28 */	fsubs f1, f1, f2
/* 804C403C  C0 46 61 64 */	lfs f2, lit_845@l(r6)  /* 0x80646164@l */
/* 804C4040  EC 01 00 24 */	fdivs f0, f1, f0
/* 804C4044  EC 02 00 28 */	fsubs f0, f2, f0
/* 804C4048  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 804C404C  A8 1D 00 14 */	lha r0, 0x14(r29)
/* 804C4050  2C 00 00 00 */	cmpwi r0, 0
/* 804C4054  40 82 00 70 */	bne lbl_804C40C4
/* 804C4058  7F A4 EB 78 */	mr r4, r29
/* 804C405C  38 60 01 5B */	li r3, 0x15b
/* 804C4060  48 16 9F 49 */	bl sAdo_OngenTrgStart
/* 804C4064  80 DD 00 00 */	lwz r6, 0(r29)
/* 804C4068  38 61 00 14 */	addi r3, r1, 0x14
/* 804C406C  80 BD 00 04 */	lwz r5, 4(r29)
/* 804C4070  38 80 00 00 */	li r4, 0
/* 804C4074  90 C1 00 14 */	stw r6, 0x14(r1)
/* 804C4078  90 A1 00 18 */	stw r5, 0x18(r1)
/* 804C407C  80 1D 00 08 */	lwz r0, 8(r29)
/* 804C4080  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804C4084  90 C1 00 20 */	stw r6, 0x20(r1)
/* 804C4088  90 A1 00 24 */	stw r5, 0x24(r1)
/* 804C408C  90 01 00 28 */	stw r0, 0x28(r1)
/* 804C4090  4B EC 50 1D */	bl mCoBG_Wpos2Attribute
/* 804C4094  80 BF 60 9C */	lwz r5, 0x609c(r31)
/* 804C4098  7C 69 07 34 */	extsh r9, r3
/* 804C409C  7F 87 E3 78 */	mr r7, r28
/* 804C40A0  38 81 00 20 */	addi r4, r1, 0x20
/* 804C40A4  81 85 00 00 */	lwz r12, 0(r5)
/* 804C40A8  38 60 00 61 */	li r3, 0x61
/* 804C40AC  A1 1D 00 1A */	lhz r8, 0x1a(r29)
/* 804C40B0  38 A0 00 01 */	li r5, 1
/* 804C40B4  38 C0 00 00 */	li r6, 0
/* 804C40B8  39 40 00 00 */	li r10, 0
/* 804C40BC  7D 89 03 A6 */	mtctr r12
/* 804C40C0  4E 80 04 21 */	bctrl 
lbl_804C40C4:
/* 804C40C4  3C 60 80 64 */	lis r3, data_8064613C@ha /* 0x8064613C@ha */
/* 804C40C8  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 804C40CC  C0 03 61 3C */	lfs f0, data_8064613C@l(r3)  /* 0x8064613C@l */
/* 804C40D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C40D4  4C 40 13 82 */	cror 2, 0, 2
/* 804C40D8  40 82 00 34 */	bne lbl_804C410C
/* 804C40DC  80 DD 00 00 */	lwz r6, 0(r29)
/* 804C40E0  38 81 00 08 */	addi r4, r1, 8
/* 804C40E4  80 1D 00 04 */	lwz r0, 4(r29)
/* 804C40E8  38 60 00 00 */	li r3, 0
/* 804C40EC  38 A0 00 01 */	li r5, 1
/* 804C40F0  90 C1 00 08 */	stw r6, 8(r1)
/* 804C40F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C40F8  80 1D 00 08 */	lwz r0, 8(r29)
/* 804C40FC  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C4100  4B EE 37 31 */	bl mFI_SetFG_common
/* 804C4104  38 00 00 00 */	li r0, 0
/* 804C4108  B0 1D 00 10 */	sth r0, 0x10(r29)
lbl_804C410C:
/* 804C410C  A8 7D 00 14 */	lha r3, 0x14(r29)
/* 804C4110  38 03 00 01 */	addi r0, r3, 1
/* 804C4114  B0 1D 00 14 */	sth r0, 0x14(r29)
lbl_804C4118:
/* 804C4118  3B DE 00 01 */	addi r30, r30, 1
/* 804C411C  3B BD 00 1C */	addi r29, r29, 0x1c
/* 804C4120  2C 1E 00 0D */	cmpwi r30, 0xd
/* 804C4124  41 80 FD 30 */	blt lbl_804C3E54
/* 804C4128  39 61 00 80 */	addi r11, r1, 0x80
/* 804C412C  4B BD 6D F1 */	bl func_8009AF1C
/* 804C4130  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804C4134  7C 08 03 A6 */	mtlr r0
/* 804C4138  38 21 00 80 */	addi r1, r1, 0x80
/* 804C413C  4E 80 00 20 */	blr 
