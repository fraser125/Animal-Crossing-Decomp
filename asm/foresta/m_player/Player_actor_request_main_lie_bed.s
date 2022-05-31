lbl_804EBCF0:
/* 804EBCF0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804EBCF4  7C 08 02 A6 */	mflr r0
/* 804EBCF8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804EBCFC  39 61 00 30 */	addi r11, r1, 0x30
/* 804EBD00  4B BA F1 C5 */	bl func_8009AEC4
/* 804EBD04  7D 1E 43 78 */	mr r30, r8
/* 804EBD08  7C 9A 23 78 */	mr r26, r4
/* 804EBD0C  7C BB 2B 78 */	mr r27, r5
/* 804EBD10  7C 79 1B 78 */	mr r25, r3
/* 804EBD14  7C DC 33 78 */	mr r28, r6
/* 804EBD18  7C FD 3B 78 */	mr r29, r7
/* 804EBD1C  7F C5 F3 78 */	mr r5, r30
/* 804EBD20  38 80 00 1A */	li r4, 0x1a
/* 804EBD24  4B FE E7 35 */	bl Player_actor_check_request_main_able
/* 804EBD28  2C 03 00 00 */	cmpwi r3, 0
/* 804EBD2C  41 82 00 6C */	beq lbl_804EBD98
/* 804EBD30  7F 23 CB 78 */	mr r3, r25
/* 804EBD34  4B FF FF 79 */	bl func_804EBCAC
/* 804EBD38  2C 03 00 00 */	cmpwi r3, 0
/* 804EBD3C  41 82 00 5C */	beq lbl_804EBD98
/* 804EBD40  7F 23 CB 78 */	mr r3, r25
/* 804EBD44  4B EE D8 FD */	bl get_player_actor_withoutCheck
/* 804EBD48  7C 7F 1B 78 */	mr r31, r3
/* 804EBD4C  7F 43 D3 78 */	mr r3, r26
/* 804EBD50  93 9F 0D 60 */	stw r28, 0xd60(r31)
/* 804EBD54  4B FE B4 71 */	bl Player_actor_Get_Angle_fromDirection
/* 804EBD58  B0 7F 0D 64 */	sth r3, 0xd64(r31)
/* 804EBD5C  7F 23 CB 78 */	mr r3, r25
/* 804EBD60  7F C5 F3 78 */	mr r5, r30
/* 804EBD64  38 80 00 1A */	li r4, 0x1a
/* 804EBD68  80 DB 00 00 */	lwz r6, 0(r27)
/* 804EBD6C  80 1B 00 04 */	lwz r0, 4(r27)
/* 804EBD70  90 DF 0D 68 */	stw r6, 0xd68(r31)
/* 804EBD74  90 1F 0D 6C */	stw r0, 0xd6c(r31)
/* 804EBD78  80 1B 00 08 */	lwz r0, 8(r27)
/* 804EBD7C  90 1F 0D 70 */	stw r0, 0xd70(r31)
/* 804EBD80  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 804EBD84  D0 1F 0D 6C */	stfs f0, 0xd6c(r31)
/* 804EBD88  93 BF 0D 74 */	stw r29, 0xd74(r31)
/* 804EBD8C  4B FE 92 89 */	bl Player_actor_request_main_index
/* 804EBD90  38 60 00 01 */	li r3, 1
/* 804EBD94  48 00 00 08 */	b lbl_804EBD9C
lbl_804EBD98:
/* 804EBD98  38 60 00 00 */	li r3, 0
lbl_804EBD9C:
/* 804EBD9C  39 61 00 30 */	addi r11, r1, 0x30
/* 804EBDA0  4B BA F1 71 */	bl func_8009AF10
/* 804EBDA4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804EBDA8  7C 08 03 A6 */	mtlr r0
/* 804EBDAC  38 21 00 30 */	addi r1, r1, 0x30
/* 804EBDB0  4E 80 00 20 */	blr 
