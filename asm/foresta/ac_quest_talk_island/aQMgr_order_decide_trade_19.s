lbl_8048F060:
/* 8048F060  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048F064  7C 08 02 A6 */	mflr r0
/* 8048F068  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048F06C  39 61 00 20 */	addi r11, r1, 0x20
/* 8048F070  4B C0 BE 61 */	bl func_8009AED0
/* 8048F074  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8048F078  3C 80 81 1D */	lis r4, l_normal_info@ha /* 0x811CEBF0@ha */
/* 8048F07C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8048F080  3C 63 00 02 */	addis r3, r3, 2
/* 8048F084  3B C4 EB F0 */	addi r30, r4, l_normal_info@l /* 0x811CEBF0@l */
/* 8048F088  83 A3 61 3C */	lwz r29, 0x613c(r3)
/* 8048F08C  38 7E 00 14 */	addi r3, r30, 0x14
/* 8048F090  7F A4 EB 78 */	mr r4, r29
/* 8048F094  4B FF EE 55 */	bl aQMgr_get_normal_ftr_idx
/* 8048F098  3C 80 81 1D */	lis r4, l_normal_info@ha /* 0x811CEBF0@ha */
/* 8048F09C  2C 03 FF FF */	cmpwi r3, -1
/* 8048F0A0  38 84 EB F0 */	addi r4, r4, l_normal_info@l /* 0x811CEBF0@l */
/* 8048F0A4  90 64 00 0C */	stw r3, 0xc(r4)
/* 8048F0A8  41 82 00 28 */	beq lbl_8048F0D0
/* 8048F0AC  A0 7E 00 14 */	lhz r3, 0x14(r30)
/* 8048F0B0  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 8048F0B4  2C 00 00 01 */	cmpwi r0, 1
/* 8048F0B8  41 82 00 0C */	beq lbl_8048F0C4
/* 8048F0BC  2C 00 00 03 */	cmpwi r0, 3
/* 8048F0C0  40 82 00 10 */	bne lbl_8048F0D0
lbl_8048F0C4:
/* 8048F0C4  38 80 00 00 */	li r4, 0
/* 8048F0C8  4B F5 45 6D */	bl mQst_SetItemNameStr
/* 8048F0CC  48 00 00 14 */	b lbl_8048F0E0
lbl_8048F0D0:
/* 8048F0D0  38 60 FF FF */	li r3, -1
/* 8048F0D4  38 00 00 00 */	li r0, 0
/* 8048F0D8  90 7E 00 0C */	stw r3, 0xc(r30)
/* 8048F0DC  B0 1E 00 14 */	sth r0, 0x14(r30)
lbl_8048F0E0:
/* 8048F0E0  7F A3 EB 78 */	mr r3, r29
/* 8048F0E4  38 9E 00 16 */	addi r4, r30, 0x16
/* 8048F0E8  38 A0 00 00 */	li r5, 0
/* 8048F0EC  4B F4 66 19 */	bl mNpc_GetOtherBestFtr
/* 8048F0F0  7C 7C 1B 79 */	or. r28, r3, r3
/* 8048F0F4  41 82 00 24 */	beq lbl_8048F118
/* 8048F0F8  A0 7E 00 16 */	lhz r3, 0x16(r30)
/* 8048F0FC  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 8048F100  2C 00 00 01 */	cmpwi r0, 1
/* 8048F104  41 82 00 0C */	beq lbl_8048F110
/* 8048F108  2C 00 00 03 */	cmpwi r0, 3
/* 8048F10C  40 82 00 0C */	bne lbl_8048F118
lbl_8048F110:
/* 8048F110  38 80 00 01 */	li r4, 1
/* 8048F114  4B F5 45 21 */	bl mQst_SetItemNameStr
lbl_8048F118:
/* 8048F118  4B F4 64 1D */	bl mNpc_GetRandomBestFtr
/* 8048F11C  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8048F120  7C 7F 1B 78 */	mr r31, r3
/* 8048F124  41 82 00 10 */	beq lbl_8048F134
/* 8048F128  38 80 00 02 */	li r4, 2
/* 8048F12C  4B F5 45 09 */	bl mQst_SetItemNameStr
/* 8048F130  B3 FE 00 18 */	sth r31, 0x18(r30)
lbl_8048F134:
/* 8048F134  7F A3 EB 78 */	mr r3, r29
/* 8048F138  4B F4 69 81 */	bl mNpc_GetPlayerFtr
/* 8048F13C  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 8048F140  B0 7E 00 1A */	sth r3, 0x1a(r30)
/* 8048F144  2C 00 00 01 */	cmpwi r0, 1
/* 8048F148  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8048F14C  41 82 00 0C */	beq lbl_8048F158
/* 8048F150  2C 00 00 03 */	cmpwi r0, 3
/* 8048F154  40 82 00 10 */	bne lbl_8048F164
lbl_8048F158:
/* 8048F158  38 80 00 03 */	li r4, 3
/* 8048F15C  4B F5 44 D9 */	bl mQst_SetItemNameStr
/* 8048F160  48 00 00 0C */	b lbl_8048F16C
lbl_8048F164:
/* 8048F164  38 00 00 00 */	li r0, 0
/* 8048F168  B0 1E 00 1A */	sth r0, 0x1a(r30)
lbl_8048F16C:
/* 8048F16C  28 1C 00 00 */	cmplwi r28, 0
/* 8048F170  41 82 00 18 */	beq lbl_8048F188
/* 8048F174  4B F3 05 35 */	bl func_803BF6A8
/* 8048F178  7F 85 E3 78 */	mr r5, r28
/* 8048F17C  38 80 00 12 */	li r4, 0x12
/* 8048F180  38 C0 00 08 */	li r6, 8
/* 8048F184  4B F3 0A D1 */	bl mMsg_Set_free_str
lbl_8048F188:
/* 8048F188  38 60 00 64 */	li r3, 0x64
/* 8048F18C  38 80 0B B8 */	li r4, 0xbb8
/* 8048F190  38 A0 00 01 */	li r5, 1
/* 8048F194  4B FF F1 ED */	bl aQMgr_order_decide_trade_common_pay
/* 8048F198  39 61 00 20 */	addi r11, r1, 0x20
/* 8048F19C  4B C0 BD 81 */	bl func_8009AF1C
/* 8048F1A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048F1A4  7C 08 03 A6 */	mtlr r0
/* 8048F1A8  38 21 00 20 */	addi r1, r1, 0x20
/* 8048F1AC  4E 80 00 20 */	blr 
