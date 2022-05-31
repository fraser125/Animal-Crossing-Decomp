lbl_804EE9EC:
/* 804EE9EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EE9F0  7C 08 02 A6 */	mflr r0
/* 804EE9F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EE9F8  39 61 00 20 */	addi r11, r1, 0x20
/* 804EE9FC  4B BA C4 D1 */	bl func_8009AECC
/* 804EEA00  7C DE 33 78 */	mr r30, r6
/* 804EEA04  7C 9C 23 78 */	mr r28, r4
/* 804EEA08  7C BD 2B 78 */	mr r29, r5
/* 804EEA0C  7C 7B 1B 78 */	mr r27, r3
/* 804EEA10  7F C5 F3 78 */	mr r5, r30
/* 804EEA14  38 80 00 21 */	li r4, 0x21
/* 804EEA18  4B FE BA 41 */	bl Player_actor_check_request_main_able
/* 804EEA1C  2C 03 00 00 */	cmpwi r3, 0
/* 804EEA20  41 82 00 44 */	beq lbl_804EEA64
/* 804EEA24  7F 63 DB 78 */	mr r3, r27
/* 804EEA28  4B EE AC 19 */	bl get_player_actor_withoutCheck
/* 804EEA2C  7C 7F 1B 78 */	mr r31, r3
/* 804EEA30  7F 63 DB 78 */	mr r3, r27
/* 804EEA34  7F C5 F3 78 */	mr r5, r30
/* 804EEA38  38 80 00 21 */	li r4, 0x21
/* 804EEA3C  4B FE 65 D9 */	bl Player_actor_request_main_index
/* 804EEA40  80 9C 00 00 */	lwz r4, 0(r28)
/* 804EEA44  38 60 00 01 */	li r3, 1
/* 804EEA48  80 1C 00 04 */	lwz r0, 4(r28)
/* 804EEA4C  90 9F 0D 60 */	stw r4, 0xd60(r31)
/* 804EEA50  90 1F 0D 64 */	stw r0, 0xd64(r31)
/* 804EEA54  80 1C 00 08 */	lwz r0, 8(r28)
/* 804EEA58  90 1F 0D 68 */	stw r0, 0xd68(r31)
/* 804EEA5C  B3 BF 0D 6C */	sth r29, 0xd6c(r31)
/* 804EEA60  48 00 00 08 */	b lbl_804EEA68
lbl_804EEA64:
/* 804EEA64  38 60 00 00 */	li r3, 0
lbl_804EEA68:
/* 804EEA68  39 61 00 20 */	addi r11, r1, 0x20
/* 804EEA6C  4B BA C4 AD */	bl func_8009AF18
/* 804EEA70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EEA74  7C 08 03 A6 */	mtlr r0
/* 804EEA78  38 21 00 20 */	addi r1, r1, 0x20
/* 804EEA7C  4E 80 00 20 */	blr 
