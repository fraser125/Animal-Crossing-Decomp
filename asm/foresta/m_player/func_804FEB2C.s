lbl_804FEB2C:
/* 804FEB2C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804FEB30  7C 08 02 A6 */	mflr r0
/* 804FEB34  90 01 00 34 */	stw r0, 0x34(r1)
/* 804FEB38  39 61 00 30 */	addi r11, r1, 0x30
/* 804FEB3C  4B B9 C3 89 */	bl func_8009AEC4
/* 804FEB40  7D 1E 43 78 */	mr r30, r8
/* 804FEB44  7C 9A 23 78 */	mr r26, r4
/* 804FEB48  7C BB 2B 78 */	mr r27, r5
/* 804FEB4C  7C 79 1B 78 */	mr r25, r3
/* 804FEB50  7C DC 33 78 */	mr r28, r6
/* 804FEB54  7C FD 3B 78 */	mr r29, r7
/* 804FEB58  7F C5 F3 78 */	mr r5, r30
/* 804FEB5C  38 80 00 53 */	li r4, 0x53
/* 804FEB60  4B FD B8 F9 */	bl Player_actor_check_request_main_able
/* 804FEB64  2C 03 00 00 */	cmpwi r3, 0
/* 804FEB68  41 82 00 54 */	beq lbl_804FEBBC
/* 804FEB6C  7F 23 CB 78 */	mr r3, r25
/* 804FEB70  4B ED AA D1 */	bl get_player_actor_withoutCheck
/* 804FEB74  7C 7F 1B 78 */	mr r31, r3
/* 804FEB78  7F 23 CB 78 */	mr r3, r25
/* 804FEB7C  7F C5 F3 78 */	mr r5, r30
/* 804FEB80  38 80 00 53 */	li r4, 0x53
/* 804FEB84  4B FD 64 91 */	bl Player_actor_request_main_index
/* 804FEB88  93 5F 0D 60 */	stw r26, 0xd60(r31)
/* 804FEB8C  38 60 00 01 */	li r3, 1
/* 804FEB90  93 7F 0D 64 */	stw r27, 0xd64(r31)
/* 804FEB94  80 9C 00 00 */	lwz r4, 0(r28)
/* 804FEB98  80 1C 00 04 */	lwz r0, 4(r28)
/* 804FEB9C  90 9F 0D 68 */	stw r4, 0xd68(r31)
/* 804FEBA0  90 1F 0D 6C */	stw r0, 0xd6c(r31)
/* 804FEBA4  80 9C 00 08 */	lwz r4, 8(r28)
/* 804FEBA8  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 804FEBAC  90 9F 0D 70 */	stw r4, 0xd70(r31)
/* 804FEBB0  90 1F 0D 74 */	stw r0, 0xd74(r31)
/* 804FEBB4  93 BF 0D 78 */	stw r29, 0xd78(r31)
/* 804FEBB8  48 00 00 08 */	b lbl_804FEBC0
lbl_804FEBBC:
/* 804FEBBC  38 60 00 00 */	li r3, 0
lbl_804FEBC0:
/* 804FEBC0  39 61 00 30 */	addi r11, r1, 0x30
/* 804FEBC4  4B B9 C3 4D */	bl func_8009AF10
/* 804FEBC8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804FEBCC  7C 08 03 A6 */	mtlr r0
/* 804FEBD0  38 21 00 30 */	addi r1, r1, 0x30
/* 804FEBD4  4E 80 00 20 */	blr 
