lbl_804BDEB8:
/* 804BDEB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804BDEBC  7C 08 02 A6 */	mflr r0
/* 804BDEC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804BDEC4  39 61 00 20 */	addi r11, r1, 0x20
/* 804BDEC8  4B BD D0 09 */	bl func_8009AED0
/* 804BDECC  7C 7C 1B 78 */	mr r28, r3
/* 804BDED0  7C 9D 23 78 */	mr r29, r4
/* 804BDED4  7C BE 2B 78 */	mr r30, r5
/* 804BDED8  3B E0 00 00 */	li r31, 0
lbl_804BDEDC:
/* 804BDEDC  A0 1E 00 12 */	lhz r0, 0x12(r30)
/* 804BDEE0  28 00 00 00 */	cmplwi r0, 0
/* 804BDEE4  41 82 00 2C */	beq lbl_804BDF10
/* 804BDEE8  A8 1E 00 10 */	lha r0, 0x10(r30)
/* 804BDEEC  2C 00 00 00 */	cmpwi r0, 0
/* 804BDEF0  41 82 00 20 */	beq lbl_804BDF10
/* 804BDEF4  7F 83 E3 78 */	mr r3, r28
/* 804BDEF8  7F A4 EB 78 */	mr r4, r29
/* 804BDEFC  7F C5 F3 78 */	mr r5, r30
/* 804BDF00  38 C0 00 00 */	li r6, 0
/* 804BDF04  38 E0 00 00 */	li r7, 0
/* 804BDF08  39 00 00 00 */	li r8, 0
/* 804BDF0C  4B FF FF 49 */	bl bIT_actor_pit_draw_nrm
lbl_804BDF10:
/* 804BDF10  3B FF 00 01 */	addi r31, r31, 1
/* 804BDF14  3B DE 00 1C */	addi r30, r30, 0x1c
/* 804BDF18  2C 1F 00 0D */	cmpwi r31, 0xd
/* 804BDF1C  41 80 FF C0 */	blt lbl_804BDEDC
/* 804BDF20  39 61 00 20 */	addi r11, r1, 0x20
/* 804BDF24  4B BD CF F9 */	bl func_8009AF1C
/* 804BDF28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804BDF2C  7C 08 03 A6 */	mtlr r0
/* 804BDF30  38 21 00 20 */	addi r1, r1, 0x20
/* 804BDF34  4E 80 00 20 */	blr 
