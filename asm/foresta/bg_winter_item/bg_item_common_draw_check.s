lbl_804C5014:
/* 804C5014  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804C5018  7C 08 02 A6 */	mflr r0
/* 804C501C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C5020  39 61 00 30 */	addi r11, r1, 0x30
/* 804C5024  4B BD 5E 9D */	bl func_8009AEC0
/* 804C5028  7C DB 33 78 */	mr r27, r6
/* 804C502C  7C 78 1B 78 */	mr r24, r3
/* 804C5030  83 E6 48 48 */	lwz r31, 0x4848(r6)
/* 804C5034  7C 99 23 78 */	mr r25, r4
/* 804C5038  A3 C6 48 4C */	lhz r30, 0x484c(r6)
/* 804C503C  7C BA 2B 78 */	mr r26, r5
/* 804C5040  3B 80 00 00 */	li r28, 0
/* 804C5044  48 00 00 58 */	b lbl_804C509C
lbl_804C5048:
/* 804C5048  A0 1F 00 00 */	lhz r0, 0(r31)
/* 804C504C  28 00 00 00 */	cmplwi r0, 0
/* 804C5050  41 82 00 44 */	beq lbl_804C5094
/* 804C5054  1C 00 00 48 */	mulli r0, r0, 0x48
/* 804C5058  7F 23 CB 78 */	mr r3, r25
/* 804C505C  7F 84 E3 78 */	mr r4, r28
/* 804C5060  7F BB 02 14 */	add r29, r27, r0
/* 804C5064  4B FF FF 59 */	bl bg_item_common_check_talk_tree
/* 804C5068  2C 03 00 01 */	cmpwi r3, 1
/* 804C506C  40 82 00 18 */	bne lbl_804C5084
/* 804C5070  7F 03 C3 78 */	mr r3, r24
/* 804C5074  7F 44 D3 78 */	mr r4, r26
/* 804C5078  7F A5 EB 78 */	mr r5, r29
/* 804C507C  4B FF FE A5 */	bl bg_item_common_culling_check_talk_loop
/* 804C5080  48 00 00 14 */	b lbl_804C5094
lbl_804C5084:
/* 804C5084  7F 03 C3 78 */	mr r3, r24
/* 804C5088  7F 44 D3 78 */	mr r4, r26
/* 804C508C  7F A5 EB 78 */	mr r5, r29
/* 804C5090  4B FF FD F5 */	bl bg_item_common_culling_check_loop
lbl_804C5094:
/* 804C5094  3B 9C 00 01 */	addi r28, r28, 1
/* 804C5098  3B FF 00 02 */	addi r31, r31, 2
lbl_804C509C:
/* 804C509C  7C 1C F0 00 */	cmpw r28, r30
/* 804C50A0  41 80 FF A8 */	blt lbl_804C5048
/* 804C50A4  39 61 00 30 */	addi r11, r1, 0x30
/* 804C50A8  4B BD 5E 65 */	bl func_8009AF0C
/* 804C50AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804C50B0  7C 08 03 A6 */	mtlr r0
/* 804C50B4  38 21 00 30 */	addi r1, r1, 0x30
/* 804C50B8  4E 80 00 20 */	blr 
