lbl_8058C2D4:
/* 8058C2D4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8058C2D8  7C 08 02 A6 */	mflr r0
/* 8058C2DC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8058C2E0  39 61 00 40 */	addi r11, r1, 0x40
/* 8058C2E4  4B B0 EB E1 */	bl func_8009AEC4
/* 8058C2E8  7C 79 1B 78 */	mr r25, r3
/* 8058C2EC  7C 9A 23 78 */	mr r26, r4
/* 8058C2F0  88 03 08 08 */	lbz r0, 0x808(r3)
/* 8058C2F4  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 8058C2F8  7C BB 2B 78 */	mr r27, r5
/* 8058C2FC  7C DC 33 78 */	mr r28, r6
/* 8058C300  7C 03 00 40 */	cmplw r3, r0
/* 8058C304  7C FD 3B 78 */	mr r29, r7
/* 8058C308  7D 1E 43 78 */	mr r30, r8
/* 8058C30C  7D 3F 4B 78 */	mr r31, r9
/* 8058C310  38 60 00 00 */	li r3, 0
/* 8058C314  41 80 00 3C */	blt lbl_8058C350
/* 8058C318  38 61 00 08 */	addi r3, r1, 8
/* 8058C31C  38 80 00 0C */	li r4, 0xc
/* 8058C320  4B AD 0D 49 */	bl bzero
/* 8058C324  B3 A1 00 08 */	sth r29, 8(r1)
/* 8058C328  38 79 08 0C */	addi r3, r25, 0x80c
/* 8058C32C  38 81 00 08 */	addi r4, r1, 8
/* 8058C330  38 A0 00 0C */	li r5, 0xc
/* 8058C334  B3 C1 00 0C */	sth r30, 0xc(r1)
/* 8058C338  B3 E1 00 0E */	sth r31, 0xe(r1)
/* 8058C33C  9B 59 08 08 */	stb r26, 0x808(r25)
/* 8058C340  9B 79 08 09 */	stb r27, 0x809(r25)
/* 8058C344  9B 99 08 0A */	stb r28, 0x80a(r25)
/* 8058C348  4B E2 E6 DD */	bl func_803BAA24
/* 8058C34C  38 60 00 01 */	li r3, 1
lbl_8058C350:
/* 8058C350  39 61 00 40 */	addi r11, r1, 0x40
/* 8058C354  4B B0 EB BD */	bl func_8009AF10
/* 8058C358  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8058C35C  7C 08 03 A6 */	mtlr r0
/* 8058C360  38 21 00 40 */	addi r1, r1, 0x40
/* 8058C364  4E 80 00 20 */	blr 
