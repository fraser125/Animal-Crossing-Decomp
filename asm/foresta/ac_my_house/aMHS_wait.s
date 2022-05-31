lbl_805B585C:
/* 805B585C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B5860  7C 08 02 A6 */	mflr r0
/* 805B5864  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B5868  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B586C  7C 9F 23 78 */	mr r31, r4
/* 805B5870  93 C1 00 08 */	stw r30, 8(r1)
/* 805B5874  7C 7E 1B 78 */	mr r30, r3
/* 805B5878  4B FF FC 5D */	bl aMHS_check_player
/* 805B587C  2C 03 00 04 */	cmpwi r3, 4
/* 805B5880  41 82 00 24 */	beq lbl_805B58A4
/* 805B5884  40 80 00 4C */	bge lbl_805B58D0
/* 805B5888  2C 03 00 01 */	cmpwi r3, 1
/* 805B588C  41 82 00 08 */	beq lbl_805B5894
/* 805B5890  48 00 00 40 */	b lbl_805B58D0
lbl_805B5894:
/* 805B5894  7F C3 F3 78 */	mr r3, r30
/* 805B5898  38 80 00 01 */	li r4, 1
/* 805B589C  48 00 01 E9 */	bl aMHS_setup_action
/* 805B58A0  48 00 00 30 */	b lbl_805B58D0
lbl_805B58A4:
/* 805B58A4  7F E3 FB 78 */	mr r3, r31
/* 805B58A8  4B E2 5F 79 */	bl mPlib_check_player_outdoor_start
/* 805B58AC  2C 03 00 00 */	cmpwi r3, 0
/* 805B58B0  41 82 00 20 */	beq lbl_805B58D0
/* 805B58B4  3C 80 80 65 */	lis r4, lit_685@ha /* 0x8064A98C@ha */
/* 805B58B8  7F C3 F3 78 */	mr r3, r30
/* 805B58BC  C0 24 A9 8C */	lfs f1, lit_685@l(r4)  /* 0x8064A98C@l */
/* 805B58C0  4B FF F7 59 */	bl aMHS_setup_animation
/* 805B58C4  7F C3 F3 78 */	mr r3, r30
/* 805B58C8  38 80 00 02 */	li r4, 2
/* 805B58CC  48 00 01 B9 */	bl aMHS_setup_action
lbl_805B58D0:
/* 805B58D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B58D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B58D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805B58DC  7C 08 03 A6 */	mtlr r0
/* 805B58E0  38 21 00 10 */	addi r1, r1, 0x10
/* 805B58E4  4E 80 00 20 */	blr 
