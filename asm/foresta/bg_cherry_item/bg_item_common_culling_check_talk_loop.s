lbl_804B60A4:
/* 804B60A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804B60A8  7C 08 02 A6 */	mflr r0
/* 804B60AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 804B60B0  39 61 00 30 */	addi r11, r1, 0x30
/* 804B60B4  4B BE 4E 15 */	bl func_8009AEC8
/* 804B60B8  3C C0 80 66 */	lis r6, data_8065F050@ha /* 0x8065F050@ha */
/* 804B60BC  7C 7A 1B 78 */	mr r26, r3
/* 804B60C0  7C 9B 23 78 */	mr r27, r4
/* 804B60C4  7C BC 2B 78 */	mr r28, r5
/* 804B60C8  3B A6 F0 50 */	addi r29, r6, data_8065F050@l /* 0x8065F050@l */
/* 804B60CC  3B C0 00 00 */	li r30, 0
/* 804B60D0  3B E0 00 01 */	li r31, 1
/* 804B60D4  48 00 00 48 */	b lbl_804B611C
lbl_804B60D8:
/* 804B60D8  7F 83 E3 78 */	mr r3, r28
/* 804B60DC  4B F5 61 7D */	bl Matrix_put
/* 804B60E0  7F A3 EB 78 */	mr r3, r29
/* 804B60E4  38 81 00 08 */	addi r4, r1, 8
/* 804B60E8  4B F5 73 1D */	bl Matrix_Position
/* 804B60EC  7F 43 D3 78 */	mr r3, r26
/* 804B60F0  7F 64 DB 78 */	mr r4, r27
/* 804B60F4  38 A1 00 08 */	addi r5, r1, 8
/* 804B60F8  4B FF FE A5 */	bl bg_item_common_culling_check_talk
/* 804B60FC  2C 03 00 01 */	cmpwi r3, 1
/* 804B6100  40 82 00 0C */	bne lbl_804B610C
/* 804B6104  9B DC 00 46 */	stb r30, 0x46(r28)
/* 804B6108  48 00 00 08 */	b lbl_804B6110
lbl_804B610C:
/* 804B610C  9B FC 00 46 */	stb r31, 0x46(r28)
lbl_804B6110:
/* 804B6110  A8 1C 00 44 */	lha r0, 0x44(r28)
/* 804B6114  1C 00 00 48 */	mulli r0, r0, 0x48
/* 804B6118  7F 9C 02 14 */	add r28, r28, r0
lbl_804B611C:
/* 804B611C  A8 1C 00 44 */	lha r0, 0x44(r28)
/* 804B6120  2C 00 01 00 */	cmpwi r0, 0x100
/* 804B6124  40 82 FF B4 */	bne lbl_804B60D8
/* 804B6128  39 61 00 30 */	addi r11, r1, 0x30
/* 804B612C  4B BE 4D E9 */	bl func_8009AF14
/* 804B6130  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804B6134  7C 08 03 A6 */	mtlr r0
/* 804B6138  38 21 00 30 */	addi r1, r1, 0x30
/* 804B613C  4E 80 00 20 */	blr 
