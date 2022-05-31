lbl_805ACF3C:
/* 805ACF3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805ACF40  7C 08 02 A6 */	mflr r0
/* 805ACF44  90 01 00 24 */	stw r0, 0x24(r1)
/* 805ACF48  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805ACF4C  7C 7F 1B 78 */	mr r31, r3
/* 805ACF50  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805ACF54  7C 9E 23 78 */	mr r30, r4
/* 805ACF58  7F C3 F3 78 */	mr r3, r30
/* 805ACF5C  4B E3 14 25 */	bl mPlib_check_player_actor_main_index_OutDoorMove
/* 805ACF60  2C 03 00 00 */	cmpwi r3, 0
/* 805ACF64  40 82 00 E0 */	bne lbl_805AD044
/* 805ACF68  4B E3 D7 A9 */	bl mSP_ShopOpen
/* 805ACF6C  2C 03 00 02 */	cmpwi r3, 2
/* 805ACF70  41 82 00 20 */	beq lbl_805ACF90
/* 805ACF74  4B E3 D7 9D */	bl mSP_ShopOpen
/* 805ACF78  2C 03 00 06 */	cmpwi r3, 6
/* 805ACF7C  41 82 00 14 */	beq lbl_805ACF90
/* 805ACF80  7F E3 FB 78 */	mr r3, r31
/* 805ACF84  38 80 00 02 */	li r4, 2
/* 805ACF88  48 00 01 B1 */	bl aDPT_setup_action
/* 805ACF8C  48 00 00 B8 */	b lbl_805AD044
lbl_805ACF90:
/* 805ACF90  7F E3 FB 78 */	mr r3, r31
/* 805ACF94  7F C4 F3 78 */	mr r4, r30
/* 805ACF98  4B FF FB C9 */	bl aDPT_check_player
/* 805ACF9C  2C 03 00 02 */	cmpwi r3, 2
/* 805ACFA0  41 82 00 28 */	beq lbl_805ACFC8
/* 805ACFA4  7F E3 FB 78 */	mr r3, r31
/* 805ACFA8  7F C4 F3 78 */	mr r4, r30
/* 805ACFAC  4B FF FB B5 */	bl aDPT_check_player
/* 805ACFB0  2C 03 00 00 */	cmpwi r3, 0
/* 805ACFB4  40 82 00 90 */	bne lbl_805AD044
/* 805ACFB8  7F E3 FB 78 */	mr r3, r31
/* 805ACFBC  38 80 00 02 */	li r4, 2
/* 805ACFC0  48 00 01 79 */	bl aDPT_setup_action
/* 805ACFC4  48 00 00 80 */	b lbl_805AD044
lbl_805ACFC8:
/* 805ACFC8  7F C3 F3 78 */	mr r3, r30
/* 805ACFCC  4B FF FB 3D */	bl aDPT_check_player2
/* 805ACFD0  2C 03 00 00 */	cmpwi r3, 0
/* 805ACFD4  41 82 00 70 */	beq lbl_805AD044
/* 805ACFD8  7F C3 F3 78 */	mr r3, r30
/* 805ACFDC  4B E2 C6 65 */	bl get_player_actor_withoutCheck
/* 805ACFE0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805ACFE4  3C 60 80 65 */	lis r3, lit_604@ha /* 0x8064A6C0@ha */
/* 805ACFE8  38 83 A6 C0 */	addi r4, r3, lit_604@l /* 0x8064A6C0@l */
/* 805ACFEC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805ACFF0  3C 60 80 65 */	lis r3, lit_605@ha /* 0x8064A6C4@ha */
/* 805ACFF4  C0 04 00 00 */	lfs f0, 0(r4)
/* 805ACFF8  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 805ACFFC  C0 23 A6 C4 */	lfs f1, lit_605@l(r3)  /* 0x8064A6C4@l */
/* 805AD000  EC 02 00 28 */	fsubs f0, f2, f0
/* 805AD004  D0 01 00 08 */	stfs f0, 8(r1)
/* 805AD008  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805AD00C  EC 01 00 2A */	fadds f0, f1, f0
/* 805AD010  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805AD014  4B E3 DE BD */	bl mSP_SetTanukiShopStatus
/* 805AD018  7F C3 F3 78 */	mr r3, r30
/* 805AD01C  7F E7 FB 78 */	mr r7, r31
/* 805AD020  38 81 00 08 */	addi r4, r1, 8
/* 805AD024  38 A0 60 00 */	li r5, 0x6000
/* 805AD028  38 C0 00 01 */	li r6, 1
/* 805AD02C  4B E2 D6 5D */	bl mPlib_request_main_door_type1
/* 805AD030  2C 03 00 00 */	cmpwi r3, 0
/* 805AD034  41 82 00 10 */	beq lbl_805AD044
/* 805AD038  7F E3 FB 78 */	mr r3, r31
/* 805AD03C  38 80 00 04 */	li r4, 4
/* 805AD040  48 00 00 F9 */	bl aDPT_setup_action
lbl_805AD044:
/* 805AD044  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AD048  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805AD04C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805AD050  7C 08 03 A6 */	mtlr r0
/* 805AD054  38 21 00 20 */	addi r1, r1, 0x20
/* 805AD058  4E 80 00 20 */	blr 
