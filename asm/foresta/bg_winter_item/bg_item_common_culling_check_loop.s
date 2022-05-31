lbl_804C4E84:
/* 804C4E84  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804C4E88  7C 08 02 A6 */	mflr r0
/* 804C4E8C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C4E90  39 61 00 30 */	addi r11, r1, 0x30
/* 804C4E94  4B BD 60 35 */	bl func_8009AEC8
/* 804C4E98  3C C0 80 66 */	lis r6, data_8065F050@ha /* 0x8065F050@ha */
/* 804C4E9C  7C 7A 1B 78 */	mr r26, r3
/* 804C4EA0  7C 9B 23 78 */	mr r27, r4
/* 804C4EA4  7C BC 2B 78 */	mr r28, r5
/* 804C4EA8  3B A6 F0 50 */	addi r29, r6, data_8065F050@l /* 0x8065F050@l */
/* 804C4EAC  3B C0 00 00 */	li r30, 0
/* 804C4EB0  3B E0 00 01 */	li r31, 1
/* 804C4EB4  48 00 00 48 */	b lbl_804C4EFC
lbl_804C4EB8:
/* 804C4EB8  7F 83 E3 78 */	mr r3, r28
/* 804C4EBC  4B F4 73 9D */	bl Matrix_put
/* 804C4EC0  7F A3 EB 78 */	mr r3, r29
/* 804C4EC4  38 81 00 08 */	addi r4, r1, 8
/* 804C4EC8  4B F4 85 3D */	bl Matrix_Position
/* 804C4ECC  7F 43 D3 78 */	mr r3, r26
/* 804C4ED0  7F 64 DB 78 */	mr r4, r27
/* 804C4ED4  38 A1 00 08 */	addi r5, r1, 8
/* 804C4ED8  4B FF FE F1 */	bl bg_item_common_culling_check
/* 804C4EDC  2C 03 00 01 */	cmpwi r3, 1
/* 804C4EE0  40 82 00 0C */	bne lbl_804C4EEC
/* 804C4EE4  9B DC 00 46 */	stb r30, 0x46(r28)
/* 804C4EE8  48 00 00 08 */	b lbl_804C4EF0
lbl_804C4EEC:
/* 804C4EEC  9B FC 00 46 */	stb r31, 0x46(r28)
lbl_804C4EF0:
/* 804C4EF0  A8 1C 00 44 */	lha r0, 0x44(r28)
/* 804C4EF4  1C 00 00 48 */	mulli r0, r0, 0x48
/* 804C4EF8  7F 9C 02 14 */	add r28, r28, r0
lbl_804C4EFC:
/* 804C4EFC  A8 1C 00 44 */	lha r0, 0x44(r28)
/* 804C4F00  2C 00 01 00 */	cmpwi r0, 0x100
/* 804C4F04  40 82 FF B4 */	bne lbl_804C4EB8
/* 804C4F08  39 61 00 30 */	addi r11, r1, 0x30
/* 804C4F0C  4B BD 60 09 */	bl func_8009AF14
/* 804C4F10  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804C4F14  7C 08 03 A6 */	mtlr r0
/* 804C4F18  38 21 00 30 */	addi r1, r1, 0x30
/* 804C4F1C  4E 80 00 20 */	blr 
