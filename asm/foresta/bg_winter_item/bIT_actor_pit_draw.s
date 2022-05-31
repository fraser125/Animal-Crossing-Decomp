lbl_804C59B0:
/* 804C59B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804C59B4  7C 08 02 A6 */	mflr r0
/* 804C59B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C59BC  39 61 00 20 */	addi r11, r1, 0x20
/* 804C59C0  4B BD 55 11 */	bl func_8009AED0
/* 804C59C4  7C 7C 1B 78 */	mr r28, r3
/* 804C59C8  7C 9D 23 78 */	mr r29, r4
/* 804C59CC  7C BE 2B 78 */	mr r30, r5
/* 804C59D0  3B E0 00 00 */	li r31, 0
lbl_804C59D4:
/* 804C59D4  A0 1E 00 12 */	lhz r0, 0x12(r30)
/* 804C59D8  28 00 00 00 */	cmplwi r0, 0
/* 804C59DC  41 82 00 2C */	beq lbl_804C5A08
/* 804C59E0  A8 1E 00 10 */	lha r0, 0x10(r30)
/* 804C59E4  2C 00 00 00 */	cmpwi r0, 0
/* 804C59E8  41 82 00 20 */	beq lbl_804C5A08
/* 804C59EC  7F 83 E3 78 */	mr r3, r28
/* 804C59F0  7F A4 EB 78 */	mr r4, r29
/* 804C59F4  7F C5 F3 78 */	mr r5, r30
/* 804C59F8  38 C0 00 00 */	li r6, 0
/* 804C59FC  38 E0 00 00 */	li r7, 0
/* 804C5A00  39 00 00 00 */	li r8, 0
/* 804C5A04  4B FF FF 49 */	bl bIT_actor_pit_draw_nrm
lbl_804C5A08:
/* 804C5A08  3B FF 00 01 */	addi r31, r31, 1
/* 804C5A0C  3B DE 00 1C */	addi r30, r30, 0x1c
/* 804C5A10  2C 1F 00 0D */	cmpwi r31, 0xd
/* 804C5A14  41 80 FF C0 */	blt lbl_804C59D4
/* 804C5A18  39 61 00 20 */	addi r11, r1, 0x20
/* 804C5A1C  4B BD 55 01 */	bl func_8009AF1C
/* 804C5A20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C5A24  7C 08 03 A6 */	mtlr r0
/* 804C5A28  38 21 00 20 */	addi r1, r1, 0x20
/* 804C5A2C  4E 80 00 20 */	blr 
