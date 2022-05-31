lbl_8054901C:
/* 8054901C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80549020  7C 08 02 A6 */	mflr r0
/* 80549024  90 01 00 24 */	stw r0, 0x24(r1)
/* 80549028  39 61 00 20 */	addi r11, r1, 0x20
/* 8054902C  4B B5 1E A1 */	bl func_8009AECC
/* 80549030  7C 7B 1B 78 */	mr r27, r3
/* 80549034  7C 9C 23 78 */	mr r28, r4
/* 80549038  4B E7 66 71 */	bl func_803BF6A8
/* 8054903C  7C 7E 1B 78 */	mr r30, r3
/* 80549040  4B E7 67 25 */	bl mMsg_Check_not_series_main_wait
/* 80549044  2C 03 00 01 */	cmpwi r3, 1
/* 80549048  40 82 00 84 */	bne lbl_805490CC
/* 8054904C  80 7C 1F 60 */	lwz r3, 0x1f60(r28)
/* 80549050  A3 E3 00 00 */	lhz r31, 0(r3)
/* 80549054  28 1F 00 00 */	cmplwi r31, 0
/* 80549058  40 82 00 0C */	bne lbl_80549064
/* 8054905C  3B A0 00 00 */	li r29, 0
/* 80549060  48 00 00 28 */	b lbl_80549088
lbl_80549064:
/* 80549064  88 A3 00 02 */	lbz r5, 2(r3)
/* 80549068  7F E3 FB 78 */	mr r3, r31
/* 8054906C  38 80 00 01 */	li r4, 1
/* 80549070  30 05 FF FF */	addic r0, r5, -1
/* 80549074  7C A0 29 10 */	subfe r5, r0, r5
/* 80549078  38 05 00 01 */	addi r0, r5, 1
/* 8054907C  7C 1D 03 78 */	mr r29, r0
/* 80549080  4B FF D0 01 */	bl aNSC_set_item_name_str
/* 80549084  B3 FB 09 BA */	sth r31, 0x9ba(r27)
lbl_80549088:
/* 80549088  3C 60 80 6A */	lis r3, msg_no_1621@ha /* 0x806A4B68@ha */
/* 8054908C  57 BF 10 3A */	slwi r31, r29, 2
/* 80549090  38 63 4B 68 */	addi r3, r3, msg_no_1621@l /* 0x806A4B68@l */
/* 80549094  7C 63 F8 2E */	lwzx r3, r3, r31
/* 80549098  4B FF DC 4D */	bl aNSC_get_msg_no
/* 8054909C  7C 65 1B 78 */	mr r5, r3
/* 805490A0  7F C3 F3 78 */	mr r3, r30
/* 805490A4  7F 64 DB 78 */	mr r4, r27
/* 805490A8  4B FF DC C5 */	bl aNSC_ChangeMsgData
/* 805490AC  7F C3 F3 78 */	mr r3, r30
/* 805490B0  4B E7 7C 79 */	bl mMsg_Set_ForceNext
/* 805490B4  3C 80 80 6A */	lis r4, next_act_idx_1622@ha /* 0x806A4B74@ha */
/* 805490B8  7F 63 DB 78 */	mr r3, r27
/* 805490BC  38 A4 4B 74 */	addi r5, r4, next_act_idx_1622@l /* 0x806A4B74@l */
/* 805490C0  7F 84 E3 78 */	mr r4, r28
/* 805490C4  7C A5 F8 2E */	lwzx r5, r5, r31
/* 805490C8  48 00 1E 55 */	bl aNSC_setupAction
lbl_805490CC:
/* 805490CC  39 61 00 20 */	addi r11, r1, 0x20
/* 805490D0  4B B5 1E 49 */	bl func_8009AF18
/* 805490D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805490D8  7C 08 03 A6 */	mtlr r0
/* 805490DC  38 21 00 20 */	addi r1, r1, 0x20
/* 805490E0  4E 80 00 20 */	blr 
