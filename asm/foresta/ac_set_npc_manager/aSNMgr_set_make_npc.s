lbl_804981F4:
/* 804981F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804981F8  7C 08 02 A6 */	mflr r0
/* 804981FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80498200  39 61 00 30 */	addi r11, r1, 0x30
/* 80498204  4B C0 2C B9 */	bl func_8009AEBC
/* 80498208  7C 77 1B 78 */	mr r23, r3
/* 8049820C  7C 98 23 78 */	mr r24, r4
/* 80498210  7C B9 2B 78 */	mr r25, r5
/* 80498214  7C DA 33 78 */	mr r26, r6
/* 80498218  7C FB 3B 78 */	mr r27, r7
/* 8049821C  7D 1C 43 78 */	mr r28, r8
/* 80498220  7D 3F 4B 78 */	mr r31, r9
/* 80498224  7D 5D 53 78 */	mr r29, r10
/* 80498228  7E E5 BB 78 */	mr r5, r23
/* 8049822C  38 60 00 00 */	li r3, 0
/* 80498230  38 80 FF FF */	li r4, -1
/* 80498234  4B FF FF 7D */	bl aSNMgr_get_make_npc_idx
/* 80498238  7C 7E 1B 78 */	mr r30, r3
/* 8049823C  2C 1E FF FF */	cmpwi r30, -1
/* 80498240  41 82 00 38 */	beq lbl_80498278
/* 80498244  1C 1E 00 18 */	mulli r0, r30, 0x18
/* 80498248  7F E4 FB 78 */	mr r4, r31
/* 8049824C  7F A5 EB 78 */	mr r5, r29
/* 80498250  7F F7 02 14 */	add r31, r23, r0
/* 80498254  B3 1F 00 00 */	sth r24, 0(r31)
/* 80498258  38 7F 00 02 */	addi r3, r31, 2
/* 8049825C  B3 1F 00 02 */	sth r24, 2(r31)
/* 80498260  4B FF FE 99 */	bl aSNMgr_get_event_name
/* 80498264  93 3F 00 04 */	stw r25, 4(r31)
/* 80498268  93 5F 00 08 */	stw r26, 8(r31)
/* 8049826C  93 7F 00 0C */	stw r27, 0xc(r31)
/* 80498270  93 9F 00 10 */	stw r28, 0x10(r31)
/* 80498274  93 BF 00 14 */	stw r29, 0x14(r31)
lbl_80498278:
/* 80498278  7F C3 F3 78 */	mr r3, r30
/* 8049827C  39 61 00 30 */	addi r11, r1, 0x30
/* 80498280  4B C0 2C 89 */	bl func_8009AF08
/* 80498284  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80498288  7C 08 03 A6 */	mtlr r0
/* 8049828C  38 21 00 30 */	addi r1, r1, 0x30
/* 80498290  4E 80 00 20 */	blr 
