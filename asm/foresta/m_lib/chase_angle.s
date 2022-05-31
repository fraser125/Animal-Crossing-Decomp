lbl_803BAB44:
/* 803BAB44  7C A0 07 35 */	extsh. r0, r5
/* 803BAB48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BAB4C  41 82 00 88 */	beq lbl_803BABD4
/* 803BAB50  A8 03 00 00 */	lha r0, 0(r3)
/* 803BAB54  7C 88 07 34 */	extsh r8, r4
/* 803BAB58  3C C0 81 1C */	lis r6, game_GameFrame_2F@ha /* 0x811C5314@ha */
/* 803BAB5C  7C 08 00 50 */	subf r0, r8, r0
/* 803BAB60  C0 46 53 14 */	lfs f2, game_GameFrame_2F@l(r6)  /* 0x811C5314@l */
/* 803BAB64  7C 00 07 35 */	extsh. r0, r0
/* 803BAB68  40 81 00 0C */	ble lbl_803BAB74
/* 803BAB6C  7C 05 00 D0 */	neg r0, r5
/* 803BAB70  7C 05 07 34 */	extsh r5, r0
lbl_803BAB74:
/* 803BAB74  7C A7 07 34 */	extsh r7, r5
/* 803BAB78  3C 00 43 30 */	lis r0, 0x4330
/* 803BAB7C  6C E5 80 00 */	xoris r5, r7, 0x8000
/* 803BAB80  3C C0 80 64 */	lis r6, lit_401@ha /* 0x8064255C@ha */
/* 803BAB84  90 A1 00 0C */	stw r5, 0xc(r1)
/* 803BAB88  C8 26 25 5C */	lfd f1, lit_401@l(r6)  /* 0x8064255C@l */
/* 803BAB8C  90 01 00 08 */	stw r0, 8(r1)
/* 803BAB90  A8 A3 00 00 */	lha r5, 0(r3)
/* 803BAB94  C8 01 00 08 */	lfd f0, 8(r1)
/* 803BAB98  EC 00 08 28 */	fsubs f0, f0, f1
/* 803BAB9C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 803BABA0  FC 00 00 1E */	fctiwz f0, f0
/* 803BABA4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803BABA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BABAC  7C 05 02 14 */	add r0, r5, r0
/* 803BABB0  B0 03 00 00 */	sth r0, 0(r3)
/* 803BABB4  A8 03 00 00 */	lha r0, 0(r3)
/* 803BABB8  7C 08 00 50 */	subf r0, r8, r0
/* 803BABBC  7C 00 07 34 */	extsh r0, r0
/* 803BABC0  7C 07 01 D7 */	mullw. r0, r7, r0
/* 803BABC4  41 80 00 28 */	blt lbl_803BABEC
/* 803BABC8  B0 83 00 00 */	sth r4, 0(r3)
/* 803BABCC  38 60 00 01 */	li r3, 1
/* 803BABD0  48 00 00 20 */	b lbl_803BABF0
lbl_803BABD4:
/* 803BABD4  A8 63 00 00 */	lha r3, 0(r3)
/* 803BABD8  7C 80 07 34 */	extsh r0, r4
/* 803BABDC  7C 03 00 00 */	cmpw r3, r0
/* 803BABE0  40 82 00 0C */	bne lbl_803BABEC
/* 803BABE4  38 60 00 01 */	li r3, 1
/* 803BABE8  48 00 00 08 */	b lbl_803BABF0
lbl_803BABEC:
/* 803BABEC  38 60 00 00 */	li r3, 0
lbl_803BABF0:
/* 803BABF0  38 21 00 20 */	addi r1, r1, 0x20
/* 803BABF4  4E 80 00 20 */	blr 
