lbl_804B6198:
/* 804B6198  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804B619C  7C 08 02 A6 */	mflr r0
/* 804B61A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804B61A4  39 61 00 30 */	addi r11, r1, 0x30
/* 804B61A8  4B BE 4D 19 */	bl func_8009AEC0
/* 804B61AC  7C DB 33 78 */	mr r27, r6
/* 804B61B0  7C 78 1B 78 */	mr r24, r3
/* 804B61B4  83 E6 48 48 */	lwz r31, 0x4848(r6)
/* 804B61B8  7C 99 23 78 */	mr r25, r4
/* 804B61BC  A3 C6 48 4C */	lhz r30, 0x484c(r6)
/* 804B61C0  7C BA 2B 78 */	mr r26, r5
/* 804B61C4  3B 80 00 00 */	li r28, 0
/* 804B61C8  48 00 00 58 */	b lbl_804B6220
lbl_804B61CC:
/* 804B61CC  A0 1F 00 00 */	lhz r0, 0(r31)
/* 804B61D0  28 00 00 00 */	cmplwi r0, 0
/* 804B61D4  41 82 00 44 */	beq lbl_804B6218
/* 804B61D8  1C 00 00 48 */	mulli r0, r0, 0x48
/* 804B61DC  7F 23 CB 78 */	mr r3, r25
/* 804B61E0  7F 84 E3 78 */	mr r4, r28
/* 804B61E4  7F BB 02 14 */	add r29, r27, r0
/* 804B61E8  4B FF FF 59 */	bl bg_item_common_check_talk_tree
/* 804B61EC  2C 03 00 01 */	cmpwi r3, 1
/* 804B61F0  40 82 00 18 */	bne lbl_804B6208
/* 804B61F4  7F 03 C3 78 */	mr r3, r24
/* 804B61F8  7F 44 D3 78 */	mr r4, r26
/* 804B61FC  7F A5 EB 78 */	mr r5, r29
/* 804B6200  4B FF FE A5 */	bl bg_item_common_culling_check_talk_loop
/* 804B6204  48 00 00 14 */	b lbl_804B6218
lbl_804B6208:
/* 804B6208  7F 03 C3 78 */	mr r3, r24
/* 804B620C  7F 44 D3 78 */	mr r4, r26
/* 804B6210  7F A5 EB 78 */	mr r5, r29
/* 804B6214  4B FF FD F5 */	bl bg_item_common_culling_check_loop
lbl_804B6218:
/* 804B6218  3B 9C 00 01 */	addi r28, r28, 1
/* 804B621C  3B FF 00 02 */	addi r31, r31, 2
lbl_804B6220:
/* 804B6220  7C 1C F0 00 */	cmpw r28, r30
/* 804B6224  41 80 FF A8 */	blt lbl_804B61CC
/* 804B6228  39 61 00 30 */	addi r11, r1, 0x30
/* 804B622C  4B BE 4C E1 */	bl func_8009AF0C
/* 804B6230  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804B6234  7C 08 03 A6 */	mtlr r0
/* 804B6238  38 21 00 30 */	addi r1, r1, 0x30
/* 804B623C  4E 80 00 20 */	blr 
