lbl_80565990:
/* 80565990  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80565994  7C 08 02 A6 */	mflr r0
/* 80565998  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056599C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805659A0  7C 9F 23 78 */	mr r31, r4
/* 805659A4  93 C1 00 08 */	stw r30, 8(r1)
/* 805659A8  7C 7E 1B 78 */	mr r30, r3
/* 805659AC  7F E3 FB 78 */	mr r3, r31
/* 805659B0  4B FF F2 09 */	bl func_80564BB8
/* 805659B4  2C 03 00 00 */	cmpwi r3, 0
/* 805659B8  41 82 00 18 */	beq lbl_805659D0
/* 805659BC  7F C3 F3 78 */	mr r3, r30
/* 805659C0  7F E4 FB 78 */	mr r4, r31
/* 805659C4  38 A0 00 0A */	li r5, 0xa
/* 805659C8  48 00 06 25 */	bl aNNW_setup_think_proc
/* 805659CC  48 00 00 54 */	b lbl_80565A20
lbl_805659D0:
/* 805659D0  88 1E 09 BA */	lbz r0, 0x9ba(r30)
/* 805659D4  28 00 00 00 */	cmplwi r0, 0
/* 805659D8  41 82 00 18 */	beq lbl_805659F0
/* 805659DC  7F C3 F3 78 */	mr r3, r30
/* 805659E0  7F E4 FB 78 */	mr r4, r31
/* 805659E4  38 A0 00 07 */	li r5, 7
/* 805659E8  48 00 06 05 */	bl aNNW_setup_think_proc
/* 805659EC  48 00 00 34 */	b lbl_80565A20
lbl_805659F0:
/* 805659F0  7F C3 F3 78 */	mr r3, r30
/* 805659F4  7F E4 FB 78 */	mr r4, r31
/* 805659F8  4B FF F2 01 */	bl player_buy
/* 805659FC  2C 03 00 00 */	cmpwi r3, 0
/* 80565A00  41 82 00 14 */	beq lbl_80565A14
/* 80565A04  7F C3 F3 78 */	mr r3, r30
/* 80565A08  7F E4 FB 78 */	mr r4, r31
/* 80565A0C  38 A0 00 05 */	li r5, 5
/* 80565A10  48 00 05 DD */	bl aNNW_setup_think_proc
lbl_80565A14:
/* 80565A14  7F C3 F3 78 */	mr r3, r30
/* 80565A18  7F E4 FB 78 */	mr r4, r31
/* 80565A1C  4B FF FE 09 */	bl aNNW_my_proc_main
lbl_80565A20:
/* 80565A20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80565A24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80565A28  83 C1 00 08 */	lwz r30, 8(r1)
/* 80565A2C  7C 08 03 A6 */	mtlr r0
/* 80565A30  38 21 00 10 */	addi r1, r1, 0x10
/* 80565A34  4E 80 00 20 */	blr 
