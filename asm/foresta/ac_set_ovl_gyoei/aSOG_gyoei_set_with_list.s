lbl_80499FC8:
/* 80499FC8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80499FCC  7C 08 02 A6 */	mflr r0
/* 80499FD0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80499FD4  39 61 00 30 */	addi r11, r1, 0x30
/* 80499FD8  4B C0 0E E5 */	bl func_8009AEBC
/* 80499FDC  7C 98 23 78 */	mr r24, r4
/* 80499FE0  7C 77 1B 78 */	mr r23, r3
/* 80499FE4  80 04 44 E8 */	lwz r0, 0x44e8(r4)
/* 80499FE8  7C B9 2B 78 */	mr r25, r5
/* 80499FEC  7C DA 33 78 */	mr r26, r6
/* 80499FF0  3B A0 00 00 */	li r29, 0
/* 80499FF4  2C 00 00 00 */	cmpwi r0, 0
/* 80499FF8  40 81 00 70 */	ble lbl_8049A068
/* 80499FFC  3C 60 81 1D */	lis r3, copy_range@ha /* 0x811CF038@ha */
/* 8049A000  3B 98 43 A8 */	addi r28, r24, 0x43a8
/* 8049A004  3B C3 F0 38 */	addi r30, r3, copy_range@l /* 0x811CF038@l */
/* 8049A008  3B 60 00 00 */	li r27, 0
/* 8049A00C  3B E0 00 00 */	li r31, 0
lbl_8049A010:
/* 8049A010  7C 7C FA 14 */	add r3, r28, r31
/* 8049A014  7C 9E FA 14 */	add r4, r30, r31
/* 8049A018  38 A0 00 08 */	li r5, 8
/* 8049A01C  4B BC 30 01 */	bl func_8005D01C
/* 8049A020  3B 7B 00 01 */	addi r27, r27, 1
/* 8049A024  3B FF 00 08 */	addi r31, r31, 8
/* 8049A028  2C 1B 00 28 */	cmpwi r27, 0x28
/* 8049A02C  41 80 FF E4 */	blt lbl_8049A010
/* 8049A030  3C 60 81 1D */	lis r3, copy_range@ha /* 0x811CF038@ha */
/* 8049A034  80 DC 01 40 */	lwz r6, 0x140(r28)
/* 8049A038  38 A3 F0 38 */	addi r5, r3, copy_range@l /* 0x811CF038@l */
/* 8049A03C  7F 47 D3 78 */	mr r7, r26
/* 8049A040  7E E3 BB 78 */	mr r3, r23
/* 8049A044  38 98 41 80 */	addi r4, r24, 0x4180
/* 8049A048  4B FF FC C5 */	bl aSOG_gyoei_decide_gyoei
/* 8049A04C  2C 03 00 01 */	cmpwi r3, 1
/* 8049A050  40 82 00 18 */	bne lbl_8049A068
/* 8049A054  7E E3 BB 78 */	mr r3, r23
/* 8049A058  7F 25 CB 78 */	mr r5, r25
/* 8049A05C  38 98 41 80 */	addi r4, r24, 0x4180
/* 8049A060  4B FF FD 2D */	bl aSOG_gyoei_make
/* 8049A064  7C 7D 1B 78 */	mr r29, r3
lbl_8049A068:
/* 8049A068  7F A3 EB 78 */	mr r3, r29
/* 8049A06C  39 61 00 30 */	addi r11, r1, 0x30
/* 8049A070  4B C0 0E 99 */	bl func_8009AF08
/* 8049A074  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8049A078  7C 08 03 A6 */	mtlr r0
/* 8049A07C  38 21 00 30 */	addi r1, r1, 0x30
/* 8049A080  4E 80 00 20 */	blr 
