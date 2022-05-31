lbl_804F9EA4:
/* 804F9EA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F9EA8  7C 08 02 A6 */	mflr r0
/* 804F9EAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F9EB0  39 61 00 20 */	addi r11, r1, 0x20
/* 804F9EB4  4B BA 10 1D */	bl func_8009AED0
/* 804F9EB8  7C DF 33 78 */	mr r31, r6
/* 804F9EBC  7C 9D 23 78 */	mr r29, r4
/* 804F9EC0  7C BE 2B 78 */	mr r30, r5
/* 804F9EC4  7C 7C 1B 78 */	mr r28, r3
/* 804F9EC8  7F E5 FB 78 */	mr r5, r31
/* 804F9ECC  38 80 00 3E */	li r4, 0x3e
/* 804F9ED0  4B FE 05 89 */	bl Player_actor_check_request_main_able
/* 804F9ED4  2C 03 00 00 */	cmpwi r3, 0
/* 804F9ED8  41 82 00 40 */	beq lbl_804F9F18
/* 804F9EDC  7F 83 E3 78 */	mr r3, r28
/* 804F9EE0  4B ED F7 61 */	bl get_player_actor_withoutCheck
/* 804F9EE4  80 DD 00 00 */	lwz r6, 0(r29)
/* 804F9EE8  7F E5 FB 78 */	mr r5, r31
/* 804F9EEC  80 1D 00 04 */	lwz r0, 4(r29)
/* 804F9EF0  38 80 00 3E */	li r4, 0x3e
/* 804F9EF4  90 C3 0D 60 */	stw r6, 0xd60(r3)
/* 804F9EF8  90 03 0D 64 */	stw r0, 0xd64(r3)
/* 804F9EFC  80 1D 00 08 */	lwz r0, 8(r29)
/* 804F9F00  90 03 0D 68 */	stw r0, 0xd68(r3)
/* 804F9F04  B3 C3 0D 6C */	sth r30, 0xd6c(r3)
/* 804F9F08  7F 83 E3 78 */	mr r3, r28
/* 804F9F0C  4B FD B1 09 */	bl Player_actor_request_main_index
/* 804F9F10  38 60 00 01 */	li r3, 1
/* 804F9F14  48 00 00 08 */	b lbl_804F9F1C
lbl_804F9F18:
/* 804F9F18  38 60 00 00 */	li r3, 0
lbl_804F9F1C:
/* 804F9F1C  39 61 00 20 */	addi r11, r1, 0x20
/* 804F9F20  4B BA 0F FD */	bl func_8009AF1C
/* 804F9F24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F9F28  7C 08 03 A6 */	mtlr r0
/* 804F9F2C  38 21 00 20 */	addi r1, r1, 0x20
/* 804F9F30  4E 80 00 20 */	blr 
