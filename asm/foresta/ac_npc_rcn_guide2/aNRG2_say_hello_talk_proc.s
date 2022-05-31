lbl_80570974:
/* 80570974  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80570978  7C 08 02 A6 */	mflr r0
/* 8057097C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80570980  39 61 00 20 */	addi r11, r1, 0x20
/* 80570984  4B B2 A5 4D */	bl func_8009AED0
/* 80570988  3C 80 80 6C */	lis r4, data_806BEF28@ha /* 0x806BEF28@ha */
/* 8057098C  7C 7F 1B 78 */	mr r31, r3
/* 80570990  3B C4 EF 28 */	addi r30, r4, data_806BEF28@l /* 0x806BEF28@l */
/* 80570994  4B E4 ED 15 */	bl func_803BF6A8
/* 80570998  7C 7D 1B 78 */	mr r29, r3
/* 8057099C  4B E7 31 CD */	bl mQst_GetFirstJobData
/* 805709A0  88 03 00 01 */	lbz r0, 1(r3)
/* 805709A4  54 00 EF 3E */	rlwinm r0, r0, 0x1d, 0x1c, 0x1f
/* 805709A8  28 00 00 01 */	cmplwi r0, 1
/* 805709AC  40 82 00 80 */	bne lbl_80570A2C
/* 805709B0  88 03 00 00 */	lbz r0, 0(r3)
/* 805709B4  54 03 06 BE */	clrlwi r3, r0, 0x1a
/* 805709B8  3B 83 FF FD */	addi r28, r3, -3
/* 805709BC  4B FF FB 55 */	bl aNRG2_check_job_start
/* 805709C0  2C 03 00 01 */	cmpwi r3, 1
/* 805709C4  40 82 00 30 */	bne lbl_805709F4
/* 805709C8  7F E3 FB 78 */	mr r3, r31
/* 805709CC  7F 84 E3 78 */	mr r4, r28
/* 805709D0  4B FF FE E1 */	bl aNRG2_stepup_job
/* 805709D4  4B FF F9 E5 */	bl aNRG2_set_possession
/* 805709D8  57 80 10 3A */	slwi r0, r28, 2
/* 805709DC  38 7E 01 14 */	addi r3, r30, 0x114
/* 805709E0  7C 83 00 2E */	lwzx r4, r3, r0
/* 805709E4  38 00 00 04 */	li r0, 4
/* 805709E8  3B 80 00 00 */	li r28, 0
/* 805709EC  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 805709F0  48 00 00 1C */	b lbl_80570A0C
lbl_805709F4:
/* 805709F4  57 80 10 3A */	slwi r0, r28, 2
/* 805709F8  38 7E 01 40 */	addi r3, r30, 0x140
/* 805709FC  7C 83 00 2E */	lwzx r4, r3, r0
/* 80570A00  38 00 00 05 */	li r0, 5
/* 80570A04  3B 80 00 01 */	li r28, 1
/* 80570A08  90 1F 09 9C */	stw r0, 0x99c(r31)
lbl_80570A0C:
/* 80570A0C  7F A3 EB 78 */	mr r3, r29
/* 80570A10  4B E4 F5 B5 */	bl mMsg_Set_continue_msg_num
/* 80570A14  57 80 10 3A */	slwi r0, r28, 2
/* 80570A18  38 7E 01 6C */	addi r3, r30, 0x16c
/* 80570A1C  7C 83 00 2E */	lwzx r4, r3, r0
/* 80570A20  7F E3 FB 78 */	mr r3, r31
/* 80570A24  48 00 08 91 */	bl aNRG2_change_talk_proc
/* 80570A28  48 00 00 20 */	b lbl_80570A48
lbl_80570A2C:
/* 80570A2C  38 00 00 04 */	li r0, 4
/* 80570A30  7F A3 EB 78 */	mr r3, r29
/* 80570A34  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 80570A38  4B E5 02 D9 */	bl mMsg_Set_CancelNormalContinue
/* 80570A3C  7F E3 FB 78 */	mr r3, r31
/* 80570A40  38 80 00 04 */	li r4, 4
/* 80570A44  48 00 08 71 */	bl aNRG2_change_talk_proc
lbl_80570A48:
/* 80570A48  39 61 00 20 */	addi r11, r1, 0x20
/* 80570A4C  4B B2 A4 D1 */	bl func_8009AF1C
/* 80570A50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80570A54  7C 08 03 A6 */	mtlr r0
/* 80570A58  38 21 00 20 */	addi r1, r1, 0x20
/* 80570A5C  4E 80 00 20 */	blr 
