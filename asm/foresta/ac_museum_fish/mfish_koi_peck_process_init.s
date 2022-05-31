lbl_8043DE18:
/* 8043DE18  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8043DE1C  7C 08 02 A6 */	mflr r0
/* 8043DE20  90 01 00 34 */	stw r0, 0x34(r1)
/* 8043DE24  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8043DE28  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8043DE2C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8043DE30  3C A0 80 64 */	lis r5, lit_468@ha /* 0x80644248@ha */
/* 8043DE34  7C 7F 1B 78 */	mr r31, r3
/* 8043DE38  38 C5 42 48 */	addi r6, r5, lit_468@l /* 0x80644248@l */
/* 8043DE3C  38 A1 00 0A */	addi r5, r1, 0xa
/* 8043DE40  C0 06 00 00 */	lfs f0, 0(r6)
/* 8043DE44  38 C1 00 08 */	addi r6, r1, 8
/* 8043DE48  38 E1 00 0C */	addi r7, r1, 0xc
/* 8043DE4C  D0 03 05 D4 */	stfs f0, 0x5d4(r3)
/* 8043DE50  4B FF 93 6D */	bl mfish_get_player_angle
/* 8043DE54  4B C1 EE A1 */	bl fqrand
/* 8043DE58  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8043DE5C  3C 60 80 64 */	lis r3, lit_530@ha /* 0x80644274@ha */
/* 8043DE60  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 8043DE64  EC 60 00 72 */	fmuls f3, f0, f1
/* 8043DE68  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8043DE6C  C0 03 42 74 */	lfs f0, lit_530@l(r3)  /* 0x80644274@l */
/* 8043DE70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043DE74  EC 22 18 2A */	fadds f1, f2, f3
/* 8043DE78  40 80 00 20 */	bge lbl_8043DE98
/* 8043DE7C  3C 60 80 64 */	lis r3, lit_792@ha /* 0x806442C0@ha */
/* 8043DE80  C0 03 42 C0 */	lfs f0, lit_792@l(r3)  /* 0x806442C0@l */
/* 8043DE84  EC 21 00 32 */	fmuls f1, f1, f0
/* 8043DE88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043DE8C  40 80 00 08 */	bge lbl_8043DE94
/* 8043DE90  FC 00 08 90 */	fmr f0, f1
lbl_8043DE94:
/* 8043DE94  D0 1F 05 F0 */	stfs f0, 0x5f0(r31)
lbl_8043DE98:
/* 8043DE98  C0 1F 05 E8 */	lfs f0, 0x5e8(r31)
/* 8043DE9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043DEA0  40 81 00 08 */	ble lbl_8043DEA8
/* 8043DEA4  D0 3F 05 F0 */	stfs f1, 0x5f0(r31)
lbl_8043DEA8:
/* 8043DEA8  A8 FF 06 0E */	lha r7, 0x60e(r31)
/* 8043DEAC  3C 60 80 64 */	lis r3, lit_974@ha /* 0x806442EC@ha */
/* 8043DEB0  A8 A1 00 0A */	lha r5, 0xa(r1)
/* 8043DEB4  C0 03 42 EC */	lfs f0, lit_974@l(r3)  /* 0x806442EC@l */
/* 8043DEB8  7C 87 28 50 */	subf r4, r7, r5
/* 8043DEBC  7C 80 07 35 */	extsh. r0, r4
/* 8043DEC0  EF E1 00 32 */	fmuls f31, f1, f0
/* 8043DEC4  7C 80 07 34 */	extsh r0, r4
/* 8043DEC8  7C 60 00 D0 */	neg r3, r0
/* 8043DECC  41 80 00 08 */	blt lbl_8043DED4
/* 8043DED0  7C 03 03 78 */	mr r3, r0
lbl_8043DED4:
/* 8043DED4  A8 DF 00 30 */	lha r6, 0x30(r31)
/* 8043DED8  7C 03 30 00 */	cmpw r3, r6
/* 8043DEDC  40 80 00 0C */	bge lbl_8043DEE8
/* 8043DEE0  B0 BF 06 14 */	sth r5, 0x614(r31)
/* 8043DEE4  48 00 00 20 */	b lbl_8043DF04
lbl_8043DEE8:
/* 8043DEE8  7C 80 07 35 */	extsh. r0, r4
/* 8043DEEC  40 81 00 10 */	ble lbl_8043DEFC
/* 8043DEF0  7C 07 32 14 */	add r0, r7, r6
/* 8043DEF4  B0 1F 06 14 */	sth r0, 0x614(r31)
/* 8043DEF8  48 00 00 0C */	b lbl_8043DF04
lbl_8043DEFC:
/* 8043DEFC  7C 06 38 50 */	subf r0, r6, r7
/* 8043DF00  B0 1F 06 14 */	sth r0, 0x614(r31)
lbl_8043DF04:
/* 8043DF04  A8 01 00 08 */	lha r0, 8(r1)
/* 8043DF08  2C 00 00 00 */	cmpwi r0, 0
/* 8043DF0C  40 80 00 6C */	bge lbl_8043DF78
/* 8043DF10  4B C1 ED E5 */	bl fqrand
/* 8043DF14  3C 80 80 64 */	lis r4, lit_975@ha /* 0x806442F0@ha */
/* 8043DF18  3C 60 80 64 */	lis r3, lit_697@ha /* 0x806442B0@ha */
/* 8043DF1C  C0 44 42 F0 */	lfs f2, lit_975@l(r4)  /* 0x806442F0@l */
/* 8043DF20  C0 1F 05 F4 */	lfs f0, 0x5f4(r31)
/* 8043DF24  EC 22 00 72 */	fmuls f1, f2, f1
/* 8043DF28  C0 63 42 B0 */	lfs f3, lit_697@l(r3)  /* 0x806442B0@l */
/* 8043DF2C  EC 00 08 2A */	fadds f0, f0, f1
/* 8043DF30  D0 1F 05 F4 */	stfs f0, 0x5f4(r31)
/* 8043DF34  C0 3F 05 F4 */	lfs f1, 0x5f4(r31)
/* 8043DF38  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 8043DF3C  40 80 00 08 */	bge lbl_8043DF44
/* 8043DF40  48 00 00 08 */	b lbl_8043DF48
lbl_8043DF44:
/* 8043DF44  FC 60 08 90 */	fmr f3, f1
lbl_8043DF48:
/* 8043DF48  3C 60 80 64 */	lis r3, lit_976@ha /* 0x806442F4@ha */
/* 8043DF4C  C0 03 42 F4 */	lfs f0, lit_976@l(r3)  /* 0x806442F4@l */
/* 8043DF50  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8043DF54  40 81 00 1C */	ble lbl_8043DF70
/* 8043DF58  3C 60 80 64 */	lis r3, lit_697@ha /* 0x806442B0@ha */
/* 8043DF5C  C0 03 42 B0 */	lfs f0, lit_697@l(r3)  /* 0x806442B0@l */
/* 8043DF60  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8043DF64  40 80 00 08 */	bge lbl_8043DF6C
/* 8043DF68  48 00 00 08 */	b lbl_8043DF70
lbl_8043DF6C:
/* 8043DF6C  FC 00 08 90 */	fmr f0, f1
lbl_8043DF70:
/* 8043DF70  D0 1F 05 F4 */	stfs f0, 0x5f4(r31)
/* 8043DF74  48 00 00 68 */	b lbl_8043DFDC
lbl_8043DF78:
/* 8043DF78  4B C1 ED 7D */	bl fqrand
/* 8043DF7C  3C 80 80 64 */	lis r4, lit_975@ha /* 0x806442F0@ha */
/* 8043DF80  3C 60 80 64 */	lis r3, lit_697@ha /* 0x806442B0@ha */
/* 8043DF84  C0 44 42 F0 */	lfs f2, lit_975@l(r4)  /* 0x806442F0@l */
/* 8043DF88  C0 1F 05 F4 */	lfs f0, 0x5f4(r31)
/* 8043DF8C  EC 22 00 72 */	fmuls f1, f2, f1
/* 8043DF90  C0 63 42 B0 */	lfs f3, lit_697@l(r3)  /* 0x806442B0@l */
/* 8043DF94  EC 00 08 28 */	fsubs f0, f0, f1
/* 8043DF98  D0 1F 05 F4 */	stfs f0, 0x5f4(r31)
/* 8043DF9C  C0 3F 05 F4 */	lfs f1, 0x5f4(r31)
/* 8043DFA0  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 8043DFA4  40 80 00 08 */	bge lbl_8043DFAC
/* 8043DFA8  48 00 00 08 */	b lbl_8043DFB0
lbl_8043DFAC:
/* 8043DFAC  FC 60 08 90 */	fmr f3, f1
lbl_8043DFB0:
/* 8043DFB0  3C 60 80 64 */	lis r3, lit_976@ha /* 0x806442F4@ha */
/* 8043DFB4  C0 03 42 F4 */	lfs f0, lit_976@l(r3)  /* 0x806442F4@l */
/* 8043DFB8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8043DFBC  40 81 00 1C */	ble lbl_8043DFD8
/* 8043DFC0  3C 60 80 64 */	lis r3, lit_697@ha /* 0x806442B0@ha */
/* 8043DFC4  C0 03 42 B0 */	lfs f0, lit_697@l(r3)  /* 0x806442B0@l */
/* 8043DFC8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8043DFCC  40 80 00 08 */	bge lbl_8043DFD4
/* 8043DFD0  48 00 00 08 */	b lbl_8043DFD8
lbl_8043DFD4:
/* 8043DFD4  FC 00 08 90 */	fmr f0, f1
lbl_8043DFD8:
/* 8043DFD8  D0 1F 05 F4 */	stfs f0, 0x5f4(r31)
lbl_8043DFDC:
/* 8043DFDC  3C 60 80 64 */	lis r3, lit_699@ha /* 0x806442B8@ha */
/* 8043DFE0  3C 80 80 64 */	lis r4, lit_568@ha /* 0x80644284@ha */
/* 8043DFE4  C0 03 42 B8 */	lfs f0, lit_699@l(r3)  /* 0x806442B8@l */
/* 8043DFE8  3C A0 80 64 */	lis r5, lit_588@ha /* 0x80644298@ha */
/* 8043DFEC  C0 24 42 84 */	lfs f1, lit_568@l(r4)  /* 0x80644284@l */
/* 8043DFF0  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8043DFF4  C0 45 42 98 */	lfs f2, lit_588@l(r5)  /* 0x80644298@l */
/* 8043DFF8  EC 01 00 2A */	fadds f0, f1, f0
/* 8043DFFC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8043E000  FC 00 00 1E */	fctiwz f0, f0
/* 8043E004  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8043E008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8043E00C  B0 1F 06 32 */	sth r0, 0x632(r31)
/* 8043E010  4B C1 EC BD */	bl func_8005CCCC
/* 8043E014  54 60 04 21 */	rlwinm. r0, r3, 0, 0x10, 0x10
/* 8043E018  41 82 00 10 */	beq lbl_8043E028
/* 8043E01C  38 00 40 00 */	li r0, 0x4000
/* 8043E020  B0 1F 06 36 */	sth r0, 0x636(r31)
/* 8043E024  48 00 00 0C */	b lbl_8043E030
lbl_8043E028:
/* 8043E028  38 00 C0 00 */	li r0, -16384
/* 8043E02C  B0 1F 06 36 */	sth r0, 0x636(r31)
lbl_8043E030:
/* 8043E030  A8 1F 06 2E */	lha r0, 0x62e(r31)
/* 8043E034  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043E038  38 83 42 48 */	addi r4, r3, lit_468@l /* 0x80644248@l */
/* 8043E03C  54 00 06 AE */	rlwinm r0, r0, 0, 0x1a, 0x17
/* 8043E040  C0 04 00 00 */	lfs f0, 0(r4)
/* 8043E044  B0 1F 06 2E */	sth r0, 0x62e(r31)
/* 8043E048  3C 60 80 44 */	lis r3, mfish_koi_peck_process@ha /* 0x8043E074@ha */
/* 8043E04C  38 03 E0 74 */	addi r0, r3, mfish_koi_peck_process@l /* 0x8043E074@l */
/* 8043E050  D0 1F 05 EC */	stfs f0, 0x5ec(r31)
/* 8043E054  90 1F 00 34 */	stw r0, 0x34(r31)
/* 8043E058  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8043E05C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8043E060  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8043E064  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8043E068  7C 08 03 A6 */	mtlr r0
/* 8043E06C  38 21 00 30 */	addi r1, r1, 0x30
/* 8043E070  4E 80 00 20 */	blr 
