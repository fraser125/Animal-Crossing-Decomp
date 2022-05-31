lbl_805ACE90:
/* 805ACE90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805ACE94  7C 08 02 A6 */	mflr r0
/* 805ACE98  90 01 00 14 */	stw r0, 0x14(r1)
/* 805ACE9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805ACEA0  7C 7F 1B 78 */	mr r31, r3
/* 805ACEA4  38 60 00 07 */	li r3, 7
/* 805ACEA8  93 C1 00 08 */	stw r30, 8(r1)
/* 805ACEAC  7C 9E 23 78 */	mr r30, r4
/* 805ACEB0  7F E4 FB 78 */	mr r4, r31
/* 805ACEB4  4B DE D3 B1 */	bl mDemo_Check
/* 805ACEB8  2C 03 00 01 */	cmpwi r3, 1
/* 805ACEBC  41 82 00 68 */	beq lbl_805ACF24
/* 805ACEC0  4B E3 D8 51 */	bl mSP_ShopOpen
/* 805ACEC4  2C 03 00 02 */	cmpwi r3, 2
/* 805ACEC8  41 82 00 10 */	beq lbl_805ACED8
/* 805ACECC  4B E3 D8 45 */	bl mSP_ShopOpen
/* 805ACED0  2C 03 00 06 */	cmpwi r3, 6
/* 805ACED4  40 82 00 28 */	bne lbl_805ACEFC
lbl_805ACED8:
/* 805ACED8  7F E3 FB 78 */	mr r3, r31
/* 805ACEDC  7F C4 F3 78 */	mr r4, r30
/* 805ACEE0  4B FF FC 81 */	bl aDPT_check_player
/* 805ACEE4  2C 03 00 00 */	cmpwi r3, 0
/* 805ACEE8  41 82 00 3C */	beq lbl_805ACF24
/* 805ACEEC  7F E3 FB 78 */	mr r3, r31
/* 805ACEF0  38 80 00 03 */	li r4, 3
/* 805ACEF4  48 00 02 45 */	bl aDPT_setup_action
/* 805ACEF8  48 00 00 2C */	b lbl_805ACF24
lbl_805ACEFC:
/* 805ACEFC  7F E3 FB 78 */	mr r3, r31
/* 805ACF00  7F C4 F3 78 */	mr r4, r30
/* 805ACF04  4B FF FC 5D */	bl aDPT_check_player
/* 805ACF08  2C 03 00 02 */	cmpwi r3, 2
/* 805ACF0C  40 82 00 18 */	bne lbl_805ACF24
/* 805ACF10  3C 60 80 5B */	lis r3, aDPT_set_talk_info_close_wait@ha /* 0x805ACC28@ha */
/* 805ACF14  7F E4 FB 78 */	mr r4, r31
/* 805ACF18  38 A3 CC 28 */	addi r5, r3, aDPT_set_talk_info_close_wait@l /* 0x805ACC28@l */
/* 805ACF1C  38 60 00 07 */	li r3, 7
/* 805ACF20  4B DE D2 3D */	bl mDemo_Request
lbl_805ACF24:
/* 805ACF24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805ACF28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805ACF2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805ACF30  7C 08 03 A6 */	mtlr r0
/* 805ACF34  38 21 00 10 */	addi r1, r1, 0x10
/* 805ACF38  4E 80 00 20 */	blr 
