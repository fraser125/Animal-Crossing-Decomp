lbl_805BC104:
/* 805BC104  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BC108  7C 08 02 A6 */	mflr r0
/* 805BC10C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BC110  39 61 00 20 */	addi r11, r1, 0x20
/* 805BC114  4B AD ED C1 */	bl func_8009AED4
/* 805BC118  7C 7D 1B 78 */	mr r29, r3
/* 805BC11C  7C 9F 23 78 */	mr r31, r4
/* 805BC120  4B E0 35 89 */	bl func_803BF6A8
/* 805BC124  7C 7E 1B 78 */	mr r30, r3
/* 805BC128  4B E0 4B 71 */	bl mMsg_Check_MainNormalContinue
/* 805BC12C  2C 03 00 01 */	cmpwi r3, 1
/* 805BC130  40 82 00 40 */	bne lbl_805BC170
/* 805BC134  7F A3 EB 78 */	mr r3, r29
/* 805BC138  7F E4 FB 78 */	mr r4, r31
/* 805BC13C  4B FF FC 49 */	bl aSTM_chk_train_local
/* 805BC140  3C 80 80 6C */	lis r4, msg_no_635@ha /* 0x806C6A4C@ha */
/* 805BC144  7C 7F 1B 78 */	mr r31, r3
/* 805BC148  38 84 6A 4C */	addi r4, r4, msg_no_635@l /* 0x806C6A4C@l */
/* 805BC14C  7F C3 F3 78 */	mr r3, r30
/* 805BC150  7C 84 F8 AE */	lbzx r4, r4, r31
/* 805BC154  38 84 09 43 */	addi r4, r4, 0x943
/* 805BC158  4B E0 3E 6D */	bl mMsg_Set_continue_msg_num
/* 805BC15C  3C 80 80 6C */	lis r4, next_talk_act_634@ha /* 0x806C6A48@ha */
/* 805BC160  7F A3 EB 78 */	mr r3, r29
/* 805BC164  38 84 6A 48 */	addi r4, r4, next_talk_act_634@l /* 0x806C6A48@l */
/* 805BC168  7C 84 F8 AE */	lbzx r4, r4, r31
/* 805BC16C  48 00 07 91 */	bl aSTC_clip_change_talk_proc
lbl_805BC170:
/* 805BC170  39 61 00 20 */	addi r11, r1, 0x20
/* 805BC174  4B AD ED AD */	bl func_8009AF20
/* 805BC178  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BC17C  7C 08 03 A6 */	mtlr r0
/* 805BC180  38 21 00 20 */	addi r1, r1, 0x20
/* 805BC184  4E 80 00 20 */	blr 
