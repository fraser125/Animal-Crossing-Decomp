lbl_804FDEC4:
/* 804FDEC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FDEC8  7C 08 02 A6 */	mflr r0
/* 804FDECC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FDED0  39 61 00 20 */	addi r11, r1, 0x20
/* 804FDED4  4B B9 CF FD */	bl func_8009AED0
/* 804FDED8  7C DF 33 78 */	mr r31, r6
/* 804FDEDC  7C 9D 23 78 */	mr r29, r4
/* 804FDEE0  7C BE 2B 78 */	mr r30, r5
/* 804FDEE4  7C 7C 1B 78 */	mr r28, r3
/* 804FDEE8  7F E5 FB 78 */	mr r5, r31
/* 804FDEEC  38 80 00 4E */	li r4, 0x4e
/* 804FDEF0  4B FD C5 69 */	bl Player_actor_check_request_main_able
/* 804FDEF4  2C 03 00 00 */	cmpwi r3, 0
/* 804FDEF8  41 82 00 40 */	beq lbl_804FDF38
/* 804FDEFC  7F 83 E3 78 */	mr r3, r28
/* 804FDF00  4B ED B7 41 */	bl get_player_actor_withoutCheck
/* 804FDF04  80 DD 00 00 */	lwz r6, 0(r29)
/* 804FDF08  7F E5 FB 78 */	mr r5, r31
/* 804FDF0C  80 1D 00 04 */	lwz r0, 4(r29)
/* 804FDF10  38 80 00 4E */	li r4, 0x4e
/* 804FDF14  90 C3 0D 64 */	stw r6, 0xd64(r3)
/* 804FDF18  90 03 0D 68 */	stw r0, 0xd68(r3)
/* 804FDF1C  80 1D 00 08 */	lwz r0, 8(r29)
/* 804FDF20  90 03 0D 6C */	stw r0, 0xd6c(r3)
/* 804FDF24  B3 C3 0D 60 */	sth r30, 0xd60(r3)
/* 804FDF28  7F 83 E3 78 */	mr r3, r28
/* 804FDF2C  4B FD 70 E9 */	bl Player_actor_request_main_index
/* 804FDF30  38 60 00 01 */	li r3, 1
/* 804FDF34  48 00 00 08 */	b lbl_804FDF3C
lbl_804FDF38:
/* 804FDF38  38 60 00 00 */	li r3, 0
lbl_804FDF3C:
/* 804FDF3C  39 61 00 20 */	addi r11, r1, 0x20
/* 804FDF40  4B B9 CF DD */	bl func_8009AF1C
/* 804FDF44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FDF48  7C 08 03 A6 */	mtlr r0
/* 804FDF4C  38 21 00 20 */	addi r1, r1, 0x20
/* 804FDF50  4E 80 00 20 */	blr 
