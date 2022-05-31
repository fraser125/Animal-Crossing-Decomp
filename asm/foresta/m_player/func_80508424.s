lbl_80508424:
/* 80508424  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80508428  7C 08 02 A6 */	mflr r0
/* 8050842C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80508430  39 61 00 20 */	addi r11, r1, 0x20
/* 80508434  4B B9 2A 99 */	bl func_8009AECC
/* 80508438  7C DE 33 78 */	mr r30, r6
/* 8050843C  7C BD 2B 78 */	mr r29, r5
/* 80508440  7C 7B 1B 78 */	mr r27, r3
/* 80508444  7C 9C 23 78 */	mr r28, r4
/* 80508448  7F C5 F3 78 */	mr r5, r30
/* 8050844C  4B FD 20 0D */	bl Player_actor_check_request_main_able
/* 80508450  2C 03 00 00 */	cmpwi r3, 0
/* 80508454  41 82 00 2C */	beq lbl_80508480
/* 80508458  7F 63 DB 78 */	mr r3, r27
/* 8050845C  4B ED 11 E5 */	bl get_player_actor_withoutCheck
/* 80508460  7C 7F 1B 78 */	mr r31, r3
/* 80508464  7F 63 DB 78 */	mr r3, r27
/* 80508468  7F 84 E3 78 */	mr r4, r28
/* 8050846C  7F C5 F3 78 */	mr r5, r30
/* 80508470  4B FC CB A5 */	bl Player_actor_request_main_index
/* 80508474  93 BF 0D 60 */	stw r29, 0xd60(r31)
/* 80508478  38 60 00 01 */	li r3, 1
/* 8050847C  48 00 00 08 */	b lbl_80508484
lbl_80508480:
/* 80508480  38 60 00 00 */	li r3, 0
lbl_80508484:
/* 80508484  39 61 00 20 */	addi r11, r1, 0x20
/* 80508488  4B B9 2A 91 */	bl func_8009AF18
/* 8050848C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80508490  7C 08 03 A6 */	mtlr r0
/* 80508494  38 21 00 20 */	addi r1, r1, 0x20
/* 80508498  4E 80 00 20 */	blr 
