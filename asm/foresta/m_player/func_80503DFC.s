lbl_80503DFC:
/* 80503DFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80503E00  7C 08 02 A6 */	mflr r0
/* 80503E04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80503E08  39 61 00 20 */	addi r11, r1, 0x20
/* 80503E0C  4B B9 70 C5 */	bl func_8009AED0
/* 80503E10  7C DF 33 78 */	mr r31, r6
/* 80503E14  7C 9D 23 78 */	mr r29, r4
/* 80503E18  7C BE 2B 78 */	mr r30, r5
/* 80503E1C  7C 7C 1B 78 */	mr r28, r3
/* 80503E20  7F E5 FB 78 */	mr r5, r31
/* 80503E24  38 80 00 64 */	li r4, 0x64
/* 80503E28  4B FD 66 31 */	bl Player_actor_check_request_main_able
/* 80503E2C  2C 03 00 00 */	cmpwi r3, 0
/* 80503E30  41 82 00 48 */	beq lbl_80503E78
/* 80503E34  7F 83 E3 78 */	mr r3, r28
/* 80503E38  4B ED 58 09 */	bl get_player_actor_withoutCheck
/* 80503E3C  80 03 0D 08 */	lwz r0, 0xd08(r3)
/* 80503E40  7F E5 FB 78 */	mr r5, r31
/* 80503E44  38 80 00 64 */	li r4, 0x64
/* 80503E48  90 03 0D 90 */	stw r0, 0xd90(r3)
/* 80503E4C  80 DD 00 00 */	lwz r6, 0(r29)
/* 80503E50  80 1D 00 04 */	lwz r0, 4(r29)
/* 80503E54  90 C3 0D 94 */	stw r6, 0xd94(r3)
/* 80503E58  90 03 0D 98 */	stw r0, 0xd98(r3)
/* 80503E5C  80 1D 00 08 */	lwz r0, 8(r29)
/* 80503E60  90 03 0D 9C */	stw r0, 0xd9c(r3)
/* 80503E64  B3 C3 0D A0 */	sth r30, 0xda0(r3)
/* 80503E68  7F 83 E3 78 */	mr r3, r28
/* 80503E6C  4B FD 11 A9 */	bl Player_actor_request_main_index
/* 80503E70  38 60 00 01 */	li r3, 1
/* 80503E74  48 00 00 08 */	b lbl_80503E7C
lbl_80503E78:
/* 80503E78  38 60 00 00 */	li r3, 0
lbl_80503E7C:
/* 80503E7C  39 61 00 20 */	addi r11, r1, 0x20
/* 80503E80  4B B9 70 9D */	bl func_8009AF1C
/* 80503E84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80503E88  7C 08 03 A6 */	mtlr r0
/* 80503E8C  38 21 00 20 */	addi r1, r1, 0x20
/* 80503E90  4E 80 00 20 */	blr 
