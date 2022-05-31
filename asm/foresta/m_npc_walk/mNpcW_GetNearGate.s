lbl_803D86A4:
/* 803D86A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803D86A8  7C 08 02 A6 */	mflr r0
/* 803D86AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 803D86B0  39 61 00 30 */	addi r11, r1, 0x30
/* 803D86B4  4B CC 28 15 */	bl func_8009AEC8
/* 803D86B8  38 00 00 10 */	li r0, 0x10
/* 803D86BC  7C FC 3B 79 */	or. r28, r7, r7
/* 803D86C0  90 03 00 00 */	stw r0, 0(r3)
/* 803D86C4  7C 7A 1B 78 */	mr r26, r3
/* 803D86C8  7C 9B 23 78 */	mr r27, r4
/* 803D86CC  7D 1D 43 78 */	mr r29, r8
/* 803D86D0  90 04 00 00 */	stw r0, 0(r4)
/* 803D86D4  3B C0 00 00 */	li r30, 0
/* 803D86D8  41 80 01 0C */	blt lbl_803D87E4
/* 803D86DC  2C 1C 00 10 */	cmpwi r28, 0x10
/* 803D86E0  40 80 01 04 */	bge lbl_803D87E4
/* 803D86E4  2C 1D 00 00 */	cmpwi r29, 0
/* 803D86E8  41 80 00 FC */	blt lbl_803D87E4
/* 803D86EC  2C 1D 00 10 */	cmpwi r29, 0x10
/* 803D86F0  40 80 00 F4 */	bge lbl_803D87E4
/* 803D86F4  7C A3 2B 78 */	mr r3, r5
/* 803D86F8  7C C4 33 78 */	mr r4, r6
/* 803D86FC  4B FC DA E9 */	bl mFI_BkNum2BlockType
/* 803D8700  2C 1C 00 08 */	cmpwi r28, 8
/* 803D8704  20 9C 00 10 */	subfic r4, r28, 0x10
/* 803D8708  40 80 00 08 */	bge lbl_803D8710
/* 803D870C  7F 84 E3 78 */	mr r4, r28
lbl_803D8710:
/* 803D8710  2C 1D 00 08 */	cmpwi r29, 8
/* 803D8714  20 1D 00 10 */	subfic r0, r29, 0x10
/* 803D8718  40 80 00 08 */	bge lbl_803D8720
/* 803D871C  7F A0 EB 78 */	mr r0, r29
lbl_803D8720:
/* 803D8720  7C 04 00 00 */	cmpw r4, r0
/* 803D8724  40 80 00 1C */	bge lbl_803D8740
/* 803D8728  2C 1C 00 08 */	cmpwi r28, 8
/* 803D872C  40 80 00 0C */	bge lbl_803D8738
/* 803D8730  3B E0 00 01 */	li r31, 1
/* 803D8734  48 00 00 20 */	b lbl_803D8754
lbl_803D8738:
/* 803D8738  3B E0 00 03 */	li r31, 3
/* 803D873C  48 00 00 18 */	b lbl_803D8754
lbl_803D8740:
/* 803D8740  2C 1D 00 08 */	cmpwi r29, 8
/* 803D8744  40 80 00 0C */	bge lbl_803D8750
/* 803D8748  3B E0 00 00 */	li r31, 0
/* 803D874C  48 00 00 08 */	b lbl_803D8754
lbl_803D8750:
/* 803D8750  3B E0 00 02 */	li r31, 2
lbl_803D8754:
/* 803D8754  7C 64 1B 78 */	mr r4, r3
/* 803D8758  7F E5 FB 78 */	mr r5, r31
/* 803D875C  38 61 00 08 */	addi r3, r1, 8
/* 803D8760  48 00 C4 35 */	bl mRF_BlockTypeDirect2GateData
/* 803D8764  28 03 00 00 */	cmplwi r3, 0
/* 803D8768  41 82 00 7C */	beq lbl_803D87E4
/* 803D876C  80 01 00 08 */	lwz r0, 8(r1)
/* 803D8770  2C 00 00 00 */	cmpwi r0, 0
/* 803D8774  40 81 00 70 */	ble lbl_803D87E4
/* 803D8778  38 E0 00 00 */	li r7, 0
/* 803D877C  48 00 00 5C */	b lbl_803D87D8
lbl_803D8780:
/* 803D8780  80 03 00 04 */	lwz r0, 4(r3)
/* 803D8784  2C 1F 00 01 */	cmpwi r31, 1
/* 803D8788  54 05 07 3E */	clrlwi r5, r0, 0x1c
/* 803D878C  7C 06 26 70 */	srawi r6, r0, 4
/* 803D8790  41 82 00 08 */	beq lbl_803D8798
/* 803D8794  40 82 00 18 */	bne lbl_803D87AC
lbl_803D8798:
/* 803D8798  7C 06 E8 50 */	subf r0, r6, r29
/* 803D879C  7C 04 FE 70 */	srawi r4, r0, 0x1f
/* 803D87A0  7C 80 02 78 */	xor r0, r4, r0
/* 803D87A4  7C 04 00 50 */	subf r0, r4, r0
/* 803D87A8  48 00 00 14 */	b lbl_803D87BC
lbl_803D87AC:
/* 803D87AC  7C 05 E0 50 */	subf r0, r5, r28
/* 803D87B0  7C 04 FE 70 */	srawi r4, r0, 0x1f
/* 803D87B4  7C 80 02 78 */	xor r0, r4, r0
/* 803D87B8  7C 04 00 50 */	subf r0, r4, r0
lbl_803D87BC:
/* 803D87BC  2C 00 00 10 */	cmpwi r0, 0x10
/* 803D87C0  40 80 00 10 */	bge lbl_803D87D0
/* 803D87C4  90 BA 00 00 */	stw r5, 0(r26)
/* 803D87C8  3B C0 00 01 */	li r30, 1
/* 803D87CC  90 DB 00 00 */	stw r6, 0(r27)
lbl_803D87D0:
/* 803D87D0  38 63 00 08 */	addi r3, r3, 8
/* 803D87D4  38 E7 00 01 */	addi r7, r7, 1
lbl_803D87D8:
/* 803D87D8  80 01 00 08 */	lwz r0, 8(r1)
/* 803D87DC  7C 07 00 00 */	cmpw r7, r0
/* 803D87E0  41 80 FF A0 */	blt lbl_803D8780
lbl_803D87E4:
/* 803D87E4  7F C3 F3 78 */	mr r3, r30
/* 803D87E8  39 61 00 30 */	addi r11, r1, 0x30
/* 803D87EC  4B CC 27 29 */	bl func_8009AF14
/* 803D87F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803D87F4  7C 08 03 A6 */	mtlr r0
/* 803D87F8  38 21 00 30 */	addi r1, r1, 0x30
/* 803D87FC  4E 80 00 20 */	blr 
