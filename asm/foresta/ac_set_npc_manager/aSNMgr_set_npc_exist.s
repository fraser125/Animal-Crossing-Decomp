lbl_8049707C:
/* 8049707C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80497080  7C 08 02 A6 */	mflr r0
/* 80497084  90 01 00 24 */	stw r0, 0x24(r1)
/* 80497088  39 61 00 20 */	addi r11, r1, 0x20
/* 8049708C  4B C0 3E 41 */	bl func_8009AECC
/* 80497090  7C 7B 1B 78 */	mr r27, r3
/* 80497094  3B A0 00 00 */	li r29, 0
/* 80497098  83 C3 01 B8 */	lwz r30, 0x1b8(r3)
/* 8049709C  3B 80 00 00 */	li r28, 0
/* 804970A0  3B E0 00 01 */	li r31, 1
lbl_804970A4:
/* 804970A4  7F C3 F3 78 */	mr r3, r30
/* 804970A8  4B F3 43 35 */	bl mNpc_CheckFreeAnimalPersonalID
/* 804970AC  2C 03 00 00 */	cmpwi r3, 0
/* 804970B0  40 82 00 10 */	bne lbl_804970C0
/* 804970B4  7F E0 E0 30 */	slw r0, r31, r28
/* 804970B8  7F A0 03 78 */	or r0, r29, r0
/* 804970BC  54 1D 04 3E */	clrlwi r29, r0, 0x10
lbl_804970C0:
/* 804970C0  3B 9C 00 01 */	addi r28, r28, 1
/* 804970C4  3B DE 09 88 */	addi r30, r30, 0x988
/* 804970C8  2C 1C 00 0F */	cmpwi r28, 0xf
/* 804970CC  41 80 FF D8 */	blt lbl_804970A4
/* 804970D0  B3 BB 02 98 */	sth r29, 0x298(r27)
/* 804970D4  39 61 00 20 */	addi r11, r1, 0x20
/* 804970D8  4B C0 3E 41 */	bl func_8009AF18
/* 804970DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804970E0  7C 08 03 A6 */	mtlr r0
/* 804970E4  38 21 00 20 */	addi r1, r1, 0x20
/* 804970E8  4E 80 00 20 */	blr 
