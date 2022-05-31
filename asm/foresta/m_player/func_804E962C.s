lbl_804E962C:
/* 804E962C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E9630  7C 08 02 A6 */	mflr r0
/* 804E9634  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E9638  39 61 00 20 */	addi r11, r1, 0x20
/* 804E963C  4B BB 18 8D */	bl func_8009AEC8
/* 804E9640  7D 1F 43 78 */	mr r31, r8
/* 804E9644  7C 9B 23 78 */	mr r27, r4
/* 804E9648  7C BC 2B 78 */	mr r28, r5
/* 804E964C  7C 7A 1B 78 */	mr r26, r3
/* 804E9650  7C DD 33 78 */	mr r29, r6
/* 804E9654  7C FE 3B 78 */	mr r30, r7
/* 804E9658  7F E5 FB 78 */	mr r5, r31
/* 804E965C  38 80 00 10 */	li r4, 0x10
/* 804E9660  4B FF 0D F9 */	bl Player_actor_check_request_main_able
/* 804E9664  2C 03 00 00 */	cmpwi r3, 0
/* 804E9668  41 82 00 50 */	beq lbl_804E96B8
/* 804E966C  7F 43 D3 78 */	mr r3, r26
/* 804E9670  4B EE FF D1 */	bl get_player_actor_withoutCheck
/* 804E9674  80 DB 00 00 */	lwz r6, 0(r27)
/* 804E9678  7F E5 FB 78 */	mr r5, r31
/* 804E967C  80 1B 00 04 */	lwz r0, 4(r27)
/* 804E9680  38 80 00 10 */	li r4, 0x10
/* 804E9684  90 C3 0D 64 */	stw r6, 0xd64(r3)
/* 804E9688  90 03 0D 68 */	stw r0, 0xd68(r3)
/* 804E968C  80 1B 00 08 */	lwz r0, 8(r27)
/* 804E9690  90 03 0D 6C */	stw r0, 0xd6c(r3)
/* 804E9694  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 804E9698  D0 03 0D 68 */	stfs f0, 0xd68(r3)
/* 804E969C  B3 83 0D 60 */	sth r28, 0xd60(r3)
/* 804E96A0  93 A3 0D 70 */	stw r29, 0xd70(r3)
/* 804E96A4  93 C3 0D 74 */	stw r30, 0xd74(r3)
/* 804E96A8  7F 43 D3 78 */	mr r3, r26
/* 804E96AC  4B FE B9 69 */	bl Player_actor_request_main_index
/* 804E96B0  38 60 00 01 */	li r3, 1
/* 804E96B4  48 00 00 08 */	b lbl_804E96BC
lbl_804E96B8:
/* 804E96B8  38 60 00 00 */	li r3, 0
lbl_804E96BC:
/* 804E96BC  39 61 00 20 */	addi r11, r1, 0x20
/* 804E96C0  4B BB 18 55 */	bl func_8009AF14
/* 804E96C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E96C8  7C 08 03 A6 */	mtlr r0
/* 804E96CC  38 21 00 20 */	addi r1, r1, 0x20
/* 804E96D0  4E 80 00 20 */	blr 
