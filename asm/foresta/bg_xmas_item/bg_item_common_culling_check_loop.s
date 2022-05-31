lbl_804CC29C:
/* 804CC29C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804CC2A0  7C 08 02 A6 */	mflr r0
/* 804CC2A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 804CC2A8  39 61 00 30 */	addi r11, r1, 0x30
/* 804CC2AC  4B BC EC 1D */	bl func_8009AEC8
/* 804CC2B0  3C C0 80 66 */	lis r6, data_8065F050@ha /* 0x8065F050@ha */
/* 804CC2B4  7C 7A 1B 78 */	mr r26, r3
/* 804CC2B8  7C 9B 23 78 */	mr r27, r4
/* 804CC2BC  7C BC 2B 78 */	mr r28, r5
/* 804CC2C0  3B A6 F0 50 */	addi r29, r6, data_8065F050@l /* 0x8065F050@l */
/* 804CC2C4  3B C0 00 00 */	li r30, 0
/* 804CC2C8  3B E0 00 01 */	li r31, 1
/* 804CC2CC  48 00 00 48 */	b lbl_804CC314
lbl_804CC2D0:
/* 804CC2D0  7F 83 E3 78 */	mr r3, r28
/* 804CC2D4  4B F3 FF 85 */	bl Matrix_put
/* 804CC2D8  7F A3 EB 78 */	mr r3, r29
/* 804CC2DC  38 81 00 08 */	addi r4, r1, 8
/* 804CC2E0  4B F4 11 25 */	bl Matrix_Position
/* 804CC2E4  7F 43 D3 78 */	mr r3, r26
/* 804CC2E8  7F 64 DB 78 */	mr r4, r27
/* 804CC2EC  38 A1 00 08 */	addi r5, r1, 8
/* 804CC2F0  4B FF FE F1 */	bl bg_item_common_culling_check
/* 804CC2F4  2C 03 00 01 */	cmpwi r3, 1
/* 804CC2F8  40 82 00 0C */	bne lbl_804CC304
/* 804CC2FC  9B DC 00 46 */	stb r30, 0x46(r28)
/* 804CC300  48 00 00 08 */	b lbl_804CC308
lbl_804CC304:
/* 804CC304  9B FC 00 46 */	stb r31, 0x46(r28)
lbl_804CC308:
/* 804CC308  A8 1C 00 44 */	lha r0, 0x44(r28)
/* 804CC30C  1C 00 00 48 */	mulli r0, r0, 0x48
/* 804CC310  7F 9C 02 14 */	add r28, r28, r0
lbl_804CC314:
/* 804CC314  A8 1C 00 44 */	lha r0, 0x44(r28)
/* 804CC318  2C 00 01 00 */	cmpwi r0, 0x100
/* 804CC31C  40 82 FF B4 */	bne lbl_804CC2D0
/* 804CC320  39 61 00 30 */	addi r11, r1, 0x30
/* 804CC324  4B BC EB F1 */	bl func_8009AF14
/* 804CC328  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804CC32C  7C 08 03 A6 */	mtlr r0
/* 804CC330  38 21 00 30 */	addi r1, r1, 0x30
/* 804CC334  4E 80 00 20 */	blr 
