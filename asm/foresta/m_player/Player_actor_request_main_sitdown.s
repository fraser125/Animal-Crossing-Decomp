lbl_804EEF80:
/* 804EEF80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EEF84  7C 08 02 A6 */	mflr r0
/* 804EEF88  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EEF8C  39 61 00 20 */	addi r11, r1, 0x20
/* 804EEF90  4B BA BF 39 */	bl func_8009AEC8
/* 804EEF94  7C FE 3B 78 */	mr r30, r7
/* 804EEF98  7C 9B 23 78 */	mr r27, r4
/* 804EEF9C  7C BC 2B 78 */	mr r28, r5
/* 804EEFA0  7C 7A 1B 78 */	mr r26, r3
/* 804EEFA4  7C DD 33 78 */	mr r29, r6
/* 804EEFA8  7F C5 F3 78 */	mr r5, r30
/* 804EEFAC  38 80 00 22 */	li r4, 0x22
/* 804EEFB0  4B FE B4 A9 */	bl Player_actor_check_request_main_able
/* 804EEFB4  2C 03 00 00 */	cmpwi r3, 0
/* 804EEFB8  41 82 00 68 */	beq lbl_804EF020
/* 804EEFBC  7F 43 D3 78 */	mr r3, r26
/* 804EEFC0  4B FF FF 7D */	bl func_804EEF3C
/* 804EEFC4  2C 03 00 00 */	cmpwi r3, 0
/* 804EEFC8  41 82 00 58 */	beq lbl_804EF020
/* 804EEFCC  7F 43 D3 78 */	mr r3, r26
/* 804EEFD0  4B EE A6 71 */	bl get_player_actor_withoutCheck
/* 804EEFD4  7C 7F 1B 78 */	mr r31, r3
/* 804EEFD8  7F 63 DB 78 */	mr r3, r27
/* 804EEFDC  4B FE 81 BD */	bl Player_actor_Get_Angle_fromIndex
/* 804EEFE0  B0 7F 0D 60 */	sth r3, 0xd60(r31)
/* 804EEFE4  7F 43 D3 78 */	mr r3, r26
/* 804EEFE8  7F C5 F3 78 */	mr r5, r30
/* 804EEFEC  38 80 00 22 */	li r4, 0x22
/* 804EEFF0  80 DC 00 00 */	lwz r6, 0(r28)
/* 804EEFF4  80 1C 00 04 */	lwz r0, 4(r28)
/* 804EEFF8  90 DF 0D 64 */	stw r6, 0xd64(r31)
/* 804EEFFC  90 1F 0D 68 */	stw r0, 0xd68(r31)
/* 804EF000  80 1C 00 08 */	lwz r0, 8(r28)
/* 804EF004  90 1F 0D 6C */	stw r0, 0xd6c(r31)
/* 804EF008  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 804EF00C  D0 1F 0D 68 */	stfs f0, 0xd68(r31)
/* 804EF010  93 BF 0D 70 */	stw r29, 0xd70(r31)
/* 804EF014  4B FE 60 01 */	bl Player_actor_request_main_index
/* 804EF018  38 60 00 01 */	li r3, 1
/* 804EF01C  48 00 00 08 */	b lbl_804EF024
lbl_804EF020:
/* 804EF020  38 60 00 00 */	li r3, 0
lbl_804EF024:
/* 804EF024  39 61 00 20 */	addi r11, r1, 0x20
/* 804EF028  4B BA BE ED */	bl func_8009AF14
/* 804EF02C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EF030  7C 08 03 A6 */	mtlr r0
/* 804EF034  38 21 00 20 */	addi r1, r1, 0x20
/* 804EF038  4E 80 00 20 */	blr 
