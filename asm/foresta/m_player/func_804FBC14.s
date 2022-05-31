lbl_804FBC14:
/* 804FBC14  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804FBC18  7C 08 02 A6 */	mflr r0
/* 804FBC1C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804FBC20  39 61 00 30 */	addi r11, r1, 0x30
/* 804FBC24  4B B9 F2 95 */	bl func_8009AEB8
/* 804FBC28  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 804FBC2C  7C 97 23 78 */	mr r23, r4
/* 804FBC30  7C B8 2B 78 */	mr r24, r5
/* 804FBC34  7C 76 1B 78 */	mr r22, r3
/* 804FBC38  7C D9 33 78 */	mr r25, r6
/* 804FBC3C  7C FA 3B 78 */	mr r26, r7
/* 804FBC40  7D 1B 43 78 */	mr r27, r8
/* 804FBC44  7D 3C 4B 78 */	mr r28, r9
/* 804FBC48  7D 5D 53 78 */	mr r29, r10
/* 804FBC4C  7F C5 F3 78 */	mr r5, r30
/* 804FBC50  38 80 00 46 */	li r4, 0x46
/* 804FBC54  4B FD E8 05 */	bl Player_actor_check_request_main_able
/* 804FBC58  2C 03 00 00 */	cmpwi r3, 0
/* 804FBC5C  41 82 00 44 */	beq lbl_804FBCA0
/* 804FBC60  7E C3 B3 78 */	mr r3, r22
/* 804FBC64  4B ED D9 DD */	bl get_player_actor_withoutCheck
/* 804FBC68  7C 7F 1B 78 */	mr r31, r3
/* 804FBC6C  7E C3 B3 78 */	mr r3, r22
/* 804FBC70  7F C5 F3 78 */	mr r5, r30
/* 804FBC74  38 80 00 46 */	li r4, 0x46
/* 804FBC78  4B FD 93 9D */	bl Player_actor_request_main_index
/* 804FBC7C  92 FF 0D 60 */	stw r23, 0xd60(r31)
/* 804FBC80  38 60 00 01 */	li r3, 1
/* 804FBC84  93 1F 0D 64 */	stw r24, 0xd64(r31)
/* 804FBC88  93 3F 0D 68 */	stw r25, 0xd68(r31)
/* 804FBC8C  B3 5F 0D 6C */	sth r26, 0xd6c(r31)
/* 804FBC90  93 7F 0D 70 */	stw r27, 0xd70(r31)
/* 804FBC94  93 9F 0D 74 */	stw r28, 0xd74(r31)
/* 804FBC98  93 BF 0D 78 */	stw r29, 0xd78(r31)
/* 804FBC9C  48 00 00 08 */	b lbl_804FBCA4
lbl_804FBCA0:
/* 804FBCA0  38 60 00 00 */	li r3, 0
lbl_804FBCA4:
/* 804FBCA4  39 61 00 30 */	addi r11, r1, 0x30
/* 804FBCA8  4B B9 F2 5D */	bl func_8009AF04
/* 804FBCAC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804FBCB0  7C 08 03 A6 */	mtlr r0
/* 804FBCB4  38 21 00 30 */	addi r1, r1, 0x30
/* 804FBCB8  4E 80 00 20 */	blr 
