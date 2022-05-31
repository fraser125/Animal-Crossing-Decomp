lbl_8051E4B0:
/* 8051E4B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051E4B4  7C 08 02 A6 */	mflr r0
/* 8051E4B8  38 80 00 0D */	li r4, 0xd
/* 8051E4BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051E4C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051E4C4  93 C1 00 08 */	stw r30, 8(r1)
/* 8051E4C8  7C 7E 1B 78 */	mr r30, r3
/* 8051E4CC  38 60 00 44 */	li r3, 0x44
/* 8051E4D0  4B E7 F8 FD */	bl mEv_get_save_area
/* 8051E4D4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8051E4D8  7C 7F 1B 78 */	mr r31, r3
/* 8051E4DC  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8051E4E0  38 80 00 00 */	li r4, 0
/* 8051E4E4  3C 63 00 02 */	addis r3, r3, 2
/* 8051E4E8  38 A0 00 00 */	li r5, 0
/* 8051E4EC  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8051E4F0  4B EC 24 DD */	bl mPr_GetPossessionItemSumWithCond
/* 8051E4F4  28 03 00 00 */	cmplwi r3, 0
/* 8051E4F8  40 82 00 20 */	bne lbl_8051E518
/* 8051E4FC  4B EA 11 AD */	bl func_803BF6A8
/* 8051E500  38 80 24 08 */	li r4, 0x2408
/* 8051E504  4B EA 1A C1 */	bl mMsg_Set_continue_msg_num
/* 8051E508  7F C3 F3 78 */	mr r3, r30
/* 8051E50C  38 80 00 00 */	li r4, 0
/* 8051E510  48 00 03 29 */	bl aEDZ_change_talk_proc
/* 8051E514  48 00 00 30 */	b lbl_8051E544
lbl_8051E518:
/* 8051E518  4B EA 11 91 */	bl func_803BF6A8
/* 8051E51C  38 80 24 04 */	li r4, 0x2404
/* 8051E520  4B EA 1A A5 */	bl mMsg_Set_continue_msg_num
/* 8051E524  7F C3 F3 78 */	mr r3, r30
/* 8051E528  38 80 00 03 */	li r4, 3
/* 8051E52C  48 00 03 0D */	bl aEDZ_change_talk_proc
/* 8051E530  38 00 00 01 */	li r0, 1
/* 8051E534  B0 1E 09 9C */	sth r0, 0x99c(r30)
/* 8051E538  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8051E53C  60 00 00 04 */	ori r0, r0, 4
/* 8051E540  B0 1F 00 00 */	sth r0, 0(r31)
lbl_8051E544:
/* 8051E544  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051E548  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051E54C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051E550  7C 08 03 A6 */	mtlr r0
/* 8051E554  38 21 00 10 */	addi r1, r1, 0x10
/* 8051E558  4E 80 00 20 */	blr 
