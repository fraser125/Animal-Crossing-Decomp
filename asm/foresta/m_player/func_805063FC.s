lbl_805063FC:
/* 805063FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80506400  7C 08 02 A6 */	mflr r0
/* 80506404  90 01 00 24 */	stw r0, 0x24(r1)
/* 80506408  39 61 00 20 */	addi r11, r1, 0x20
/* 8050640C  4B B9 4A C5 */	bl func_8009AED0
/* 80506410  7C 9D 23 78 */	mr r29, r4
/* 80506414  7C 7C 1B 78 */	mr r28, r3
/* 80506418  7C BE 2B 78 */	mr r30, r5
/* 8050641C  38 80 00 6D */	li r4, 0x6d
/* 80506420  4B FD 40 39 */	bl Player_actor_check_request_main_able
/* 80506424  2C 03 00 00 */	cmpwi r3, 0
/* 80506428  41 82 00 2C */	beq lbl_80506454
/* 8050642C  7F 83 E3 78 */	mr r3, r28
/* 80506430  4B ED 32 11 */	bl get_player_actor_withoutCheck
/* 80506434  7C 7F 1B 78 */	mr r31, r3
/* 80506438  7F 83 E3 78 */	mr r3, r28
/* 8050643C  7F C5 F3 78 */	mr r5, r30
/* 80506440  38 80 00 6D */	li r4, 0x6d
/* 80506444  4B FC EB D1 */	bl Player_actor_request_main_index
/* 80506448  93 BF 0D 60 */	stw r29, 0xd60(r31)
/* 8050644C  38 60 00 01 */	li r3, 1
/* 80506450  48 00 00 08 */	b lbl_80506458
lbl_80506454:
/* 80506454  38 60 00 00 */	li r3, 0
lbl_80506458:
/* 80506458  39 61 00 20 */	addi r11, r1, 0x20
/* 8050645C  4B B9 4A C1 */	bl func_8009AF1C
/* 80506460  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80506464  7C 08 03 A6 */	mtlr r0
/* 80506468  38 21 00 20 */	addi r1, r1, 0x20
/* 8050646C  4E 80 00 20 */	blr 
