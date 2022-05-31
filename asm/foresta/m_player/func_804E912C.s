lbl_804E912C:
/* 804E912C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E9130  7C 08 02 A6 */	mflr r0
/* 804E9134  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E9138  39 61 00 20 */	addi r11, r1, 0x20
/* 804E913C  4B BB 1D 91 */	bl func_8009AECC
/* 804E9140  7C 7B 1B 78 */	mr r27, r3
/* 804E9144  7C 9C 23 78 */	mr r28, r4
/* 804E9148  7C BD 2B 78 */	mr r29, r5
/* 804E914C  7C DE 33 78 */	mr r30, r6
/* 804E9150  4B EF 04 F1 */	bl get_player_actor_withoutCheck
/* 804E9154  80 03 0C F8 */	lwz r0, 0xcf8(r3)
/* 804E9158  2C 00 00 66 */	cmpwi r0, 0x66
/* 804E915C  40 82 00 64 */	bne lbl_804E91C0
/* 804E9160  7F 63 DB 78 */	mr r3, r27
/* 804E9164  4B EF 04 DD */	bl get_player_actor_withoutCheck
/* 804E9168  7C 7F 1B 78 */	mr r31, r3
/* 804E916C  7F 63 DB 78 */	mr r3, r27
/* 804E9170  7F C5 F3 78 */	mr r5, r30
/* 804E9174  38 80 00 68 */	li r4, 0x68
/* 804E9178  4B FF 12 E1 */	bl Player_actor_check_request_main_able
/* 804E917C  2C 03 00 00 */	cmpwi r3, 0
/* 804E9180  41 82 00 40 */	beq lbl_804E91C0
/* 804E9184  93 9F 0D 60 */	stw r28, 0xd60(r31)
/* 804E9188  7F 63 DB 78 */	mr r3, r27
/* 804E918C  7F C5 F3 78 */	mr r5, r30
/* 804E9190  38 80 00 68 */	li r4, 0x68
/* 804E9194  80 DD 00 00 */	lwz r6, 0(r29)
/* 804E9198  80 1D 00 04 */	lwz r0, 4(r29)
/* 804E919C  90 DF 0D 64 */	stw r6, 0xd64(r31)
/* 804E91A0  90 1F 0D 68 */	stw r0, 0xd68(r31)
/* 804E91A4  80 1D 00 08 */	lwz r0, 8(r29)
/* 804E91A8  90 1F 0D 6C */	stw r0, 0xd6c(r31)
/* 804E91AC  80 1F 0D 18 */	lwz r0, 0xd18(r31)
/* 804E91B0  90 1F 0D 70 */	stw r0, 0xd70(r31)
/* 804E91B4  4B FE BE 61 */	bl Player_actor_request_main_index
/* 804E91B8  38 60 00 01 */	li r3, 1
/* 804E91BC  48 00 00 08 */	b lbl_804E91C4
lbl_804E91C0:
/* 804E91C0  38 60 00 00 */	li r3, 0
lbl_804E91C4:
/* 804E91C4  39 61 00 20 */	addi r11, r1, 0x20
/* 804E91C8  4B BB 1D 51 */	bl func_8009AF18
/* 804E91CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E91D0  7C 08 03 A6 */	mtlr r0
/* 804E91D4  38 21 00 20 */	addi r1, r1, 0x20
/* 804E91D8  4E 80 00 20 */	blr 
