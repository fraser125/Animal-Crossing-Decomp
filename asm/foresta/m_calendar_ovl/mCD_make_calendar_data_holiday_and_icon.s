lbl_805C6E40:
/* 805C6E40  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805C6E44  7C 08 02 A6 */	mflr r0
/* 805C6E48  90 01 00 34 */	stw r0, 0x34(r1)
/* 805C6E4C  39 61 00 30 */	addi r11, r1, 0x30
/* 805C6E50  4B AD 40 71 */	bl func_8009AEC0
/* 805C6E54  7C BA 2B 78 */	mr r26, r5
/* 805C6E58  7C 99 23 78 */	mr r25, r4
/* 805C6E5C  7C 78 1B 78 */	mr r24, r3
/* 805C6E60  7C DB 33 78 */	mr r27, r6
/* 805C6E64  7F 23 CB 78 */	mr r3, r25
/* 805C6E68  7F 44 D3 78 */	mr r4, r26
/* 805C6E6C  38 A0 00 01 */	li r5, 1
/* 805C6E70  4B E4 03 59 */	bl lbRTC_Week
/* 805C6E74  54 7C 06 3E */	clrlwi r28, r3, 0x18
/* 805C6E78  7F 23 CB 78 */	mr r3, r25
/* 805C6E7C  7F 44 D3 78 */	mr r4, r26
/* 805C6E80  4B E3 F8 F9 */	bl lbRTC_GetDaysByMonth
/* 805C6E84  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 805C6E88  7F 9D E3 78 */	mr r29, r28
/* 805C6E8C  7F DC 02 14 */	add r30, r28, r0
/* 805C6E90  3B 80 00 01 */	li r28, 1
/* 805C6E94  48 00 00 64 */	b lbl_805C6EF8
lbl_805C6E98:
/* 805C6E98  7F F8 EA 14 */	add r31, r24, r29
/* 805C6E9C  57 85 06 3E */	clrlwi r5, r28, 0x18
/* 805C6EA0  9B 9F 00 00 */	stb r28, 0(r31)
/* 805C6EA4  7F 23 CB 78 */	mr r3, r25
/* 805C6EA8  7F 44 D3 78 */	mr r4, r26
/* 805C6EAC  7F 66 DB 78 */	mr r6, r27
/* 805C6EB0  4B FF FA A1 */	bl mCD_make_icon
/* 805C6EB4  38 80 00 07 */	li r4, 7
/* 805C6EB8  98 7F 00 25 */	stb r3, 0x25(r31)
/* 805C6EBC  7C 1D 23 D6 */	divw r0, r29, r4
/* 805C6EC0  7C 00 21 D6 */	mullw r0, r0, r4
/* 805C6EC4  7C 00 E8 51 */	subf. r0, r0, r29
/* 805C6EC8  40 82 00 18 */	bne lbl_805C6EE0
/* 805C6ECC  88 1F 00 00 */	lbz r0, 0(r31)
/* 805C6ED0  54 00 06 FE */	clrlwi r0, r0, 0x1b
/* 805C6ED4  60 00 00 40 */	ori r0, r0, 0x40
/* 805C6ED8  98 1F 00 00 */	stb r0, 0(r31)
/* 805C6EDC  48 00 00 14 */	b lbl_805C6EF0
lbl_805C6EE0:
/* 805C6EE0  88 1F 00 00 */	lbz r0, 0(r31)
/* 805C6EE4  54 00 06 FE */	clrlwi r0, r0, 0x1b
/* 805C6EE8  60 00 00 20 */	ori r0, r0, 0x20
/* 805C6EEC  98 1F 00 00 */	stb r0, 0(r31)
lbl_805C6EF0:
/* 805C6EF0  3B 9C 00 01 */	addi r28, r28, 1
/* 805C6EF4  3B BD 00 01 */	addi r29, r29, 1
lbl_805C6EF8:
/* 805C6EF8  7C 1D F0 00 */	cmpw r29, r30
/* 805C6EFC  41 80 FF 9C */	blt lbl_805C6E98
/* 805C6F00  39 61 00 30 */	addi r11, r1, 0x30
/* 805C6F04  4B AD 40 09 */	bl func_8009AF0C
/* 805C6F08  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805C6F0C  7C 08 03 A6 */	mtlr r0
/* 805C6F10  38 21 00 30 */	addi r1, r1, 0x30
/* 805C6F14  4E 80 00 20 */	blr 
