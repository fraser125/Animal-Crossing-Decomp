lbl_80386C48:
/* 80386C48  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80386C4C  7C 08 02 A6 */	mflr r0
/* 80386C50  90 01 00 74 */	stw r0, 0x74(r1)
/* 80386C54  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80386C58  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80386C5C  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80386C60  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80386C64  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 80386C68  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 80386C6C  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 80386C70  F3 81 00 38 */	psq_st f28, 56(r1), 0, 0 /* qr0 */
/* 80386C74  39 61 00 30 */	addi r11, r1, 0x30
/* 80386C78  4B D1 42 5D */	bl func_8009AED4
/* 80386C7C  38 00 00 02 */	li r0, 2
/* 80386C80  7C 7E 1B 78 */	mr r30, r3
/* 80386C84  7C 9D 23 78 */	mr r29, r4
/* 80386C88  7C BF 2B 78 */	mr r31, r5
/* 80386C8C  38 80 00 00 */	li r4, 0
/* 80386C90  38 60 00 00 */	li r3, 0
/* 80386C94  7C 09 03 A6 */	mtctr r0
lbl_80386C98:
/* 80386C98  7C 1D 1A AE */	lhax r0, r29, r3
/* 80386C9C  2C 00 00 B6 */	cmpwi r0, 0xb6
/* 80386CA0  41 82 00 08 */	beq lbl_80386CA8
/* 80386CA4  38 84 00 01 */	addi r4, r4, 1
lbl_80386CA8:
/* 80386CA8  38 63 00 04 */	addi r3, r3, 4
/* 80386CAC  42 00 FF EC */	bdnz lbl_80386C98
/* 80386CB0  88 1E 00 01 */	lbz r0, 1(r30)
/* 80386CB4  50 80 16 FA */	rlwimi r0, r4, 2, 0x1b, 0x1d
/* 80386CB8  28 04 00 02 */	cmplwi r4, 2
/* 80386CBC  98 1E 00 01 */	stb r0, 1(r30)
/* 80386CC0  40 82 00 D4 */	bne lbl_80386D94
/* 80386CC4  A8 7D 00 00 */	lha r3, 0(r29)
/* 80386CC8  3C 00 43 30 */	lis r0, 0x4330
/* 80386CCC  3C 80 80 64 */	lis r4, lit_793@ha /* 0x806419DC@ha */
/* 80386CD0  3C A0 80 64 */	lis r5, lit_1501@ha /* 0x80641A3C@ha */
/* 80386CD4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80386CD8  90 01 00 08 */	stw r0, 8(r1)
/* 80386CDC  C8 24 19 DC */	lfd f1, lit_793@l(r4)  /* 0x806419DC@l */
/* 80386CE0  90 61 00 0C */	stw r3, 0xc(r1)
/* 80386CE4  C0 45 1A 3C */	lfs f2, lit_1501@l(r5)  /* 0x80641A3C@l */
/* 80386CE8  C8 01 00 08 */	lfd f0, 8(r1)
/* 80386CEC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80386CF0  EF C2 00 32 */	fmuls f30, f2, f0
/* 80386CF4  FC 20 F0 90 */	fmr f1, f30
/* 80386CF8  48 08 1B 85 */	bl sinf_table
/* 80386CFC  FF A0 08 90 */	fmr f29, f1
/* 80386D00  FC 20 F0 90 */	fmr f1, f30
/* 80386D04  48 08 1B E9 */	bl cosf_table
/* 80386D08  A8 7D 00 04 */	lha r3, 4(r29)
/* 80386D0C  3C 00 43 30 */	lis r0, 0x4330
/* 80386D10  3C A0 80 64 */	lis r5, lit_1501@ha /* 0x80641A3C@ha */
/* 80386D14  90 01 00 10 */	stw r0, 0x10(r1)
/* 80386D18  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80386D1C  3C 80 80 64 */	lis r4, lit_793@ha /* 0x806419DC@ha */
/* 80386D20  90 61 00 14 */	stw r3, 0x14(r1)
/* 80386D24  FF C0 08 90 */	fmr f30, f1
/* 80386D28  C8 24 19 DC */	lfd f1, lit_793@l(r4)  /* 0x806419DC@l */
/* 80386D2C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80386D30  C0 45 1A 3C */	lfs f2, lit_1501@l(r5)  /* 0x80641A3C@l */
/* 80386D34  EC 00 08 28 */	fsubs f0, f0, f1
/* 80386D38  EF 82 00 32 */	fmuls f28, f2, f0
/* 80386D3C  FC 20 E0 90 */	fmr f1, f28
/* 80386D40  48 08 1B 3D */	bl sinf_table
/* 80386D44  FF E0 08 90 */	fmr f31, f1
/* 80386D48  FC 20 E0 90 */	fmr f1, f28
/* 80386D4C  48 08 1B A1 */	bl cosf_table
/* 80386D50  3C 60 80 64 */	lis r3, lit_862@ha /* 0x80641A00@ha */
/* 80386D54  EC 3E 08 2A */	fadds f1, f30, f1
/* 80386D58  C0 43 1A 00 */	lfs f2, lit_862@l(r3)  /* 0x80641A00@l */
/* 80386D5C  EC 1D F8 2A */	fadds f0, f29, f31
/* 80386D60  EC 22 00 72 */	fmuls f1, f2, f1
/* 80386D64  EC 42 00 32 */	fmuls f2, f2, f0
/* 80386D68  48 08 52 99 */	bl atans_table
/* 80386D6C  38 03 7F FF */	addi r0, r3, 0x7fff
/* 80386D70  7F E4 FB 78 */	mr r4, r31
/* 80386D74  7C 03 07 34 */	extsh r3, r0
/* 80386D78  4B FF FE 85 */	bl mCoBG_Check45Angle
/* 80386D7C  2C 03 00 00 */	cmpwi r3, 0
/* 80386D80  41 82 00 14 */	beq lbl_80386D94
/* 80386D84  88 1E 00 03 */	lbz r0, 3(r30)
/* 80386D88  38 60 00 01 */	li r3, 1
/* 80386D8C  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 80386D90  98 1E 00 03 */	stb r0, 3(r30)
lbl_80386D94:
/* 80386D94  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80386D98  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80386D9C  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80386DA0  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80386DA4  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 80386DA8  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 80386DAC  E3 81 00 38 */	psq_l f28, 56(r1), 0, 0 /* qr0 */
/* 80386DB0  39 61 00 30 */	addi r11, r1, 0x30
/* 80386DB4  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 80386DB8  4B D1 41 69 */	bl func_8009AF20
/* 80386DBC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80386DC0  7C 08 03 A6 */	mtlr r0
/* 80386DC4  38 21 00 70 */	addi r1, r1, 0x70
/* 80386DC8  4E 80 00 20 */	blr 
