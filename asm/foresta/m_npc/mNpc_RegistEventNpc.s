lbl_803CEAA4:
/* 803CEAA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CEAA8  7C 08 02 A6 */	mflr r0
/* 803CEAAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CEAB0  39 61 00 20 */	addi r11, r1, 0x20
/* 803CEAB4  4B CC C4 1D */	bl func_8009AED0
/* 803CEAB8  7C 7C 1B 78 */	mr r28, r3
/* 803CEABC  7C 9D 23 78 */	mr r29, r4
/* 803CEAC0  7C BE 2B 78 */	mr r30, r5
/* 803CEAC4  7C DF 33 78 */	mr r31, r6
/* 803CEAC8  4B FF FF A1 */	bl mNpc_GetFreeEventNpcIdx
/* 803CEACC  2C 03 FF FF */	cmpwi r3, -1
/* 803CEAD0  38 80 00 00 */	li r4, 0
/* 803CEAD4  41 82 00 74 */	beq lbl_803CEB48
/* 803CEAD8  1C A3 00 0C */	mulli r5, r3, 0xc
/* 803CEADC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803CEAE0  57 E3 04 3F */	clrlwi. r3, r31, 0x10
/* 803CEAE4  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 803CEAE8  7C 80 2A 14 */	add r4, r0, r5
/* 803CEAEC  3C A4 00 02 */	addis r5, r4, 2
/* 803CEAF0  38 A5 68 38 */	addi r5, r5, 0x6838
/* 803CEAF4  41 82 00 30 */	beq lbl_803CEB24
/* 803CEAF8  28 03 FE 20 */	cmplwi r3, 0xfe20
/* 803CEAFC  38 00 00 00 */	li r0, 0
/* 803CEB00  41 82 00 14 */	beq lbl_803CEB14
/* 803CEB04  28 03 24 00 */	cmplwi r3, 0x2400
/* 803CEB08  41 80 00 10 */	blt lbl_803CEB18
/* 803CEB0C  28 03 24 FF */	cmplwi r3, 0x24ff
/* 803CEB10  40 80 00 08 */	bge lbl_803CEB18
lbl_803CEB14:
/* 803CEB14  38 00 00 01 */	li r0, 1
lbl_803CEB18:
/* 803CEB18  2C 00 00 00 */	cmpwi r0, 0
/* 803CEB1C  40 82 00 08 */	bne lbl_803CEB24
/* 803CEB20  3B E0 24 00 */	li r31, 0x2400
lbl_803CEB24:
/* 803CEB24  B3 85 00 00 */	sth r28, 0(r5)
/* 803CEB28  38 60 00 00 */	li r3, 0
/* 803CEB2C  38 00 00 01 */	li r0, 1
/* 803CEB30  38 80 00 01 */	li r4, 1
/* 803CEB34  B3 A5 00 02 */	sth r29, 2(r5)
/* 803CEB38  B3 C5 00 04 */	sth r30, 4(r5)
/* 803CEB3C  B3 E5 00 06 */	sth r31, 6(r5)
/* 803CEB40  98 65 00 08 */	stb r3, 8(r5)
/* 803CEB44  98 05 00 09 */	stb r0, 9(r5)
lbl_803CEB48:
/* 803CEB48  7C 83 23 78 */	mr r3, r4
/* 803CEB4C  39 61 00 20 */	addi r11, r1, 0x20
/* 803CEB50  4B CC C3 CD */	bl func_8009AF1C
/* 803CEB54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CEB58  7C 08 03 A6 */	mtlr r0
/* 803CEB5C  38 21 00 20 */	addi r1, r1, 0x20
/* 803CEB60  4E 80 00 20 */	blr 
