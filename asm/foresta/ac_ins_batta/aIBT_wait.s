lbl_80596F20:
/* 80596F20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80596F24  7C 08 02 A6 */	mflr r0
/* 80596F28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80596F2C  39 61 00 20 */	addi r11, r1, 0x20
/* 80596F30  4B B0 3F A5 */	bl func_8009AED4
/* 80596F34  88 03 00 9A */	lbz r0, 0x9a(r3)
/* 80596F38  7C 7F 1B 78 */	mr r31, r3
/* 80596F3C  7C 9E 23 78 */	mr r30, r4
/* 80596F40  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 80596F44  41 82 00 14 */	beq lbl_80596F58
/* 80596F48  7F C5 F3 78 */	mr r5, r30
/* 80596F4C  38 80 00 05 */	li r4, 5
/* 80596F50  48 00 05 75 */	bl aIBT_setupAction
/* 80596F54  48 00 01 B8 */	b lbl_8059710C
lbl_80596F58:
/* 80596F58  4B FF F9 15 */	bl aIBT_check_patience
/* 80596F5C  2C 03 00 01 */	cmpwi r3, 1
/* 80596F60  40 82 00 18 */	bne lbl_80596F78
/* 80596F64  7F E3 FB 78 */	mr r3, r31
/* 80596F68  7F C5 F3 78 */	mr r5, r30
/* 80596F6C  38 80 00 00 */	li r4, 0
/* 80596F70  48 00 05 55 */	bl aIBT_setupAction
/* 80596F74  48 00 01 98 */	b lbl_8059710C
lbl_80596F78:
/* 80596F78  3C 60 80 65 */	lis r3, lit_672@ha /* 0x80649E3C@ha */
/* 80596F7C  3C 80 80 65 */	lis r4, lit_673@ha /* 0x80649E44@ha */
/* 80596F80  38 A3 9E 3C */	addi r5, r3, lit_672@l /* 0x80649E3C@l */
/* 80596F84  C8 64 9E 44 */	lfd f3, lit_673@l(r4)  /* 0x80649E44@l */
/* 80596F88  C8 A5 00 00 */	lfd f5, 0(r5)
/* 80596F8C  3C 60 80 65 */	lis r3, lit_448@ha /* 0x80649DF0@ha */
/* 80596F90  C8 85 00 00 */	lfd f4, 0(r5)
/* 80596F94  38 A0 20 00 */	li r5, 0x2000
/* 80596F98  FC 40 28 34 */	frsqrte f2, f5
/* 80596F9C  C0 03 9D F0 */	lfs f0, lit_448@l(r3)  /* 0x80649DF0@l */
/* 80596FA0  A8 9F 00 36 */	lha r4, 0x36(r31)
/* 80596FA4  38 7F 00 DE */	addi r3, r31, 0xde
/* 80596FA8  38 C0 00 00 */	li r6, 0
/* 80596FAC  FC 22 00 B2 */	fmul f1, f2, f2
/* 80596FB0  FC 44 00 B2 */	fmul f2, f4, f2
/* 80596FB4  FC 25 00 72 */	fmul f1, f5, f1
/* 80596FB8  FC 23 08 28 */	fsub f1, f3, f1
/* 80596FBC  FC 42 00 72 */	fmul f2, f2, f1
/* 80596FC0  FC 22 00 B2 */	fmul f1, f2, f2
/* 80596FC4  FC 44 00 B2 */	fmul f2, f4, f2
/* 80596FC8  FC 25 00 72 */	fmul f1, f5, f1
/* 80596FCC  FC 23 08 28 */	fsub f1, f3, f1
/* 80596FD0  FC 42 00 72 */	fmul f2, f2, f1
/* 80596FD4  FC 22 00 B2 */	fmul f1, f2, f2
/* 80596FD8  FC 44 00 B2 */	fmul f2, f4, f2
/* 80596FDC  FC 25 00 72 */	fmul f1, f5, f1
/* 80596FE0  FC 23 08 28 */	fsub f1, f3, f1
/* 80596FE4  FC 22 00 72 */	fmul f1, f2, f1
/* 80596FE8  FC 25 00 72 */	fmul f1, f5, f1
/* 80596FEC  FC 20 08 18 */	frsp f1, f1
/* 80596FF0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80596FF4  C0 21 00 08 */	lfs f1, 8(r1)
/* 80596FF8  EC 20 08 28 */	fsubs f1, f0, f1
/* 80596FFC  4B E2 43 15 */	bl add_calc_short_angle2
/* 80597000  80 9F 01 D0 */	lwz r4, 0x1d0(r31)
/* 80597004  2C 04 00 0F */	cmpwi r4, 0xf
/* 80597008  40 80 00 0C */	bge lbl_80597014
/* 8059700C  2C 04 00 0D */	cmpwi r4, 0xd
/* 80597010  40 80 00 5C */	bge lbl_8059706C
lbl_80597014:
/* 80597014  88 1F 00 98 */	lbz r0, 0x98(r31)
/* 80597018  3B A4 FF F1 */	addi r29, r4, -15
/* 8059701C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80597020  41 82 00 4C */	beq lbl_8059706C
/* 80597024  3C 60 80 65 */	lis r3, lit_674@ha /* 0x80649E4C@ha */
/* 80597028  C0 3F 01 F0 */	lfs f1, 0x1f0(r31)
/* 8059702C  C0 03 9E 4C */	lfs f0, lit_674@l(r3)  /* 0x80649E4C@l */
/* 80597030  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80597034  40 80 00 38 */	bge lbl_8059706C
/* 80597038  2C 04 00 11 */	cmpwi r4, 0x11
/* 8059703C  40 82 00 0C */	bne lbl_80597048
/* 80597040  7F E3 FB 78 */	mr r3, r31
/* 80597044  4B FF F5 41 */	bl aIBT_anime_proc
lbl_80597048:
/* 80597048  80 1F 02 38 */	lwz r0, 0x238(r31)
/* 8059704C  2C 00 00 00 */	cmpwi r0, 0
/* 80597050  40 82 00 1C */	bne lbl_8059706C
/* 80597054  3C 80 80 6C */	lis r4, batta_sound_data@ha /* 0x806C3170@ha */
/* 80597058  7F E3 FB 78 */	mr r3, r31
/* 8059705C  38 84 31 70 */	addi r4, r4, batta_sound_data@l /* 0x806C3170@l */
/* 80597060  38 BF 00 28 */	addi r5, r31, 0x28
/* 80597064  7C 84 E8 AE */	lbzx r4, r4, r29
/* 80597068  48 09 6E DD */	bl sAdo_OngenPos
lbl_8059706C:
/* 8059706C  80 7F 02 28 */	lwz r3, 0x228(r31)
/* 80597070  2C 03 00 00 */	cmpwi r3, 0
/* 80597074  40 81 00 10 */	ble lbl_80597084
/* 80597078  38 03 FF FF */	addi r0, r3, -1
/* 8059707C  90 1F 02 28 */	stw r0, 0x228(r31)
/* 80597080  48 00 00 8C */	b lbl_8059710C
lbl_80597084:
/* 80597084  7F E4 FB 78 */	mr r4, r31
/* 80597088  3B A0 00 02 */	li r29, 2
/* 8059708C  38 60 00 00 */	li r3, 0
/* 80597090  4B FF FA 05 */	bl aIBT_chk_active_range
/* 80597094  2C 03 00 00 */	cmpwi r3, 0
/* 80597098  40 82 00 0C */	bne lbl_805970A4
/* 8059709C  3B A0 00 04 */	li r29, 4
/* 805970A0  48 00 00 5C */	b lbl_805970FC
lbl_805970A4:
/* 805970A4  80 1F 01 D0 */	lwz r0, 0x1d0(r31)
/* 805970A8  2C 00 00 0D */	cmpwi r0, 0xd
/* 805970AC  41 82 00 0C */	beq lbl_805970B8
/* 805970B0  2C 00 00 0E */	cmpwi r0, 0xe
/* 805970B4  40 82 00 28 */	bne lbl_805970DC
lbl_805970B8:
/* 805970B8  80 9E 20 90 */	lwz r4, 0x2090(r30)
/* 805970BC  38 60 00 C8 */	li r3, 0xc8
/* 805970C0  7C 04 1B 96 */	divwu r0, r4, r3
/* 805970C4  7C 00 19 D6 */	mullw r0, r0, r3
/* 805970C8  7C 00 20 50 */	subf r0, r0, r4
/* 805970CC  2C 00 00 14 */	cmpwi r0, 0x14
/* 805970D0  40 81 00 2C */	ble lbl_805970FC
/* 805970D4  3B A0 00 04 */	li r29, 4
/* 805970D8  48 00 00 24 */	b lbl_805970FC
lbl_805970DC:
/* 805970DC  80 9E 20 90 */	lwz r4, 0x2090(r30)
/* 805970E0  38 60 00 C8 */	li r3, 0xc8
/* 805970E4  7C 04 1B 96 */	divwu r0, r4, r3
/* 805970E8  7C 00 19 D6 */	mullw r0, r0, r3
/* 805970EC  7C 00 20 50 */	subf r0, r0, r4
/* 805970F0  2C 00 00 14 */	cmpwi r0, 0x14
/* 805970F4  40 80 00 08 */	bge lbl_805970FC
/* 805970F8  3B A0 00 04 */	li r29, 4
lbl_805970FC:
/* 805970FC  7F E3 FB 78 */	mr r3, r31
/* 80597100  7F A4 EB 78 */	mr r4, r29
/* 80597104  7F C5 F3 78 */	mr r5, r30
/* 80597108  48 00 03 BD */	bl aIBT_setupAction
lbl_8059710C:
/* 8059710C  39 61 00 20 */	addi r11, r1, 0x20
/* 80597110  4B B0 3E 11 */	bl func_8009AF20
/* 80597114  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80597118  7C 08 03 A6 */	mtlr r0
/* 8059711C  38 21 00 20 */	addi r1, r1, 0x20
/* 80597120  4E 80 00 20 */	blr 
