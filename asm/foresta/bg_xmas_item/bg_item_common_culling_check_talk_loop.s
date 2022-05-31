lbl_804CC338:
/* 804CC338  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804CC33C  7C 08 02 A6 */	mflr r0
/* 804CC340  90 01 00 34 */	stw r0, 0x34(r1)
/* 804CC344  39 61 00 30 */	addi r11, r1, 0x30
/* 804CC348  4B BC EB 81 */	bl func_8009AEC8
/* 804CC34C  3C C0 80 66 */	lis r6, data_8065F050@ha /* 0x8065F050@ha */
/* 804CC350  7C 7A 1B 78 */	mr r26, r3
/* 804CC354  7C 9B 23 78 */	mr r27, r4
/* 804CC358  7C BC 2B 78 */	mr r28, r5
/* 804CC35C  3B A6 F0 50 */	addi r29, r6, data_8065F050@l /* 0x8065F050@l */
/* 804CC360  3B C0 00 00 */	li r30, 0
/* 804CC364  3B E0 00 01 */	li r31, 1
/* 804CC368  48 00 00 48 */	b lbl_804CC3B0
lbl_804CC36C:
/* 804CC36C  7F 83 E3 78 */	mr r3, r28
/* 804CC370  4B F3 FE E9 */	bl Matrix_put
/* 804CC374  7F A3 EB 78 */	mr r3, r29
/* 804CC378  38 81 00 08 */	addi r4, r1, 8
/* 804CC37C  4B F4 10 89 */	bl Matrix_Position
/* 804CC380  7F 43 D3 78 */	mr r3, r26
/* 804CC384  7F 64 DB 78 */	mr r4, r27
/* 804CC388  38 A1 00 08 */	addi r5, r1, 8
/* 804CC38C  4B FF FE A5 */	bl bg_item_common_culling_check_talk
/* 804CC390  2C 03 00 01 */	cmpwi r3, 1
/* 804CC394  40 82 00 0C */	bne lbl_804CC3A0
/* 804CC398  9B DC 00 46 */	stb r30, 0x46(r28)
/* 804CC39C  48 00 00 08 */	b lbl_804CC3A4
lbl_804CC3A0:
/* 804CC3A0  9B FC 00 46 */	stb r31, 0x46(r28)
lbl_804CC3A4:
/* 804CC3A4  A8 1C 00 44 */	lha r0, 0x44(r28)
/* 804CC3A8  1C 00 00 48 */	mulli r0, r0, 0x48
/* 804CC3AC  7F 9C 02 14 */	add r28, r28, r0
lbl_804CC3B0:
/* 804CC3B0  A8 1C 00 44 */	lha r0, 0x44(r28)
/* 804CC3B4  2C 00 01 00 */	cmpwi r0, 0x100
/* 804CC3B8  40 82 FF B4 */	bne lbl_804CC36C
/* 804CC3BC  39 61 00 30 */	addi r11, r1, 0x30
/* 804CC3C0  4B BC EB 55 */	bl func_8009AF14
/* 804CC3C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804CC3C8  7C 08 03 A6 */	mtlr r0
/* 804CC3CC  38 21 00 30 */	addi r1, r1, 0x30
/* 804CC3D0  4E 80 00 20 */	blr 
