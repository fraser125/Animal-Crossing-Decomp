lbl_804F9694:
/* 804F9694  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F9698  7C 08 02 A6 */	mflr r0
/* 804F969C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F96A0  39 61 00 20 */	addi r11, r1, 0x20
/* 804F96A4  4B BA 18 29 */	bl func_8009AECC
/* 804F96A8  7C FF 3B 78 */	mr r31, r7
/* 804F96AC  7C 9C 23 78 */	mr r28, r4
/* 804F96B0  7C BD 2B 78 */	mr r29, r5
/* 804F96B4  7C 7B 1B 78 */	mr r27, r3
/* 804F96B8  7C DE 33 78 */	mr r30, r6
/* 804F96BC  7F E5 FB 78 */	mr r5, r31
/* 804F96C0  38 80 00 40 */	li r4, 0x40
/* 804F96C4  4B FE 0D 95 */	bl Player_actor_check_request_main_able
/* 804F96C8  2C 03 00 00 */	cmpwi r3, 0
/* 804F96CC  41 82 00 44 */	beq lbl_804F9710
/* 804F96D0  7F 63 DB 78 */	mr r3, r27
/* 804F96D4  4B ED FF 6D */	bl get_player_actor_withoutCheck
/* 804F96D8  80 DC 00 00 */	lwz r6, 0(r28)
/* 804F96DC  7F E5 FB 78 */	mr r5, r31
/* 804F96E0  80 1C 00 04 */	lwz r0, 4(r28)
/* 804F96E4  38 80 00 40 */	li r4, 0x40
/* 804F96E8  90 C3 0D 60 */	stw r6, 0xd60(r3)
/* 804F96EC  90 03 0D 64 */	stw r0, 0xd64(r3)
/* 804F96F0  80 1C 00 08 */	lwz r0, 8(r28)
/* 804F96F4  90 03 0D 68 */	stw r0, 0xd68(r3)
/* 804F96F8  B3 A3 0D 6C */	sth r29, 0xd6c(r3)
/* 804F96FC  93 C3 0D 70 */	stw r30, 0xd70(r3)
/* 804F9700  7F 63 DB 78 */	mr r3, r27
/* 804F9704  4B FD B9 11 */	bl Player_actor_request_main_index
/* 804F9708  38 60 00 01 */	li r3, 1
/* 804F970C  48 00 00 08 */	b lbl_804F9714
lbl_804F9710:
/* 804F9710  38 60 00 00 */	li r3, 0
lbl_804F9714:
/* 804F9714  39 61 00 20 */	addi r11, r1, 0x20
/* 804F9718  4B BA 18 01 */	bl func_8009AF18
/* 804F971C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F9720  7C 08 03 A6 */	mtlr r0
/* 804F9724  38 21 00 20 */	addi r1, r1, 0x20
/* 804F9728  4E 80 00 20 */	blr 
