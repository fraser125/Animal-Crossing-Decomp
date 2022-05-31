lbl_8038EA14:
/* 8038EA14  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8038EA18  7C 08 02 A6 */	mflr r0
/* 8038EA1C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8038EA20  39 61 00 30 */	addi r11, r1, 0x30
/* 8038EA24  4B D0 C4 99 */	bl func_8009AEBC
/* 8038EA28  7F E6 31 D6 */	mullw r31, r6, r6
/* 8038EA2C  7C 98 23 78 */	mr r24, r4
/* 8038EA30  38 00 00 00 */	li r0, 0
/* 8038EA34  90 04 00 00 */	stw r0, 0(r4)
/* 8038EA38  7C 77 1B 78 */	mr r23, r3
/* 8038EA3C  7C B9 2B 78 */	mr r25, r5
/* 8038EA40  7C FA 3B 78 */	mr r26, r7
/* 8038EA44  7D 1B 43 78 */	mr r27, r8
/* 8038EA48  7D 3C 4B 78 */	mr r28, r9
/* 8038EA4C  7D 5D 53 78 */	mr r29, r10
/* 8038EA50  3B C0 00 00 */	li r30, 0
/* 8038EA54  48 00 00 44 */	b lbl_8038EA98
lbl_8038EA58:
/* 8038EA58  80 18 00 00 */	lwz r0, 0(r24)
/* 8038EA5C  2C 00 00 10 */	cmpwi r0, 0x10
/* 8038EA60  40 80 00 30 */	bge lbl_8038EA90
/* 8038EA64  7E E3 BB 78 */	mr r3, r23
/* 8038EA68  7F 24 CB 78 */	mr r4, r25
/* 8038EA6C  7F 45 D3 78 */	mr r5, r26
/* 8038EA70  7F 66 DB 78 */	mr r6, r27
/* 8038EA74  7F 87 E3 78 */	mr r7, r28
/* 8038EA78  7F A8 EB 78 */	mr r8, r29
/* 8038EA7C  4B FF F2 95 */	bl mCoBG_MakeOneColumnCollisionData
/* 8038EA80  80 78 00 00 */	lwz r3, 0(r24)
/* 8038EA84  3A F7 00 20 */	addi r23, r23, 0x20
/* 8038EA88  38 03 00 01 */	addi r0, r3, 1
/* 8038EA8C  90 18 00 00 */	stw r0, 0(r24)
lbl_8038EA90:
/* 8038EA90  3B 39 00 30 */	addi r25, r25, 0x30
/* 8038EA94  3B DE 00 01 */	addi r30, r30, 1
lbl_8038EA98:
/* 8038EA98  7C 1E F8 00 */	cmpw r30, r31
/* 8038EA9C  41 80 FF BC */	blt lbl_8038EA58
/* 8038EAA0  39 61 00 30 */	addi r11, r1, 0x30
/* 8038EAA4  4B D0 C4 65 */	bl func_8009AF08
/* 8038EAA8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8038EAAC  7C 08 03 A6 */	mtlr r0
/* 8038EAB0  38 21 00 30 */	addi r1, r1, 0x30
/* 8038EAB4  4E 80 00 20 */	blr 
