lbl_804F369C:
/* 804F369C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F36A0  7C 08 02 A6 */	mflr r0
/* 804F36A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F36A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F36AC  7C 9F 23 78 */	mr r31, r4
/* 804F36B0  7F E5 FB 78 */	mr r5, r31
/* 804F36B4  38 80 00 2D */	li r4, 0x2d
/* 804F36B8  93 C1 00 08 */	stw r30, 8(r1)
/* 804F36BC  7C 7E 1B 78 */	mr r30, r3
/* 804F36C0  4B FE 6D 99 */	bl Player_actor_check_request_main_able
/* 804F36C4  2C 03 00 00 */	cmpwi r3, 0
/* 804F36C8  41 82 00 50 */	beq lbl_804F3718
/* 804F36CC  7F C3 F3 78 */	mr r3, r30
/* 804F36D0  4B EE 5F 71 */	bl get_player_actor_withoutCheck
/* 804F36D4  80 83 0C F8 */	lwz r4, 0xcf8(r3)
/* 804F36D8  4B FE D2 CD */	bl Player_actor_Get_ItemKind
/* 804F36DC  7C 60 07 74 */	extsb r0, r3
/* 804F36E0  38 60 00 00 */	li r3, 0
/* 804F36E4  2C 00 00 09 */	cmpwi r0, 9
/* 804F36E8  41 80 00 10 */	blt lbl_804F36F8
/* 804F36EC  2C 00 00 0B */	cmpwi r0, 0xb
/* 804F36F0  40 80 00 08 */	bge lbl_804F36F8
/* 804F36F4  38 60 00 01 */	li r3, 1
lbl_804F36F8:
/* 804F36F8  2C 03 00 00 */	cmpwi r3, 0
/* 804F36FC  41 82 00 1C */	beq lbl_804F3718
/* 804F3700  7F C3 F3 78 */	mr r3, r30
/* 804F3704  7F E5 FB 78 */	mr r5, r31
/* 804F3708  38 80 00 2D */	li r4, 0x2d
/* 804F370C  4B FE 19 09 */	bl Player_actor_request_main_index
/* 804F3710  38 60 00 01 */	li r3, 1
/* 804F3714  48 00 00 08 */	b lbl_804F371C
lbl_804F3718:
/* 804F3718  38 60 00 00 */	li r3, 0
lbl_804F371C:
/* 804F371C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F3720  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F3724  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F3728  7C 08 03 A6 */	mtlr r0
/* 804F372C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F3730  4E 80 00 20 */	blr 
