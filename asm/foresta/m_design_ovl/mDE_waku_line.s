lbl_805D2E34:
/* 805D2E34  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805D2E38  7C 08 02 A6 */	mflr r0
/* 805D2E3C  90 01 00 44 */	stw r0, 0x44(r1)
/* 805D2E40  39 61 00 40 */	addi r11, r1, 0x40
/* 805D2E44  4B AC 80 71 */	bl func_8009AEB4
/* 805D2E48  7C 06 20 00 */	cmpw r6, r4
/* 805D2E4C  7C 75 1B 78 */	mr r21, r3
/* 805D2E50  40 81 00 10 */	ble lbl_805D2E60
/* 805D2E54  7F 24 30 50 */	subf r25, r4, r6
/* 805D2E58  3A E0 00 01 */	li r23, 1
/* 805D2E5C  48 00 00 0C */	b lbl_805D2E68
lbl_805D2E60:
/* 805D2E60  3A E0 FF FF */	li r23, -1
/* 805D2E64  7F 26 20 50 */	subf r25, r6, r4
lbl_805D2E68:
/* 805D2E68  7C 07 28 00 */	cmpw r7, r5
/* 805D2E6C  40 81 00 10 */	ble lbl_805D2E7C
/* 805D2E70  7F 05 38 50 */	subf r24, r5, r7
/* 805D2E74  3A C0 00 01 */	li r22, 1
/* 805D2E78  48 00 00 0C */	b lbl_805D2E84
lbl_805D2E7C:
/* 805D2E7C  3A C0 FF FF */	li r22, -1
/* 805D2E80  7F 07 28 50 */	subf r24, r7, r5
lbl_805D2E84:
/* 805D2E84  7C 19 C0 00 */	cmpw r25, r24
/* 805D2E88  7C 9B 23 78 */	mr r27, r4
/* 805D2E8C  7C BA 2B 78 */	mr r26, r5
/* 805D2E90  41 80 00 50 */	blt lbl_805D2EE0
/* 805D2E94  7F 99 00 D0 */	neg r28, r25
/* 805D2E98  57 1F 08 3C */	slwi r31, r24, 1
/* 805D2E9C  57 3E 08 3C */	slwi r30, r25, 1
/* 805D2EA0  3B 00 00 00 */	li r24, 0
/* 805D2EA4  48 00 00 30 */	b lbl_805D2ED4
lbl_805D2EA8:
/* 805D2EA8  88 D5 06 A4 */	lbz r6, 0x6a4(r21)
/* 805D2EAC  7E A3 AB 78 */	mr r3, r21
/* 805D2EB0  7F 64 DB 78 */	mr r4, r27
/* 805D2EB4  7F 45 D3 78 */	mr r5, r26
/* 805D2EB8  4B FF F0 69 */	bl mDE_set_pal_on_cursor
/* 805D2EBC  7F 9C FA 15 */	add. r28, r28, r31
/* 805D2EC0  7F 7B BA 14 */	add r27, r27, r23
/* 805D2EC4  41 80 00 0C */	blt lbl_805D2ED0
/* 805D2EC8  7F 5A B2 14 */	add r26, r26, r22
/* 805D2ECC  7F 9E E0 50 */	subf r28, r30, r28
lbl_805D2ED0:
/* 805D2ED0  3B 18 00 01 */	addi r24, r24, 1
lbl_805D2ED4:
/* 805D2ED4  7C 18 C8 00 */	cmpw r24, r25
/* 805D2ED8  40 81 FF D0 */	ble lbl_805D2EA8
/* 805D2EDC  48 00 00 4C */	b lbl_805D2F28
lbl_805D2EE0:
/* 805D2EE0  7F B8 00 D0 */	neg r29, r24
/* 805D2EE4  57 3E 08 3C */	slwi r30, r25, 1
/* 805D2EE8  57 1F 08 3C */	slwi r31, r24, 1
/* 805D2EEC  3B 80 00 00 */	li r28, 0
/* 805D2EF0  48 00 00 30 */	b lbl_805D2F20
lbl_805D2EF4:
/* 805D2EF4  88 D5 06 A4 */	lbz r6, 0x6a4(r21)
/* 805D2EF8  7E A3 AB 78 */	mr r3, r21
/* 805D2EFC  7F 64 DB 78 */	mr r4, r27
/* 805D2F00  7F 45 D3 78 */	mr r5, r26
/* 805D2F04  4B FF F0 1D */	bl mDE_set_pal_on_cursor
/* 805D2F08  7F BD F2 15 */	add. r29, r29, r30
/* 805D2F0C  7F 5A B2 14 */	add r26, r26, r22
/* 805D2F10  41 80 00 0C */	blt lbl_805D2F1C
/* 805D2F14  7F 7B BA 14 */	add r27, r27, r23
/* 805D2F18  7F BF E8 50 */	subf r29, r31, r29
lbl_805D2F1C:
/* 805D2F1C  3B 9C 00 01 */	addi r28, r28, 1
lbl_805D2F20:
/* 805D2F20  7C 1C C0 00 */	cmpw r28, r24
/* 805D2F24  40 81 FF D0 */	ble lbl_805D2EF4
lbl_805D2F28:
/* 805D2F28  39 61 00 40 */	addi r11, r1, 0x40
/* 805D2F2C  4B AC 7F D5 */	bl func_8009AF00
/* 805D2F30  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805D2F34  7C 08 03 A6 */	mtlr r0
/* 805D2F38  38 21 00 40 */	addi r1, r1, 0x40
/* 805D2F3C  4E 80 00 20 */	blr 
