lbl_803B21C8:
/* 803B21C8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803B21CC  7C 08 02 A6 */	mflr r0
/* 803B21D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 803B21D4  39 61 00 30 */	addi r11, r1, 0x30
/* 803B21D8  4B CE 8C ED */	bl func_8009AEC4
/* 803B21DC  7C 79 1B 78 */	mr r25, r3
/* 803B21E0  7C DB 33 78 */	mr r27, r6
/* 803B21E4  7C 9A 23 78 */	mr r26, r4
/* 803B21E8  7C FC 3B 78 */	mr r28, r7
/* 803B21EC  7C A6 2B 78 */	mr r6, r5
/* 803B21F0  7F 3F CB 78 */	mr r31, r25
/* 803B21F4  3B A0 00 00 */	li r29, 0
/* 803B21F8  48 00 00 50 */	b lbl_803B2248
lbl_803B21FC:
/* 803B21FC  88 1F 00 00 */	lbz r0, 0(r31)
/* 803B2200  28 00 00 7F */	cmplwi r0, 0x7f
/* 803B2204  40 82 00 3C */	bne lbl_803B2240
/* 803B2208  7C DE 33 78 */	mr r30, r6
/* 803B220C  7F 23 CB 78 */	mr r3, r25
/* 803B2210  7F 44 D3 78 */	mr r4, r26
/* 803B2214  7F A5 EB 78 */	mr r5, r29
/* 803B2218  7F 87 E3 78 */	mr r7, r28
/* 803B221C  4B FF FE C9 */	bl mHandbill_Put_String
/* 803B2220  80 9B 00 00 */	lwz r4, 0(r27)
/* 803B2224  7C 66 1B 78 */	mr r6, r3
/* 803B2228  7C 1D 20 00 */	cmpw r29, r4
/* 803B222C  40 80 00 1C */	bge lbl_803B2248
/* 803B2230  7C 1E 30 50 */	subf r0, r30, r6
/* 803B2234  7C 04 02 14 */	add r0, r4, r0
/* 803B2238  90 1B 00 00 */	stw r0, 0(r27)
/* 803B223C  48 00 00 0C */	b lbl_803B2248
lbl_803B2240:
/* 803B2240  3B BD 00 01 */	addi r29, r29, 1
/* 803B2244  3B FF 00 01 */	addi r31, r31, 1
lbl_803B2248:
/* 803B2248  7C 1D 30 00 */	cmpw r29, r6
/* 803B224C  40 80 00 0C */	bge lbl_803B2258
/* 803B2250  7C 1D D0 00 */	cmpw r29, r26
/* 803B2254  41 80 FF A8 */	blt lbl_803B21FC
lbl_803B2258:
/* 803B2258  39 61 00 30 */	addi r11, r1, 0x30
/* 803B225C  4B CE 8C B5 */	bl func_8009AF10
/* 803B2260  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803B2264  7C 08 03 A6 */	mtlr r0
/* 803B2268  38 21 00 30 */	addi r1, r1, 0x30
/* 803B226C  4E 80 00 20 */	blr 
