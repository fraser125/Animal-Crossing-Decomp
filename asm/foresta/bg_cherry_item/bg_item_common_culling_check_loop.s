lbl_804B6008:
/* 804B6008  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804B600C  7C 08 02 A6 */	mflr r0
/* 804B6010  90 01 00 34 */	stw r0, 0x34(r1)
/* 804B6014  39 61 00 30 */	addi r11, r1, 0x30
/* 804B6018  4B BE 4E B1 */	bl func_8009AEC8
/* 804B601C  3C C0 80 66 */	lis r6, data_8065F050@ha /* 0x8065F050@ha */
/* 804B6020  7C 7A 1B 78 */	mr r26, r3
/* 804B6024  7C 9B 23 78 */	mr r27, r4
/* 804B6028  7C BC 2B 78 */	mr r28, r5
/* 804B602C  3B A6 F0 50 */	addi r29, r6, data_8065F050@l /* 0x8065F050@l */
/* 804B6030  3B C0 00 00 */	li r30, 0
/* 804B6034  3B E0 00 01 */	li r31, 1
/* 804B6038  48 00 00 48 */	b lbl_804B6080
lbl_804B603C:
/* 804B603C  7F 83 E3 78 */	mr r3, r28
/* 804B6040  4B F5 62 19 */	bl Matrix_put
/* 804B6044  7F A3 EB 78 */	mr r3, r29
/* 804B6048  38 81 00 08 */	addi r4, r1, 8
/* 804B604C  4B F5 73 B9 */	bl Matrix_Position
/* 804B6050  7F 43 D3 78 */	mr r3, r26
/* 804B6054  7F 64 DB 78 */	mr r4, r27
/* 804B6058  38 A1 00 08 */	addi r5, r1, 8
/* 804B605C  4B FF FE F1 */	bl bg_item_common_culling_check
/* 804B6060  2C 03 00 01 */	cmpwi r3, 1
/* 804B6064  40 82 00 0C */	bne lbl_804B6070
/* 804B6068  9B DC 00 46 */	stb r30, 0x46(r28)
/* 804B606C  48 00 00 08 */	b lbl_804B6074
lbl_804B6070:
/* 804B6070  9B FC 00 46 */	stb r31, 0x46(r28)
lbl_804B6074:
/* 804B6074  A8 1C 00 44 */	lha r0, 0x44(r28)
/* 804B6078  1C 00 00 48 */	mulli r0, r0, 0x48
/* 804B607C  7F 9C 02 14 */	add r28, r28, r0
lbl_804B6080:
/* 804B6080  A8 1C 00 44 */	lha r0, 0x44(r28)
/* 804B6084  2C 00 01 00 */	cmpwi r0, 0x100
/* 804B6088  40 82 FF B4 */	bne lbl_804B603C
/* 804B608C  39 61 00 30 */	addi r11, r1, 0x30
/* 804B6090  4B BE 4E 85 */	bl func_8009AF14
/* 804B6094  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804B6098  7C 08 03 A6 */	mtlr r0
/* 804B609C  38 21 00 30 */	addi r1, r1, 0x30
/* 804B60A0  4E 80 00 20 */	blr 
