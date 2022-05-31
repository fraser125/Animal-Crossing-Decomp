lbl_8057D174:
/* 8057D174  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057D178  7C 08 02 A6 */	mflr r0
/* 8057D17C  38 80 00 09 */	li r4, 9
/* 8057D180  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057D184  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057D188  7C 7F 1B 78 */	mr r31, r3
/* 8057D18C  38 60 00 04 */	li r3, 4
/* 8057D190  4B E1 B2 ED */	bl mDemo_Get_OrderValue
/* 8057D194  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8057D198  2C 00 00 03 */	cmpwi r0, 3
/* 8057D19C  40 82 00 58 */	bne lbl_8057D1F4
/* 8057D1A0  38 60 00 04 */	li r3, 4
/* 8057D1A4  38 80 00 09 */	li r4, 9
/* 8057D1A8  38 A0 00 00 */	li r5, 0
/* 8057D1AC  4B E1 B2 8D */	bl mDemo_Set_OrderValue
/* 8057D1B0  80 7F 09 B8 */	lwz r3, 0x9b8(r31)
/* 8057D1B4  4B FF FA AD */	bl check_lottery_ticket
/* 8057D1B8  2C 03 00 00 */	cmpwi r3, 0
/* 8057D1BC  41 82 00 20 */	beq lbl_8057D1DC
/* 8057D1C0  4B E4 24 E9 */	bl func_803BF6A8
/* 8057D1C4  38 80 10 D7 */	li r4, 0x10d7
/* 8057D1C8  4B E4 2D FD */	bl mMsg_Set_continue_msg_num
/* 8057D1CC  7F E3 FB 78 */	mr r3, r31
/* 8057D1D0  38 80 00 02 */	li r4, 2
/* 8057D1D4  48 00 03 D9 */	bl aSHM_change_talk_proc
/* 8057D1D8  48 00 00 1C */	b lbl_8057D1F4
lbl_8057D1DC:
/* 8057D1DC  4B E4 24 CD */	bl func_803BF6A8
/* 8057D1E0  38 80 10 D6 */	li r4, 0x10d6
/* 8057D1E4  4B E4 2D E1 */	bl mMsg_Set_continue_msg_num
/* 8057D1E8  7F E3 FB 78 */	mr r3, r31
/* 8057D1EC  38 80 00 05 */	li r4, 5
/* 8057D1F0  48 00 03 BD */	bl aSHM_change_talk_proc
lbl_8057D1F4:
/* 8057D1F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057D1F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057D1FC  7C 08 03 A6 */	mtlr r0
/* 8057D200  38 21 00 10 */	addi r1, r1, 0x10
/* 8057D204  4E 80 00 20 */	blr 
