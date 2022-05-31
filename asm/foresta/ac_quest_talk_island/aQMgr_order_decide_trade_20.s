lbl_8048F1B0:
/* 8048F1B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048F1B4  7C 08 02 A6 */	mflr r0
/* 8048F1B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048F1BC  39 61 00 20 */	addi r11, r1, 0x20
/* 8048F1C0  4B C0 BD 15 */	bl func_8009AED4
/* 8048F1C4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8048F1C8  3C A0 81 1D */	lis r5, l_normal_info@ha /* 0x811CEBF0@ha */
/* 8048F1CC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8048F1D0  A0 C3 08 E4 */	lhz r6, 0x8e4(r3)
/* 8048F1D4  3C 84 00 02 */	addis r4, r4, 2
/* 8048F1D8  3B C5 EB F0 */	addi r30, r5, l_normal_info@l /* 0x811CEBF0@l */
/* 8048F1DC  83 A4 61 3C */	lwz r29, 0x613c(r4)
/* 8048F1E0  3B FE 00 14 */	addi r31, r30, 0x14
/* 8048F1E4  7F E3 FB 78 */	mr r3, r31
/* 8048F1E8  80 BD 00 88 */	lwz r5, 0x88(r29)
/* 8048F1EC  38 9D 00 68 */	addi r4, r29, 0x68
/* 8048F1F0  4B FF EE 65 */	bl aQMgr_get_cloth
/* 8048F1F4  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8048F1F8  3C 80 81 1D */	lis r4, l_normal_info@ha /* 0x811CEBF0@ha */
/* 8048F1FC  38 84 EB F0 */	addi r4, r4, l_normal_info@l /* 0x811CEBF0@l */
/* 8048F200  28 00 00 00 */	cmplwi r0, 0
/* 8048F204  90 64 00 0C */	stw r3, 0xc(r4)
/* 8048F208  41 82 00 1C */	beq lbl_8048F224
/* 8048F20C  2C 03 FF FF */	cmpwi r3, -1
/* 8048F210  41 82 00 14 */	beq lbl_8048F224
/* 8048F214  A0 7E 00 14 */	lhz r3, 0x14(r30)
/* 8048F218  38 80 00 00 */	li r4, 0
/* 8048F21C  4B F5 44 19 */	bl mQst_SetItemNameStr
/* 8048F220  48 00 00 14 */	b lbl_8048F234
lbl_8048F224:
/* 8048F224  38 60 00 00 */	li r3, 0
/* 8048F228  38 00 FF FF */	li r0, -1
/* 8048F22C  B0 7E 00 14 */	sth r3, 0x14(r30)
/* 8048F230  90 1E 00 0C */	stw r0, 0xc(r30)
lbl_8048F234:
/* 8048F234  4B F4 63 01 */	bl mNpc_GetRandomBestFtr
/* 8048F238  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8048F23C  7C 7F 1B 78 */	mr r31, r3
/* 8048F240  41 82 00 10 */	beq lbl_8048F250
/* 8048F244  38 80 00 02 */	li r4, 2
/* 8048F248  4B F5 43 ED */	bl mQst_SetItemNameStr
/* 8048F24C  B3 FE 00 18 */	sth r31, 0x18(r30)
lbl_8048F250:
/* 8048F250  7F A3 EB 78 */	mr r3, r29
/* 8048F254  4B F4 68 65 */	bl mNpc_GetPlayerFtr
/* 8048F258  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 8048F25C  B0 7E 00 1A */	sth r3, 0x1a(r30)
/* 8048F260  2C 00 00 01 */	cmpwi r0, 1
/* 8048F264  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8048F268  41 82 00 0C */	beq lbl_8048F274
/* 8048F26C  2C 00 00 03 */	cmpwi r0, 3
/* 8048F270  40 82 00 10 */	bne lbl_8048F280
lbl_8048F274:
/* 8048F274  38 80 00 03 */	li r4, 3
/* 8048F278  4B F5 43 BD */	bl mQst_SetItemNameStr
/* 8048F27C  48 00 00 0C */	b lbl_8048F288
lbl_8048F280:
/* 8048F280  38 00 00 00 */	li r0, 0
/* 8048F284  B0 1E 00 1A */	sth r0, 0x1a(r30)
lbl_8048F288:
/* 8048F288  38 60 00 64 */	li r3, 0x64
/* 8048F28C  38 80 0B B8 */	li r4, 0xbb8
/* 8048F290  38 A0 00 01 */	li r5, 1
/* 8048F294  4B FF F0 ED */	bl aQMgr_order_decide_trade_common_pay
/* 8048F298  39 61 00 20 */	addi r11, r1, 0x20
/* 8048F29C  4B C0 BC 85 */	bl func_8009AF20
/* 8048F2A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048F2A4  7C 08 03 A6 */	mtlr r0
/* 8048F2A8  38 21 00 20 */	addi r1, r1, 0x20
/* 8048F2AC  4E 80 00 20 */	blr 
