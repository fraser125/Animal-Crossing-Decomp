lbl_804AAF58:
/* 804AAF58  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804AAF5C  7C 08 02 A6 */	mflr r0
/* 804AAF60  90 01 00 44 */	stw r0, 0x44(r1)
/* 804AAF64  39 61 00 40 */	addi r11, r1, 0x40
/* 804AAF68  4B BE FF 5D */	bl func_8009AEC4
/* 804AAF6C  7C 79 1B 78 */	mr r25, r3
/* 804AAF70  7C 9A 23 78 */	mr r26, r4
/* 804AAF74  88 03 08 08 */	lbz r0, 0x808(r3)
/* 804AAF78  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 804AAF7C  7C BB 2B 78 */	mr r27, r5
/* 804AAF80  7C DC 33 78 */	mr r28, r6
/* 804AAF84  7C 03 00 40 */	cmplw r3, r0
/* 804AAF88  7C FD 3B 78 */	mr r29, r7
/* 804AAF8C  7D 1E 43 78 */	mr r30, r8
/* 804AAF90  7D 3F 4B 78 */	mr r31, r9
/* 804AAF94  38 60 00 00 */	li r3, 0
/* 804AAF98  41 80 00 3C */	blt lbl_804AAFD4
/* 804AAF9C  38 61 00 08 */	addi r3, r1, 8
/* 804AAFA0  38 80 00 0C */	li r4, 0xc
/* 804AAFA4  4B BB 20 C5 */	bl bzero
/* 804AAFA8  B3 A1 00 08 */	sth r29, 8(r1)
/* 804AAFAC  38 79 08 0C */	addi r3, r25, 0x80c
/* 804AAFB0  38 81 00 08 */	addi r4, r1, 8
/* 804AAFB4  38 A0 00 0C */	li r5, 0xc
/* 804AAFB8  B3 C1 00 0C */	sth r30, 0xc(r1)
/* 804AAFBC  B3 E1 00 0E */	sth r31, 0xe(r1)
/* 804AAFC0  9B 59 08 08 */	stb r26, 0x808(r25)
/* 804AAFC4  9B 79 08 09 */	stb r27, 0x809(r25)
/* 804AAFC8  9B 99 08 0A */	stb r28, 0x80a(r25)
/* 804AAFCC  4B F0 FA 59 */	bl func_803BAA24
/* 804AAFD0  38 60 00 01 */	li r3, 1
lbl_804AAFD4:
/* 804AAFD4  39 61 00 40 */	addi r11, r1, 0x40
/* 804AAFD8  4B BE FF 39 */	bl func_8009AF10
/* 804AAFDC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804AAFE0  7C 08 03 A6 */	mtlr r0
/* 804AAFE4  38 21 00 40 */	addi r1, r1, 0x40
/* 804AAFE8  4E 80 00 20 */	blr 
