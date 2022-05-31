lbl_80522098:
/* 80522098  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052209C  7C 08 02 A6 */	mflr r0
/* 805220A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805220A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805220A8  7C 9F 23 78 */	mr r31, r4
/* 805220AC  93 C1 00 08 */	stw r30, 8(r1)
/* 805220B0  7C 7E 1B 78 */	mr r30, r3
/* 805220B4  4B E9 D5 F5 */	bl func_803BF6A8
/* 805220B8  4B E9 EB E1 */	bl mMsg_Check_MainNormalContinue
/* 805220BC  2C 03 00 00 */	cmpwi r3, 0
/* 805220C0  41 82 00 A4 */	beq lbl_80522164
/* 805220C4  4B E6 14 7D */	bl func_80383540
/* 805220C8  4B E6 1A A5 */	bl mChoice_Get_ChoseNum
/* 805220CC  2C 03 00 01 */	cmpwi r3, 1
/* 805220D0  41 82 00 84 */	beq lbl_80522154
/* 805220D4  40 80 00 90 */	bge lbl_80522164
/* 805220D8  2C 03 00 00 */	cmpwi r3, 0
/* 805220DC  40 80 00 08 */	bge lbl_805220E4
/* 805220E0  48 00 00 84 */	b lbl_80522164
lbl_805220E4:
/* 805220E4  4B FF FE 11 */	bl aEMK_mail_free_space
/* 805220E8  2C 03 00 00 */	cmpwi r3, 0
/* 805220EC  40 82 00 24 */	bne lbl_80522110
/* 805220F0  4B E9 D5 B9 */	bl func_803BF6A8
/* 805220F4  38 80 19 0F */	li r4, 0x190f
/* 805220F8  4B E9 DE CD */	bl mMsg_Set_continue_msg_num
/* 805220FC  7F C3 F3 78 */	mr r3, r30
/* 80522100  7F E4 FB 78 */	mr r4, r31
/* 80522104  38 A0 00 00 */	li r5, 0
/* 80522108  48 00 02 B5 */	bl aEMK_setupAction
/* 8052210C  48 00 00 58 */	b lbl_80522164
lbl_80522110:
/* 80522110  38 60 00 32 */	li r3, 0x32
/* 80522114  4B EC 8E 7D */	bl mSP_money_check
/* 80522118  2C 03 00 00 */	cmpwi r3, 0
/* 8052211C  41 82 00 18 */	beq lbl_80522134
/* 80522120  7F C3 F3 78 */	mr r3, r30
/* 80522124  7F E4 FB 78 */	mr r4, r31
/* 80522128  38 A0 00 02 */	li r5, 2
/* 8052212C  48 00 02 91 */	bl aEMK_setupAction
/* 80522130  48 00 00 34 */	b lbl_80522164
lbl_80522134:
/* 80522134  4B E9 D5 75 */	bl func_803BF6A8
/* 80522138  38 80 19 0E */	li r4, 0x190e
/* 8052213C  4B E9 DE 89 */	bl mMsg_Set_continue_msg_num
/* 80522140  7F C3 F3 78 */	mr r3, r30
/* 80522144  7F E4 FB 78 */	mr r4, r31
/* 80522148  38 A0 00 00 */	li r5, 0
/* 8052214C  48 00 02 71 */	bl aEMK_setupAction
/* 80522150  48 00 00 14 */	b lbl_80522164
lbl_80522154:
/* 80522154  7F C3 F3 78 */	mr r3, r30
/* 80522158  7F E4 FB 78 */	mr r4, r31
/* 8052215C  38 A0 00 00 */	li r5, 0
/* 80522160  48 00 02 5D */	bl aEMK_setupAction
lbl_80522164:
/* 80522164  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80522168  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052216C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80522170  7C 08 03 A6 */	mtlr r0
/* 80522174  38 21 00 10 */	addi r1, r1, 0x10
/* 80522178  4E 80 00 20 */	blr 
