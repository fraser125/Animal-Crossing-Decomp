lbl_8040CC50:
/* 8040CC50  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8040CC54  7C 08 02 A6 */	mflr r0
/* 8040CC58  90 01 00 34 */	stw r0, 0x34(r1)
/* 8040CC5C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8040CC60  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8040CC64  39 61 00 20 */	addi r11, r1, 0x20
/* 8040CC68  4B C8 E2 6D */	bl func_8009AED4
/* 8040CC6C  3C A0 81 1C */	lis r5, Matrix_now@ha /* 0x811C77A4@ha */
/* 8040CC70  7C 9E 23 78 */	mr r30, r4
/* 8040CC74  7C 7D 1B 78 */	mr r29, r3
/* 8040CC78  83 E5 77 A4 */	lwz r31, Matrix_now@l(r5)  /* 0x811C77A4@l */
/* 8040CC7C  A8 7E 00 04 */	lha r3, 4(r30)
/* 8040CC80  4B FA DE 71 */	bl sin_s
/* 8040CC84  FF E0 08 90 */	fmr f31, f1
/* 8040CC88  A8 7E 00 04 */	lha r3, 4(r30)
/* 8040CC8C  4B FA DE 11 */	bl cos_s
/* 8040CC90  C0 BF 00 00 */	lfs f5, 0(r31)
/* 8040CC94  C1 3F 00 10 */	lfs f9, 0x10(r31)
/* 8040CC98  C0 7D 00 00 */	lfs f3, 0(r29)
/* 8040CC9C  EC 05 07 F2 */	fmuls f0, f5, f31
/* 8040CCA0  C0 5D 00 04 */	lfs f2, 4(r29)
/* 8040CCA4  EC 85 00 72 */	fmuls f4, f5, f1
/* 8040CCA8  EC A5 00 F2 */	fmuls f5, f5, f3
/* 8040CCAC  C0 FF 00 20 */	lfs f7, 0x20(r31)
/* 8040CCB0  EC 49 00 B2 */	fmuls f2, f9, f2
/* 8040CCB4  C0 DD 00 08 */	lfs f6, 8(r29)
/* 8040CCB8  EC 69 07 F2 */	fmuls f3, f9, f31
/* 8040CCBC  C1 1F 00 30 */	lfs f8, 0x30(r31)
/* 8040CCC0  EC C7 01 B2 */	fmuls f6, f7, f6
/* 8040CCC4  EC A5 10 2A */	fadds f5, f5, f2
/* 8040CCC8  FC 40 00 50 */	fneg f2, f0
/* 8040CCCC  EC 09 00 72 */	fmuls f0, f9, f1
/* 8040CCD0  EC A6 28 2A */	fadds f5, f6, f5
/* 8040CCD4  EC 64 18 2A */	fadds f3, f4, f3
/* 8040CCD8  EC 02 00 2A */	fadds f0, f2, f0
/* 8040CCDC  EC 48 28 2A */	fadds f2, f8, f5
/* 8040CCE0  D0 5F 00 30 */	stfs f2, 0x30(r31)
/* 8040CCE4  D0 7F 00 00 */	stfs f3, 0(r31)
/* 8040CCE8  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8040CCEC  C0 BF 00 04 */	lfs f5, 4(r31)
/* 8040CCF0  C1 3F 00 14 */	lfs f9, 0x14(r31)
/* 8040CCF4  C0 7D 00 00 */	lfs f3, 0(r29)
/* 8040CCF8  EC 05 07 F2 */	fmuls f0, f5, f31
/* 8040CCFC  C0 5D 00 04 */	lfs f2, 4(r29)
/* 8040CD00  EC 85 00 72 */	fmuls f4, f5, f1
/* 8040CD04  EC A5 00 F2 */	fmuls f5, f5, f3
/* 8040CD08  C0 FF 00 24 */	lfs f7, 0x24(r31)
/* 8040CD0C  EC 49 00 B2 */	fmuls f2, f9, f2
/* 8040CD10  C0 DD 00 08 */	lfs f6, 8(r29)
/* 8040CD14  EC 69 07 F2 */	fmuls f3, f9, f31
/* 8040CD18  C1 1F 00 34 */	lfs f8, 0x34(r31)
/* 8040CD1C  EC C7 01 B2 */	fmuls f6, f7, f6
/* 8040CD20  EC A5 10 2A */	fadds f5, f5, f2
/* 8040CD24  FC 40 00 50 */	fneg f2, f0
/* 8040CD28  EC 09 00 72 */	fmuls f0, f9, f1
/* 8040CD2C  EC A6 28 2A */	fadds f5, f6, f5
/* 8040CD30  EC 64 18 2A */	fadds f3, f4, f3
/* 8040CD34  EC 02 00 2A */	fadds f0, f2, f0
/* 8040CD38  EC 48 28 2A */	fadds f2, f8, f5
/* 8040CD3C  D0 5F 00 34 */	stfs f2, 0x34(r31)
/* 8040CD40  D0 7F 00 04 */	stfs f3, 4(r31)
/* 8040CD44  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 8040CD48  C0 DF 00 08 */	lfs f6, 8(r31)
/* 8040CD4C  C1 5F 00 18 */	lfs f10, 0x18(r31)
/* 8040CD50  C0 BD 00 00 */	lfs f5, 0(r29)
/* 8040CD54  EC 06 07 F2 */	fmuls f0, f6, f31
/* 8040CD58  C0 5D 00 04 */	lfs f2, 4(r29)
/* 8040CD5C  EC 86 00 72 */	fmuls f4, f6, f1
/* 8040CD60  EC 6A 07 F2 */	fmuls f3, f10, f31
/* 8040CD64  C1 1F 00 28 */	lfs f8, 0x28(r31)
/* 8040CD68  C0 FD 00 08 */	lfs f7, 8(r29)
/* 8040CD6C  EC C6 01 72 */	fmuls f6, f6, f5
/* 8040CD70  C1 3F 00 38 */	lfs f9, 0x38(r31)
/* 8040CD74  EC AA 00 B2 */	fmuls f5, f10, f2
/* 8040CD78  EC E8 01 F2 */	fmuls f7, f8, f7
/* 8040CD7C  FC 40 00 50 */	fneg f2, f0
/* 8040CD80  EC A6 28 2A */	fadds f5, f6, f5
/* 8040CD84  EC 0A 00 72 */	fmuls f0, f10, f1
/* 8040CD88  EC 64 18 2A */	fadds f3, f4, f3
/* 8040CD8C  EC 87 28 2A */	fadds f4, f7, f5
/* 8040CD90  EC 02 00 2A */	fadds f0, f2, f0
/* 8040CD94  EC 49 20 2A */	fadds f2, f9, f4
/* 8040CD98  D0 5F 00 38 */	stfs f2, 0x38(r31)
/* 8040CD9C  D0 7F 00 08 */	stfs f3, 8(r31)
/* 8040CDA0  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 8040CDA4  C0 DF 00 0C */	lfs f6, 0xc(r31)
/* 8040CDA8  C1 5F 00 1C */	lfs f10, 0x1c(r31)
/* 8040CDAC  C0 BD 00 00 */	lfs f5, 0(r29)
/* 8040CDB0  EC 06 07 F2 */	fmuls f0, f6, f31
/* 8040CDB4  C0 5D 00 04 */	lfs f2, 4(r29)
/* 8040CDB8  EC 86 00 72 */	fmuls f4, f6, f1
/* 8040CDBC  EC 6A 07 F2 */	fmuls f3, f10, f31
/* 8040CDC0  C1 1F 00 2C */	lfs f8, 0x2c(r31)
/* 8040CDC4  C0 FD 00 08 */	lfs f7, 8(r29)
/* 8040CDC8  EC C6 01 72 */	fmuls f6, f6, f5
/* 8040CDCC  C1 3F 00 3C */	lfs f9, 0x3c(r31)
/* 8040CDD0  EC AA 00 B2 */	fmuls f5, f10, f2
/* 8040CDD4  EC E8 01 F2 */	fmuls f7, f8, f7
/* 8040CDD8  FC 40 00 50 */	fneg f2, f0
/* 8040CDDC  EC A6 28 2A */	fadds f5, f6, f5
/* 8040CDE0  EC 0A 00 72 */	fmuls f0, f10, f1
/* 8040CDE4  EC 24 18 2A */	fadds f1, f4, f3
/* 8040CDE8  EC 67 28 2A */	fadds f3, f7, f5
/* 8040CDEC  EC 02 00 2A */	fadds f0, f2, f0
/* 8040CDF0  EC 49 18 2A */	fadds f2, f9, f3
/* 8040CDF4  D0 5F 00 3C */	stfs f2, 0x3c(r31)
/* 8040CDF8  D0 3F 00 0C */	stfs f1, 0xc(r31)
/* 8040CDFC  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8040CE00  A8 7E 00 02 */	lha r3, 2(r30)
/* 8040CE04  7C 60 07 35 */	extsh. r0, r3
/* 8040CE08  41 82 00 B4 */	beq lbl_8040CEBC
/* 8040CE0C  4B FA DC E5 */	bl sin_s
/* 8040CE10  FF E0 08 90 */	fmr f31, f1
/* 8040CE14  A8 7E 00 02 */	lha r3, 2(r30)
/* 8040CE18  4B FA DC 85 */	bl cos_s
/* 8040CE1C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8040CE20  C0 BF 00 20 */	lfs f5, 0x20(r31)
/* 8040CE24  EC 80 00 72 */	fmuls f4, f0, f1
/* 8040CE28  EC 65 07 F2 */	fmuls f3, f5, f31
/* 8040CE2C  EC 40 07 F2 */	fmuls f2, f0, f31
/* 8040CE30  EC 05 00 72 */	fmuls f0, f5, f1
/* 8040CE34  EC 64 18 28 */	fsubs f3, f4, f3
/* 8040CE38  EC 02 00 2A */	fadds f0, f2, f0
/* 8040CE3C  D0 7F 00 00 */	stfs f3, 0(r31)
/* 8040CE40  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8040CE44  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8040CE48  C0 BF 00 24 */	lfs f5, 0x24(r31)
/* 8040CE4C  EC 80 00 72 */	fmuls f4, f0, f1
/* 8040CE50  EC 65 07 F2 */	fmuls f3, f5, f31
/* 8040CE54  EC 40 07 F2 */	fmuls f2, f0, f31
/* 8040CE58  EC 05 00 72 */	fmuls f0, f5, f1
/* 8040CE5C  EC 64 18 28 */	fsubs f3, f4, f3
/* 8040CE60  EC 02 00 2A */	fadds f0, f2, f0
/* 8040CE64  D0 7F 00 04 */	stfs f3, 4(r31)
/* 8040CE68  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 8040CE6C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8040CE70  C0 BF 00 28 */	lfs f5, 0x28(r31)
/* 8040CE74  EC 80 00 72 */	fmuls f4, f0, f1
/* 8040CE78  EC 65 07 F2 */	fmuls f3, f5, f31
/* 8040CE7C  EC 40 07 F2 */	fmuls f2, f0, f31
/* 8040CE80  EC 05 00 72 */	fmuls f0, f5, f1
/* 8040CE84  EC 64 18 28 */	fsubs f3, f4, f3
/* 8040CE88  EC 02 00 2A */	fadds f0, f2, f0
/* 8040CE8C  D0 7F 00 08 */	stfs f3, 8(r31)
/* 8040CE90  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8040CE94  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8040CE98  C0 BF 00 2C */	lfs f5, 0x2c(r31)
/* 8040CE9C  EC 80 00 72 */	fmuls f4, f0, f1
/* 8040CEA0  EC 65 07 F2 */	fmuls f3, f5, f31
/* 8040CEA4  EC 40 07 F2 */	fmuls f2, f0, f31
/* 8040CEA8  EC 05 00 72 */	fmuls f0, f5, f1
/* 8040CEAC  EC 24 18 28 */	fsubs f1, f4, f3
/* 8040CEB0  EC 02 00 2A */	fadds f0, f2, f0
/* 8040CEB4  D0 3F 00 0C */	stfs f1, 0xc(r31)
/* 8040CEB8  D0 1F 00 2C */	stfs f0, 0x2c(r31)
lbl_8040CEBC:
/* 8040CEBC  A8 7E 00 00 */	lha r3, 0(r30)
/* 8040CEC0  7C 60 07 35 */	extsh. r0, r3
/* 8040CEC4  41 82 00 C4 */	beq lbl_8040CF88
/* 8040CEC8  4B FA DC 29 */	bl sin_s
/* 8040CECC  FF E0 08 90 */	fmr f31, f1
/* 8040CED0  A8 7E 00 00 */	lha r3, 0(r30)
/* 8040CED4  4B FA DB C9 */	bl cos_s
/* 8040CED8  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 8040CEDC  C0 BF 00 20 */	lfs f5, 0x20(r31)
/* 8040CEE0  EC 02 07 F2 */	fmuls f0, f2, f31
/* 8040CEE4  EC 82 00 72 */	fmuls f4, f2, f1
/* 8040CEE8  EC 65 07 F2 */	fmuls f3, f5, f31
/* 8040CEEC  FC 40 00 50 */	fneg f2, f0
/* 8040CEF0  EC 05 00 72 */	fmuls f0, f5, f1
/* 8040CEF4  EC 64 18 2A */	fadds f3, f4, f3
/* 8040CEF8  EC 02 00 2A */	fadds f0, f2, f0
/* 8040CEFC  D0 7F 00 10 */	stfs f3, 0x10(r31)
/* 8040CF00  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8040CF04  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 8040CF08  C0 BF 00 24 */	lfs f5, 0x24(r31)
/* 8040CF0C  EC 02 07 F2 */	fmuls f0, f2, f31
/* 8040CF10  EC 82 00 72 */	fmuls f4, f2, f1
/* 8040CF14  EC 65 07 F2 */	fmuls f3, f5, f31
/* 8040CF18  FC 40 00 50 */	fneg f2, f0
/* 8040CF1C  EC 05 00 72 */	fmuls f0, f5, f1
/* 8040CF20  EC 64 18 2A */	fadds f3, f4, f3
/* 8040CF24  EC 02 00 2A */	fadds f0, f2, f0
/* 8040CF28  D0 7F 00 14 */	stfs f3, 0x14(r31)
/* 8040CF2C  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 8040CF30  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 8040CF34  C0 BF 00 28 */	lfs f5, 0x28(r31)
/* 8040CF38  EC 02 07 F2 */	fmuls f0, f2, f31
/* 8040CF3C  EC 82 00 72 */	fmuls f4, f2, f1
/* 8040CF40  EC 65 07 F2 */	fmuls f3, f5, f31
/* 8040CF44  FC 40 00 50 */	fneg f2, f0
/* 8040CF48  EC 05 00 72 */	fmuls f0, f5, f1
/* 8040CF4C  EC 64 18 2A */	fadds f3, f4, f3
/* 8040CF50  EC 02 00 2A */	fadds f0, f2, f0
/* 8040CF54  D0 7F 00 18 */	stfs f3, 0x18(r31)
/* 8040CF58  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8040CF5C  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 8040CF60  C0 BF 00 2C */	lfs f5, 0x2c(r31)
/* 8040CF64  EC 02 07 F2 */	fmuls f0, f2, f31
/* 8040CF68  EC 82 00 72 */	fmuls f4, f2, f1
/* 8040CF6C  EC 65 07 F2 */	fmuls f3, f5, f31
/* 8040CF70  FC 40 00 50 */	fneg f2, f0
/* 8040CF74  EC 05 00 72 */	fmuls f0, f5, f1
/* 8040CF78  EC 24 18 2A */	fadds f1, f4, f3
/* 8040CF7C  EC 02 00 2A */	fadds f0, f2, f0
/* 8040CF80  D0 3F 00 1C */	stfs f1, 0x1c(r31)
/* 8040CF84  D0 1F 00 2C */	stfs f0, 0x2c(r31)
lbl_8040CF88:
/* 8040CF88  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8040CF8C  39 61 00 20 */	addi r11, r1, 0x20
/* 8040CF90  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8040CF94  4B C8 DF 8D */	bl func_8009AF20
/* 8040CF98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8040CF9C  7C 08 03 A6 */	mtlr r0
/* 8040CFA0  38 21 00 30 */	addi r1, r1, 0x30
/* 8040CFA4  4E 80 00 20 */	blr 
