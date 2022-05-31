lbl_80507AE4:
/* 80507AE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80507AE8  7C 08 02 A6 */	mflr r0
/* 80507AEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80507AF0  39 61 00 20 */	addi r11, r1, 0x20
/* 80507AF4  4B B9 33 DD */	bl func_8009AED0
/* 80507AF8  7C DF 33 78 */	mr r31, r6
/* 80507AFC  7C 9D 23 78 */	mr r29, r4
/* 80507B00  7C BE 2B 78 */	mr r30, r5
/* 80507B04  7C 7C 1B 78 */	mr r28, r3
/* 80507B08  7F E5 FB 78 */	mr r5, r31
/* 80507B0C  38 80 00 74 */	li r4, 0x74
/* 80507B10  4B FD 29 49 */	bl Player_actor_check_request_main_able
/* 80507B14  2C 03 00 00 */	cmpwi r3, 0
/* 80507B18  41 82 00 40 */	beq lbl_80507B58
/* 80507B1C  7F 83 E3 78 */	mr r3, r28
/* 80507B20  4B ED 1B 21 */	bl get_player_actor_withoutCheck
/* 80507B24  80 DD 00 00 */	lwz r6, 0(r29)
/* 80507B28  7F E5 FB 78 */	mr r5, r31
/* 80507B2C  80 1D 00 04 */	lwz r0, 4(r29)
/* 80507B30  38 80 00 74 */	li r4, 0x74
/* 80507B34  90 C3 0D 60 */	stw r6, 0xd60(r3)
/* 80507B38  90 03 0D 64 */	stw r0, 0xd64(r3)
/* 80507B3C  80 1D 00 08 */	lwz r0, 8(r29)
/* 80507B40  90 03 0D 68 */	stw r0, 0xd68(r3)
/* 80507B44  B3 C3 0D 6C */	sth r30, 0xd6c(r3)
/* 80507B48  7F 83 E3 78 */	mr r3, r28
/* 80507B4C  4B FC D4 C9 */	bl Player_actor_request_main_index
/* 80507B50  38 60 00 01 */	li r3, 1
/* 80507B54  48 00 00 08 */	b lbl_80507B5C
lbl_80507B58:
/* 80507B58  38 60 00 00 */	li r3, 0
lbl_80507B5C:
/* 80507B5C  39 61 00 20 */	addi r11, r1, 0x20
/* 80507B60  4B B9 33 BD */	bl func_8009AF1C
/* 80507B64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80507B68  7C 08 03 A6 */	mtlr r0
/* 80507B6C  38 21 00 20 */	addi r1, r1, 0x20
/* 80507B70  4E 80 00 20 */	blr 
