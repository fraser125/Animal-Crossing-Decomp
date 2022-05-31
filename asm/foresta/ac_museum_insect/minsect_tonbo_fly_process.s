lbl_80460C30:
/* 80460C30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80460C34  7C 08 02 A6 */	mflr r0
/* 80460C38  90 01 00 24 */	stw r0, 0x24(r1)
/* 80460C3C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80460C40  7C 9F 23 78 */	mr r31, r4
/* 80460C44  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80460C48  7C 7E 1B 78 */	mr r30, r3
/* 80460C4C  4B FF DD E5 */	bl minsect_tonbo_bg_check
/* 80460C50  2C 03 00 00 */	cmpwi r3, 0
/* 80460C54  41 82 00 60 */	beq lbl_80460CB4
/* 80460C58  3C 60 80 64 */	lis r3, lit_1239@ha /* 0x80644734@ha */
/* 80460C5C  C0 5E 00 48 */	lfs f2, 0x48(r30)
/* 80460C60  C0 23 47 34 */	lfs f1, lit_1239@l(r3)  /* 0x80644734@l */
/* 80460C64  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80460C68  40 80 00 08 */	bge lbl_80460C70
/* 80460C6C  48 00 00 08 */	b lbl_80460C74
lbl_80460C70:
/* 80460C70  FC 20 10 90 */	fmr f1, f2
lbl_80460C74:
/* 80460C74  3C 60 80 64 */	lis r3, lit_935@ha /* 0x806446C4@ha */
/* 80460C78  C0 03 46 C4 */	lfs f0, lit_935@l(r3)  /* 0x806446C4@l */
/* 80460C7C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80460C80  40 81 00 08 */	ble lbl_80460C88
/* 80460C84  48 00 00 1C */	b lbl_80460CA0
lbl_80460C88:
/* 80460C88  3C 60 80 64 */	lis r3, lit_1239@ha /* 0x80644734@ha */
/* 80460C8C  C0 03 47 34 */	lfs f0, lit_1239@l(r3)  /* 0x80644734@l */
/* 80460C90  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80460C94  40 80 00 08 */	bge lbl_80460C9C
/* 80460C98  48 00 00 08 */	b lbl_80460CA0
lbl_80460C9C:
/* 80460C9C  FC 00 10 90 */	fmr f0, f2
lbl_80460CA0:
/* 80460CA0  D0 1E 00 48 */	stfs f0, 0x48(r30)
/* 80460CA4  7F C3 F3 78 */	mr r3, r30
/* 80460CA8  7F E4 FB 78 */	mr r4, r31
/* 80460CAC  4B FF E8 29 */	bl minsect_tonbo_normal_process_init
/* 80460CB0  48 00 01 64 */	b lbl_80460E14
lbl_80460CB4:
/* 80460CB4  7F C3 F3 78 */	mr r3, r30
/* 80460CB8  48 00 06 09 */	bl minsect_tonbo_MoveF
/* 80460CBC  3C 60 80 64 */	lis r3, lit_1566@ha /* 0x80644754@ha */
/* 80460CC0  3C 80 80 64 */	lis r4, lit_509@ha /* 0x806445FC@ha */
/* 80460CC4  38 A3 47 54 */	addi r5, r3, lit_1566@l /* 0x80644754@l */
/* 80460CC8  C9 05 00 00 */	lfd f8, 0(r5)
/* 80460CCC  38 C4 45 FC */	addi r6, r4, lit_509@l /* 0x806445FC@l */
/* 80460CD0  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 80460CD4  3C 80 80 64 */	lis r4, lit_511@ha /* 0x8064460C@ha */
/* 80460CD8  FC 20 40 34 */	frsqrte f1, f8
/* 80460CDC  38 A3 46 04 */	addi r5, r3, lit_510@l /* 0x80644604@l */
/* 80460CE0  C8 E6 00 00 */	lfd f7, 0(r6)
/* 80460CE4  3C 60 80 64 */	lis r3, lit_506@ha /* 0x806445E8@ha */
/* 80460CE8  C0 63 45 E8 */	lfs f3, lit_506@l(r3)  /* 0x806445E8@l */
/* 80460CEC  38 7E 00 40 */	addi r3, r30, 0x40
/* 80460CF0  FC 41 00 72 */	fmul f2, f1, f1
/* 80460CF4  C8 C5 00 00 */	lfd f6, 0(r5)
/* 80460CF8  C0 04 46 0C */	lfs f0, lit_511@l(r4)  /* 0x8064460C@l */
/* 80460CFC  FC A7 00 72 */	fmul f5, f7, f1
/* 80460D00  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80460D04  FC 48 00 B2 */	fmul f2, f8, f2
/* 80460D08  FC 80 18 90 */	fmr f4, f3
/* 80460D0C  FC 46 10 28 */	fsub f2, f6, f2
/* 80460D10  FC A5 00 B2 */	fmul f5, f5, f2
/* 80460D14  FC 45 01 72 */	fmul f2, f5, f5
/* 80460D18  FC A7 01 72 */	fmul f5, f7, f5
/* 80460D1C  FC 48 00 B2 */	fmul f2, f8, f2
/* 80460D20  FC 46 10 28 */	fsub f2, f6, f2
/* 80460D24  FC A5 00 B2 */	fmul f5, f5, f2
/* 80460D28  FC 45 01 72 */	fmul f2, f5, f5
/* 80460D2C  FC A7 01 72 */	fmul f5, f7, f5
/* 80460D30  FC 48 00 B2 */	fmul f2, f8, f2
/* 80460D34  FC 46 10 28 */	fsub f2, f6, f2
/* 80460D38  FC 45 00 B2 */	fmul f2, f5, f2
/* 80460D3C  FC 48 00 B2 */	fmul f2, f8, f2
/* 80460D40  FC 40 10 18 */	frsp f2, f2
/* 80460D44  D0 41 00 08 */	stfs f2, 8(r1)
/* 80460D48  C0 41 00 08 */	lfs f2, 8(r1)
/* 80460D4C  EC 40 10 28 */	fsubs f2, f0, f2
/* 80460D50  4B F5 A4 61 */	bl add_calc
/* 80460D54  7F C3 F3 78 */	mr r3, r30
/* 80460D58  4B FF E2 B1 */	bl minsect_tonbo_acc_change
/* 80460D5C  C0 7E 00 20 */	lfs f3, 0x20(r30)
/* 80460D60  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 80460D64  C0 5E 00 48 */	lfs f2, 0x48(r30)
/* 80460D68  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 80460D6C  EC 43 10 28 */	fsubs f2, f3, f2
/* 80460D70  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80460D74  4C 41 13 82 */	cror 2, 1, 2
/* 80460D78  40 82 00 08 */	bne lbl_80460D80
/* 80460D7C  48 00 00 08 */	b lbl_80460D84
lbl_80460D80:
/* 80460D80  FC 40 10 50 */	fneg f2, f2
lbl_80460D84:
/* 80460D84  3C 60 80 64 */	lis r3, lit_586@ha /* 0x80644634@ha */
/* 80460D88  C0 03 46 34 */	lfs f0, lit_586@l(r3)  /* 0x80644634@l */
/* 80460D8C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80460D90  4C 40 13 82 */	cror 2, 0, 2
/* 80460D94  40 82 00 80 */	bne lbl_80460E14
/* 80460D98  C0 7E 00 1C */	lfs f3, 0x1c(r30)
/* 80460D9C  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 80460DA0  C0 5E 00 44 */	lfs f2, 0x44(r30)
/* 80460DA4  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 80460DA8  EC 43 10 28 */	fsubs f2, f3, f2
/* 80460DAC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80460DB0  4C 41 13 82 */	cror 2, 1, 2
/* 80460DB4  40 82 00 08 */	bne lbl_80460DBC
/* 80460DB8  48 00 00 08 */	b lbl_80460DC0
lbl_80460DBC:
/* 80460DBC  FC 40 10 50 */	fneg f2, f2
lbl_80460DC0:
/* 80460DC0  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80460DC4  4C 40 13 82 */	cror 2, 0, 2
/* 80460DC8  40 82 00 4C */	bne lbl_80460E14
/* 80460DCC  C0 7E 00 24 */	lfs f3, 0x24(r30)
/* 80460DD0  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 80460DD4  C0 5E 00 4C */	lfs f2, 0x4c(r30)
/* 80460DD8  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 80460DDC  EC 43 10 28 */	fsubs f2, f3, f2
/* 80460DE0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80460DE4  4C 41 13 82 */	cror 2, 1, 2
/* 80460DE8  40 82 00 08 */	bne lbl_80460DF0
/* 80460DEC  48 00 00 08 */	b lbl_80460DF4
lbl_80460DF0:
/* 80460DF0  FC 40 10 50 */	fneg f2, f2
lbl_80460DF4:
/* 80460DF4  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80460DF8  4C 40 13 82 */	cror 2, 0, 2
/* 80460DFC  40 82 00 18 */	bne lbl_80460E14
/* 80460E00  7F C3 F3 78 */	mr r3, r30
/* 80460E04  7F E4 FB 78 */	mr r4, r31
/* 80460E08  4B FF E6 CD */	bl minsect_tonbo_normal_process_init
/* 80460E0C  38 00 00 01 */	li r0, 1
/* 80460E10  B0 1E 00 78 */	sth r0, 0x78(r30)
lbl_80460E14:
/* 80460E14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80460E18  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80460E1C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80460E20  7C 08 03 A6 */	mtlr r0
/* 80460E24  38 21 00 20 */	addi r1, r1, 0x20
/* 80460E28  4E 80 00 20 */	blr 
