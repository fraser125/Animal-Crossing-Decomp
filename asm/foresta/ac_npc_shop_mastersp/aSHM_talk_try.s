lbl_8057D0C4:
/* 8057D0C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057D0C8  7C 08 02 A6 */	mflr r0
/* 8057D0CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057D0D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057D0D4  7C 7F 1B 78 */	mr r31, r3
/* 8057D0D8  4B E4 25 D1 */	bl func_803BF6A8
/* 8057D0DC  4B E4 3B BD */	bl mMsg_Check_MainNormalContinue
/* 8057D0E0  2C 03 00 00 */	cmpwi r3, 0
/* 8057D0E4  41 82 00 7C */	beq lbl_8057D160
/* 8057D0E8  4B E0 64 59 */	bl func_80383540
/* 8057D0EC  4B E0 6A 81 */	bl mChoice_Get_ChoseNum
/* 8057D0F0  B0 7F 09 AC */	sth r3, 0x9ac(r31)
/* 8057D0F4  A8 1F 09 AC */	lha r0, 0x9ac(r31)
/* 8057D0F8  2C 00 00 01 */	cmpwi r0, 1
/* 8057D0FC  41 82 00 58 */	beq lbl_8057D154
/* 8057D100  40 80 00 60 */	bge lbl_8057D160
/* 8057D104  2C 00 00 00 */	cmpwi r0, 0
/* 8057D108  40 80 00 08 */	bge lbl_8057D110
/* 8057D10C  48 00 00 54 */	b lbl_8057D160
lbl_8057D110:
/* 8057D110  80 7F 09 B8 */	lwz r3, 0x9b8(r31)
/* 8057D114  4B FF FB 4D */	bl check_lottery_ticket
/* 8057D118  2C 03 00 00 */	cmpwi r3, 0
/* 8057D11C  41 82 00 1C */	beq lbl_8057D138
/* 8057D120  4B E4 25 89 */	bl func_803BF6A8
/* 8057D124  38 80 10 D4 */	li r4, 0x10d4
/* 8057D128  4B E4 2E 9D */	bl mMsg_Set_continue_msg_num
/* 8057D12C  7F E3 FB 78 */	mr r3, r31
/* 8057D130  4B FF FE C5 */	bl fukubiki_before_process
/* 8057D134  48 00 00 2C */	b lbl_8057D160
lbl_8057D138:
/* 8057D138  4B E4 25 71 */	bl func_803BF6A8
/* 8057D13C  38 80 10 D3 */	li r4, 0x10d3
/* 8057D140  4B E4 2E 85 */	bl mMsg_Set_continue_msg_num
/* 8057D144  7F E3 FB 78 */	mr r3, r31
/* 8057D148  38 80 00 06 */	li r4, 6
/* 8057D14C  48 00 04 61 */	bl aSHM_change_talk_proc
/* 8057D150  48 00 00 10 */	b lbl_8057D160
lbl_8057D154:
/* 8057D154  7F E3 FB 78 */	mr r3, r31
/* 8057D158  38 80 00 06 */	li r4, 6
/* 8057D15C  48 00 04 51 */	bl aSHM_change_talk_proc
lbl_8057D160:
/* 8057D160  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057D164  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057D168  7C 08 03 A6 */	mtlr r0
/* 8057D16C  38 21 00 10 */	addi r1, r1, 0x10
/* 8057D170  4E 80 00 20 */	blr 
