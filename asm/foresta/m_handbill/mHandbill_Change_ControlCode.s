lbl_803B2140:
/* 803B2140  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B2144  7C 08 02 A6 */	mflr r0
/* 803B2148  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B214C  39 61 00 20 */	addi r11, r1, 0x20
/* 803B2150  4B CE 8D 7D */	bl func_8009AECC
/* 803B2154  7C 7B 1B 78 */	mr r27, r3
/* 803B2158  7C DD 33 78 */	mr r29, r6
/* 803B215C  7C 9C 23 78 */	mr r28, r4
/* 803B2160  7C A6 2B 78 */	mr r6, r5
/* 803B2164  7F 7F DB 78 */	mr r31, r27
/* 803B2168  3B C0 00 00 */	li r30, 0
/* 803B216C  48 00 00 34 */	b lbl_803B21A0
lbl_803B2170:
/* 803B2170  88 1F 00 00 */	lbz r0, 0(r31)
/* 803B2174  28 00 00 7F */	cmplwi r0, 0x7f
/* 803B2178  40 82 00 20 */	bne lbl_803B2198
/* 803B217C  7F 63 DB 78 */	mr r3, r27
/* 803B2180  7F 84 E3 78 */	mr r4, r28
/* 803B2184  7F C5 F3 78 */	mr r5, r30
/* 803B2188  7F A7 EB 78 */	mr r7, r29
/* 803B218C  4B FF FF 59 */	bl mHandbill_Put_String
/* 803B2190  7C 66 1B 78 */	mr r6, r3
/* 803B2194  48 00 00 0C */	b lbl_803B21A0
lbl_803B2198:
/* 803B2198  3B DE 00 01 */	addi r30, r30, 1
/* 803B219C  3B FF 00 01 */	addi r31, r31, 1
lbl_803B21A0:
/* 803B21A0  7C 1E 30 00 */	cmpw r30, r6
/* 803B21A4  40 80 00 0C */	bge lbl_803B21B0
/* 803B21A8  7C 1E E0 00 */	cmpw r30, r28
/* 803B21AC  41 80 FF C4 */	blt lbl_803B2170
lbl_803B21B0:
/* 803B21B0  39 61 00 20 */	addi r11, r1, 0x20
/* 803B21B4  4B CE 8D 65 */	bl func_8009AF18
/* 803B21B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B21BC  7C 08 03 A6 */	mtlr r0
/* 803B21C0  38 21 00 20 */	addi r1, r1, 0x20
/* 803B21C4  4E 80 00 20 */	blr 
