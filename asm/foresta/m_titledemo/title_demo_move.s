lbl_803F2208:
/* 803F2208  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F220C  7C 08 02 A6 */	mflr r0
/* 803F2210  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F2214  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803F2218  7C 7F 1B 78 */	mr r31, r3
/* 803F221C  4B FA 8C 9D */	bl mEv_CheckTitleDemo
/* 803F2220  2C 03 00 00 */	cmpwi r3, 0
/* 803F2224  40 81 00 38 */	ble lbl_803F225C
/* 803F2228  3C 60 81 17 */	lis r3, data_81171540@ha /* 0x81171540@ha */
/* 803F222C  38 63 15 40 */	addi r3, r3, data_81171540@l /* 0x81171540@l */
/* 803F2230  80 63 00 00 */	lwz r3, 0(r3)
/* 803F2234  4B FF FD F1 */	bl set_player_demo_keydata
/* 803F2238  3C 60 81 17 */	lis r3, data_81171540@ha /* 0x81171540@ha */
/* 803F223C  38 83 15 40 */	addi r4, r3, data_81171540@l /* 0x81171540@l */
/* 803F2240  80 64 00 00 */	lwz r3, 0(r4)
/* 803F2244  38 03 00 01 */	addi r0, r3, 1
/* 803F2248  2C 00 0E 10 */	cmpwi r0, 0xe10
/* 803F224C  90 04 00 00 */	stw r0, 0(r4)
/* 803F2250  41 80 00 0C */	blt lbl_803F225C
/* 803F2254  7F E3 FB 78 */	mr r3, r31
/* 803F2258  4B FF FF 79 */	bl mTD_game_end_init
lbl_803F225C:
/* 803F225C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F2260  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803F2264  7C 08 03 A6 */	mtlr r0
/* 803F2268  38 21 00 10 */	addi r1, r1, 0x10
/* 803F226C  4E 80 00 20 */	blr 
