lbl_804E8500:
/* 804E8500  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E8504  7C 08 02 A6 */	mflr r0
/* 804E8508  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E850C  39 61 00 20 */	addi r11, r1, 0x20
/* 804E8510  4B BB 29 C5 */	bl func_8009AED4
/* 804E8514  7C 9E 23 78 */	mr r30, r4
/* 804E8518  7C 7D 1B 78 */	mr r29, r3
/* 804E851C  7C BF 2B 78 */	mr r31, r5
/* 804E8520  38 80 00 0D */	li r4, 0xd
/* 804E8524  4B FF 1F 35 */	bl Player_actor_check_request_main_able
/* 804E8528  2C 03 00 00 */	cmpwi r3, 0
/* 804E852C  41 82 00 28 */	beq lbl_804E8554
/* 804E8530  7F A3 EB 78 */	mr r3, r29
/* 804E8534  4B EF 11 0D */	bl get_player_actor_withoutCheck
/* 804E8538  B3 C3 0D 60 */	sth r30, 0xd60(r3)
/* 804E853C  7F A3 EB 78 */	mr r3, r29
/* 804E8540  7F E5 FB 78 */	mr r5, r31
/* 804E8544  38 80 00 0D */	li r4, 0xd
/* 804E8548  4B FE CA CD */	bl Player_actor_request_main_index
/* 804E854C  38 60 00 01 */	li r3, 1
/* 804E8550  48 00 00 08 */	b lbl_804E8558
lbl_804E8554:
/* 804E8554  38 60 00 00 */	li r3, 0
lbl_804E8558:
/* 804E8558  39 61 00 20 */	addi r11, r1, 0x20
/* 804E855C  4B BB 29 C5 */	bl func_8009AF20
/* 804E8560  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E8564  7C 08 03 A6 */	mtlr r0
/* 804E8568  38 21 00 20 */	addi r1, r1, 0x20
/* 804E856C  4E 80 00 20 */	blr 
