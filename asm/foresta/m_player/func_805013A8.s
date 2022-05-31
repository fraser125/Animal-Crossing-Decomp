lbl_805013A8:
/* 805013A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805013AC  7C 08 02 A6 */	mflr r0
/* 805013B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805013B4  39 61 00 20 */	addi r11, r1, 0x20
/* 805013B8  4B B9 9B 15 */	bl func_8009AECC
/* 805013BC  7C DE 33 78 */	mr r30, r6
/* 805013C0  7C 9C 23 78 */	mr r28, r4
/* 805013C4  7C BD 2B 78 */	mr r29, r5
/* 805013C8  7C 7B 1B 78 */	mr r27, r3
/* 805013CC  7F C5 F3 78 */	mr r5, r30
/* 805013D0  38 80 00 5A */	li r4, 0x5a
/* 805013D4  4B FD 90 85 */	bl Player_actor_check_request_main_able
/* 805013D8  2C 03 00 00 */	cmpwi r3, 0
/* 805013DC  41 82 00 44 */	beq lbl_80501420
/* 805013E0  7F 63 DB 78 */	mr r3, r27
/* 805013E4  4B ED 82 5D */	bl get_player_actor_withoutCheck
/* 805013E8  7C 7F 1B 78 */	mr r31, r3
/* 805013EC  7F 63 DB 78 */	mr r3, r27
/* 805013F0  7F C5 F3 78 */	mr r5, r30
/* 805013F4  38 80 00 5A */	li r4, 0x5a
/* 805013F8  4B FD 3C 1D */	bl Player_actor_request_main_index
/* 805013FC  80 9C 00 00 */	lwz r4, 0(r28)
/* 80501400  38 60 00 01 */	li r3, 1
/* 80501404  80 1C 00 04 */	lwz r0, 4(r28)
/* 80501408  90 9F 0D 60 */	stw r4, 0xd60(r31)
/* 8050140C  90 1F 0D 64 */	stw r0, 0xd64(r31)
/* 80501410  80 1C 00 08 */	lwz r0, 8(r28)
/* 80501414  90 1F 0D 68 */	stw r0, 0xd68(r31)
/* 80501418  B3 BF 0D 6C */	sth r29, 0xd6c(r31)
/* 8050141C  48 00 00 08 */	b lbl_80501424
lbl_80501420:
/* 80501420  38 60 00 00 */	li r3, 0
lbl_80501424:
/* 80501424  39 61 00 20 */	addi r11, r1, 0x20
/* 80501428  4B B9 9A F1 */	bl func_8009AF18
/* 8050142C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80501430  7C 08 03 A6 */	mtlr r0
/* 80501434  38 21 00 20 */	addi r1, r1, 0x20
/* 80501438  4E 80 00 20 */	blr 
