lbl_80524838:
/* 80524838  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8052483C  7C 08 02 A6 */	mflr r0
/* 80524840  90 01 00 44 */	stw r0, 0x44(r1)
/* 80524844  39 61 00 40 */	addi r11, r1, 0x40
/* 80524848  4B B7 66 7D */	bl func_8009AEC4
/* 8052484C  7C 79 1B 78 */	mr r25, r3
/* 80524850  7C 9A 23 78 */	mr r26, r4
/* 80524854  88 03 08 08 */	lbz r0, 0x808(r3)
/* 80524858  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 8052485C  7C BB 2B 78 */	mr r27, r5
/* 80524860  7C DC 33 78 */	mr r28, r6
/* 80524864  7C 03 00 40 */	cmplw r3, r0
/* 80524868  7C FD 3B 78 */	mr r29, r7
/* 8052486C  7D 1E 43 78 */	mr r30, r8
/* 80524870  7D 3F 4B 78 */	mr r31, r9
/* 80524874  38 60 00 00 */	li r3, 0
/* 80524878  41 80 00 3C */	blt lbl_805248B4
/* 8052487C  38 61 00 08 */	addi r3, r1, 8
/* 80524880  38 80 00 0C */	li r4, 0xc
/* 80524884  4B B3 87 E5 */	bl bzero
/* 80524888  B3 A1 00 08 */	sth r29, 8(r1)
/* 8052488C  38 79 08 0C */	addi r3, r25, 0x80c
/* 80524890  38 81 00 08 */	addi r4, r1, 8
/* 80524894  38 A0 00 0C */	li r5, 0xc
/* 80524898  B3 C1 00 0C */	sth r30, 0xc(r1)
/* 8052489C  B3 E1 00 0E */	sth r31, 0xe(r1)
/* 805248A0  9B 59 08 08 */	stb r26, 0x808(r25)
/* 805248A4  9B 79 08 09 */	stb r27, 0x809(r25)
/* 805248A8  9B 99 08 0A */	stb r28, 0x80a(r25)
/* 805248AC  4B E9 61 79 */	bl func_803BAA24
/* 805248B0  38 60 00 01 */	li r3, 1
lbl_805248B4:
/* 805248B4  39 61 00 40 */	addi r11, r1, 0x40
/* 805248B8  4B B7 66 59 */	bl func_8009AF10
/* 805248BC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805248C0  7C 08 03 A6 */	mtlr r0
/* 805248C4  38 21 00 40 */	addi r1, r1, 0x40
/* 805248C8  4E 80 00 20 */	blr 
