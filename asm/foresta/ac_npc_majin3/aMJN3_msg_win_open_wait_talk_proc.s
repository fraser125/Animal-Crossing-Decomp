lbl_8055834C:
/* 8055834C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80558350  7C 08 02 A6 */	mflr r0
/* 80558354  90 01 00 24 */	stw r0, 0x24(r1)
/* 80558358  39 61 00 20 */	addi r11, r1, 0x20
/* 8055835C  4B B4 2B 79 */	bl func_8009AED4
/* 80558360  7C 7D 1B 78 */	mr r29, r3
/* 80558364  4B E6 73 45 */	bl func_803BF6A8
/* 80558368  7C 7E 1B 78 */	mr r30, r3
/* 8055836C  4B E6 73 F9 */	bl mMsg_Check_not_series_main_wait
/* 80558370  2C 03 00 01 */	cmpwi r3, 1
/* 80558374  40 82 00 38 */	bne lbl_805583AC
/* 80558378  7F A3 EB 78 */	mr r3, r29
/* 8055837C  4B FF FE 45 */	bl aMJN3_check_word
/* 80558380  3C 80 80 6A */	lis r4, msg_no@ha /* 0x806A6A00@ha */
/* 80558384  54 7F 10 3A */	slwi r31, r3, 2
/* 80558388  38 84 6A 00 */	addi r4, r4, msg_no@l /* 0x806A6A00@l */
/* 8055838C  7F C3 F3 78 */	mr r3, r30
/* 80558390  7C 84 F8 2E */	lwzx r4, r4, r31
/* 80558394  4B E6 86 05 */	bl mMsg_ChangeMsgData
/* 80558398  3C 80 80 6A */	lis r4, next_talk_idx@ha /* 0x806A6A0C@ha */
/* 8055839C  7F A3 EB 78 */	mr r3, r29
/* 805583A0  38 84 6A 0C */	addi r4, r4, next_talk_idx@l /* 0x806A6A0C@l */
/* 805583A4  7C 84 F8 2E */	lwzx r4, r4, r31
/* 805583A8  48 00 00 1D */	bl aMJN3_change_talk_proc
lbl_805583AC:
/* 805583AC  39 61 00 20 */	addi r11, r1, 0x20
/* 805583B0  4B B4 2B 71 */	bl func_8009AF20
/* 805583B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805583B8  7C 08 03 A6 */	mtlr r0
/* 805583BC  38 21 00 20 */	addi r1, r1, 0x20
/* 805583C0  4E 80 00 20 */	blr 
