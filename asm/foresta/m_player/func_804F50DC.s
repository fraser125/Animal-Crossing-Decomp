lbl_804F50DC:
/* 804F50DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F50E0  7C 08 02 A6 */	mflr r0
/* 804F50E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F50E8  39 61 00 20 */	addi r11, r1, 0x20
/* 804F50EC  4B BA 5D E9 */	bl func_8009AED4
/* 804F50F0  7C 9E 23 78 */	mr r30, r4
/* 804F50F4  7C 7D 1B 78 */	mr r29, r3
/* 804F50F8  7C BF 2B 78 */	mr r31, r5
/* 804F50FC  38 80 00 32 */	li r4, 0x32
/* 804F5100  4B FE 53 59 */	bl Player_actor_check_request_main_able
/* 804F5104  2C 03 00 00 */	cmpwi r3, 0
/* 804F5108  41 82 00 3C */	beq lbl_804F5144
/* 804F510C  7F A3 EB 78 */	mr r3, r29
/* 804F5110  4B EE 45 31 */	bl get_player_actor_withoutCheck
/* 804F5114  80 DE 00 00 */	lwz r6, 0(r30)
/* 804F5118  7F E5 FB 78 */	mr r5, r31
/* 804F511C  80 1E 00 04 */	lwz r0, 4(r30)
/* 804F5120  38 80 00 32 */	li r4, 0x32
/* 804F5124  90 C3 0D 60 */	stw r6, 0xd60(r3)
/* 804F5128  90 03 0D 64 */	stw r0, 0xd64(r3)
/* 804F512C  80 1E 00 08 */	lwz r0, 8(r30)
/* 804F5130  90 03 0D 68 */	stw r0, 0xd68(r3)
/* 804F5134  7F A3 EB 78 */	mr r3, r29
/* 804F5138  4B FD FE DD */	bl Player_actor_request_main_index
/* 804F513C  38 60 00 01 */	li r3, 1
/* 804F5140  48 00 00 08 */	b lbl_804F5148
lbl_804F5144:
/* 804F5144  38 60 00 00 */	li r3, 0
lbl_804F5148:
/* 804F5148  39 61 00 20 */	addi r11, r1, 0x20
/* 804F514C  4B BA 5D D5 */	bl func_8009AF20
/* 804F5150  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F5154  7C 08 03 A6 */	mtlr r0
/* 804F5158  38 21 00 20 */	addi r1, r1, 0x20
/* 804F515C  4E 80 00 20 */	blr 
