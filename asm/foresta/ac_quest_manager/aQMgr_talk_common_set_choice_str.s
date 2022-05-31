lbl_80485E40:
/* 80485E40  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80485E44  7C 08 02 A6 */	mflr r0
/* 80485E48  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80485E4C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80485E50  4B C1 50 79 */	bl func_8009AEC8
/* 80485E54  38 80 00 00 */	li r4, 0
/* 80485E58  38 00 00 06 */	li r0, 6
/* 80485E5C  3B 43 01 88 */	addi r26, r3, 0x188
/* 80485E60  38 61 00 20 */	addi r3, r1, 0x20
/* 80485E64  7C 85 23 78 */	mr r5, r4
/* 80485E68  7C 09 03 A6 */	mtctr r0
lbl_80485E6C:
/* 80485E6C  7C A3 21 2E */	stwx r5, r3, r4
/* 80485E70  38 84 00 04 */	addi r4, r4, 4
/* 80485E74  42 00 FF F8 */	bdnz lbl_80485E6C
/* 80485E78  3B A1 00 20 */	addi r29, r1, 0x20
/* 80485E7C  3B 60 00 00 */	li r27, 0
/* 80485E80  3B E0 00 00 */	li r31, 0
/* 80485E84  3B C0 00 00 */	li r30, 0
/* 80485E88  48 00 00 38 */	b lbl_80485EC0
lbl_80485E8C:
/* 80485E8C  2C 1B 00 06 */	cmpwi r27, 6
/* 80485E90  40 80 00 3C */	bge lbl_80485ECC
/* 80485E94  4B EF D6 AD */	bl func_80383540
/* 80485E98  3B 81 00 38 */	addi r28, r1, 0x38
/* 80485E9C  7C BA F8 2E */	lwzx r5, r26, r31
/* 80485EA0  7F 9C F2 14 */	add r28, r28, r30
/* 80485EA4  38 C0 00 00 */	li r6, 0
/* 80485EA8  7F 84 E3 78 */	mr r4, r28
/* 80485EAC  4B EF E5 15 */	bl mChoice_Load_ChoseStringFromRom
/* 80485EB0  7F 9D F9 2E */	stwx r28, r29, r31
/* 80485EB4  3B 7B 00 01 */	addi r27, r27, 1
/* 80485EB8  3B FF 00 04 */	addi r31, r31, 4
/* 80485EBC  3B DE 00 10 */	addi r30, r30, 0x10
lbl_80485EC0:
/* 80485EC0  80 1A 00 18 */	lwz r0, 0x18(r26)
/* 80485EC4  7C 1B 00 00 */	cmpw r27, r0
/* 80485EC8  41 80 FF C4 */	blt lbl_80485E8C
lbl_80485ECC:
/* 80485ECC  4B EF D6 75 */	bl func_80383540
/* 80485ED0  39 60 00 10 */	li r11, 0x10
/* 80485ED4  38 00 00 00 */	li r0, 0
/* 80485ED8  91 61 00 08 */	stw r11, 8(r1)
/* 80485EDC  38 A0 00 10 */	li r5, 0x10
/* 80485EE0  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80485EE4  38 E0 00 10 */	li r7, 0x10
/* 80485EE8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80485EEC  39 20 00 10 */	li r9, 0x10
/* 80485EF0  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 80485EF4  91 61 00 10 */	stw r11, 0x10(r1)
/* 80485EF8  81 01 00 28 */	lwz r8, 0x28(r1)
/* 80485EFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80485F00  81 41 00 2C */	lwz r10, 0x2c(r1)
/* 80485F04  91 61 00 18 */	stw r11, 0x18(r1)
/* 80485F08  4B EF D8 5D */	bl mChoice_Set_choice_data
/* 80485F0C  38 60 00 01 */	li r3, 1
/* 80485F10  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80485F14  4B C1 50 01 */	bl func_8009AF14
/* 80485F18  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80485F1C  7C 08 03 A6 */	mtlr r0
/* 80485F20  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80485F24  4E 80 00 20 */	blr 
