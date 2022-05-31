lbl_803B7A40:
/* 803B7A40  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 803B7A44  7C 08 02 A6 */	mflr r0
/* 803B7A48  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 803B7A4C  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 803B7A50  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 803B7A54  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 803B7A58  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 803B7A5C  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 803B7A60  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 803B7A64  39 61 00 90 */	addi r11, r1, 0x90
/* 803B7A68  4B CE 34 65 */	bl func_8009AECC
/* 803B7A6C  3D 20 81 17 */	lis r9, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B7A70  3D 00 80 64 */	lis r8, lit_545@ha /* 0x8064244C@ha */
/* 803B7A74  39 29 9B A0 */	addi r9, r9, data_81169BA0@l /* 0x81169BA0@l */
/* 803B7A78  7C 7B 1B 78 */	mr r27, r3
/* 803B7A7C  C3 E9 00 10 */	lfs f31, 0x10(r9)
/* 803B7A80  7C 9C 23 78 */	mr r28, r4
/* 803B7A84  C0 68 24 4C */	lfs f3, lit_545@l(r8)  /* 0x8064244C@l */
/* 803B7A88  7C BD 2B 78 */	mr r29, r5
/* 803B7A8C  C0 49 00 2C */	lfs f2, 0x2c(r9)
/* 803B7A90  FF A0 08 90 */	fmr f29, f1
/* 803B7A94  C0 09 00 28 */	lfs f0, 0x28(r9)
/* 803B7A98  7C DE 33 78 */	mr r30, r6
/* 803B7A9C  7C FF 3B 78 */	mr r31, r7
/* 803B7AA0  EF C3 F8 28 */	fsubs f30, f3, f31
/* 803B7AA4  EC 42 00 32 */	fmuls f2, f2, f0
/* 803B7AA8  38 7B 00 0F */	addi r3, r27, 0xf
/* 803B7AAC  38 9C 00 0F */	addi r4, r28, 0xf
/* 803B7AB0  38 BD 00 0F */	addi r5, r29, 0xf
/* 803B7AB4  38 DE 00 0F */	addi r6, r30, 0xf
/* 803B7AB8  38 FF 00 0F */	addi r7, r31, 0xf
/* 803B7ABC  4B FF F9 0D */	bl mEnv_ChangeRGBLight
/* 803B7AC0  A8 9D 00 12 */	lha r4, 0x12(r29)
/* 803B7AC4  3C A0 43 30 */	lis r5, 0x4330
/* 803B7AC8  A8 1C 00 12 */	lha r0, 0x12(r28)
/* 803B7ACC  3C E0 80 64 */	lis r7, lit_471@ha /* 0x806423EC@ha */
/* 803B7AD0  54 84 05 BE */	clrlwi r4, r4, 0x16
/* 803B7AD4  A8 7E 00 12 */	lha r3, 0x12(r30)
/* 803B7AD8  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 803B7ADC  54 00 05 BE */	clrlwi r0, r0, 0x16
/* 803B7AE0  90 81 00 14 */	stw r4, 0x14(r1)
/* 803B7AE4  6C 06 80 00 */	xoris r6, r0, 0x8000
/* 803B7AE8  A8 1F 00 12 */	lha r0, 0x12(r31)
/* 803B7AEC  54 63 05 BE */	clrlwi r3, r3, 0x16
/* 803B7AF0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 803B7AF4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 803B7AF8  54 00 05 BE */	clrlwi r0, r0, 0x16
/* 803B7AFC  C8 07 23 EC */	lfd f0, lit_471@l(r7)  /* 0x806423EC@l */
/* 803B7B00  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 803B7B04  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803B7B08  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 803B7B0C  EC 61 00 28 */	fsubs f3, f1, f0
/* 803B7B10  90 A1 00 18 */	stw r5, 0x18(r1)
/* 803B7B14  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 803B7B18  90 01 00 2C */	stw r0, 0x2c(r1)
/* 803B7B1C  EC 41 00 28 */	fsubs f2, f1, f0
/* 803B7B20  90 A1 00 28 */	stw r5, 0x28(r1)
/* 803B7B24  EC 63 10 28 */	fsubs f3, f3, f2
/* 803B7B28  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 803B7B2C  90 61 00 34 */	stw r3, 0x34(r1)
/* 803B7B30  EC 41 00 28 */	fsubs f2, f1, f0
/* 803B7B34  90 A1 00 30 */	stw r5, 0x30(r1)
/* 803B7B38  EC 7D 00 F2 */	fmuls f3, f29, f3
/* 803B7B3C  C8 21 00 30 */	lfd f1, 0x30(r1)
/* 803B7B40  90 C1 00 0C */	stw r6, 0xc(r1)
/* 803B7B44  EC 21 00 28 */	fsubs f1, f1, f0
/* 803B7B48  90 A1 00 08 */	stw r5, 8(r1)
/* 803B7B4C  EC 22 08 28 */	fsubs f1, f2, f1
/* 803B7B50  C8 41 00 08 */	lfd f2, 8(r1)
/* 803B7B54  90 61 00 24 */	stw r3, 0x24(r1)
/* 803B7B58  EC 82 00 28 */	fsubs f4, f2, f0
/* 803B7B5C  90 A1 00 20 */	stw r5, 0x20(r1)
/* 803B7B60  EC 3D 00 72 */	fmuls f1, f29, f1
/* 803B7B64  C8 41 00 20 */	lfd f2, 0x20(r1)
/* 803B7B68  EC 64 18 2A */	fadds f3, f4, f3
/* 803B7B6C  90 A1 00 48 */	stw r5, 0x48(r1)
/* 803B7B70  EC 42 00 28 */	fsubs f2, f2, f0
/* 803B7B74  EC 7F 00 F2 */	fmuls f3, f31, f3
/* 803B7B78  90 A1 00 50 */	stw r5, 0x50(r1)
/* 803B7B7C  EC 22 08 2A */	fadds f1, f2, f1
/* 803B7B80  90 A1 00 60 */	stw r5, 0x60(r1)
/* 803B7B84  90 A1 00 68 */	stw r5, 0x68(r1)
/* 803B7B88  EC 3E 00 72 */	fmuls f1, f30, f1
/* 803B7B8C  90 A1 00 40 */	stw r5, 0x40(r1)
/* 803B7B90  EC 23 08 2A */	fadds f1, f3, f1
/* 803B7B94  90 A1 00 58 */	stw r5, 0x58(r1)
/* 803B7B98  FC 20 08 1E */	fctiwz f1, f1
/* 803B7B9C  D8 21 00 38 */	stfd f1, 0x38(r1)
/* 803B7BA0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 803B7BA4  B0 1B 00 12 */	sth r0, 0x12(r27)
/* 803B7BA8  A8 1C 00 14 */	lha r0, 0x14(r28)
/* 803B7BAC  A8 7D 00 14 */	lha r3, 0x14(r29)
/* 803B7BB0  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 803B7BB4  A8 1F 00 14 */	lha r0, 0x14(r31)
/* 803B7BB8  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 803B7BBC  A8 DE 00 14 */	lha r6, 0x14(r30)
/* 803B7BC0  90 81 00 4C */	stw r4, 0x4c(r1)
/* 803B7BC4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803B7BC8  6C C3 80 00 */	xoris r3, r6, 0x8000
/* 803B7BCC  90 A1 00 54 */	stw r5, 0x54(r1)
/* 803B7BD0  C8 41 00 48 */	lfd f2, 0x48(r1)
/* 803B7BD4  C8 21 00 50 */	lfd f1, 0x50(r1)
/* 803B7BD8  90 01 00 64 */	stw r0, 0x64(r1)
/* 803B7BDC  EC 82 00 28 */	fsubs f4, f2, f0
/* 803B7BE0  EC 61 00 28 */	fsubs f3, f1, f0
/* 803B7BE4  90 61 00 6C */	stw r3, 0x6c(r1)
/* 803B7BE8  C8 41 00 60 */	lfd f2, 0x60(r1)
/* 803B7BEC  C8 21 00 68 */	lfd f1, 0x68(r1)
/* 803B7BF0  EC 64 18 28 */	fsubs f3, f4, f3
/* 803B7BF4  90 A1 00 44 */	stw r5, 0x44(r1)
/* 803B7BF8  EC 42 00 28 */	fsubs f2, f2, f0
/* 803B7BFC  EC 21 00 28 */	fsubs f1, f1, f0
/* 803B7C00  C8 81 00 40 */	lfd f4, 0x40(r1)
/* 803B7C04  EC 7D 00 F2 */	fmuls f3, f29, f3
/* 803B7C08  90 61 00 5C */	stw r3, 0x5c(r1)
/* 803B7C0C  EC 22 08 28 */	fsubs f1, f2, f1
/* 803B7C10  C8 41 00 58 */	lfd f2, 0x58(r1)
/* 803B7C14  EC 84 00 28 */	fsubs f4, f4, f0
/* 803B7C18  EC 42 00 28 */	fsubs f2, f2, f0
/* 803B7C1C  EC 1D 00 72 */	fmuls f0, f29, f1
/* 803B7C20  EC 24 18 2A */	fadds f1, f4, f3
/* 803B7C24  EC 02 00 2A */	fadds f0, f2, f0
/* 803B7C28  EC 3F 00 72 */	fmuls f1, f31, f1
/* 803B7C2C  EC 1E 00 32 */	fmuls f0, f30, f0
/* 803B7C30  EC 01 00 2A */	fadds f0, f1, f0
/* 803B7C34  FC 00 00 1E */	fctiwz f0, f0
/* 803B7C38  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 803B7C3C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 803B7C40  B0 1B 00 14 */	sth r0, 0x14(r27)
/* 803B7C44  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 803B7C48  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 803B7C4C  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 803B7C50  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 803B7C54  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 803B7C58  39 61 00 90 */	addi r11, r1, 0x90
/* 803B7C5C  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 803B7C60  4B CE 32 B9 */	bl func_8009AF18
/* 803B7C64  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 803B7C68  7C 08 03 A6 */	mtlr r0
/* 803B7C6C  38 21 00 C0 */	addi r1, r1, 0xc0
/* 803B7C70  4E 80 00 20 */	blr 
