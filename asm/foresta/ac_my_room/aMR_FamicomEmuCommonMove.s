lbl_804738CC:
/* 804738CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804738D0  7C 08 02 A6 */	mflr r0
/* 804738D4  7C 65 1B 78 */	mr r5, r3
/* 804738D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804738DC  88 03 01 2D */	lbz r0, 0x12d(r3)
/* 804738E0  28 00 00 00 */	cmplwi r0, 0
/* 804738E4  41 82 00 34 */	beq lbl_80473918
/* 804738E8  2C 06 00 00 */	cmpwi r6, 0
/* 804738EC  40 82 00 18 */	bne lbl_80473904
/* 804738F0  7C 83 23 78 */	mr r3, r4
/* 804738F4  7C A4 2B 78 */	mr r4, r5
/* 804738F8  38 A0 00 00 */	li r5, 0
/* 804738FC  4B FF FE 61 */	bl aMR_RequestStartEmu_MemoryC
/* 80473900  48 00 00 18 */	b lbl_80473918
lbl_80473904:
/* 80473904  7C 83 23 78 */	mr r3, r4
/* 80473908  7C A4 2B 78 */	mr r4, r5
/* 8047390C  7C C5 33 78 */	mr r5, r6
/* 80473910  7C E6 3B 78 */	mr r6, r7
/* 80473914  4B FF FD C5 */	bl aMR_RequestStartEmu
lbl_80473918:
/* 80473918  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047391C  7C 08 03 A6 */	mtlr r0
/* 80473920  38 21 00 10 */	addi r1, r1, 0x10
/* 80473924  4E 80 00 20 */	blr 
