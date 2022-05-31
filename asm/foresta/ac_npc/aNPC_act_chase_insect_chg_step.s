lbl_80531C88:
/* 80531C88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80531C8C  7C 08 02 A6 */	mflr r0
/* 80531C90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80531C94  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80531C98  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80531C9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80531CA0  93 C1 00 08 */	stw r30, 8(r1)
/* 80531CA4  7C 7E 1B 78 */	mr r30, r3
/* 80531CA8  4B FF AB 99 */	bl func_8052C840
/* 80531CAC  80 9E 09 2C */	lwz r4, 0x92c(r30)
/* 80531CB0  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 80531CB4  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80531CB8  C0 44 00 28 */	lfs f2, 0x28(r4)
/* 80531CBC  C0 24 00 30 */	lfs f1, 0x30(r4)
/* 80531CC0  EC 42 00 28 */	fsubs f2, f2, f0
/* 80531CC4  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80531CC8  EC 21 00 28 */	fsubs f1, f1, f0
/* 80531CCC  EC 62 00 B2 */	fmuls f3, f2, f2
/* 80531CD0  EC 01 00 72 */	fmuls f0, f1, f1
/* 80531CD4  EF E3 00 2A */	fadds f31, f3, f0
/* 80531CD8  4B ED A3 29 */	bl atans_table
/* 80531CDC  88 1E 07 FD */	lbz r0, 0x7fd(r30)
/* 80531CE0  A8 9E 00 DE */	lha r4, 0xde(r30)
/* 80531CE4  2C 00 00 08 */	cmpwi r0, 8
/* 80531CE8  7C 64 18 50 */	subf r3, r4, r3
/* 80531CEC  7C 64 07 34 */	extsh r4, r3
/* 80531CF0  41 82 00 6C */	beq lbl_80531D5C
/* 80531CF4  40 80 00 A8 */	bge lbl_80531D9C
/* 80531CF8  2C 00 00 07 */	cmpwi r0, 7
/* 80531CFC  40 80 00 08 */	bge lbl_80531D04
/* 80531D00  48 00 00 9C */	b lbl_80531D9C
lbl_80531D04:
/* 80531D04  3C 60 80 65 */	lis r3, lit_2433@ha /* 0x80649318@ha */
/* 80531D08  C0 03 93 18 */	lfs f0, lit_2433@l(r3)  /* 0x80649318@l */
/* 80531D0C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80531D10  40 80 00 2C */	bge lbl_80531D3C
/* 80531D14  7C 80 07 35 */	extsh. r0, r4
/* 80531D18  7C 04 00 D0 */	neg r0, r4
/* 80531D1C  41 80 00 08 */	blt lbl_80531D24
/* 80531D20  7C 80 23 78 */	mr r0, r4
lbl_80531D24:
/* 80531D24  2C 00 10 00 */	cmpwi r0, 0x1000
/* 80531D28  40 81 00 0C */	ble lbl_80531D34
/* 80531D2C  38 A0 00 03 */	li r5, 3
/* 80531D30  48 00 00 78 */	b lbl_80531DA8
lbl_80531D34:
/* 80531D34  38 A0 00 00 */	li r5, 0
/* 80531D38  48 00 00 70 */	b lbl_80531DA8
lbl_80531D3C:
/* 80531D3C  3C 60 80 65 */	lis r3, lit_2434@ha /* 0x8064931C@ha */
/* 80531D40  C0 03 93 1C */	lfs f0, lit_2434@l(r3)  /* 0x8064931C@l */
/* 80531D44  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80531D48  40 80 00 0C */	bge lbl_80531D54
/* 80531D4C  38 A0 00 01 */	li r5, 1
/* 80531D50  48 00 00 58 */	b lbl_80531DA8
lbl_80531D54:
/* 80531D54  38 A0 00 02 */	li r5, 2
/* 80531D58  48 00 00 50 */	b lbl_80531DA8
lbl_80531D5C:
/* 80531D5C  3C 60 80 65 */	lis r3, lit_2435@ha /* 0x80649320@ha */
/* 80531D60  C0 03 93 20 */	lfs f0, lit_2435@l(r3)  /* 0x80649320@l */
/* 80531D64  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80531D68  40 80 00 2C */	bge lbl_80531D94
/* 80531D6C  7C 80 07 35 */	extsh. r0, r4
/* 80531D70  7C 04 00 D0 */	neg r0, r4
/* 80531D74  41 80 00 08 */	blt lbl_80531D7C
/* 80531D78  7C 80 23 78 */	mr r0, r4
lbl_80531D7C:
/* 80531D7C  2C 00 10 00 */	cmpwi r0, 0x1000
/* 80531D80  40 81 00 0C */	ble lbl_80531D8C
/* 80531D84  38 A0 00 03 */	li r5, 3
/* 80531D88  48 00 00 20 */	b lbl_80531DA8
lbl_80531D8C:
/* 80531D8C  38 A0 00 00 */	li r5, 0
/* 80531D90  48 00 00 18 */	b lbl_80531DA8
lbl_80531D94:
/* 80531D94  38 A0 00 01 */	li r5, 1
/* 80531D98  48 00 00 10 */	b lbl_80531DA8
lbl_80531D9C:
/* 80531D9C  38 00 00 FF */	li r0, 0xff
/* 80531DA0  38 A0 00 FF */	li r5, 0xff
/* 80531DA4  98 1E 07 F6 */	stb r0, 0x7f6(r30)
lbl_80531DA8:
/* 80531DA8  88 1E 07 F6 */	lbz r0, 0x7f6(r30)
/* 80531DAC  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 80531DB0  7C 03 00 40 */	cmplw r3, r0
/* 80531DB4  40 82 00 10 */	bne lbl_80531DC4
/* 80531DB8  88 1E 07 FC */	lbz r0, 0x7fc(r30)
/* 80531DBC  7C 1F 00 40 */	cmplw r31, r0
/* 80531DC0  41 82 00 24 */	beq lbl_80531DE4
lbl_80531DC4:
/* 80531DC4  98 BE 07 F6 */	stb r5, 0x7f6(r30)
/* 80531DC8  3C 80 80 6A */	lis r4, act_idx_2402@ha /* 0x806A24FC@ha */
/* 80531DCC  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 80531DD0  7F C3 F3 78 */	mr r3, r30
/* 80531DD4  9B FE 07 FC */	stb r31, 0x7fc(r30)
/* 80531DD8  38 84 24 FC */	addi r4, r4, act_idx_2402@l /* 0x806A24FC@l */
/* 80531DDC  7C 84 00 AE */	lbzx r4, r4, r0
/* 80531DE0  4B FF DF 4D */	bl aNPC_setupAction
lbl_80531DE4:
/* 80531DE4  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80531DE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80531DEC  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80531DF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80531DF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80531DF8  7C 08 03 A6 */	mtlr r0
/* 80531DFC  38 21 00 20 */	addi r1, r1, 0x20
/* 80531E00  4E 80 00 20 */	blr 
