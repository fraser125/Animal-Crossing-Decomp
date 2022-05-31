lbl_80372EDC:
/* 80372EDC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80372EE0  7C 08 02 A6 */	mflr r0
/* 80372EE4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80372EE8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80372EEC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80372EF0  39 61 00 40 */	addi r11, r1, 0x40
/* 80372EF4  4B D2 7F DD */	bl func_8009AED0
/* 80372EF8  7C 9D 23 78 */	mr r29, r4
/* 80372EFC  80 C3 20 90 */	lwz r6, 0x2090(r3)
/* 80372F00  A0 85 00 00 */	lhz r4, 0(r5)
/* 80372F04  7C 7C 1B 78 */	mr r28, r3
/* 80372F08  A0 E5 00 02 */	lhz r7, 2(r5)
/* 80372F0C  39 40 00 01 */	li r10, 1
/* 80372F10  7C 66 23 96 */	divwu r3, r6, r4
/* 80372F14  81 05 00 0C */	lwz r8, 0xc(r5)
/* 80372F18  38 07 FF FF */	addi r0, r7, -1
/* 80372F1C  83 E5 00 04 */	lwz r31, 4(r5)
/* 80372F20  83 C5 00 08 */	lwz r30, 8(r5)
/* 80372F24  7C 63 21 D6 */	mullw r3, r3, r4
/* 80372F28  7C A3 30 50 */	subf r5, r3, r6
/* 80372F2C  7C 09 03 A6 */	mtctr r0
/* 80372F30  2C 07 00 01 */	cmpwi r7, 1
/* 80372F34  39 08 00 02 */	addi r8, r8, 2
/* 80372F38  40 81 00 1C */	ble lbl_80372F54
lbl_80372F3C:
/* 80372F3C  A0 08 00 00 */	lhz r0, 0(r8)
/* 80372F40  7C 05 00 00 */	cmpw r5, r0
/* 80372F44  41 80 00 10 */	blt lbl_80372F54
/* 80372F48  39 08 00 02 */	addi r8, r8, 2
/* 80372F4C  39 4A 00 01 */	addi r10, r10, 1
/* 80372F50  42 00 FF EC */	bdnz lbl_80372F3C
lbl_80372F54:
/* 80372F54  A1 28 FF FE */	lhz r9, -2(r8)
/* 80372F58  3C 80 43 30 */	lis r4, 0x4330
/* 80372F5C  A0 08 00 00 */	lhz r0, 0(r8)
/* 80372F60  3C 60 80 64 */	lis r3, data_806411BC@ha /* 0x806411BC@ha */
/* 80372F64  7C C9 28 50 */	subf r6, r9, r5
/* 80372F68  55 47 10 3A */	slwi r7, r10, 2
/* 80372F6C  7C 09 00 50 */	subf r0, r9, r0
/* 80372F70  38 A3 11 BC */	addi r5, r3, data_806411BC@l /* 0x806411BC@l */
/* 80372F74  6C C3 80 00 */	xoris r3, r6, 0x8000
/* 80372F78  90 81 00 18 */	stw r4, 0x18(r1)
/* 80372F7C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80372F80  C8 45 00 00 */	lfd f2, 0(r5)
/* 80372F84  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80372F88  1C 6A 00 05 */	mulli r3, r10, 5
/* 80372F8C  7F DE 3A 14 */	add r30, r30, r7
/* 80372F90  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80372F94  90 01 00 24 */	stw r0, 0x24(r1)
/* 80372F98  7F FF 1A 14 */	add r31, r31, r3
/* 80372F9C  EC 20 10 28 */	fsubs f1, f0, f2
/* 80372FA0  88 7F FF FB */	lbz r3, -5(r31)
/* 80372FA4  90 81 00 20 */	stw r4, 0x20(r1)
/* 80372FA8  88 9F 00 00 */	lbz r4, 0(r31)
/* 80372FAC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80372FB0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80372FB4  EF E1 00 24 */	fdivs f31, f1, f0
/* 80372FB8  FC 20 F8 90 */	fmr f1, f31
/* 80372FBC  4B FF FE DD */	bl morf_calc
/* 80372FC0  98 61 00 0C */	stb r3, 0xc(r1)
/* 80372FC4  FC 20 F8 90 */	fmr f1, f31
/* 80372FC8  88 7F FF FC */	lbz r3, -4(r31)
/* 80372FCC  88 9F 00 01 */	lbz r4, 1(r31)
/* 80372FD0  4B FF FE C9 */	bl morf_calc
/* 80372FD4  98 61 00 0D */	stb r3, 0xd(r1)
/* 80372FD8  FC 20 F8 90 */	fmr f1, f31
/* 80372FDC  88 7F FF FD */	lbz r3, -3(r31)
/* 80372FE0  88 9F 00 02 */	lbz r4, 2(r31)
/* 80372FE4  4B FF FE B5 */	bl morf_calc
/* 80372FE8  98 61 00 0E */	stb r3, 0xe(r1)
/* 80372FEC  FC 20 F8 90 */	fmr f1, f31
/* 80372FF0  88 7F FF FE */	lbz r3, -2(r31)
/* 80372FF4  88 9F 00 03 */	lbz r4, 3(r31)
/* 80372FF8  4B FF FE A1 */	bl morf_calc
/* 80372FFC  98 61 00 0F */	stb r3, 0xf(r1)
/* 80373000  FC 20 F8 90 */	fmr f1, f31
/* 80373004  88 7F FF FF */	lbz r3, -1(r31)
/* 80373008  88 9F 00 04 */	lbz r4, 4(r31)
/* 8037300C  4B FF FE 8D */	bl morf_calc
/* 80373010  98 61 00 10 */	stb r3, 0x10(r1)
/* 80373014  FC 20 F8 90 */	fmr f1, f31
/* 80373018  88 7E FF FC */	lbz r3, -4(r30)
/* 8037301C  88 9E 00 00 */	lbz r4, 0(r30)
/* 80373020  4B FF FE 79 */	bl morf_calc
/* 80373024  98 61 00 08 */	stb r3, 8(r1)
/* 80373028  FC 20 F8 90 */	fmr f1, f31
/* 8037302C  88 7E FF FD */	lbz r3, -3(r30)
/* 80373030  88 9E 00 01 */	lbz r4, 1(r30)
/* 80373034  4B FF FE 65 */	bl morf_calc
/* 80373038  98 61 00 09 */	stb r3, 9(r1)
/* 8037303C  FC 20 F8 90 */	fmr f1, f31
/* 80373040  88 7E FF FE */	lbz r3, -2(r30)
/* 80373044  88 9E 00 02 */	lbz r4, 2(r30)
/* 80373048  4B FF FE 51 */	bl morf_calc
/* 8037304C  98 61 00 0A */	stb r3, 0xa(r1)
/* 80373050  FC 20 F8 90 */	fmr f1, f31
/* 80373054  88 7E FF FF */	lbz r3, -1(r30)
/* 80373058  88 9E 00 03 */	lbz r4, 3(r30)
/* 8037305C  4B FF FE 3D */	bl morf_calc
/* 80373060  98 61 00 0B */	stb r3, 0xb(r1)
/* 80373064  7F 83 E3 78 */	mr r3, r28
/* 80373068  7F A4 EB 78 */	mr r4, r29
/* 8037306C  38 A1 00 0C */	addi r5, r1, 0xc
/* 80373070  38 C1 00 08 */	addi r6, r1, 8
/* 80373074  4B FF FD 0D */	bl evw_color_set
/* 80373078  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8037307C  39 61 00 40 */	addi r11, r1, 0x40
/* 80373080  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80373084  4B D2 7E 99 */	bl func_8009AF1C
/* 80373088  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8037308C  7C 08 03 A6 */	mtlr r0
/* 80373090  38 21 00 50 */	addi r1, r1, 0x50
/* 80373094  4E 80 00 20 */	blr 
