lbl_804F64B4:
/* 804F64B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F64B8  7C 08 02 A6 */	mflr r0
/* 804F64BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F64C0  39 61 00 20 */	addi r11, r1, 0x20
/* 804F64C4  4B BA 4A 0D */	bl func_8009AED0
/* 804F64C8  7C 9D 23 78 */	mr r29, r4
/* 804F64CC  7C 7C 1B 78 */	mr r28, r3
/* 804F64D0  7C BE 2B 78 */	mr r30, r5
/* 804F64D4  38 80 00 38 */	li r4, 0x38
/* 804F64D8  4B FE 3F 81 */	bl Player_actor_check_request_main_able
/* 804F64DC  2C 03 00 00 */	cmpwi r3, 0
/* 804F64E0  41 82 00 2C */	beq lbl_804F650C
/* 804F64E4  7F 83 E3 78 */	mr r3, r28
/* 804F64E8  4B EE 31 59 */	bl get_player_actor_withoutCheck
/* 804F64EC  7C 7F 1B 78 */	mr r31, r3
/* 804F64F0  7F 83 E3 78 */	mr r3, r28
/* 804F64F4  7F C5 F3 78 */	mr r5, r30
/* 804F64F8  38 80 00 38 */	li r4, 0x38
/* 804F64FC  4B FD EB 19 */	bl Player_actor_request_main_index
/* 804F6500  B3 BF 0D 60 */	sth r29, 0xd60(r31)
/* 804F6504  38 60 00 01 */	li r3, 1
/* 804F6508  48 00 00 08 */	b lbl_804F6510
lbl_804F650C:
/* 804F650C  38 60 00 00 */	li r3, 0
lbl_804F6510:
/* 804F6510  39 61 00 20 */	addi r11, r1, 0x20
/* 804F6514  4B BA 4A 09 */	bl func_8009AF1C
/* 804F6518  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F651C  7C 08 03 A6 */	mtlr r0
/* 804F6520  38 21 00 20 */	addi r1, r1, 0x20
/* 804F6524  4E 80 00 20 */	blr 
