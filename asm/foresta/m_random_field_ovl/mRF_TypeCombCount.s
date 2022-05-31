lbl_80509F60:
/* 80509F60  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80509F64  7C 08 02 A6 */	mflr r0
/* 80509F68  90 01 00 34 */	stw r0, 0x34(r1)
/* 80509F6C  39 61 00 30 */	addi r11, r1, 0x30
/* 80509F70  4B B9 0F 51 */	bl func_8009AEC0
/* 80509F74  7C DA 33 78 */	mr r26, r6
/* 80509F78  7C 78 1B 78 */	mr r24, r3
/* 80509F7C  7C 99 23 78 */	mr r25, r4
/* 80509F80  54 BD 06 3E */	clrlwi r29, r5, 0x18
/* 80509F84  7F 5E 07 34 */	extsh r30, r26
/* 80509F88  3B 60 00 00 */	li r27, 0
/* 80509F8C  3B 80 00 00 */	li r28, 0
/* 80509F90  3B E0 00 00 */	li r31, 0
/* 80509F94  48 00 00 48 */	b lbl_80509FDC
lbl_80509F98:
/* 80509F98  38 1F 00 04 */	addi r0, r31, 4
/* 80509F9C  7C 18 00 AE */	lbzx r0, r24, r0
/* 80509FA0  7C 1D 00 40 */	cmplw r29, r0
/* 80509FA4  40 82 00 30 */	bne lbl_80509FD4
/* 80509FA8  7F 40 07 35 */	extsh. r0, r26
/* 80509FAC  40 82 00 1C */	bne lbl_80509FC8
/* 80509FB0  7F 83 07 34 */	extsh r3, r28
/* 80509FB4  4B FF FF 71 */	bl mRF_SearchAlreadyUse
/* 80509FB8  2C 03 00 00 */	cmpwi r3, 0
/* 80509FBC  40 82 00 18 */	bne lbl_80509FD4
/* 80509FC0  3B 7B 00 01 */	addi r27, r27, 1
/* 80509FC4  48 00 00 10 */	b lbl_80509FD4
lbl_80509FC8:
/* 80509FC8  2C 1E 00 01 */	cmpwi r30, 1
/* 80509FCC  40 82 00 08 */	bne lbl_80509FD4
/* 80509FD0  3B 7B 00 01 */	addi r27, r27, 1
lbl_80509FD4:
/* 80509FD4  3B 9C 00 01 */	addi r28, r28, 1
/* 80509FD8  3B FF 00 06 */	addi r31, r31, 6
lbl_80509FDC:
/* 80509FDC  7C 1C C8 00 */	cmpw r28, r25
/* 80509FE0  41 80 FF B8 */	blt lbl_80509F98
/* 80509FE4  7F 63 DB 78 */	mr r3, r27
/* 80509FE8  39 61 00 30 */	addi r11, r1, 0x30
/* 80509FEC  4B B9 0F 21 */	bl func_8009AF0C
/* 80509FF0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80509FF4  7C 08 03 A6 */	mtlr r0
/* 80509FF8  38 21 00 30 */	addi r1, r1, 0x30
/* 80509FFC  4E 80 00 20 */	blr 
