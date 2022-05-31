lbl_805FED28:
/* 805FED28  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805FED2C  7C 08 02 A6 */	mflr r0
/* 805FED30  90 01 00 34 */	stw r0, 0x34(r1)
/* 805FED34  39 61 00 20 */	addi r11, r1, 0x20
/* 805FED38  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 805FED3C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805FED40  4B A9 C1 8D */	bl func_8009AECC
/* 805FED44  7C FF 3B 78 */	mr r31, r7
/* 805FED48  FF C0 08 90 */	fmr f30, f1
/* 805FED4C  88 07 00 00 */	lbz r0, 0(r7)
/* 805FED50  FF E0 10 90 */	fmr f31, f2
/* 805FED54  7C 7B 1B 78 */	mr r27, r3
/* 805FED58  7C 9C 23 78 */	mr r28, r4
/* 805FED5C  28 00 00 00 */	cmplwi r0, 0
/* 805FED60  7C BD 2B 78 */	mr r29, r5
/* 805FED64  7C DE 33 78 */	mr r30, r6
/* 805FED68  40 82 00 94 */	bne lbl_805FEDFC
/* 805FED6C  88 1F 00 01 */	lbz r0, 1(r31)
/* 805FED70  28 00 00 00 */	cmplwi r0, 0
/* 805FED74  41 82 00 C0 */	beq lbl_805FEE34
/* 805FED78  88 1F 00 02 */	lbz r0, 2(r31)
/* 805FED7C  28 00 00 00 */	cmplwi r0, 0
/* 805FED80  41 82 00 40 */	beq lbl_805FEDC0
/* 805FED84  7F A3 EB 78 */	mr r3, r29
/* 805FED88  7F 64 DB 78 */	mr r4, r27
/* 805FED8C  7F 85 E3 78 */	mr r5, r28
/* 805FED90  7F E6 FB 78 */	mr r6, r31
/* 805FED94  38 E0 00 01 */	li r7, 1
/* 805FED98  39 00 00 00 */	li r8, 0
/* 805FED9C  4B FF ED 3D */	bl mTG_set_win_field
/* 805FEDA0  FC 20 F0 90 */	fmr f1, f30
/* 805FEDA4  7F 63 DB 78 */	mr r3, r27
/* 805FEDA8  FC 40 F8 90 */	fmr f2, f31
/* 805FEDAC  7F C4 F3 78 */	mr r4, r30
/* 805FEDB0  7F A5 EB 78 */	mr r5, r29
/* 805FEDB4  7F E6 FB 78 */	mr r6, r31
/* 805FEDB8  4B FF FE 45 */	bl mTG_set_character_q_item
/* 805FEDBC  48 00 00 78 */	b lbl_805FEE34
lbl_805FEDC0:
/* 805FEDC0  7F A3 EB 78 */	mr r3, r29
/* 805FEDC4  7F 64 DB 78 */	mr r4, r27
/* 805FEDC8  7F 85 E3 78 */	mr r5, r28
/* 805FEDCC  7F E6 FB 78 */	mr r6, r31
/* 805FEDD0  38 E0 00 00 */	li r7, 0
/* 805FEDD4  39 00 00 00 */	li r8, 0
/* 805FEDD8  4B FF ED 01 */	bl mTG_set_win_field
/* 805FEDDC  FC 20 F0 90 */	fmr f1, f30
/* 805FEDE0  7F 63 DB 78 */	mr r3, r27
/* 805FEDE4  FC 40 F8 90 */	fmr f2, f31
/* 805FEDE8  7F C4 F3 78 */	mr r4, r30
/* 805FEDEC  7F A5 EB 78 */	mr r5, r29
/* 805FEDF0  7F E6 FB 78 */	mr r6, r31
/* 805FEDF4  4B FF FC 75 */	bl mTG_set_character_item
/* 805FEDF8  48 00 00 3C */	b lbl_805FEE34
lbl_805FEDFC:
/* 805FEDFC  7F A3 EB 78 */	mr r3, r29
/* 805FEE00  7F 64 DB 78 */	mr r4, r27
/* 805FEE04  7F 85 E3 78 */	mr r5, r28
/* 805FEE08  7F E6 FB 78 */	mr r6, r31
/* 805FEE0C  38 E0 00 02 */	li r7, 2
/* 805FEE10  4B FF EC C9 */	bl mTG_set_win_field
/* 805FEE14  FC 20 F0 90 */	fmr f1, f30
/* 805FEE18  7F 63 DB 78 */	mr r3, r27
/* 805FEE1C  FC 40 F8 90 */	fmr f2, f31
/* 805FEE20  7F 84 E3 78 */	mr r4, r28
/* 805FEE24  7F C5 F3 78 */	mr r5, r30
/* 805FEE28  7F A6 EB 78 */	mr r6, r29
/* 805FEE2C  7F E7 FB 78 */	mr r7, r31
/* 805FEE30  4B FF F8 DD */	bl mTG_set_character
lbl_805FEE34:
/* 805FEE34  39 61 00 20 */	addi r11, r1, 0x20
/* 805FEE38  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 805FEE3C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805FEE40  4B A9 C0 D9 */	bl func_8009AF18
/* 805FEE44  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805FEE48  7C 08 03 A6 */	mtlr r0
/* 805FEE4C  38 21 00 30 */	addi r1, r1, 0x30
/* 805FEE50  4E 80 00 20 */	blr 
