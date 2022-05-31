lbl_804F47C0:
/* 804F47C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F47C4  7C 08 02 A6 */	mflr r0
/* 804F47C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F47CC  39 61 00 20 */	addi r11, r1, 0x20
/* 804F47D0  4B BA 67 05 */	bl func_8009AED4
/* 804F47D4  7C 9E 23 78 */	mr r30, r4
/* 804F47D8  7C 7D 1B 78 */	mr r29, r3
/* 804F47DC  7C BF 2B 78 */	mr r31, r5
/* 804F47E0  38 80 00 30 */	li r4, 0x30
/* 804F47E4  4B FE 5C 75 */	bl Player_actor_check_request_main_able
/* 804F47E8  2C 03 00 00 */	cmpwi r3, 0
/* 804F47EC  41 82 00 28 */	beq lbl_804F4814
/* 804F47F0  7F A3 EB 78 */	mr r3, r29
/* 804F47F4  4B EE 4E 4D */	bl get_player_actor_withoutCheck
/* 804F47F8  93 C3 0D 60 */	stw r30, 0xd60(r3)
/* 804F47FC  7F A3 EB 78 */	mr r3, r29
/* 804F4800  7F E5 FB 78 */	mr r5, r31
/* 804F4804  38 80 00 30 */	li r4, 0x30
/* 804F4808  4B FE 08 0D */	bl Player_actor_request_main_index
/* 804F480C  38 60 00 01 */	li r3, 1
/* 804F4810  48 00 00 08 */	b lbl_804F4818
lbl_804F4814:
/* 804F4814  38 60 00 00 */	li r3, 0
lbl_804F4818:
/* 804F4818  39 61 00 20 */	addi r11, r1, 0x20
/* 804F481C  4B BA 67 05 */	bl func_8009AF20
/* 804F4820  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F4824  7C 08 03 A6 */	mtlr r0
/* 804F4828  38 21 00 20 */	addi r1, r1, 0x20
/* 804F482C  4E 80 00 20 */	blr 
