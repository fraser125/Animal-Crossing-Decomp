lbl_80513560:
/* 80513560  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80513564  7C 08 02 A6 */	mflr r0
/* 80513568  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051356C  39 61 00 20 */	addi r11, r1, 0x20
/* 80513570  4B B8 79 59 */	bl func_8009AEC8
/* 80513574  83 C6 00 00 */	lwz r30, 0(r6)
/* 80513578  7C 7A 1B 78 */	mr r26, r3
/* 8051357C  83 E6 00 04 */	lwz r31, 4(r6)
/* 80513580  7C 9B 23 78 */	mr r27, r4
/* 80513584  2C 1E 00 00 */	cmpwi r30, 0
/* 80513588  7C BC 2B 78 */	mr r28, r5
/* 8051358C  40 81 00 3C */	ble lbl_805135C8
/* 80513590  28 1F 00 00 */	cmplwi r31, 0
/* 80513594  41 82 00 34 */	beq lbl_805135C8
/* 80513598  3B A0 00 00 */	li r29, 0
/* 8051359C  48 00 00 24 */	b lbl_805135C0
lbl_805135A0:
/* 805135A0  80 9F 00 00 */	lwz r4, 0(r31)
/* 805135A4  7F 43 D3 78 */	mr r3, r26
/* 805135A8  80 1F 00 04 */	lwz r0, 4(r31)
/* 805135AC  7C 9B 22 14 */	add r4, r27, r4
/* 805135B0  7C BC 02 14 */	add r5, r28, r0
/* 805135B4  4B FF FF 71 */	bl mAGrw_HideOn
/* 805135B8  3B FF 00 08 */	addi r31, r31, 8
/* 805135BC  3B BD 00 01 */	addi r29, r29, 1
lbl_805135C0:
/* 805135C0  7C 1D F0 00 */	cmpw r29, r30
/* 805135C4  41 80 FF DC */	blt lbl_805135A0
lbl_805135C8:
/* 805135C8  39 61 00 20 */	addi r11, r1, 0x20
/* 805135CC  4B B8 79 49 */	bl func_8009AF14
/* 805135D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805135D4  7C 08 03 A6 */	mtlr r0
/* 805135D8  38 21 00 20 */	addi r1, r1, 0x20
/* 805135DC  4E 80 00 20 */	blr 
