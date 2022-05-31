lbl_8050B950:
/* 8050B950  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050B954  7C 08 02 A6 */	mflr r0
/* 8050B958  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050B95C  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8050B960  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8050B964  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050B968  93 C1 00 08 */	stw r30, 8(r1)
/* 8050B96C  3C A0 80 65 */	lis r5, lit_438@ha /* 0x80648DF8@ha */
/* 8050B970  C0 23 01 80 */	lfs f1, 0x180(r3)
/* 8050B974  C0 05 8D F8 */	lfs f0, lit_438@l(r5)  /* 0x80648DF8@l */
/* 8050B978  7C 7F 1B 78 */	mr r31, r3
/* 8050B97C  7C 9E 23 78 */	mr r30, r4
/* 8050B980  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050B984  4C 40 13 82 */	cror 2, 0, 2
/* 8050B988  40 82 00 4C */	bne lbl_8050B9D4
/* 8050B98C  80 1F 01 88 */	lwz r0, 0x188(r31)
/* 8050B990  2C 00 00 00 */	cmpwi r0, 0
/* 8050B994  40 82 00 40 */	bne lbl_8050B9D4
/* 8050B998  4B FF FE D9 */	bl aHG_player_check
/* 8050B99C  2C 03 00 00 */	cmpwi r3, 0
/* 8050B9A0  40 82 00 34 */	bne lbl_8050B9D4
/* 8050B9A4  4B B5 13 51 */	bl fqrand
/* 8050B9A8  3C 80 80 65 */	lis r4, lit_499@ha /* 0x80648E0C@ha */
/* 8050B9AC  7F E3 FB 78 */	mr r3, r31
/* 8050B9B0  38 A4 8E 0C */	addi r5, r4, lit_499@l /* 0x80648E0C@l */
/* 8050B9B4  7F C4 F3 78 */	mr r4, r30
/* 8050B9B8  C0 45 00 00 */	lfs f2, 0(r5)
/* 8050B9BC  38 A0 00 02 */	li r5, 2
/* 8050B9C0  EC 02 00 72 */	fmuls f0, f2, f1
/* 8050B9C4  EC 02 00 2A */	fadds f0, f2, f0
/* 8050B9C8  D0 1F 01 80 */	stfs f0, 0x180(r31)
/* 8050B9CC  48 00 06 A9 */	bl aHG_setupAction
/* 8050B9D0  48 00 01 0C */	b lbl_8050BADC
lbl_8050B9D4:
/* 8050B9D4  7F E3 FB 78 */	mr r3, r31
/* 8050B9D8  4B FF FF 0D */	bl aHG_check_threshold
/* 8050B9DC  2C 03 00 01 */	cmpwi r3, 1
/* 8050B9E0  40 82 00 28 */	bne lbl_8050BA08
/* 8050B9E4  38 00 00 01 */	li r0, 1
/* 8050B9E8  90 1F 01 88 */	stw r0, 0x188(r31)
/* 8050B9EC  4B B5 13 09 */	bl fqrand
/* 8050B9F0  3C 60 80 65 */	lis r3, lit_596@ha /* 0x80648E28@ha */
/* 8050B9F4  C0 43 8E 28 */	lfs f2, lit_596@l(r3)  /* 0x80648E28@l */
/* 8050B9F8  EC 02 00 72 */	fmuls f0, f2, f1
/* 8050B9FC  EC 02 00 2A */	fadds f0, f2, f0
/* 8050BA00  D0 1F 01 84 */	stfs f0, 0x184(r31)
/* 8050BA04  48 00 00 C8 */	b lbl_8050BACC
lbl_8050BA08:
/* 8050BA08  38 00 00 00 */	li r0, 0
/* 8050BA0C  3C 60 80 65 */	lis r3, lit_438@ha /* 0x80648DF8@ha */
/* 8050BA10  90 1F 01 88 */	stw r0, 0x188(r31)
/* 8050BA14  C0 03 8D F8 */	lfs f0, lit_438@l(r3)  /* 0x80648DF8@l */
/* 8050BA18  C0 3F 01 84 */	lfs f1, 0x184(r31)
/* 8050BA1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050BA20  4C 40 13 82 */	cror 2, 0, 2
/* 8050BA24  40 82 00 A8 */	bne lbl_8050BACC
/* 8050BA28  A0 1F 00 98 */	lhz r0, 0x98(r31)
/* 8050BA2C  54 00 DE FF */	rlwinm. r0, r0, 0x1b, 0x1b, 0x1f
/* 8050BA30  41 82 00 84 */	beq lbl_8050BAB4
/* 8050BA34  3C 80 80 65 */	lis r4, lit_597@ha /* 0x80648E2C@ha */
/* 8050BA38  7F E3 FB 78 */	mr r3, r31
/* 8050BA3C  C3 E4 8E 2C */	lfs f31, lit_597@l(r4)  /* 0x80648E2C@l */
/* 8050BA40  4B FF FA 55 */	bl aHG_away_bg_hitangle_check_proc
/* 8050BA44  7C 60 07 34 */	extsh r0, r3
/* 8050BA48  2C 00 03 09 */	cmpwi r0, 0x309
/* 8050BA4C  41 82 00 40 */	beq lbl_8050BA8C
/* 8050BA50  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 8050BA54  7C 00 1A 14 */	add r0, r0, r3
/* 8050BA58  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 8050BA5C  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 8050BA60  54 00 04 22 */	rlwinm r0, r0, 0, 0x10, 0x11
/* 8050BA64  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 8050BA68  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 8050BA6C  B0 1F 00 DE */	sth r0, 0xde(r31)
/* 8050BA70  4B B5 12 85 */	bl fqrand
/* 8050BA74  3C 60 80 65 */	lis r3, lit_510@ha /* 0x80648E10@ha */
/* 8050BA78  C0 43 8E 10 */	lfs f2, lit_510@l(r3)  /* 0x80648E10@l */
/* 8050BA7C  EC 02 00 72 */	fmuls f0, f2, f1
/* 8050BA80  EC 02 00 2A */	fadds f0, f2, f0
/* 8050BA84  D0 1F 01 84 */	stfs f0, 0x184(r31)
/* 8050BA88  48 00 00 0C */	b lbl_8050BA94
lbl_8050BA8C:
/* 8050BA8C  3C 60 80 65 */	lis r3, lit_447@ha /* 0x80648E04@ha */
/* 8050BA90  C3 E3 8E 04 */	lfs f31, lit_447@l(r3)  /* 0x80648E04@l */
lbl_8050BA94:
/* 8050BA94  4B B5 12 61 */	bl fqrand
/* 8050BA98  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8050BA9C  40 80 00 30 */	bge lbl_8050BACC
/* 8050BAA0  7F E3 FB 78 */	mr r3, r31
/* 8050BAA4  7F C4 F3 78 */	mr r4, r30
/* 8050BAA8  38 A0 00 01 */	li r5, 1
/* 8050BAAC  48 00 05 C9 */	bl aHG_setupAction
/* 8050BAB0  48 00 00 1C */	b lbl_8050BACC
lbl_8050BAB4:
/* 8050BAB4  A8 7F 00 B6 */	lha r3, 0xb6(r31)
/* 8050BAB8  3C 63 00 01 */	addis r3, r3, 1
/* 8050BABC  38 03 80 00 */	addi r0, r3, -32768
/* 8050BAC0  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 8050BAC4  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 8050BAC8  B0 1F 00 DE */	sth r0, 0xde(r31)
lbl_8050BACC:
/* 8050BACC  7F E3 FB 78 */	mr r3, r31
/* 8050BAD0  38 BF 00 28 */	addi r5, r31, 0x28
/* 8050BAD4  38 80 00 A8 */	li r4, 0xa8
/* 8050BAD8  48 12 24 6D */	bl sAdo_OngenPos
lbl_8050BADC:
/* 8050BADC  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8050BAE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050BAE4  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8050BAE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050BAEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8050BAF0  7C 08 03 A6 */	mtlr r0
/* 8050BAF4  38 21 00 20 */	addi r1, r1, 0x20
/* 8050BAF8  4E 80 00 20 */	blr 
