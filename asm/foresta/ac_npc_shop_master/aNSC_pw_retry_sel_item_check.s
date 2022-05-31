lbl_8057B2C8:
/* 8057B2C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057B2CC  7C 08 02 A6 */	mflr r0
/* 8057B2D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057B2D4  39 61 00 20 */	addi r11, r1, 0x20
/* 8057B2D8  4B B1 FB F9 */	bl func_8009AED0
/* 8057B2DC  7C 7C 1B 78 */	mr r28, r3
/* 8057B2E0  7C 9D 23 78 */	mr r29, r4
/* 8057B2E4  4B E4 43 C5 */	bl func_803BF6A8
/* 8057B2E8  7C 60 1B 78 */	mr r0, r3
/* 8057B2EC  38 60 01 31 */	li r3, 0x131
/* 8057B2F0  7C 1E 03 78 */	mr r30, r0
/* 8057B2F4  4B FF CF 89 */	bl aNSC_get_msg_no
/* 8057B2F8  7C 7F 1B 78 */	mr r31, r3
/* 8057B2FC  7F C3 F3 78 */	mr r3, r30
/* 8057B300  4B E4 4C CD */	bl mMsg_Get_msg_num
/* 8057B304  7C 03 F8 00 */	cmpw r3, r31
/* 8057B308  40 82 00 70 */	bne lbl_8057B378
/* 8057B30C  7F C3 F3 78 */	mr r3, r30
/* 8057B310  4B E4 59 89 */	bl mMsg_Check_MainNormalContinue
/* 8057B314  2C 03 00 00 */	cmpwi r3, 0
/* 8057B318  41 82 00 60 */	beq lbl_8057B378
/* 8057B31C  3B E0 FF FF */	li r31, -1
/* 8057B320  4B E0 82 21 */	bl func_80383540
/* 8057B324  4B E0 88 49 */	bl mChoice_Get_ChoseNum
/* 8057B328  2C 03 00 01 */	cmpwi r3, 1
/* 8057B32C  41 82 00 1C */	beq lbl_8057B348
/* 8057B330  40 80 00 1C */	bge lbl_8057B34C
/* 8057B334  2C 03 00 00 */	cmpwi r3, 0
/* 8057B338  40 80 00 08 */	bge lbl_8057B340
/* 8057B33C  48 00 00 10 */	b lbl_8057B34C
lbl_8057B340:
/* 8057B340  3B E0 00 00 */	li r31, 0
/* 8057B344  48 00 00 08 */	b lbl_8057B34C
lbl_8057B348:
/* 8057B348  3B E0 00 01 */	li r31, 1
lbl_8057B34C:
/* 8057B34C  2C 1F FF FF */	cmpwi r31, -1
/* 8057B350  41 82 00 28 */	beq lbl_8057B378
/* 8057B354  7F C3 F3 78 */	mr r3, r30
/* 8057B358  4B E4 59 D1 */	bl mMsg_Set_ForceNext
/* 8057B35C  3C 60 80 6C */	lis r3, next_act_idx_1820@ha /* 0x806C03E8@ha */
/* 8057B360  57 E0 10 3A */	slwi r0, r31, 2
/* 8057B364  38 83 03 E8 */	addi r4, r3, next_act_idx_1820@l /* 0x806C03E8@l */
/* 8057B368  7F 83 E3 78 */	mr r3, r28
/* 8057B36C  7C A4 00 2E */	lwzx r5, r4, r0
/* 8057B370  7F A4 EB 78 */	mr r4, r29
/* 8057B374  48 00 11 41 */	bl aNSC_setupAction
lbl_8057B378:
/* 8057B378  39 61 00 20 */	addi r11, r1, 0x20
/* 8057B37C  4B B1 FB A1 */	bl func_8009AF1C
/* 8057B380  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057B384  7C 08 03 A6 */	mtlr r0
/* 8057B388  38 21 00 20 */	addi r1, r1, 0x20
/* 8057B38C  4E 80 00 20 */	blr 
