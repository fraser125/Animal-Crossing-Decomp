lbl_805AB0B4:
/* 805AB0B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AB0B8  7C 08 02 A6 */	mflr r0
/* 805AB0BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AB0C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805AB0C4  7C 7F 1B 78 */	mr r31, r3
/* 805AB0C8  38 60 00 07 */	li r3, 7
/* 805AB0CC  93 C1 00 08 */	stw r30, 8(r1)
/* 805AB0D0  7C 9E 23 78 */	mr r30, r4
/* 805AB0D4  7F E4 FB 78 */	mr r4, r31
/* 805AB0D8  4B DE F1 8D */	bl mDemo_Check
/* 805AB0DC  2C 03 00 01 */	cmpwi r3, 1
/* 805AB0E0  41 82 00 68 */	beq lbl_805AB148
/* 805AB0E4  4B E3 F6 2D */	bl mSP_ShopOpen
/* 805AB0E8  2C 03 00 02 */	cmpwi r3, 2
/* 805AB0EC  41 82 00 10 */	beq lbl_805AB0FC
/* 805AB0F0  4B E3 F6 21 */	bl mSP_ShopOpen
/* 805AB0F4  2C 03 00 06 */	cmpwi r3, 6
/* 805AB0F8  40 82 00 28 */	bne lbl_805AB120
lbl_805AB0FC:
/* 805AB0FC  7F E3 FB 78 */	mr r3, r31
/* 805AB100  7F C4 F3 78 */	mr r4, r30
/* 805AB104  4B FF FC 81 */	bl aCNV_check_player
/* 805AB108  2C 03 00 00 */	cmpwi r3, 0
/* 805AB10C  41 82 00 3C */	beq lbl_805AB148
/* 805AB110  7F E3 FB 78 */	mr r3, r31
/* 805AB114  38 80 00 03 */	li r4, 3
/* 805AB118  48 00 02 45 */	bl aCNV_setup_action
/* 805AB11C  48 00 00 2C */	b lbl_805AB148
lbl_805AB120:
/* 805AB120  7F E3 FB 78 */	mr r3, r31
/* 805AB124  7F C4 F3 78 */	mr r4, r30
/* 805AB128  4B FF FC 5D */	bl aCNV_check_player
/* 805AB12C  2C 03 00 02 */	cmpwi r3, 2
/* 805AB130  40 82 00 18 */	bne lbl_805AB148
/* 805AB134  3C 60 80 5B */	lis r3, aCNV_set_talk_info_close_wait@ha /* 0x805AAE4C@ha */
/* 805AB138  7F E4 FB 78 */	mr r4, r31
/* 805AB13C  38 A3 AE 4C */	addi r5, r3, aCNV_set_talk_info_close_wait@l /* 0x805AAE4C@l */
/* 805AB140  38 60 00 07 */	li r3, 7
/* 805AB144  4B DE F0 19 */	bl mDemo_Request
lbl_805AB148:
/* 805AB148  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AB14C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805AB150  83 C1 00 08 */	lwz r30, 8(r1)
/* 805AB154  7C 08 03 A6 */	mtlr r0
/* 805AB158  38 21 00 10 */	addi r1, r1, 0x10
/* 805AB15C  4E 80 00 20 */	blr 
