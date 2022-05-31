lbl_804EC884:
/* 804EC884  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EC888  7C 08 02 A6 */	mflr r0
/* 804EC88C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EC890  39 61 00 20 */	addi r11, r1, 0x20
/* 804EC894  4B BA E6 41 */	bl func_8009AED4
/* 804EC898  7C 9E 23 78 */	mr r30, r4
/* 804EC89C  7C 7D 1B 78 */	mr r29, r3
/* 804EC8A0  7C BF 2B 78 */	mr r31, r5
/* 804EC8A4  38 80 00 1C */	li r4, 0x1c
/* 804EC8A8  4B FE DB B1 */	bl Player_actor_check_request_main_able
/* 804EC8AC  2C 03 00 00 */	cmpwi r3, 0
/* 804EC8B0  41 82 00 38 */	beq lbl_804EC8E8
/* 804EC8B4  7F A3 EB 78 */	mr r3, r29
/* 804EC8B8  4B FF FF 91 */	bl func_804EC848
/* 804EC8BC  2C 03 00 00 */	cmpwi r3, 0
/* 804EC8C0  41 82 00 28 */	beq lbl_804EC8E8
/* 804EC8C4  7F A3 EB 78 */	mr r3, r29
/* 804EC8C8  4B EE CD 79 */	bl get_player_actor_withoutCheck
/* 804EC8CC  93 C3 0D 60 */	stw r30, 0xd60(r3)
/* 804EC8D0  7F A3 EB 78 */	mr r3, r29
/* 804EC8D4  7F E5 FB 78 */	mr r5, r31
/* 804EC8D8  38 80 00 1C */	li r4, 0x1c
/* 804EC8DC  4B FE 87 39 */	bl Player_actor_request_main_index
/* 804EC8E0  38 60 00 01 */	li r3, 1
/* 804EC8E4  48 00 00 08 */	b lbl_804EC8EC
lbl_804EC8E8:
/* 804EC8E8  38 60 00 00 */	li r3, 0
lbl_804EC8EC:
/* 804EC8EC  39 61 00 20 */	addi r11, r1, 0x20
/* 804EC8F0  4B BA E6 31 */	bl func_8009AF20
/* 804EC8F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EC8F8  7C 08 03 A6 */	mtlr r0
/* 804EC8FC  38 21 00 20 */	addi r1, r1, 0x20
/* 804EC900  4E 80 00 20 */	blr 
