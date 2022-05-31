lbl_804CC42C:
/* 804CC42C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804CC430  7C 08 02 A6 */	mflr r0
/* 804CC434  90 01 00 34 */	stw r0, 0x34(r1)
/* 804CC438  39 61 00 30 */	addi r11, r1, 0x30
/* 804CC43C  4B BC EA 85 */	bl func_8009AEC0
/* 804CC440  7C DB 33 78 */	mr r27, r6
/* 804CC444  7C 78 1B 78 */	mr r24, r3
/* 804CC448  83 E6 48 48 */	lwz r31, 0x4848(r6)
/* 804CC44C  7C 99 23 78 */	mr r25, r4
/* 804CC450  A3 C6 48 4C */	lhz r30, 0x484c(r6)
/* 804CC454  7C BA 2B 78 */	mr r26, r5
/* 804CC458  3B 80 00 00 */	li r28, 0
/* 804CC45C  48 00 00 58 */	b lbl_804CC4B4
lbl_804CC460:
/* 804CC460  A0 1F 00 00 */	lhz r0, 0(r31)
/* 804CC464  28 00 00 00 */	cmplwi r0, 0
/* 804CC468  41 82 00 44 */	beq lbl_804CC4AC
/* 804CC46C  1C 00 00 48 */	mulli r0, r0, 0x48
/* 804CC470  7F 23 CB 78 */	mr r3, r25
/* 804CC474  7F 84 E3 78 */	mr r4, r28
/* 804CC478  7F BB 02 14 */	add r29, r27, r0
/* 804CC47C  4B FF FF 59 */	bl bg_item_common_check_talk_tree
/* 804CC480  2C 03 00 01 */	cmpwi r3, 1
/* 804CC484  40 82 00 18 */	bne lbl_804CC49C
/* 804CC488  7F 03 C3 78 */	mr r3, r24
/* 804CC48C  7F 44 D3 78 */	mr r4, r26
/* 804CC490  7F A5 EB 78 */	mr r5, r29
/* 804CC494  4B FF FE A5 */	bl bg_item_common_culling_check_talk_loop
/* 804CC498  48 00 00 14 */	b lbl_804CC4AC
lbl_804CC49C:
/* 804CC49C  7F 03 C3 78 */	mr r3, r24
/* 804CC4A0  7F 44 D3 78 */	mr r4, r26
/* 804CC4A4  7F A5 EB 78 */	mr r5, r29
/* 804CC4A8  4B FF FD F5 */	bl bg_item_common_culling_check_loop
lbl_804CC4AC:
/* 804CC4AC  3B 9C 00 01 */	addi r28, r28, 1
/* 804CC4B0  3B FF 00 02 */	addi r31, r31, 2
lbl_804CC4B4:
/* 804CC4B4  7C 1C F0 00 */	cmpw r28, r30
/* 804CC4B8  41 80 FF A8 */	blt lbl_804CC460
/* 804CC4BC  39 61 00 30 */	addi r11, r1, 0x30
/* 804CC4C0  4B BC EA 4D */	bl func_8009AF0C
/* 804CC4C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804CC4C8  7C 08 03 A6 */	mtlr r0
/* 804CC4CC  38 21 00 30 */	addi r1, r1, 0x30
/* 804CC4D0  4E 80 00 20 */	blr 
