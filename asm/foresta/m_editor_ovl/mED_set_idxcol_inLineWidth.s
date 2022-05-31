lbl_805D8D78:
/* 805D8D78  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805D8D7C  7C 08 02 A6 */	mflr r0
/* 805D8D80  90 01 00 34 */	stw r0, 0x34(r1)
/* 805D8D84  39 61 00 30 */	addi r11, r1, 0x30
/* 805D8D88  4B AC 21 31 */	bl func_8009AEB8
/* 805D8D8C  7C 7F 1B 78 */	mr r31, r3
/* 805D8D90  3B 80 00 00 */	li r28, 0
/* 805D8D94  83 C3 00 28 */	lwz r30, 0x28(r3)
/* 805D8D98  3B 40 00 00 */	li r26, 0
/* 805D8D9C  AA C3 00 24 */	lha r22, 0x24(r3)
/* 805D8DA0  3B 60 00 00 */	li r27, 0
/* 805D8DA4  3B 20 00 00 */	li r25, 0
/* 805D8DA8  3A E0 00 00 */	li r23, 0
/* 805D8DAC  3B 00 00 00 */	li r24, 0
/* 805D8DB0  3B A0 00 00 */	li r29, 0
/* 805D8DB4  48 00 00 CC */	b lbl_805D8E80
lbl_805D8DB8:
/* 805D8DB8  88 7E 00 00 */	lbz r3, 0(r30)
/* 805D8DBC  28 03 00 CD */	cmplwi r3, 0xcd
/* 805D8DC0  40 82 00 14 */	bne lbl_805D8DD4
/* 805D8DC4  3B 60 00 00 */	li r27, 0
/* 805D8DC8  3B 80 00 00 */	li r28, 0
/* 805D8DCC  3B 5A 00 01 */	addi r26, r26, 1
/* 805D8DD0  48 00 00 3C */	b lbl_805D8E0C
lbl_805D8DD4:
/* 805D8DD4  38 80 00 01 */	li r4, 1
/* 805D8DD8  4B DD 68 C5 */	bl mFont_GetCodeWidth
/* 805D8DDC  A8 1F 00 1C */	lha r0, 0x1c(r31)
/* 805D8DE0  7C 9B 1A 14 */	add r4, r27, r3
/* 805D8DE4  7C 04 00 00 */	cmpw r4, r0
/* 805D8DE8  40 81 00 20 */	ble lbl_805D8E08
/* 805D8DEC  3A FA 00 01 */	addi r23, r26, 1
/* 805D8DF0  7C 7B 1B 78 */	mr r27, r3
/* 805D8DF4  3B 20 00 00 */	li r25, 0
/* 805D8DF8  3B 00 00 00 */	li r24, 0
/* 805D8DFC  3B 80 00 01 */	li r28, 1
/* 805D8E00  3B 5A 00 01 */	addi r26, r26, 1
/* 805D8E04  48 00 00 08 */	b lbl_805D8E0C
lbl_805D8E08:
/* 805D8E08  7F 7B 1A 14 */	add r27, r27, r3
lbl_805D8E0C:
/* 805D8E0C  7C 1A B0 00 */	cmpw r26, r22
/* 805D8E10  40 81 00 18 */	ble lbl_805D8E28
/* 805D8E14  7C 17 B0 00 */	cmpw r23, r22
/* 805D8E18  40 82 00 74 */	bne lbl_805D8E8C
/* 805D8E1C  7F 1B C3 78 */	mr r27, r24
/* 805D8E20  7F 3C CB 78 */	mr r28, r25
/* 805D8E24  48 00 00 68 */	b lbl_805D8E8C
lbl_805D8E28:
/* 805D8E28  40 82 00 40 */	bne lbl_805D8E68
/* 805D8E2C  A8 1F 00 26 */	lha r0, 0x26(r31)
/* 805D8E30  7C 1B 00 00 */	cmpw r27, r0
/* 805D8E34  41 80 00 34 */	blt lbl_805D8E68
/* 805D8E38  7C 17 B0 00 */	cmpw r23, r22
/* 805D8E3C  40 82 00 20 */	bne lbl_805D8E5C
/* 805D8E40  7C 78 00 50 */	subf r3, r24, r0
/* 805D8E44  7C 00 D8 50 */	subf r0, r0, r27
/* 805D8E48  7C 03 00 00 */	cmpw r3, r0
/* 805D8E4C  40 80 00 10 */	bge lbl_805D8E5C
/* 805D8E50  7F 1B C3 78 */	mr r27, r24
/* 805D8E54  7F 3C CB 78 */	mr r28, r25
/* 805D8E58  3B BD FF FF */	addi r29, r29, -1
lbl_805D8E5C:
/* 805D8E5C  3B 9C 00 01 */	addi r28, r28, 1
/* 805D8E60  3B BD 00 01 */	addi r29, r29, 1
/* 805D8E64  48 00 00 28 */	b lbl_805D8E8C
lbl_805D8E68:
/* 805D8E68  7F 99 E3 78 */	mr r25, r28
/* 805D8E6C  7F 57 D3 78 */	mr r23, r26
/* 805D8E70  7F 78 DB 78 */	mr r24, r27
/* 805D8E74  3B DE 00 01 */	addi r30, r30, 1
/* 805D8E78  3B 9C 00 01 */	addi r28, r28, 1
/* 805D8E7C  3B BD 00 01 */	addi r29, r29, 1
lbl_805D8E80:
/* 805D8E80  A8 1F 00 1E */	lha r0, 0x1e(r31)
/* 805D8E84  7C 1D 00 00 */	cmpw r29, r0
/* 805D8E88  41 80 FF 30 */	blt lbl_805D8DB8
lbl_805D8E8C:
/* 805D8E8C  B3 7F 00 26 */	sth r27, 0x26(r31)
/* 805D8E90  39 61 00 30 */	addi r11, r1, 0x30
/* 805D8E94  B3 BF 00 16 */	sth r29, 0x16(r31)
/* 805D8E98  B3 9F 00 22 */	sth r28, 0x22(r31)
/* 805D8E9C  4B AC 20 69 */	bl func_8009AF04
/* 805D8EA0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805D8EA4  7C 08 03 A6 */	mtlr r0
/* 805D8EA8  38 21 00 30 */	addi r1, r1, 0x30
/* 805D8EAC  4E 80 00 20 */	blr 
