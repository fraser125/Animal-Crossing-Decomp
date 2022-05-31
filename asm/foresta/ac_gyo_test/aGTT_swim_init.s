lbl_805A4908:
/* 805A4908  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A490C  7C 08 02 A6 */	mflr r0
/* 805A4910  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A4914  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A4918  7C 7F 1B 78 */	mr r31, r3
/* 805A491C  88 03 02 42 */	lbz r0, 0x242(r3)
/* 805A4920  2C 00 00 01 */	cmpwi r0, 1
/* 805A4924  41 82 00 3C */	beq lbl_805A4960
/* 805A4928  40 80 00 10 */	bge lbl_805A4938
/* 805A492C  2C 00 00 00 */	cmpwi r0, 0
/* 805A4930  40 80 00 14 */	bge lbl_805A4944
/* 805A4934  48 00 00 C4 */	b lbl_805A49F8
lbl_805A4938:
/* 805A4938  2C 00 00 03 */	cmpwi r0, 3
/* 805A493C  40 80 00 BC */	bge lbl_805A49F8
/* 805A4940  48 00 00 68 */	b lbl_805A49A8
lbl_805A4944:
/* 805A4944  3C 60 80 65 */	lis r3, lit_919@ha /* 0x8064A42C@ha */
/* 805A4948  38 00 00 00 */	li r0, 0
/* 805A494C  C0 03 A4 2C */	lfs f0, lit_919@l(r3)  /* 0x8064A42C@l */
/* 805A4950  D0 1F 02 28 */	stfs f0, 0x228(r31)
/* 805A4954  B0 1F 02 30 */	sth r0, 0x230(r31)
/* 805A4958  B0 1F 02 32 */	sth r0, 0x232(r31)
/* 805A495C  48 00 00 9C */	b lbl_805A49F8
lbl_805A4960:
/* 805A4960  3C 60 80 65 */	lis r3, lit_458@ha /* 0x8064A3CC@ha */
/* 805A4964  38 00 00 00 */	li r0, 0
/* 805A4968  C0 03 A3 CC */	lfs f0, lit_458@l(r3)  /* 0x8064A3CC@l */
/* 805A496C  D0 1F 02 28 */	stfs f0, 0x228(r31)
/* 805A4970  B0 1F 02 30 */	sth r0, 0x230(r31)
/* 805A4974  4B AB 83 B9 */	bl fqrand2
/* 805A4978  3C 60 80 65 */	lis r3, lit_920@ha /* 0x8064A430@ha */
/* 805A497C  C0 03 A4 30 */	lfs f0, lit_920@l(r3)  /* 0x8064A430@l */
/* 805A4980  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A4984  FC 00 00 1E */	fctiwz f0, f0
/* 805A4988  D8 01 00 08 */	stfd f0, 8(r1)
/* 805A498C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805A4990  B0 1F 02 32 */	sth r0, 0x232(r31)
/* 805A4994  A8 7F 00 36 */	lha r3, 0x36(r31)
/* 805A4998  A8 1F 02 32 */	lha r0, 0x232(r31)
/* 805A499C  7C 03 02 14 */	add r0, r3, r0
/* 805A49A0  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 805A49A4  48 00 00 54 */	b lbl_805A49F8
lbl_805A49A8:
/* 805A49A8  A0 1F 02 40 */	lhz r0, 0x240(r31)
/* 805A49AC  3C 80 80 65 */	lis r4, lit_458@ha /* 0x8064A3CC@ha */
/* 805A49B0  C0 04 A3 CC */	lfs f0, lit_458@l(r4)  /* 0x8064A3CC@l */
/* 805A49B4  60 00 00 80 */	ori r0, r0, 0x80
/* 805A49B8  B0 1F 02 40 */	sth r0, 0x240(r31)
/* 805A49BC  D0 1F 02 28 */	stfs f0, 0x228(r31)
/* 805A49C0  4B FF ED B5 */	bl aGTT_Get_flow_angle_rv
/* 805A49C4  B0 7F 02 30 */	sth r3, 0x230(r31)
/* 805A49C8  4B AB 83 65 */	bl fqrand2
/* 805A49CC  3C 60 80 65 */	lis r3, lit_921@ha /* 0x8064A434@ha */
/* 805A49D0  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 805A49D4  C0 03 A4 34 */	lfs f0, lit_921@l(r3)  /* 0x8064A434@l */
/* 805A49D8  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A49DC  FC 00 00 1E */	fctiwz f0, f0
/* 805A49E0  D8 01 00 08 */	stfd f0, 8(r1)
/* 805A49E4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805A49E8  7C 00 1A 14 */	add r0, r0, r3
/* 805A49EC  B0 1F 02 32 */	sth r0, 0x232(r31)
/* 805A49F0  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 805A49F4  B0 1F 00 DE */	sth r0, 0xde(r31)
lbl_805A49F8:
/* 805A49F8  7F E3 FB 78 */	mr r3, r31
/* 805A49FC  4B FF E4 FD */	bl aGTT_speed_reset
/* 805A4A00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A4A04  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A4A08  7C 08 03 A6 */	mtlr r0
/* 805A4A0C  38 21 00 20 */	addi r1, r1, 0x20
/* 805A4A10  4E 80 00 20 */	blr 
