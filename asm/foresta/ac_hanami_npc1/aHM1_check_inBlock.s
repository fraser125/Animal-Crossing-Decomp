lbl_8052A2CC:
/* 8052A2CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8052A2D0  7C 08 02 A6 */	mflr r0
/* 8052A2D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8052A2D8  39 61 00 30 */	addi r11, r1, 0x30
/* 8052A2DC  4B B7 0B F5 */	bl func_8009AED0
/* 8052A2E0  80 E4 00 00 */	lwz r7, 0(r4)
/* 8052A2E4  7C BD 2B 78 */	mr r29, r5
/* 8052A2E8  80 04 00 04 */	lwz r0, 4(r4)
/* 8052A2EC  7C 7C 1B 78 */	mr r28, r3
/* 8052A2F0  7C DE 33 78 */	mr r30, r6
/* 8052A2F4  7F A3 EB 78 */	mr r3, r29
/* 8052A2F8  90 E1 00 08 */	stw r7, 8(r1)
/* 8052A2FC  38 A1 00 08 */	addi r5, r1, 8
/* 8052A300  3B E0 00 00 */	li r31, 0
/* 8052A304  90 01 00 0C */	stw r0, 0xc(r1)
/* 8052A308  80 04 00 08 */	lwz r0, 8(r4)
/* 8052A30C  7F C4 F3 78 */	mr r4, r30
/* 8052A310  90 01 00 10 */	stw r0, 0x10(r1)
/* 8052A314  4B E7 B4 4D */	bl mFI_Wpos2BlockNum
/* 8052A318  88 1C 00 08 */	lbz r0, 8(r28)
/* 8052A31C  80 7D 00 00 */	lwz r3, 0(r29)
/* 8052A320  7C 00 07 74 */	extsb r0, r0
/* 8052A324  7C 03 00 00 */	cmpw r3, r0
/* 8052A328  40 82 00 18 */	bne lbl_8052A340
/* 8052A32C  88 1C 00 09 */	lbz r0, 9(r28)
/* 8052A330  80 7E 00 00 */	lwz r3, 0(r30)
/* 8052A334  7C 00 07 74 */	extsb r0, r0
/* 8052A338  7C 03 00 00 */	cmpw r3, r0
/* 8052A33C  41 82 00 08 */	beq lbl_8052A344
lbl_8052A340:
/* 8052A340  3B E0 00 01 */	li r31, 1
lbl_8052A344:
/* 8052A344  7F E3 FB 78 */	mr r3, r31
/* 8052A348  39 61 00 30 */	addi r11, r1, 0x30
/* 8052A34C  4B B7 0B D1 */	bl func_8009AF1C
/* 8052A350  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8052A354  7C 08 03 A6 */	mtlr r0
/* 8052A358  38 21 00 30 */	addi r1, r1, 0x30
/* 8052A35C  4E 80 00 20 */	blr 
