lbl_804F132C:
/* 804F132C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F1330  7C 08 02 A6 */	mflr r0
/* 804F1334  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F1338  39 61 00 20 */	addi r11, r1, 0x20
/* 804F133C  4B BA 9B 8D */	bl func_8009AEC8
/* 804F1340  7D 1F 43 78 */	mr r31, r8
/* 804F1344  7C 9B 23 78 */	mr r27, r4
/* 804F1348  7C BC 2B 78 */	mr r28, r5
/* 804F134C  7C 7A 1B 78 */	mr r26, r3
/* 804F1350  7C DD 33 78 */	mr r29, r6
/* 804F1354  7C FE 3B 78 */	mr r30, r7
/* 804F1358  7F E5 FB 78 */	mr r5, r31
/* 804F135C  38 80 00 28 */	li r4, 0x28
/* 804F1360  4B FE 90 F9 */	bl Player_actor_check_request_main_able
/* 804F1364  2C 03 00 00 */	cmpwi r3, 0
/* 804F1368  41 82 00 48 */	beq lbl_804F13B0
/* 804F136C  7F 43 D3 78 */	mr r3, r26
/* 804F1370  4B EE 82 D1 */	bl get_player_actor_withoutCheck
/* 804F1374  38 63 0D 60 */	addi r3, r3, 0xd60
/* 804F1378  38 00 00 00 */	li r0, 0
/* 804F137C  90 03 00 18 */	stw r0, 0x18(r3)
/* 804F1380  7F 64 DB 78 */	mr r4, r27
/* 804F1384  7F 85 E3 78 */	mr r5, r28
/* 804F1388  7F A7 EB 78 */	mr r7, r29
/* 804F138C  7F C8 F3 78 */	mr r8, r30
/* 804F1390  38 C0 00 00 */	li r6, 0
/* 804F1394  4B FF E6 2D */	bl func_804EF9C0
/* 804F1398  7F 43 D3 78 */	mr r3, r26
/* 804F139C  7F E5 FB 78 */	mr r5, r31
/* 804F13A0  38 80 00 28 */	li r4, 0x28
/* 804F13A4  4B FE 3C 71 */	bl Player_actor_request_main_index
/* 804F13A8  38 60 00 01 */	li r3, 1
/* 804F13AC  48 00 00 08 */	b lbl_804F13B4
lbl_804F13B0:
/* 804F13B0  38 60 00 00 */	li r3, 0
lbl_804F13B4:
/* 804F13B4  39 61 00 20 */	addi r11, r1, 0x20
/* 804F13B8  4B BA 9B 5D */	bl func_8009AF14
/* 804F13BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F13C0  7C 08 03 A6 */	mtlr r0
/* 804F13C4  38 21 00 20 */	addi r1, r1, 0x20
/* 804F13C8  4E 80 00 20 */	blr 
