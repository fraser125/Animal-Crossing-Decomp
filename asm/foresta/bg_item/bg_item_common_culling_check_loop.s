lbl_804BD38C:
/* 804BD38C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804BD390  7C 08 02 A6 */	mflr r0
/* 804BD394  90 01 00 34 */	stw r0, 0x34(r1)
/* 804BD398  39 61 00 30 */	addi r11, r1, 0x30
/* 804BD39C  4B BD DB 2D */	bl func_8009AEC8
/* 804BD3A0  3C C0 80 66 */	lis r6, data_8065F050@ha /* 0x8065F050@ha */
/* 804BD3A4  7C 7A 1B 78 */	mr r26, r3
/* 804BD3A8  7C 9B 23 78 */	mr r27, r4
/* 804BD3AC  7C BC 2B 78 */	mr r28, r5
/* 804BD3B0  3B A6 F0 50 */	addi r29, r6, data_8065F050@l /* 0x8065F050@l */
/* 804BD3B4  3B C0 00 00 */	li r30, 0
/* 804BD3B8  3B E0 00 01 */	li r31, 1
/* 804BD3BC  48 00 00 48 */	b lbl_804BD404
lbl_804BD3C0:
/* 804BD3C0  7F 83 E3 78 */	mr r3, r28
/* 804BD3C4  4B F4 EE 95 */	bl Matrix_put
/* 804BD3C8  7F A3 EB 78 */	mr r3, r29
/* 804BD3CC  38 81 00 08 */	addi r4, r1, 8
/* 804BD3D0  4B F5 00 35 */	bl Matrix_Position
/* 804BD3D4  7F 43 D3 78 */	mr r3, r26
/* 804BD3D8  7F 64 DB 78 */	mr r4, r27
/* 804BD3DC  38 A1 00 08 */	addi r5, r1, 8
/* 804BD3E0  4B FF FE F1 */	bl bg_item_common_culling_check
/* 804BD3E4  2C 03 00 01 */	cmpwi r3, 1
/* 804BD3E8  40 82 00 0C */	bne lbl_804BD3F4
/* 804BD3EC  9B DC 00 46 */	stb r30, 0x46(r28)
/* 804BD3F0  48 00 00 08 */	b lbl_804BD3F8
lbl_804BD3F4:
/* 804BD3F4  9B FC 00 46 */	stb r31, 0x46(r28)
lbl_804BD3F8:
/* 804BD3F8  A8 1C 00 44 */	lha r0, 0x44(r28)
/* 804BD3FC  1C 00 00 48 */	mulli r0, r0, 0x48
/* 804BD400  7F 9C 02 14 */	add r28, r28, r0
lbl_804BD404:
/* 804BD404  A8 1C 00 44 */	lha r0, 0x44(r28)
/* 804BD408  2C 00 01 00 */	cmpwi r0, 0x100
/* 804BD40C  40 82 FF B4 */	bne lbl_804BD3C0
/* 804BD410  39 61 00 30 */	addi r11, r1, 0x30
/* 804BD414  4B BD DB 01 */	bl func_8009AF14
/* 804BD418  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804BD41C  7C 08 03 A6 */	mtlr r0
/* 804BD420  38 21 00 30 */	addi r1, r1, 0x30
/* 804BD424  4E 80 00 20 */	blr 
