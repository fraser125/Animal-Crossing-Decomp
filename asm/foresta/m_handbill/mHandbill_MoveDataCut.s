lbl_803B1A60:
/* 803B1A60  7C 05 30 00 */	cmpw r5, r6
/* 803B1A64  7C EA 3B 78 */	mr r10, r7
/* 803B1A68  40 80 00 80 */	bge lbl_803B1AE8
/* 803B1A6C  7C 06 38 50 */	subf r0, r6, r7
/* 803B1A70  7D 23 32 14 */	add r9, r3, r6
/* 803B1A74  7C 83 2A 14 */	add r4, r3, r5
/* 803B1A78  7C 09 03 A6 */	mtctr r0
/* 803B1A7C  7C 06 38 00 */	cmpw r6, r7
/* 803B1A80  40 80 00 20 */	bge lbl_803B1AA0
lbl_803B1A84:
/* 803B1A84  88 09 00 00 */	lbz r0, 0(r9)
/* 803B1A88  38 A5 00 01 */	addi r5, r5, 1
/* 803B1A8C  38 C6 00 01 */	addi r6, r6, 1
/* 803B1A90  39 29 00 01 */	addi r9, r9, 1
/* 803B1A94  98 04 00 00 */	stb r0, 0(r4)
/* 803B1A98  38 84 00 01 */	addi r4, r4, 1
/* 803B1A9C  42 00 FF E8 */	bdnz lbl_803B1A84
lbl_803B1AA0:
/* 803B1AA0  2C 08 00 00 */	cmpwi r8, 0
/* 803B1AA4  7C 05 30 50 */	subf r0, r5, r6
/* 803B1AA8  7D 40 50 50 */	subf r10, r0, r10
/* 803B1AAC  41 82 00 94 */	beq lbl_803B1B40
/* 803B1AB0  2C 08 00 01 */	cmpwi r8, 1
/* 803B1AB4  40 82 00 0C */	bne lbl_803B1AC0
/* 803B1AB8  38 80 00 CD */	li r4, 0xcd
/* 803B1ABC  48 00 00 08 */	b lbl_803B1AC4
lbl_803B1AC0:
/* 803B1AC0  38 80 00 20 */	li r4, 0x20
lbl_803B1AC4:
/* 803B1AC4  7C 05 38 50 */	subf r0, r5, r7
/* 803B1AC8  7C 63 2A 14 */	add r3, r3, r5
/* 803B1ACC  7C 09 03 A6 */	mtctr r0
/* 803B1AD0  7C 05 38 00 */	cmpw r5, r7
/* 803B1AD4  40 80 00 6C */	bge lbl_803B1B40
lbl_803B1AD8:
/* 803B1AD8  98 83 00 00 */	stb r4, 0(r3)
/* 803B1ADC  38 63 00 01 */	addi r3, r3, 1
/* 803B1AE0  42 00 FF F8 */	bdnz lbl_803B1AD8
/* 803B1AE4  48 00 00 5C */	b lbl_803B1B40
lbl_803B1AE8:
/* 803B1AE8  40 81 00 58 */	ble lbl_803B1B40
/* 803B1AEC  7C 06 28 50 */	subf r0, r6, r5
/* 803B1AF0  7C A6 38 50 */	subf r5, r6, r7
/* 803B1AF4  7D 4A 02 14 */	add r10, r10, r0
/* 803B1AF8  7C 0A 20 00 */	cmpw r10, r4
/* 803B1AFC  40 81 00 14 */	ble lbl_803B1B10
/* 803B1B00  7C 04 50 50 */	subf r0, r4, r10
/* 803B1B04  7C 8A 23 78 */	mr r10, r4
/* 803B1B08  7C E0 38 50 */	subf r7, r0, r7
/* 803B1B0C  7C A0 28 50 */	subf r5, r0, r5
lbl_803B1B10:
/* 803B1B10  38 8A FF FF */	addi r4, r10, -1
/* 803B1B14  38 C7 FF FF */	addi r6, r7, -1
/* 803B1B18  7C 83 22 14 */	add r4, r3, r4
/* 803B1B1C  7C C3 32 14 */	add r6, r3, r6
/* 803B1B20  7C A9 03 A6 */	mtctr r5
/* 803B1B24  2C 05 00 00 */	cmpwi r5, 0
/* 803B1B28  40 81 00 18 */	ble lbl_803B1B40
lbl_803B1B2C:
/* 803B1B2C  88 06 00 00 */	lbz r0, 0(r6)
/* 803B1B30  38 C6 FF FF */	addi r6, r6, -1
/* 803B1B34  98 04 00 00 */	stb r0, 0(r4)
/* 803B1B38  38 84 FF FF */	addi r4, r4, -1
/* 803B1B3C  42 00 FF F0 */	bdnz lbl_803B1B2C
lbl_803B1B40:
/* 803B1B40  7D 43 53 78 */	mr r3, r10
/* 803B1B44  4E 80 00 20 */	blr 
