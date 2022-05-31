lbl_805840C0:
/* 805840C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805840C4  7C 08 02 A6 */	mflr r0
/* 805840C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805840CC  39 61 00 20 */	addi r11, r1, 0x20
/* 805840D0  4B B1 6D FD */	bl func_8009AECC
/* 805840D4  7C 7B 1B 78 */	mr r27, r3
/* 805840D8  7C 9C 23 78 */	mr r28, r4
/* 805840DC  4B E3 B5 CD */	bl func_803BF6A8
/* 805840E0  7C 7E 1B 78 */	mr r30, r3
/* 805840E4  4B E3 B6 81 */	bl mMsg_Check_not_series_main_wait
/* 805840E8  2C 03 00 01 */	cmpwi r3, 1
/* 805840EC  40 82 00 84 */	bne lbl_80584170
/* 805840F0  80 7C 1F 60 */	lwz r3, 0x1f60(r28)
/* 805840F4  A3 E3 00 00 */	lhz r31, 0(r3)
/* 805840F8  28 1F 00 00 */	cmplwi r31, 0
/* 805840FC  40 82 00 0C */	bne lbl_80584108
/* 80584100  3B A0 00 00 */	li r29, 0
/* 80584104  48 00 00 28 */	b lbl_8058412C
lbl_80584108:
/* 80584108  88 A3 00 02 */	lbz r5, 2(r3)
/* 8058410C  7F E3 FB 78 */	mr r3, r31
/* 80584110  38 80 00 01 */	li r4, 1
/* 80584114  30 05 FF FF */	addic r0, r5, -1
/* 80584118  7C A0 29 10 */	subfe r5, r0, r5
/* 8058411C  38 05 00 01 */	addi r0, r5, 1
/* 80584120  7C 1D 03 78 */	mr r29, r0
/* 80584124  4B FF D0 01 */	bl aNSC_set_item_name_str
/* 80584128  B3 FB 09 BA */	sth r31, 0x9ba(r27)
lbl_8058412C:
/* 8058412C  3C 60 80 6C */	lis r3, msg_no_1648@ha /* 0x806C1884@ha */
/* 80584130  57 BF 10 3A */	slwi r31, r29, 2
/* 80584134  38 63 18 84 */	addi r3, r3, msg_no_1648@l /* 0x806C1884@l */
/* 80584138  7C 63 F8 2E */	lwzx r3, r3, r31
/* 8058413C  4B FF DC 4D */	bl aNSC_get_msg_no
/* 80584140  7C 65 1B 78 */	mr r5, r3
/* 80584144  7F C3 F3 78 */	mr r3, r30
/* 80584148  7F 64 DB 78 */	mr r4, r27
/* 8058414C  4B FF DC C5 */	bl aNSC_ChangeMsgData
/* 80584150  7F C3 F3 78 */	mr r3, r30
/* 80584154  4B E3 CB D5 */	bl mMsg_Set_ForceNext
/* 80584158  3C 80 80 6C */	lis r4, next_act_idx_1649@ha /* 0x806C1890@ha */
/* 8058415C  7F 63 DB 78 */	mr r3, r27
/* 80584160  38 A4 18 90 */	addi r5, r4, next_act_idx_1649@l /* 0x806C1890@l */
/* 80584164  7F 84 E3 78 */	mr r4, r28
/* 80584168  7C A5 F8 2E */	lwzx r5, r5, r31
/* 8058416C  48 00 1E 55 */	bl aNSC_setupAction
lbl_80584170:
/* 80584170  39 61 00 20 */	addi r11, r1, 0x20
/* 80584174  4B B1 6D A5 */	bl func_8009AF18
/* 80584178  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058417C  7C 08 03 A6 */	mtlr r0
/* 80584180  38 21 00 20 */	addi r1, r1, 0x20
/* 80584184  4E 80 00 20 */	blr 
