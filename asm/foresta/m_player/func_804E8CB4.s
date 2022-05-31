lbl_804E8CB4:
/* 804E8CB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E8CB8  7C 08 02 A6 */	mflr r0
/* 804E8CBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E8CC0  39 61 00 20 */	addi r11, r1, 0x20
/* 804E8CC4  4B BB 22 11 */	bl func_8009AED4
/* 804E8CC8  7C 9E 23 78 */	mr r30, r4
/* 804E8CCC  7C 7D 1B 78 */	mr r29, r3
/* 804E8CD0  7C BF 2B 78 */	mr r31, r5
/* 804E8CD4  38 80 00 0F */	li r4, 0xf
/* 804E8CD8  4B FF 17 81 */	bl Player_actor_check_request_main_able
/* 804E8CDC  2C 03 00 00 */	cmpwi r3, 0
/* 804E8CE0  41 82 00 28 */	beq lbl_804E8D08
/* 804E8CE4  7F A3 EB 78 */	mr r3, r29
/* 804E8CE8  4B EF 09 59 */	bl get_player_actor_withoutCheck
/* 804E8CEC  93 C3 0D 60 */	stw r30, 0xd60(r3)
/* 804E8CF0  7F A3 EB 78 */	mr r3, r29
/* 804E8CF4  7F E5 FB 78 */	mr r5, r31
/* 804E8CF8  38 80 00 0F */	li r4, 0xf
/* 804E8CFC  4B FE C3 19 */	bl Player_actor_request_main_index
/* 804E8D00  38 60 00 01 */	li r3, 1
/* 804E8D04  48 00 00 08 */	b lbl_804E8D0C
lbl_804E8D08:
/* 804E8D08  38 60 00 00 */	li r3, 0
lbl_804E8D0C:
/* 804E8D0C  39 61 00 20 */	addi r11, r1, 0x20
/* 804E8D10  4B BB 22 11 */	bl func_8009AF20
/* 804E8D14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E8D18  7C 08 03 A6 */	mtlr r0
/* 804E8D1C  38 21 00 20 */	addi r1, r1, 0x20
/* 804E8D20  4E 80 00 20 */	blr 
