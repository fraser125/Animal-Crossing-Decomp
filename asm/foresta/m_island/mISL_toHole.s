lbl_803B579C:
/* 803B579C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B57A0  7C 08 02 A6 */	mflr r0
/* 803B57A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B57A8  39 61 00 20 */	addi r11, r1, 0x20
/* 803B57AC  4B CE 57 1D */	bl func_8009AEC8
/* 803B57B0  7C 7A 1B 78 */	mr r26, r3
/* 803B57B4  7C 9B 23 78 */	mr r27, r4
/* 803B57B8  7C BC 2B 78 */	mr r28, r5
/* 803B57BC  7C DD 33 78 */	mr r29, r6
/* 803B57C0  3B C0 00 00 */	li r30, 0
lbl_803B57C4:
/* 803B57C4  3B E0 00 00 */	li r31, 0
lbl_803B57C8:
/* 803B57C8  A0 1A 00 00 */	lhz r0, 0(r26)
/* 803B57CC  28 00 25 12 */	cmplwi r0, 0x2512
/* 803B57D0  40 82 00 58 */	bne lbl_803B5828
/* 803B57D4  A0 1B 00 00 */	lhz r0, 0(r27)
/* 803B57D8  7C 00 FE 30 */	sraw r0, r0, r31
/* 803B57DC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803B57E0  41 82 00 48 */	beq lbl_803B5828
/* 803B57E4  7F 83 E3 78 */	mr r3, r28
/* 803B57E8  7F A4 EB 78 */	mr r4, r29
/* 803B57EC  7F E5 FB 78 */	mr r5, r31
/* 803B57F0  7F C6 F3 78 */	mr r6, r30
/* 803B57F4  4B FD AB E1 */	bl mCoBG_BnumUnum2HoleNumber
/* 803B57F8  2C 03 00 00 */	cmpwi r3, 0
/* 803B57FC  41 80 00 0C */	blt lbl_803B5808
/* 803B5800  2C 03 00 19 */	cmpwi r3, 0x19
/* 803B5804  41 80 00 08 */	blt lbl_803B580C
lbl_803B5808:
/* 803B5808  38 60 00 00 */	li r3, 0
lbl_803B580C:
/* 803B580C  38 63 00 2A */	addi r3, r3, 0x2a
/* 803B5810  38 00 00 01 */	li r0, 1
/* 803B5814  B0 7A 00 00 */	sth r3, 0(r26)
/* 803B5818  7C 00 F8 30 */	slw r0, r0, r31
/* 803B581C  A0 7B 00 00 */	lhz r3, 0(r27)
/* 803B5820  7C 60 00 78 */	andc r0, r3, r0
/* 803B5824  B0 1B 00 00 */	sth r0, 0(r27)
lbl_803B5828:
/* 803B5828  3B FF 00 01 */	addi r31, r31, 1
/* 803B582C  3B 5A 00 02 */	addi r26, r26, 2
/* 803B5830  2C 1F 00 10 */	cmpwi r31, 0x10
/* 803B5834  41 80 FF 94 */	blt lbl_803B57C8
/* 803B5838  3B DE 00 01 */	addi r30, r30, 1
/* 803B583C  3B 7B 00 02 */	addi r27, r27, 2
/* 803B5840  2C 1E 00 10 */	cmpwi r30, 0x10
/* 803B5844  41 80 FF 80 */	blt lbl_803B57C4
/* 803B5848  39 61 00 20 */	addi r11, r1, 0x20
/* 803B584C  4B CE 56 C9 */	bl func_8009AF14
/* 803B5850  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B5854  7C 08 03 A6 */	mtlr r0
/* 803B5858  38 21 00 20 */	addi r1, r1, 0x20
/* 803B585C  4E 80 00 20 */	blr 
