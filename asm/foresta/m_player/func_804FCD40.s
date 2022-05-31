lbl_804FCD40:
/* 804FCD40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FCD44  7C 08 02 A6 */	mflr r0
/* 804FCD48  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FCD4C  39 61 00 20 */	addi r11, r1, 0x20
/* 804FCD50  4B B9 E1 81 */	bl func_8009AED0
/* 804FCD54  7C DF 33 78 */	mr r31, r6
/* 804FCD58  7C 9D 23 78 */	mr r29, r4
/* 804FCD5C  7C BE 2B 78 */	mr r30, r5
/* 804FCD60  7C 7C 1B 78 */	mr r28, r3
/* 804FCD64  7F E5 FB 78 */	mr r5, r31
/* 804FCD68  38 80 00 4A */	li r4, 0x4a
/* 804FCD6C  4B FD D6 ED */	bl Player_actor_check_request_main_able
/* 804FCD70  2C 03 00 00 */	cmpwi r3, 0
/* 804FCD74  41 82 00 2C */	beq lbl_804FCDA0
/* 804FCD78  7F 83 E3 78 */	mr r3, r28
/* 804FCD7C  4B ED C8 C5 */	bl get_player_actor_withoutCheck
/* 804FCD80  93 A3 0D 60 */	stw r29, 0xd60(r3)
/* 804FCD84  7F E5 FB 78 */	mr r5, r31
/* 804FCD88  38 80 00 4A */	li r4, 0x4a
/* 804FCD8C  93 C3 0D 64 */	stw r30, 0xd64(r3)
/* 804FCD90  7F 83 E3 78 */	mr r3, r28
/* 804FCD94  4B FD 82 81 */	bl Player_actor_request_main_index
/* 804FCD98  38 60 00 01 */	li r3, 1
/* 804FCD9C  48 00 00 08 */	b lbl_804FCDA4
lbl_804FCDA0:
/* 804FCDA0  38 60 00 00 */	li r3, 0
lbl_804FCDA4:
/* 804FCDA4  39 61 00 20 */	addi r11, r1, 0x20
/* 804FCDA8  4B B9 E1 75 */	bl func_8009AF1C
/* 804FCDAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FCDB0  7C 08 03 A6 */	mtlr r0
/* 804FCDB4  38 21 00 20 */	addi r1, r1, 0x20
/* 804FCDB8  4E 80 00 20 */	blr 
