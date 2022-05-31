lbl_8057D2BC:
/* 8057D2BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057D2C0  7C 08 02 A6 */	mflr r0
/* 8057D2C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057D2C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057D2CC  7C 7F 1B 78 */	mr r31, r3
/* 8057D2D0  38 60 00 04 */	li r3, 4
/* 8057D2D4  93 C1 00 08 */	stw r30, 8(r1)
/* 8057D2D8  7C 9E 23 78 */	mr r30, r4
/* 8057D2DC  38 80 00 09 */	li r4, 9
/* 8057D2E0  4B E1 B1 9D */	bl mDemo_Get_OrderValue
/* 8057D2E4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8057D2E8  2C 00 00 01 */	cmpwi r0, 1
/* 8057D2EC  40 82 00 20 */	bne lbl_8057D30C
/* 8057D2F0  38 60 00 04 */	li r3, 4
/* 8057D2F4  38 80 00 09 */	li r4, 9
/* 8057D2F8  38 A0 00 00 */	li r5, 0
/* 8057D2FC  4B E1 B1 3D */	bl mDemo_Set_OrderValue
/* 8057D300  38 9F 00 28 */	addi r4, r31, 0x28
/* 8057D304  38 60 00 7F */	li r3, 0x7f
/* 8057D308  48 0B 0C A1 */	bl sAdo_OngenTrgStart
lbl_8057D30C:
/* 8057D30C  7F E4 FB 78 */	mr r4, r31
/* 8057D310  38 60 00 07 */	li r3, 7
/* 8057D314  4B E1 CF 51 */	bl mDemo_Check
/* 8057D318  2C 03 00 00 */	cmpwi r3, 0
/* 8057D31C  40 82 00 48 */	bne lbl_8057D364
/* 8057D320  7F E4 FB 78 */	mr r4, r31
/* 8057D324  38 60 00 08 */	li r3, 8
/* 8057D328  4B E1 CF 3D */	bl mDemo_Check
/* 8057D32C  2C 03 00 00 */	cmpwi r3, 0
/* 8057D330  40 82 00 34 */	bne lbl_8057D364
/* 8057D334  7F C3 F3 78 */	mr r3, r30
/* 8057D338  4B E5 C3 39 */	bl mPlib_get_player_actor_main_index
/* 8057D33C  2C 03 00 4A */	cmpwi r3, 0x4a
/* 8057D340  41 82 00 18 */	beq lbl_8057D358
/* 8057D344  7F C3 F3 78 */	mr r3, r30
/* 8057D348  38 80 00 00 */	li r4, 0
/* 8057D34C  38 A0 00 00 */	li r5, 0
/* 8057D350  4B E5 DA 35 */	bl mPlib_request_main_demo_wait_type1
/* 8057D354  48 00 00 10 */	b lbl_8057D364
lbl_8057D358:
/* 8057D358  7F E3 FB 78 */	mr r3, r31
/* 8057D35C  38 80 00 06 */	li r4, 6
/* 8057D360  48 00 02 4D */	bl aSHM_change_talk_proc
lbl_8057D364:
/* 8057D364  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057D368  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057D36C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057D370  7C 08 03 A6 */	mtlr r0
/* 8057D374  38 21 00 10 */	addi r1, r1, 0x10
/* 8057D378  4E 80 00 20 */	blr 
