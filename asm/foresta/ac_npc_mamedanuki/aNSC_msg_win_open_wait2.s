lbl_8055D02C:
/* 8055D02C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055D030  7C 08 02 A6 */	mflr r0
/* 8055D034  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055D038  39 61 00 20 */	addi r11, r1, 0x20
/* 8055D03C  4B B3 DE 91 */	bl func_8009AECC
/* 8055D040  7C 7B 1B 78 */	mr r27, r3
/* 8055D044  7C 9C 23 78 */	mr r28, r4
/* 8055D048  4B E6 26 61 */	bl func_803BF6A8
/* 8055D04C  7C 7E 1B 78 */	mr r30, r3
/* 8055D050  4B E6 27 15 */	bl mMsg_Check_not_series_main_wait
/* 8055D054  2C 03 00 01 */	cmpwi r3, 1
/* 8055D058  40 82 00 84 */	bne lbl_8055D0DC
/* 8055D05C  80 7C 1F 60 */	lwz r3, 0x1f60(r28)
/* 8055D060  A3 E3 00 00 */	lhz r31, 0(r3)
/* 8055D064  28 1F 00 00 */	cmplwi r31, 0
/* 8055D068  40 82 00 0C */	bne lbl_8055D074
/* 8055D06C  3B A0 00 00 */	li r29, 0
/* 8055D070  48 00 00 28 */	b lbl_8055D098
lbl_8055D074:
/* 8055D074  88 A3 00 02 */	lbz r5, 2(r3)
/* 8055D078  7F E3 FB 78 */	mr r3, r31
/* 8055D07C  38 80 00 01 */	li r4, 1
/* 8055D080  30 05 FF FF */	addic r0, r5, -1
/* 8055D084  7C A0 29 10 */	subfe r5, r0, r5
/* 8055D088  38 05 00 01 */	addi r0, r5, 1
/* 8055D08C  7C 1D 03 78 */	mr r29, r0
/* 8055D090  4B FF D8 71 */	bl aNSC_set_item_name_str
/* 8055D094  B3 FB 09 BA */	sth r31, 0x9ba(r27)
lbl_8055D098:
/* 8055D098  3C 60 80 6B */	lis r3, msg_no_1505@ha /* 0x806A9F0C@ha */
/* 8055D09C  57 BF 10 3A */	slwi r31, r29, 2
/* 8055D0A0  38 63 9F 0C */	addi r3, r3, msg_no_1505@l /* 0x806A9F0C@l */
/* 8055D0A4  7C 63 F8 2E */	lwzx r3, r3, r31
/* 8055D0A8  4B FF E5 35 */	bl aNSC_get_msg_no
/* 8055D0AC  7C 65 1B 78 */	mr r5, r3
/* 8055D0B0  7F C3 F3 78 */	mr r3, r30
/* 8055D0B4  7F 64 DB 78 */	mr r4, r27
/* 8055D0B8  4B FF E5 9D */	bl aNSC_ChangeMsgData
/* 8055D0BC  7F C3 F3 78 */	mr r3, r30
/* 8055D0C0  4B E6 3C 69 */	bl mMsg_Set_ForceNext
/* 8055D0C4  3C 80 80 6B */	lis r4, next_act_idx_1506@ha /* 0x806A9F18@ha */
/* 8055D0C8  7F 63 DB 78 */	mr r3, r27
/* 8055D0CC  38 A4 9F 18 */	addi r5, r4, next_act_idx_1506@l /* 0x806A9F18@l */
/* 8055D0D0  7F 84 E3 78 */	mr r4, r28
/* 8055D0D4  7C A5 F8 2E */	lwzx r5, r5, r31
/* 8055D0D8  48 00 1C F9 */	bl aNSC_setupAction
lbl_8055D0DC:
/* 8055D0DC  39 61 00 20 */	addi r11, r1, 0x20
/* 8055D0E0  4B B3 DE 39 */	bl func_8009AF18
/* 8055D0E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055D0E8  7C 08 03 A6 */	mtlr r0
/* 8055D0EC  38 21 00 20 */	addi r1, r1, 0x20
/* 8055D0F0  4E 80 00 20 */	blr 
