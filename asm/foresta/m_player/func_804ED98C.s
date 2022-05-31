lbl_804ED98C:
/* 804ED98C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804ED990  7C 08 02 A6 */	mflr r0
/* 804ED994  90 01 00 24 */	stw r0, 0x24(r1)
/* 804ED998  39 61 00 20 */	addi r11, r1, 0x20
/* 804ED99C  4B BA D5 2D */	bl func_8009AEC8
/* 804ED9A0  7C 7A 1B 78 */	mr r26, r3
/* 804ED9A4  7C 9B 23 78 */	mr r27, r4
/* 804ED9A8  7C BC 2B 78 */	mr r28, r5
/* 804ED9AC  7C DD 33 78 */	mr r29, r6
/* 804ED9B0  7C FE 3B 78 */	mr r30, r7
/* 804ED9B4  7D 1F 43 78 */	mr r31, r8
/* 804ED9B8  38 60 00 1F */	li r3, 0x1f
/* 804ED9BC  4B FE CA 1D */	bl Player_actor_check_able_request_main_index_for_reset
/* 804ED9C0  2C 03 00 00 */	cmpwi r3, 0
/* 804ED9C4  40 82 00 4C */	bne lbl_804EDA10
/* 804ED9C8  7F 43 D3 78 */	mr r3, r26
/* 804ED9CC  4B EE BC 75 */	bl get_player_actor_withoutCheck
/* 804ED9D0  93 63 0D 60 */	stw r27, 0xd60(r3)
/* 804ED9D4  38 80 00 1F */	li r4, 0x1f
/* 804ED9D8  38 A0 00 08 */	li r5, 8
/* 804ED9DC  B3 83 0D 64 */	sth r28, 0xd64(r3)
/* 804ED9E0  93 C3 0D 74 */	stw r30, 0xd74(r3)
/* 804ED9E4  93 E3 0D 78 */	stw r31, 0xd78(r3)
/* 804ED9E8  80 DD 00 00 */	lwz r6, 0(r29)
/* 804ED9EC  80 1D 00 04 */	lwz r0, 4(r29)
/* 804ED9F0  90 C3 0D 68 */	stw r6, 0xd68(r3)
/* 804ED9F4  90 03 0D 6C */	stw r0, 0xd6c(r3)
/* 804ED9F8  80 1D 00 08 */	lwz r0, 8(r29)
/* 804ED9FC  90 03 0D 70 */	stw r0, 0xd70(r3)
/* 804EDA00  7F 43 D3 78 */	mr r3, r26
/* 804EDA04  4B FE 76 11 */	bl Player_actor_request_main_index
/* 804EDA08  38 60 00 01 */	li r3, 1
/* 804EDA0C  48 00 00 08 */	b lbl_804EDA14
lbl_804EDA10:
/* 804EDA10  38 60 00 00 */	li r3, 0
lbl_804EDA14:
/* 804EDA14  39 61 00 20 */	addi r11, r1, 0x20
/* 804EDA18  4B BA D4 FD */	bl func_8009AF14
/* 804EDA1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EDA20  7C 08 03 A6 */	mtlr r0
/* 804EDA24  38 21 00 20 */	addi r1, r1, 0x20
/* 804EDA28  4E 80 00 20 */	blr 
