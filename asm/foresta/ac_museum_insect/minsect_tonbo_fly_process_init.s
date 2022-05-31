lbl_80460AA8:
/* 80460AA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80460AAC  7C 08 02 A6 */	mflr r0
/* 80460AB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80460AB4  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80460AB8  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80460ABC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80460AC0  3C 80 81 1D */	lis r4, data_811CDFD0@ha /* 0x811CDFD0@ha */
/* 80460AC4  A8 03 00 74 */	lha r0, 0x74(r3)
/* 80460AC8  80 84 DF D0 */	lwz r4, data_811CDFD0@l(r4)  /* 0x811CDFD0@l */
/* 80460ACC  7C 7F 1B 78 */	mr r31, r3
/* 80460AD0  38 60 00 01 */	li r3, 1
/* 80460AD4  7C 60 00 30 */	slw r0, r3, r0
/* 80460AD8  A8 64 2F A0 */	lha r3, 0x2fa0(r4)
/* 80460ADC  7C 60 00 78 */	andc r0, r3, r0
/* 80460AE0  B0 04 2F A0 */	sth r0, 0x2fa0(r4)
/* 80460AE4  4B BF C2 11 */	bl fqrand
/* 80460AE8  3C 80 80 64 */	lis r4, lit_1086@ha /* 0x80644708@ha */
/* 80460AEC  7F E3 FB 78 */	mr r3, r31
/* 80460AF0  C0 04 47 08 */	lfs f0, lit_1086@l(r4)  /* 0x80644708@l */
/* 80460AF4  EC 00 08 2A */	fadds f0, f0, f1
/* 80460AF8  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 80460AFC  4B FF E6 C5 */	bl minsect_tonbo_aim_distance_set
/* 80460B00  3C 80 80 64 */	lis r4, lit_677@ha /* 0x80644650@ha */
/* 80460B04  7F E3 FB 78 */	mr r3, r31
/* 80460B08  C0 04 46 50 */	lfs f0, lit_677@l(r4)  /* 0x80644650@l */
/* 80460B0C  EF E1 00 32 */	fmuls f31, f1, f0
/* 80460B10  4B FF E5 C5 */	bl minsect_tonbo_max_speed_set
/* 80460B14  3C 60 80 64 */	lis r3, lit_1525@ha /* 0x80644750@ha */
/* 80460B18  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80460B1C  C0 03 47 50 */	lfs f0, lit_1525@l(r3)  /* 0x80644750@l */
/* 80460B20  EC 01 00 32 */	fmuls f0, f1, f0
/* 80460B24  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 80460B28  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 80460B2C  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 80460B30  90 7F 00 44 */	stw r3, 0x44(r31)
/* 80460B34  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80460B38  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 80460B3C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80460B40  4B BF C1 B5 */	bl fqrand
/* 80460B44  3C 80 80 64 */	lis r4, lit_586@ha /* 0x80644634@ha */
/* 80460B48  3C 60 80 64 */	lis r3, lit_1239@ha /* 0x80644734@ha */
/* 80460B4C  C0 44 46 34 */	lfs f2, lit_586@l(r4)  /* 0x80644634@l */
/* 80460B50  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80460B54  EC 22 00 72 */	fmuls f1, f2, f1
/* 80460B58  C0 63 47 34 */	lfs f3, lit_1239@l(r3)  /* 0x80644734@l */
/* 80460B5C  EC 22 08 2A */	fadds f1, f2, f1
/* 80460B60  EC 00 08 2A */	fadds f0, f0, f1
/* 80460B64  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 80460B68  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80460B6C  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80460B70  40 80 00 08 */	bge lbl_80460B78
/* 80460B74  48 00 00 08 */	b lbl_80460B7C
lbl_80460B78:
/* 80460B78  FC 60 08 90 */	fmr f3, f1
lbl_80460B7C:
/* 80460B7C  3C 60 80 64 */	lis r3, lit_935@ha /* 0x806446C4@ha */
/* 80460B80  C0 03 46 C4 */	lfs f0, lit_935@l(r3)  /* 0x806446C4@l */
/* 80460B84  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 80460B88  40 81 00 08 */	ble lbl_80460B90
/* 80460B8C  48 00 00 1C */	b lbl_80460BA8
lbl_80460B90:
/* 80460B90  3C 60 80 64 */	lis r3, lit_1239@ha /* 0x80644734@ha */
/* 80460B94  C0 03 47 34 */	lfs f0, lit_1239@l(r3)  /* 0x80644734@l */
/* 80460B98  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80460B9C  40 80 00 08 */	bge lbl_80460BA4
/* 80460BA0  48 00 00 08 */	b lbl_80460BA8
lbl_80460BA4:
/* 80460BA4  FC 00 08 90 */	fmr f0, f1
lbl_80460BA8:
/* 80460BA8  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 80460BAC  A8 7F 00 6A */	lha r3, 0x6a(r31)
/* 80460BB0  4B F5 9F 41 */	bl sin_s
/* 80460BB4  EC 3F 00 72 */	fmuls f1, f31, f1
/* 80460BB8  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80460BBC  EC 00 08 2A */	fadds f0, f0, f1
/* 80460BC0  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 80460BC4  A8 7F 00 6A */	lha r3, 0x6a(r31)
/* 80460BC8  4B F5 9E D5 */	bl cos_s
/* 80460BCC  EC 3F 00 72 */	fmuls f1, f31, f1
/* 80460BD0  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80460BD4  3C A0 80 46 */	lis r5, minsect_tonbo_fly_process@ha /* 0x80460C30@ha */
/* 80460BD8  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 80460BDC  38 83 45 BC */	addi r4, r3, lit_459@l /* 0x806445BC@l */
/* 80460BE0  38 00 00 00 */	li r0, 0
/* 80460BE4  EC 00 08 2A */	fadds f0, f0, f1
/* 80460BE8  38 A5 0C 30 */	addi r5, r5, minsect_tonbo_fly_process@l /* 0x80460C30@l */
/* 80460BEC  C0 24 00 00 */	lfs f1, 0(r4)
/* 80460BF0  3C 60 80 64 */	lis r3, lit_506@ha /* 0x806445E8@ha */
/* 80460BF4  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 80460BF8  C0 03 45 E8 */	lfs f0, lit_506@l(r3)  /* 0x806445E8@l */
/* 80460BFC  90 BF 00 04 */	stw r5, 4(r31)
/* 80460C00  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 80460C04  D0 3F 00 40 */	stfs f1, 0x40(r31)
/* 80460C08  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 80460C0C  B0 1F 00 7A */	sth r0, 0x7a(r31)
/* 80460C10  B0 1F 00 7C */	sth r0, 0x7c(r31)
/* 80460C14  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80460C18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80460C1C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80460C20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80460C24  7C 08 03 A6 */	mtlr r0
/* 80460C28  38 21 00 20 */	addi r1, r1, 0x20
/* 80460C2C  4E 80 00 20 */	blr 
