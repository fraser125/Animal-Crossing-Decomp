lbl_804BD428:
/* 804BD428  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804BD42C  7C 08 02 A6 */	mflr r0
/* 804BD430  90 01 00 34 */	stw r0, 0x34(r1)
/* 804BD434  39 61 00 30 */	addi r11, r1, 0x30
/* 804BD438  4B BD DA 91 */	bl func_8009AEC8
/* 804BD43C  3C C0 80 66 */	lis r6, data_8065F050@ha /* 0x8065F050@ha */
/* 804BD440  7C 7A 1B 78 */	mr r26, r3
/* 804BD444  7C 9B 23 78 */	mr r27, r4
/* 804BD448  7C BC 2B 78 */	mr r28, r5
/* 804BD44C  3B A6 F0 50 */	addi r29, r6, data_8065F050@l /* 0x8065F050@l */
/* 804BD450  3B C0 00 00 */	li r30, 0
/* 804BD454  3B E0 00 01 */	li r31, 1
/* 804BD458  48 00 00 48 */	b lbl_804BD4A0
lbl_804BD45C:
/* 804BD45C  7F 83 E3 78 */	mr r3, r28
/* 804BD460  4B F4 ED F9 */	bl Matrix_put
/* 804BD464  7F A3 EB 78 */	mr r3, r29
/* 804BD468  38 81 00 08 */	addi r4, r1, 8
/* 804BD46C  4B F4 FF 99 */	bl Matrix_Position
/* 804BD470  7F 43 D3 78 */	mr r3, r26
/* 804BD474  7F 64 DB 78 */	mr r4, r27
/* 804BD478  38 A1 00 08 */	addi r5, r1, 8
/* 804BD47C  4B FF FE A5 */	bl bg_item_common_culling_check_talk
/* 804BD480  2C 03 00 01 */	cmpwi r3, 1
/* 804BD484  40 82 00 0C */	bne lbl_804BD490
/* 804BD488  9B DC 00 46 */	stb r30, 0x46(r28)
/* 804BD48C  48 00 00 08 */	b lbl_804BD494
lbl_804BD490:
/* 804BD490  9B FC 00 46 */	stb r31, 0x46(r28)
lbl_804BD494:
/* 804BD494  A8 1C 00 44 */	lha r0, 0x44(r28)
/* 804BD498  1C 00 00 48 */	mulli r0, r0, 0x48
/* 804BD49C  7F 9C 02 14 */	add r28, r28, r0
lbl_804BD4A0:
/* 804BD4A0  A8 1C 00 44 */	lha r0, 0x44(r28)
/* 804BD4A4  2C 00 01 00 */	cmpwi r0, 0x100
/* 804BD4A8  40 82 FF B4 */	bne lbl_804BD45C
/* 804BD4AC  39 61 00 30 */	addi r11, r1, 0x30
/* 804BD4B0  4B BD DA 65 */	bl func_8009AF14
/* 804BD4B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804BD4B8  7C 08 03 A6 */	mtlr r0
/* 804BD4BC  38 21 00 30 */	addi r1, r1, 0x30
/* 804BD4C0  4E 80 00 20 */	blr 
