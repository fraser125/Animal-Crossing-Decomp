lbl_80409AA4:
/* 80409AA4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80409AA8  7C 08 02 A6 */	mflr r0
/* 80409AAC  90 01 00 84 */	stw r0, 0x84(r1)
/* 80409AB0  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80409AB4  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80409AB8  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80409ABC  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80409AC0  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 80409AC4  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 80409AC8  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 80409ACC  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 80409AD0  DB 61 00 30 */	stfd f27, 0x30(r1)
/* 80409AD4  F3 61 00 38 */	psq_st f27, 56(r1), 0, 0 /* qr0 */
/* 80409AD8  39 61 00 30 */	addi r11, r1, 0x30
/* 80409ADC  4B C9 13 F9 */	bl func_8009AED4
/* 80409AE0  FF E0 20 90 */	fmr f31, f4
/* 80409AE4  7C 7D 1B 78 */	mr r29, r3
/* 80409AE8  FF 60 08 90 */	fmr f27, f1
/* 80409AEC  7C 9E 23 78 */	mr r30, r4
/* 80409AF0  FF 80 10 90 */	fmr f28, f2
/* 80409AF4  7C BF 2B 78 */	mr r31, r5
/* 80409AF8  D3 E1 00 08 */	stfs f31, 8(r1)
/* 80409AFC  FF A0 18 90 */	fmr f29, f3
/* 80409B00  FF C0 28 90 */	fmr f30, f5
/* 80409B04  FC E0 D8 90 */	fmr f7, f27
/* 80409B08  C0 23 00 00 */	lfs f1, 0(r3)
/* 80409B0C  FD 00 E0 90 */	fmr f8, f28
/* 80409B10  C0 43 00 04 */	lfs f2, 4(r3)
/* 80409B14  C0 64 00 00 */	lfs f3, 0(r4)
/* 80409B18  C0 84 00 04 */	lfs f4, 4(r4)
/* 80409B1C  C0 A5 00 00 */	lfs f5, 0(r5)
/* 80409B20  C0 C5 00 04 */	lfs f6, 4(r5)
/* 80409B24  4B FF EF 5D */	bl Math3DCheck3PointMinMaxAreaInside2D
/* 80409B28  2C 03 00 00 */	cmpwi r3, 0
/* 80409B2C  40 82 00 0C */	bne lbl_80409B38
/* 80409B30  38 60 00 00 */	li r3, 0
/* 80409B34  48 00 01 DC */	b lbl_80409D10
lbl_80409B38:
/* 80409B38  C0 BD 00 00 */	lfs f5, 0(r29)
/* 80409B3C  EF FF 07 F2 */	fmuls f31, f31, f31
/* 80409B40  C0 7D 00 04 */	lfs f3, 4(r29)
/* 80409B44  EC 3B 28 28 */	fsubs f1, f27, f5
/* 80409B48  EC 1C 18 28 */	fsubs f0, f28, f3
/* 80409B4C  EC 21 00 72 */	fmuls f1, f1, f1
/* 80409B50  EC 00 00 32 */	fmuls f0, f0, f0
/* 80409B54  EC 01 00 2A */	fadds f0, f1, f0
/* 80409B58  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80409B5C  41 80 00 4C */	blt lbl_80409BA8
/* 80409B60  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80409B64  C0 9E 00 04 */	lfs f4, 4(r30)
/* 80409B68  EC 3B 10 28 */	fsubs f1, f27, f2
/* 80409B6C  EC 1C 20 28 */	fsubs f0, f28, f4
/* 80409B70  EC 21 00 72 */	fmuls f1, f1, f1
/* 80409B74  EC 00 00 32 */	fmuls f0, f0, f0
/* 80409B78  EC 01 00 2A */	fadds f0, f1, f0
/* 80409B7C  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80409B80  41 80 00 28 */	blt lbl_80409BA8
/* 80409B84  C0 DF 00 00 */	lfs f6, 0(r31)
/* 80409B88  C0 FF 00 04 */	lfs f7, 4(r31)
/* 80409B8C  EC 3B 30 28 */	fsubs f1, f27, f6
/* 80409B90  EC 1C 38 28 */	fsubs f0, f28, f7
/* 80409B94  EC 21 00 72 */	fmuls f1, f1, f1
/* 80409B98  EC 00 00 32 */	fmuls f0, f0, f0
/* 80409B9C  EC 01 00 2A */	fadds f0, f1, f0
/* 80409BA0  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80409BA4  40 80 00 0C */	bge lbl_80409BB0
lbl_80409BA8:
/* 80409BA8  38 60 00 01 */	li r3, 1
/* 80409BAC  48 00 01 64 */	b lbl_80409D10
lbl_80409BB0:
/* 80409BB0  EC A5 D8 28 */	fsubs f5, f5, f27
/* 80409BB4  EC 84 E0 28 */	fsubs f4, f4, f28
/* 80409BB8  ED 03 E0 28 */	fsubs f8, f3, f28
/* 80409BBC  EC 42 D8 28 */	fsubs f2, f2, f27
/* 80409BC0  EC E7 E0 28 */	fsubs f7, f7, f28
/* 80409BC4  EC C6 D8 28 */	fsubs f6, f6, f27
/* 80409BC8  EC 25 01 32 */	fmuls f1, f5, f4
/* 80409BCC  EC 08 00 B2 */	fmuls f0, f8, f2
/* 80409BD0  EC 62 01 F2 */	fmuls f3, f2, f7
/* 80409BD4  EC 44 01 B2 */	fmuls f2, f4, f6
/* 80409BD8  EC 81 00 28 */	fsubs f4, f1, f0
/* 80409BDC  EC 26 02 32 */	fmuls f1, f6, f8
/* 80409BE0  EC 07 01 72 */	fmuls f0, f7, f5
/* 80409BE4  FC 04 E8 40 */	fcmpo cr0, f4, f29
/* 80409BE8  EC 43 10 28 */	fsubs f2, f3, f2
/* 80409BEC  EC 21 00 28 */	fsubs f1, f1, f0
/* 80409BF0  4C 40 13 82 */	cror 2, 0, 2
/* 80409BF4  40 82 00 1C */	bne lbl_80409C10
/* 80409BF8  FC 02 E8 40 */	fcmpo cr0, f2, f29
/* 80409BFC  4C 40 13 82 */	cror 2, 0, 2
/* 80409C00  40 82 00 10 */	bne lbl_80409C10
/* 80409C04  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 80409C08  4C 40 13 82 */	cror 2, 0, 2
/* 80409C0C  41 82 00 2C */	beq lbl_80409C38
lbl_80409C10:
/* 80409C10  FC 00 E8 50 */	fneg f0, f29
/* 80409C14  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80409C18  4C 41 13 82 */	cror 2, 1, 2
/* 80409C1C  40 82 00 24 */	bne lbl_80409C40
/* 80409C20  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80409C24  4C 41 13 82 */	cror 2, 1, 2
/* 80409C28  40 82 00 18 */	bne lbl_80409C40
/* 80409C2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80409C30  4C 41 13 82 */	cror 2, 1, 2
/* 80409C34  40 82 00 0C */	bne lbl_80409C40
lbl_80409C38:
/* 80409C38  38 60 00 01 */	li r3, 1
/* 80409C3C  48 00 00 D4 */	b lbl_80409D10
lbl_80409C40:
/* 80409C40  FC 20 F2 10 */	fabs f1, f30
/* 80409C44  3C 60 80 64 */	lis r3, lit_872@ha /* 0x80643714@ha */
/* 80409C48  C0 03 37 14 */	lfs f0, lit_872@l(r3)  /* 0x80643714@l */
/* 80409C4C  FC 20 08 18 */	frsp f1, f1
/* 80409C50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80409C54  40 81 00 B8 */	ble lbl_80409D0C
/* 80409C58  FC 20 D8 90 */	fmr f1, f27
/* 80409C5C  C0 7D 00 00 */	lfs f3, 0(r29)
/* 80409C60  FC 40 E0 90 */	fmr f2, f28
/* 80409C64  C0 9D 00 04 */	lfs f4, 4(r29)
/* 80409C68  C0 BE 00 00 */	lfs f5, 0(r30)
/* 80409C6C  38 61 00 10 */	addi r3, r1, 0x10
/* 80409C70  C0 DE 00 04 */	lfs f6, 4(r30)
/* 80409C74  48 00 01 65 */	bl Math3D_pointVsLineSegmentLengthSquare2D
/* 80409C78  2C 03 00 00 */	cmpwi r3, 0
/* 80409C7C  41 82 00 18 */	beq lbl_80409C94
/* 80409C80  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80409C84  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80409C88  40 80 00 0C */	bge lbl_80409C94
/* 80409C8C  38 60 00 01 */	li r3, 1
/* 80409C90  48 00 00 80 */	b lbl_80409D10
lbl_80409C94:
/* 80409C94  FC 20 D8 90 */	fmr f1, f27
/* 80409C98  C0 7E 00 00 */	lfs f3, 0(r30)
/* 80409C9C  FC 40 E0 90 */	fmr f2, f28
/* 80409CA0  C0 9E 00 04 */	lfs f4, 4(r30)
/* 80409CA4  C0 BF 00 00 */	lfs f5, 0(r31)
/* 80409CA8  38 61 00 10 */	addi r3, r1, 0x10
/* 80409CAC  C0 DF 00 04 */	lfs f6, 4(r31)
/* 80409CB0  48 00 01 29 */	bl Math3D_pointVsLineSegmentLengthSquare2D
/* 80409CB4  2C 03 00 00 */	cmpwi r3, 0
/* 80409CB8  41 82 00 18 */	beq lbl_80409CD0
/* 80409CBC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80409CC0  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80409CC4  40 80 00 0C */	bge lbl_80409CD0
/* 80409CC8  38 60 00 01 */	li r3, 1
/* 80409CCC  48 00 00 44 */	b lbl_80409D10
lbl_80409CD0:
/* 80409CD0  FC 20 D8 90 */	fmr f1, f27
/* 80409CD4  C0 7F 00 00 */	lfs f3, 0(r31)
/* 80409CD8  FC 40 E0 90 */	fmr f2, f28
/* 80409CDC  C0 9F 00 04 */	lfs f4, 4(r31)
/* 80409CE0  C0 BD 00 00 */	lfs f5, 0(r29)
/* 80409CE4  38 61 00 10 */	addi r3, r1, 0x10
/* 80409CE8  C0 DD 00 04 */	lfs f6, 4(r29)
/* 80409CEC  48 00 00 ED */	bl Math3D_pointVsLineSegmentLengthSquare2D
/* 80409CF0  2C 03 00 00 */	cmpwi r3, 0
/* 80409CF4  41 82 00 18 */	beq lbl_80409D0C
/* 80409CF8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80409CFC  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80409D00  40 80 00 0C */	bge lbl_80409D0C
/* 80409D04  38 60 00 01 */	li r3, 1
/* 80409D08  48 00 00 08 */	b lbl_80409D10
lbl_80409D0C:
/* 80409D0C  38 60 00 00 */	li r3, 0
lbl_80409D10:
/* 80409D10  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80409D14  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80409D18  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80409D1C  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80409D20  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 80409D24  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 80409D28  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 80409D2C  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 80409D30  E3 61 00 38 */	psq_l f27, 56(r1), 0, 0 /* qr0 */
/* 80409D34  39 61 00 30 */	addi r11, r1, 0x30
/* 80409D38  CB 61 00 30 */	lfd f27, 0x30(r1)
/* 80409D3C  4B C9 11 E5 */	bl func_8009AF20
/* 80409D40  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80409D44  7C 08 03 A6 */	mtlr r0
/* 80409D48  38 21 00 80 */	addi r1, r1, 0x80
/* 80409D4C  4E 80 00 20 */	blr 
