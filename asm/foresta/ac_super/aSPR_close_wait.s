lbl_805BD5F0:
/* 805BD5F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BD5F4  7C 08 02 A6 */	mflr r0
/* 805BD5F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BD5FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BD600  7C 7F 1B 78 */	mr r31, r3
/* 805BD604  38 60 00 07 */	li r3, 7
/* 805BD608  93 C1 00 08 */	stw r30, 8(r1)
/* 805BD60C  7C 9E 23 78 */	mr r30, r4
/* 805BD610  7F E4 FB 78 */	mr r4, r31
/* 805BD614  4B DD CC 51 */	bl mDemo_Check
/* 805BD618  2C 03 00 01 */	cmpwi r3, 1
/* 805BD61C  41 82 00 68 */	beq lbl_805BD684
/* 805BD620  4B E2 D0 F1 */	bl mSP_ShopOpen
/* 805BD624  2C 03 00 02 */	cmpwi r3, 2
/* 805BD628  41 82 00 10 */	beq lbl_805BD638
/* 805BD62C  4B E2 D0 E5 */	bl mSP_ShopOpen
/* 805BD630  2C 03 00 06 */	cmpwi r3, 6
/* 805BD634  40 82 00 28 */	bne lbl_805BD65C
lbl_805BD638:
/* 805BD638  7F E3 FB 78 */	mr r3, r31
/* 805BD63C  7F C4 F3 78 */	mr r4, r30
/* 805BD640  4B FF FC 81 */	bl aSPR_check_player
/* 805BD644  2C 03 00 00 */	cmpwi r3, 0
/* 805BD648  41 82 00 3C */	beq lbl_805BD684
/* 805BD64C  7F E3 FB 78 */	mr r3, r31
/* 805BD650  38 80 00 03 */	li r4, 3
/* 805BD654  48 00 02 45 */	bl aSPR_setup_action
/* 805BD658  48 00 00 2C */	b lbl_805BD684
lbl_805BD65C:
/* 805BD65C  7F E3 FB 78 */	mr r3, r31
/* 805BD660  7F C4 F3 78 */	mr r4, r30
/* 805BD664  4B FF FC 5D */	bl aSPR_check_player
/* 805BD668  2C 03 00 02 */	cmpwi r3, 2
/* 805BD66C  40 82 00 18 */	bne lbl_805BD684
/* 805BD670  3C 60 80 5C */	lis r3, aSPR_set_talk_info_close_wait@ha /* 0x805BD388@ha */
/* 805BD674  7F E4 FB 78 */	mr r4, r31
/* 805BD678  38 A3 D3 88 */	addi r5, r3, aSPR_set_talk_info_close_wait@l /* 0x805BD388@l */
/* 805BD67C  38 60 00 07 */	li r3, 7
/* 805BD680  4B DD CA DD */	bl mDemo_Request
lbl_805BD684:
/* 805BD684  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BD688  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BD68C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805BD690  7C 08 03 A6 */	mtlr r0
/* 805BD694  38 21 00 10 */	addi r1, r1, 0x10
/* 805BD698  4E 80 00 20 */	blr 
