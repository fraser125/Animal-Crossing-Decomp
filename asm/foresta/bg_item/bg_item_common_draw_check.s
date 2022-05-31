lbl_804BD51C:
/* 804BD51C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804BD520  7C 08 02 A6 */	mflr r0
/* 804BD524  90 01 00 34 */	stw r0, 0x34(r1)
/* 804BD528  39 61 00 30 */	addi r11, r1, 0x30
/* 804BD52C  4B BD D9 95 */	bl func_8009AEC0
/* 804BD530  7C DB 33 78 */	mr r27, r6
/* 804BD534  7C 78 1B 78 */	mr r24, r3
/* 804BD538  83 E6 48 48 */	lwz r31, 0x4848(r6)
/* 804BD53C  7C 99 23 78 */	mr r25, r4
/* 804BD540  A3 C6 48 4C */	lhz r30, 0x484c(r6)
/* 804BD544  7C BA 2B 78 */	mr r26, r5
/* 804BD548  3B 80 00 00 */	li r28, 0
/* 804BD54C  48 00 00 58 */	b lbl_804BD5A4
lbl_804BD550:
/* 804BD550  A0 1F 00 00 */	lhz r0, 0(r31)
/* 804BD554  28 00 00 00 */	cmplwi r0, 0
/* 804BD558  41 82 00 44 */	beq lbl_804BD59C
/* 804BD55C  1C 00 00 48 */	mulli r0, r0, 0x48
/* 804BD560  7F 23 CB 78 */	mr r3, r25
/* 804BD564  7F 84 E3 78 */	mr r4, r28
/* 804BD568  7F BB 02 14 */	add r29, r27, r0
/* 804BD56C  4B FF FF 59 */	bl bg_item_common_check_talk_tree
/* 804BD570  2C 03 00 01 */	cmpwi r3, 1
/* 804BD574  40 82 00 18 */	bne lbl_804BD58C
/* 804BD578  7F 03 C3 78 */	mr r3, r24
/* 804BD57C  7F 44 D3 78 */	mr r4, r26
/* 804BD580  7F A5 EB 78 */	mr r5, r29
/* 804BD584  4B FF FE A5 */	bl bg_item_common_culling_check_talk_loop
/* 804BD588  48 00 00 14 */	b lbl_804BD59C
lbl_804BD58C:
/* 804BD58C  7F 03 C3 78 */	mr r3, r24
/* 804BD590  7F 44 D3 78 */	mr r4, r26
/* 804BD594  7F A5 EB 78 */	mr r5, r29
/* 804BD598  4B FF FD F5 */	bl bg_item_common_culling_check_loop
lbl_804BD59C:
/* 804BD59C  3B 9C 00 01 */	addi r28, r28, 1
/* 804BD5A0  3B FF 00 02 */	addi r31, r31, 2
lbl_804BD5A4:
/* 804BD5A4  7C 1C F0 00 */	cmpw r28, r30
/* 804BD5A8  41 80 FF A8 */	blt lbl_804BD550
/* 804BD5AC  39 61 00 30 */	addi r11, r1, 0x30
/* 804BD5B0  4B BD D9 5D */	bl func_8009AF0C
/* 804BD5B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804BD5B8  7C 08 03 A6 */	mtlr r0
/* 804BD5BC  38 21 00 30 */	addi r1, r1, 0x30
/* 804BD5C0  4E 80 00 20 */	blr 
