lbl_804FDA18:
/* 804FDA18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FDA1C  7C 08 02 A6 */	mflr r0
/* 804FDA20  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FDA24  39 61 00 20 */	addi r11, r1, 0x20
/* 804FDA28  4B B9 D4 A9 */	bl func_8009AED0
/* 804FDA2C  7C DF 33 78 */	mr r31, r6
/* 804FDA30  7C 9D 23 78 */	mr r29, r4
/* 804FDA34  7C BE 2B 78 */	mr r30, r5
/* 804FDA38  7C 7C 1B 78 */	mr r28, r3
/* 804FDA3C  7F E5 FB 78 */	mr r5, r31
/* 804FDA40  38 80 00 4C */	li r4, 0x4c
/* 804FDA44  4B FD CA 15 */	bl Player_actor_check_request_main_able
/* 804FDA48  2C 03 00 00 */	cmpwi r3, 0
/* 804FDA4C  41 82 00 40 */	beq lbl_804FDA8C
/* 804FDA50  7F 83 E3 78 */	mr r3, r28
/* 804FDA54  4B ED BB ED */	bl get_player_actor_withoutCheck
/* 804FDA58  80 DD 00 00 */	lwz r6, 0(r29)
/* 804FDA5C  7F E5 FB 78 */	mr r5, r31
/* 804FDA60  80 1D 00 04 */	lwz r0, 4(r29)
/* 804FDA64  38 80 00 4C */	li r4, 0x4c
/* 804FDA68  90 C3 0D 64 */	stw r6, 0xd64(r3)
/* 804FDA6C  90 03 0D 68 */	stw r0, 0xd68(r3)
/* 804FDA70  80 1D 00 08 */	lwz r0, 8(r29)
/* 804FDA74  90 03 0D 6C */	stw r0, 0xd6c(r3)
/* 804FDA78  B3 C3 0D 60 */	sth r30, 0xd60(r3)
/* 804FDA7C  7F 83 E3 78 */	mr r3, r28
/* 804FDA80  4B FD 75 95 */	bl Player_actor_request_main_index
/* 804FDA84  38 60 00 01 */	li r3, 1
/* 804FDA88  48 00 00 08 */	b lbl_804FDA90
lbl_804FDA8C:
/* 804FDA8C  38 60 00 00 */	li r3, 0
lbl_804FDA90:
/* 804FDA90  39 61 00 20 */	addi r11, r1, 0x20
/* 804FDA94  4B B9 D4 89 */	bl func_8009AF1C
/* 804FDA98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FDA9C  7C 08 03 A6 */	mtlr r0
/* 804FDAA0  38 21 00 20 */	addi r1, r1, 0x20
/* 804FDAA4  4E 80 00 20 */	blr 
