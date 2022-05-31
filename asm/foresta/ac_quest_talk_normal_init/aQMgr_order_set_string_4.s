lbl_8049538C:
/* 8049538C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80495390  7C 08 02 A6 */	mflr r0
/* 80495394  90 01 00 34 */	stw r0, 0x34(r1)
/* 80495398  39 61 00 30 */	addi r11, r1, 0x30
/* 8049539C  4B C0 5B 29 */	bl func_8009AEC4
/* 804953A0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 804953A4  3C 80 80 69 */	lis r4, constellation_table@ha /* 0x8068B8F4@ha */
/* 804953A8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 804953AC  7C 7A 1B 78 */	mr r26, r3
/* 804953B0  3C 65 00 02 */	addis r3, r5, 2
/* 804953B4  38 04 B8 F4 */	addi r0, r4, constellation_table@l /* 0x8068B8F4@l */
/* 804953B8  83 E3 61 3C */	lwz r31, 0x613c(r3)
/* 804953BC  7C 1E 03 78 */	mr r30, r0
/* 804953C0  3B A0 00 00 */	li r29, 0
/* 804953C4  3B 20 00 00 */	li r25, 0
/* 804953C8  8B 9F 10 A6 */	lbz r28, 0x10a6(r31)
/* 804953CC  8B 7F 10 A7 */	lbz r27, 0x10a7(r31)
lbl_804953D0:
/* 804953D0  88 DA 00 00 */	lbz r6, 0(r26)
/* 804953D4  28 06 00 0C */	cmplwi r6, 0xc
/* 804953D8  40 80 00 30 */	bge lbl_80495408
/* 804953DC  3C 80 80 69 */	lis r4, base_str_no_1590@ha /* 0x8068B90C@ha */
/* 804953E0  3C 60 80 64 */	lis r3, lit_1621@ha /* 0x80644C94@ha */
/* 804953E4  38 A4 B9 0C */	addi r5, r4, base_str_no_1590@l /* 0x8068B90C@l */
/* 804953E8  3C E0 81 1D */	lis r7, l_aqmgr_str@ha /* 0x811CEC94@ha */
/* 804953EC  38 83 4C 94 */	addi r4, r3, lit_1621@l /* 0x80644C94@l */
/* 804953F0  7C A5 C8 2E */	lwzx r5, r5, r25
/* 804953F4  C0 24 00 00 */	lfs f1, 0(r4)
/* 804953F8  38 67 EC 94 */	addi r3, r7, l_aqmgr_str@l /* 0x811CEC94@l */
/* 804953FC  7F A4 EB 78 */	mr r4, r29
/* 80495400  4B FF FC 61 */	bl aQMgr_set_random_string
/* 80495404  48 00 00 30 */	b lbl_80495434
lbl_80495408:
/* 80495408  3C 80 80 69 */	lis r4, base_str_no_1590@ha /* 0x8068B90C@ha */
/* 8049540C  3C 60 80 64 */	lis r3, lit_1622@ha /* 0x80644C98@ha */
/* 80495410  38 A4 B9 0C */	addi r5, r4, base_str_no_1590@l /* 0x8068B90C@l */
/* 80495414  3C C0 81 1D */	lis r6, l_aqmgr_str@ha /* 0x811CEC94@ha */
/* 80495418  38 83 4C 98 */	addi r4, r3, lit_1622@l /* 0x80644C98@l */
/* 8049541C  7C A5 C8 2E */	lwzx r5, r5, r25
/* 80495420  C0 24 00 00 */	lfs f1, 0(r4)
/* 80495424  38 66 EC 94 */	addi r3, r6, l_aqmgr_str@l /* 0x811CEC94@l */
/* 80495428  7F A4 EB 78 */	mr r4, r29
/* 8049542C  38 C0 FF FF */	li r6, -1
/* 80495430  4B FF FC 31 */	bl aQMgr_set_random_string
lbl_80495434:
/* 80495434  3B BD 00 01 */	addi r29, r29, 1
/* 80495438  98 7A 00 00 */	stb r3, 0(r26)
/* 8049543C  2C 1D 00 02 */	cmpwi r29, 2
/* 80495440  3B 5A 00 01 */	addi r26, r26, 1
/* 80495444  3B 39 00 04 */	addi r25, r25, 4
/* 80495448  41 80 FF 88 */	blt lbl_804953D0
/* 8049544C  38 00 00 0C */	li r0, 0xc
/* 80495450  38 A0 00 00 */	li r5, 0
/* 80495454  38 80 00 00 */	li r4, 0
/* 80495458  7C 09 03 A6 */	mtctr r0
lbl_8049545C:
/* 8049545C  88 7F 10 A6 */	lbz r3, 0x10a6(r31)
/* 80495460  88 1E 00 00 */	lbz r0, 0(r30)
/* 80495464  7C 03 00 40 */	cmplw r3, r0
/* 80495468  41 80 00 18 */	blt lbl_80495480
/* 8049546C  40 82 00 1C */	bne lbl_80495488
/* 80495470  88 7F 10 A7 */	lbz r3, 0x10a7(r31)
/* 80495474  88 1E 00 01 */	lbz r0, 1(r30)
/* 80495478  7C 03 00 40 */	cmplw r3, r0
/* 8049547C  41 81 00 0C */	bgt lbl_80495488
lbl_80495480:
/* 80495480  7C 85 23 78 */	mr r5, r4
/* 80495484  48 00 00 10 */	b lbl_80495494
lbl_80495488:
/* 80495488  3B DE 00 02 */	addi r30, r30, 2
/* 8049548C  38 84 00 01 */	addi r4, r4, 1
/* 80495490  42 00 FF CC */	bdnz lbl_8049545C
lbl_80495494:
/* 80495494  34 A5 FF FD */	addic. r5, r5, -3
/* 80495498  40 80 00 08 */	bge lbl_804954A0
/* 8049549C  38 A5 00 0C */	addi r5, r5, 0xc
lbl_804954A0:
/* 804954A0  3C 60 81 1D */	lis r3, l_aqmgr_str@ha /* 0x811CEC94@ha */
/* 804954A4  38 A5 04 94 */	addi r5, r5, 0x494
/* 804954A8  38 63 EC 94 */	addi r3, r3, l_aqmgr_str@l /* 0x811CEC94@l */
/* 804954AC  38 80 00 10 */	li r4, 0x10
/* 804954B0  4B F5 98 1D */	bl mString_Load_StringFromRom
/* 804954B4  4B F2 A1 F5 */	bl func_803BF6A8
/* 804954B8  3C A0 81 1D */	lis r5, l_aqmgr_str@ha /* 0x811CEC94@ha */
/* 804954BC  38 80 00 02 */	li r4, 2
/* 804954C0  38 A5 EC 94 */	addi r5, r5, l_aqmgr_str@l /* 0x811CEC94@l */
/* 804954C4  38 C0 00 10 */	li r6, 0x10
/* 804954C8  4B F2 A9 0D */	bl mMsg_Set_item_str
/* 804954CC  3C 60 81 1D */	lis r3, l_aqmgr_str@ha /* 0x811CEC94@ha */
/* 804954D0  38 80 00 10 */	li r4, 0x10
/* 804954D4  38 63 EC 94 */	addi r3, r3, l_aqmgr_str@l /* 0x811CEC94@l */
/* 804954D8  38 A0 00 20 */	li r5, 0x20
/* 804954DC  4B F2 55 6D */	bl mem_clear
/* 804954E0  28 1C 00 01 */	cmplwi r28, 1
/* 804954E4  41 80 00 0C */	blt lbl_804954F0
/* 804954E8  28 1C 00 0C */	cmplwi r28, 0xc
/* 804954EC  40 81 00 08 */	ble lbl_804954F4
lbl_804954F0:
/* 804954F0  3B 80 00 01 */	li r28, 1
lbl_804954F4:
/* 804954F4  38 1C FF FF */	addi r0, r28, -1
/* 804954F8  3C 60 81 1D */	lis r3, l_aqmgr_str@ha /* 0x811CEC94@ha */
/* 804954FC  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 80495500  38 80 00 10 */	li r4, 0x10
/* 80495504  38 63 EC 94 */	addi r3, r3, l_aqmgr_str@l /* 0x811CEC94@l */
/* 80495508  38 A5 06 6D */	addi r5, r5, 0x66d
/* 8049550C  4B F5 97 C1 */	bl mString_Load_StringFromRom
/* 80495510  4B F2 A1 99 */	bl func_803BF6A8
/* 80495514  3C A0 81 1D */	lis r5, l_aqmgr_str@ha /* 0x811CEC94@ha */
/* 80495518  38 80 00 03 */	li r4, 3
/* 8049551C  38 A5 EC 94 */	addi r5, r5, l_aqmgr_str@l /* 0x811CEC94@l */
/* 80495520  38 C0 00 10 */	li r6, 0x10
/* 80495524  4B F2 A8 B1 */	bl mMsg_Set_item_str
/* 80495528  3C 60 81 1D */	lis r3, l_aqmgr_str@ha /* 0x811CEC94@ha */
/* 8049552C  38 80 00 10 */	li r4, 0x10
/* 80495530  38 63 EC 94 */	addi r3, r3, l_aqmgr_str@l /* 0x811CEC94@l */
/* 80495534  38 A0 00 20 */	li r5, 0x20
/* 80495538  4B F2 55 11 */	bl mem_clear
/* 8049553C  28 1B 00 01 */	cmplwi r27, 1
/* 80495540  41 80 00 0C */	blt lbl_8049554C
/* 80495544  28 1B 00 1F */	cmplwi r27, 0x1f
/* 80495548  40 81 00 08 */	ble lbl_80495550
lbl_8049554C:
/* 8049554C  3B 60 00 01 */	li r27, 1
lbl_80495550:
/* 80495550  38 1B FF FF */	addi r0, r27, -1
/* 80495554  3C 60 81 1D */	lis r3, l_aqmgr_str@ha /* 0x811CEC94@ha */
/* 80495558  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8049555C  38 80 00 10 */	li r4, 0x10
/* 80495560  38 63 EC 94 */	addi r3, r3, l_aqmgr_str@l /* 0x811CEC94@l */
/* 80495564  38 A5 06 4E */	addi r5, r5, 0x64e
/* 80495568  4B F5 97 65 */	bl mString_Load_StringFromRom
/* 8049556C  4B F2 A1 3D */	bl func_803BF6A8
/* 80495570  3C A0 81 1D */	lis r5, l_aqmgr_str@ha /* 0x811CEC94@ha */
/* 80495574  38 80 00 04 */	li r4, 4
/* 80495578  38 A5 EC 94 */	addi r5, r5, l_aqmgr_str@l /* 0x811CEC94@l */
/* 8049557C  38 C0 00 10 */	li r6, 0x10
/* 80495580  4B F2 A8 55 */	bl mMsg_Set_item_str
/* 80495584  39 61 00 30 */	addi r11, r1, 0x30
/* 80495588  4B C0 59 89 */	bl func_8009AF10
/* 8049558C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80495590  7C 08 03 A6 */	mtlr r0
/* 80495594  38 21 00 30 */	addi r1, r1, 0x30
/* 80495598  4E 80 00 20 */	blr 
