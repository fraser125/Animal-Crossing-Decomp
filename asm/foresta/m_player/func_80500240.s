lbl_80500240:
/* 80500240  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80500244  7C 08 02 A6 */	mflr r0
/* 80500248  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050024C  39 61 00 20 */	addi r11, r1, 0x20
/* 80500250  4B B9 AC 7D */	bl func_8009AECC
/* 80500254  7C DE 33 78 */	mr r30, r6
/* 80500258  7C 9C 23 78 */	mr r28, r4
/* 8050025C  7C BD 2B 78 */	mr r29, r5
/* 80500260  7C 7B 1B 78 */	mr r27, r3
/* 80500264  7F C5 F3 78 */	mr r5, r30
/* 80500268  38 80 00 57 */	li r4, 0x57
/* 8050026C  4B FD A1 ED */	bl Player_actor_check_request_main_able
/* 80500270  2C 03 00 00 */	cmpwi r3, 0
/* 80500274  41 82 00 44 */	beq lbl_805002B8
/* 80500278  7F 63 DB 78 */	mr r3, r27
/* 8050027C  4B ED 93 C5 */	bl get_player_actor_withoutCheck
/* 80500280  7C 7F 1B 78 */	mr r31, r3
/* 80500284  7F 63 DB 78 */	mr r3, r27
/* 80500288  7F C5 F3 78 */	mr r5, r30
/* 8050028C  38 80 00 57 */	li r4, 0x57
/* 80500290  4B FD 4D 85 */	bl Player_actor_request_main_index
/* 80500294  80 9C 00 00 */	lwz r4, 0(r28)
/* 80500298  38 60 00 01 */	li r3, 1
/* 8050029C  80 1C 00 04 */	lwz r0, 4(r28)
/* 805002A0  90 9F 0D 60 */	stw r4, 0xd60(r31)
/* 805002A4  90 1F 0D 64 */	stw r0, 0xd64(r31)
/* 805002A8  80 1C 00 08 */	lwz r0, 8(r28)
/* 805002AC  90 1F 0D 68 */	stw r0, 0xd68(r31)
/* 805002B0  B3 BF 0D 6C */	sth r29, 0xd6c(r31)
/* 805002B4  48 00 00 08 */	b lbl_805002BC
lbl_805002B8:
/* 805002B8  38 60 00 00 */	li r3, 0
lbl_805002BC:
/* 805002BC  39 61 00 20 */	addi r11, r1, 0x20
/* 805002C0  4B B9 AC 59 */	bl func_8009AF18
/* 805002C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805002C8  7C 08 03 A6 */	mtlr r0
/* 805002CC  38 21 00 20 */	addi r1, r1, 0x20
/* 805002D0  4E 80 00 20 */	blr 
