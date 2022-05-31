lbl_805B0524:
/* 805B0524  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B0528  7C 08 02 A6 */	mflr r0
/* 805B052C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B0530  39 61 00 20 */	addi r11, r1, 0x20
/* 805B0534  4B AE A9 A1 */	bl func_8009AED4
/* 805B0538  7C 7D 1B 78 */	mr r29, r3
/* 805B053C  7C 9E 23 78 */	mr r30, r4
/* 805B0540  3B E0 FF FF */	li r31, -1
/* 805B0544  4B FF FC BD */	bl aHUS_check_open
/* 805B0548  2C 03 00 02 */	cmpwi r3, 2
/* 805B054C  41 82 00 40 */	beq lbl_805B058C
/* 805B0550  40 80 00 10 */	bge lbl_805B0560
/* 805B0554  2C 03 00 01 */	cmpwi r3, 1
/* 805B0558  40 80 00 14 */	bge lbl_805B056C
/* 805B055C  48 00 00 34 */	b lbl_805B0590
lbl_805B0560:
/* 805B0560  2C 03 00 04 */	cmpwi r3, 4
/* 805B0564  40 80 00 2C */	bge lbl_805B0590
/* 805B0568  48 00 00 0C */	b lbl_805B0574
lbl_805B056C:
/* 805B056C  3B E0 00 02 */	li r31, 2
/* 805B0570  48 00 00 20 */	b lbl_805B0590
lbl_805B0574:
/* 805B0574  7F C3 F3 78 */	mr r3, r30
/* 805B0578  4B E2 B2 A9 */	bl mPlib_check_player_outdoor_start
/* 805B057C  2C 03 00 00 */	cmpwi r3, 0
/* 805B0580  41 82 00 10 */	beq lbl_805B0590
/* 805B0584  3B E0 00 02 */	li r31, 2
/* 805B0588  48 00 00 08 */	b lbl_805B0590
lbl_805B058C:
/* 805B058C  3B E0 00 01 */	li r31, 1
lbl_805B0590:
/* 805B0590  2C 1F FF FF */	cmpwi r31, -1
/* 805B0594  41 82 00 4C */	beq lbl_805B05E0
/* 805B0598  7F A3 EB 78 */	mr r3, r29
/* 805B059C  7F E4 FB 78 */	mr r4, r31
/* 805B05A0  48 00 01 A5 */	bl aHUS_setup_action
/* 805B05A4  48 00 00 08 */	b lbl_805B05AC
/* 805B05A8  48 00 00 38 */	b lbl_805B05E0
lbl_805B05AC:
/* 805B05AC  80 1D 02 B0 */	lwz r0, 0x2b0(r29)
/* 805B05B0  2C 00 00 03 */	cmpwi r0, 3
/* 805B05B4  41 82 00 2C */	beq lbl_805B05E0
/* 805B05B8  40 80 00 10 */	bge lbl_805B05C8
/* 805B05BC  2C 00 00 01 */	cmpwi r0, 1
/* 805B05C0  40 80 00 10 */	bge lbl_805B05D0
/* 805B05C4  48 00 00 1C */	b lbl_805B05E0
lbl_805B05C8:
/* 805B05C8  2C 00 00 05 */	cmpwi r0, 5
/* 805B05CC  40 80 00 14 */	bge lbl_805B05E0
lbl_805B05D0:
/* 805B05D0  3C 80 80 65 */	lis r4, lit_710@ha /* 0x8064A7A4@ha */
/* 805B05D4  7F A3 EB 78 */	mr r3, r29
/* 805B05D8  C0 24 A7 A4 */	lfs f1, lit_710@l(r4)  /* 0x8064A7A4@l */
/* 805B05DC  4B FF F8 51 */	bl aHUS_setup_animation
lbl_805B05E0:
/* 805B05E0  39 61 00 20 */	addi r11, r1, 0x20
/* 805B05E4  4B AE A9 3D */	bl func_8009AF20
/* 805B05E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B05EC  7C 08 03 A6 */	mtlr r0
/* 805B05F0  38 21 00 20 */	addi r1, r1, 0x20
/* 805B05F4  4E 80 00 20 */	blr 
