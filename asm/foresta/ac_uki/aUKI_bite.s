lbl_804AEC68:
/* 804AEC68  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804AEC6C  7C 08 02 A6 */	mflr r0
/* 804AEC70  90 01 00 34 */	stw r0, 0x34(r1)
/* 804AEC74  39 61 00 30 */	addi r11, r1, 0x30
/* 804AEC78  4B BE C2 5D */	bl func_8009AED4
/* 804AEC7C  7C 7E 1B 78 */	mr r30, r3
/* 804AEC80  3C 60 80 69 */	lis r3, data_8068F758@ha /* 0x8068F758@ha */
/* 804AEC84  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 804AEC88  3B E3 F7 58 */	addi r31, r3, data_8068F758@l /* 0x8068F758@l */
/* 804AEC8C  C0 5E 00 78 */	lfs f2, 0x78(r30)
/* 804AEC90  7C 9D 23 78 */	mr r29, r4
/* 804AEC94  38 7E 00 6C */	addi r3, r30, 0x6c
/* 804AEC98  4B F0 BF D1 */	bl chase_f
/* 804AEC9C  7F C3 F3 78 */	mr r3, r30
/* 804AECA0  7F A4 EB 78 */	mr r4, r29
/* 804AECA4  4B FF FA 01 */	bl aUKI_force_command
/* 804AECA8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804AECAC  40 82 01 AC */	bne lbl_804AEE58
/* 804AECB0  80 1E 02 88 */	lwz r0, 0x288(r30)
/* 804AECB4  2C 00 00 02 */	cmpwi r0, 2
/* 804AECB8  40 82 01 8C */	bne lbl_804AEE44
/* 804AECBC  80 1E 02 34 */	lwz r0, 0x234(r30)
/* 804AECC0  2C 00 00 06 */	cmpwi r0, 6
/* 804AECC4  40 82 01 54 */	bne lbl_804AEE18
/* 804AECC8  A8 7E 02 62 */	lha r3, 0x262(r30)
/* 804AECCC  2C 03 00 00 */	cmpwi r3, 0
/* 804AECD0  40 82 00 0C */	bne lbl_804AECDC
/* 804AECD4  38 00 00 00 */	li r0, 0
/* 804AECD8  48 00 00 10 */	b lbl_804AECE8
lbl_804AECDC:
/* 804AECDC  38 03 FF FF */	addi r0, r3, -1
/* 804AECE0  B0 1E 02 62 */	sth r0, 0x262(r30)
/* 804AECE4  7C 00 07 34 */	extsh r0, r0
lbl_804AECE8:
/* 804AECE8  2C 00 00 00 */	cmpwi r0, 0
/* 804AECEC  40 82 00 44 */	bne lbl_804AED30
/* 804AECF0  7F C3 F3 78 */	mr r3, r30
/* 804AECF4  4B FF EE 55 */	bl aUKI_clear_spd
/* 804AECF8  7F C3 F3 78 */	mr r3, r30
/* 804AECFC  7F A4 EB 78 */	mr r4, r29
/* 804AED00  38 A0 00 05 */	li r5, 5
/* 804AED04  38 C0 00 03 */	li r6, 3
/* 804AED08  48 00 06 75 */	bl aUKI_set_proc
/* 804AED0C  A8 DE 02 62 */	lha r6, 0x262(r30)
/* 804AED10  7F C3 F3 78 */	mr r3, r30
/* 804AED14  38 9E 02 68 */	addi r4, r30, 0x268
/* 804AED18  38 BE 02 54 */	addi r5, r30, 0x254
/* 804AED1C  38 E0 00 02 */	li r7, 2
/* 804AED20  4B FF EE 41 */	bl aUKI_parabola_init
/* 804AED24  38 00 00 05 */	li r0, 5
/* 804AED28  90 1E 02 8C */	stw r0, 0x28c(r30)
/* 804AED2C  48 00 01 2C */	b lbl_804AEE58
lbl_804AED30:
/* 804AED30  80 9E 02 90 */	lwz r4, 0x290(r30)
/* 804AED34  3C 00 43 30 */	lis r0, 0x4330
/* 804AED38  3C 60 80 64 */	lis r3, lit_486@ha /* 0x80645F44@ha */
/* 804AED3C  3C C0 80 64 */	lis r6, lit_484@ha /* 0x80645F3C@ha */
/* 804AED40  54 85 18 38 */	slwi r5, r4, 3
/* 804AED44  38 9F 00 40 */	addi r4, r31, 0x40
/* 804AED48  7C E4 2A AE */	lhax r7, r4, r5
/* 804AED4C  38 9F 03 54 */	addi r4, r31, 0x354
/* 804AED50  90 01 00 08 */	stw r0, 8(r1)
/* 804AED54  54 E5 08 3C */	slwi r5, r7, 1
/* 804AED58  C8 23 5F 44 */	lfd f1, lit_486@l(r3)  /* 0x80645F44@l */
/* 804AED5C  7C 84 2A AE */	lhax r4, r4, r5
/* 804AED60  54 E0 10 3A */	slwi r0, r7, 2
/* 804AED64  C0 46 5F 3C */	lfs f2, lit_484@l(r6)  /* 0x80645F3C@l */
/* 804AED68  38 7F 03 64 */	addi r3, r31, 0x364
/* 804AED6C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 804AED70  A8 BE 00 36 */	lha r5, 0x36(r30)
/* 804AED74  90 81 00 0C */	stw r4, 0xc(r1)
/* 804AED78  C8 01 00 08 */	lfd f0, 8(r1)
/* 804AED7C  EC 00 08 28 */	fsubs f0, f0, f1
/* 804AED80  EC 02 00 32 */	fmuls f0, f2, f0
/* 804AED84  FC 00 00 1E */	fctiwz f0, f0
/* 804AED88  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804AED8C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 804AED90  7C 85 22 14 */	add r4, r5, r4
/* 804AED94  B0 9E 00 36 */	sth r4, 0x36(r30)
/* 804AED98  A8 9E 00 36 */	lha r4, 0x36(r30)
/* 804AED9C  B0 9E 00 DE */	sth r4, 0xde(r30)
/* 804AEDA0  7C 03 04 2E */	lfsx f0, r3, r0
/* 804AEDA4  D0 1E 00 74 */	stfs f0, 0x74(r30)
/* 804AEDA8  A8 7E 00 36 */	lha r3, 0x36(r30)
/* 804AEDAC  4B F0 BD 45 */	bl sin_s
/* 804AEDB0  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 804AEDB4  EC 00 00 72 */	fmuls f0, f0, f1
/* 804AEDB8  D0 1E 00 68 */	stfs f0, 0x68(r30)
/* 804AEDBC  A8 7E 00 36 */	lha r3, 0x36(r30)
/* 804AEDC0  4B F0 BC DD */	bl cos_s
/* 804AEDC4  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 804AEDC8  7F C3 F3 78 */	mr r3, r30
/* 804AEDCC  EC 00 00 72 */	fmuls f0, f0, f1
/* 804AEDD0  D0 1E 00 70 */	stfs f0, 0x70(r30)
/* 804AEDD4  4B EC 54 35 */	bl Actor_position_move
/* 804AEDD8  80 9E 02 74 */	lwz r4, 0x274(r30)
/* 804AEDDC  38 00 00 04 */	li r0, 4
/* 804AEDE0  80 7E 02 78 */	lwz r3, 0x278(r30)
/* 804AEDE4  90 9E 02 68 */	stw r4, 0x268(r30)
/* 804AEDE8  90 7E 02 6C */	stw r3, 0x26c(r30)
/* 804AEDEC  80 7E 02 7C */	lwz r3, 0x27c(r30)
/* 804AEDF0  90 7E 02 70 */	stw r3, 0x270(r30)
/* 804AEDF4  90 1E 02 8C */	stw r0, 0x28c(r30)
/* 804AEDF8  80 1E 02 38 */	lwz r0, 0x238(r30)
/* 804AEDFC  2C 00 00 05 */	cmpwi r0, 5
/* 804AEE00  41 82 00 0C */	beq lbl_804AEE0C
/* 804AEE04  7F C3 F3 78 */	mr r3, r30
/* 804AEE08  4B FF EC D9 */	bl aUKI_bite_vib_proc
lbl_804AEE0C:
/* 804AEE0C  38 00 00 05 */	li r0, 5
/* 804AEE10  90 1E 02 38 */	stw r0, 0x238(r30)
/* 804AEE14  48 00 00 44 */	b lbl_804AEE58
lbl_804AEE18:
/* 804AEE18  80 9D 00 A0 */	lwz r4, 0xa0(r29)
/* 804AEE1C  38 60 00 0A */	li r3, 0xa
/* 804AEE20  7C 04 1B 96 */	divwu r0, r4, r3
/* 804AEE24  7C 00 19 D6 */	mullw r0, r0, r3
/* 804AEE28  7C 00 20 51 */	subf. r0, r0, r4
/* 804AEE2C  40 82 00 0C */	bne lbl_804AEE38
/* 804AEE30  7F C3 F3 78 */	mr r3, r30
/* 804AEE34  4B FF EC 45 */	bl aUKI_touch_vib_proc
lbl_804AEE38:
/* 804AEE38  7F C3 F3 78 */	mr r3, r30
/* 804AEE3C  4B EC 53 CD */	bl Actor_position_move
/* 804AEE40  48 00 00 18 */	b lbl_804AEE58
lbl_804AEE44:
/* 804AEE44  7F C3 F3 78 */	mr r3, r30
/* 804AEE48  7F A4 EB 78 */	mr r4, r29
/* 804AEE4C  38 A0 00 04 */	li r5, 4
/* 804AEE50  38 C0 00 00 */	li r6, 0
/* 804AEE54  48 00 05 29 */	bl aUKI_set_proc
lbl_804AEE58:
/* 804AEE58  39 61 00 30 */	addi r11, r1, 0x30
/* 804AEE5C  4B BE C0 C5 */	bl func_8009AF20
/* 804AEE60  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804AEE64  7C 08 03 A6 */	mtlr r0
/* 804AEE68  38 21 00 30 */	addi r1, r1, 0x30
/* 804AEE6C  4E 80 00 20 */	blr 
