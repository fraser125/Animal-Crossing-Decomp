lbl_804CCDC8:
/* 804CCDC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804CCDCC  7C 08 02 A6 */	mflr r0
/* 804CCDD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804CCDD4  39 61 00 20 */	addi r11, r1, 0x20
/* 804CCDD8  4B BC E0 F9 */	bl func_8009AED0
/* 804CCDDC  7C 7C 1B 78 */	mr r28, r3
/* 804CCDE0  7C 9D 23 78 */	mr r29, r4
/* 804CCDE4  7C BE 2B 78 */	mr r30, r5
/* 804CCDE8  3B E0 00 00 */	li r31, 0
lbl_804CCDEC:
/* 804CCDEC  A0 1E 00 12 */	lhz r0, 0x12(r30)
/* 804CCDF0  28 00 00 00 */	cmplwi r0, 0
/* 804CCDF4  41 82 00 2C */	beq lbl_804CCE20
/* 804CCDF8  A8 1E 00 10 */	lha r0, 0x10(r30)
/* 804CCDFC  2C 00 00 00 */	cmpwi r0, 0
/* 804CCE00  41 82 00 20 */	beq lbl_804CCE20
/* 804CCE04  7F 83 E3 78 */	mr r3, r28
/* 804CCE08  7F A4 EB 78 */	mr r4, r29
/* 804CCE0C  7F C5 F3 78 */	mr r5, r30
/* 804CCE10  38 C0 00 00 */	li r6, 0
/* 804CCE14  38 E0 00 00 */	li r7, 0
/* 804CCE18  39 00 00 00 */	li r8, 0
/* 804CCE1C  4B FF FF 49 */	bl bIT_actor_pit_draw_nrm
lbl_804CCE20:
/* 804CCE20  3B FF 00 01 */	addi r31, r31, 1
/* 804CCE24  3B DE 00 1C */	addi r30, r30, 0x1c
/* 804CCE28  2C 1F 00 0D */	cmpwi r31, 0xd
/* 804CCE2C  41 80 FF C0 */	blt lbl_804CCDEC
/* 804CCE30  39 61 00 20 */	addi r11, r1, 0x20
/* 804CCE34  4B BC E0 E9 */	bl func_8009AF1C
/* 804CCE38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804CCE3C  7C 08 03 A6 */	mtlr r0
/* 804CCE40  38 21 00 20 */	addi r1, r1, 0x20
/* 804CCE44  4E 80 00 20 */	blr 
