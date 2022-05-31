lbl_803FB78C:
/* 803FB78C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FB790  7C 08 02 A6 */	mflr r0
/* 803FB794  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FB798  39 61 00 20 */	addi r11, r1, 0x20
/* 803FB79C  4B C9 F7 2D */	bl func_8009AEC8
/* 803FB7A0  7C 7A 1B 78 */	mr r26, r3
/* 803FB7A4  38 00 00 02 */	li r0, 2
/* 803FB7A8  83 83 00 0C */	lwz r28, 0xc(r3)
/* 803FB7AC  3B BA 00 54 */	addi r29, r26, 0x54
/* 803FB7B0  3B 60 FF FF */	li r27, -1
/* 803FB7B4  38 60 00 00 */	li r3, 0
/* 803FB7B8  38 A0 FF FD */	li r5, -3
/* 803FB7BC  38 80 00 16 */	li r4, 0x16
/* 803FB7C0  7C 09 03 A6 */	mtctr r0
lbl_803FB7C4:
/* 803FB7C4  7C DD 1A 14 */	add r6, r29, r3
/* 803FB7C8  38 63 00 94 */	addi r3, r3, 0x94
/* 803FB7CC  90 A6 00 74 */	stw r5, 0x74(r6)
/* 803FB7D0  90 86 00 78 */	stw r4, 0x78(r6)
/* 803FB7D4  42 00 FF F0 */	bdnz lbl_803FB7C4
/* 803FB7D8  28 1C 00 00 */	cmplwi r28, 0
/* 803FB7DC  41 82 00 70 */	beq lbl_803FB84C
/* 803FB7E0  3B C0 00 00 */	li r30, 0
/* 803FB7E4  3B E0 00 07 */	li r31, 7
lbl_803FB7E8:
/* 803FB7E8  7F C5 F3 78 */	mr r5, r30
/* 803FB7EC  7F 86 E3 78 */	mr r6, r28
/* 803FB7F0  38 7D 00 74 */	addi r3, r29, 0x74
/* 803FB7F4  38 9D 00 78 */	addi r4, r29, 0x78
/* 803FB7F8  4B FF FA 89 */	bl mCD_CheckThisLandSlot
/* 803FB7FC  2C 03 00 01 */	cmpwi r3, 1
/* 803FB800  40 82 00 10 */	bne lbl_803FB810
/* 803FB804  93 DA 00 00 */	stw r30, 0(r26)
/* 803FB808  3B 60 00 01 */	li r27, 1
/* 803FB80C  48 00 00 40 */	b lbl_803FB84C
lbl_803FB810:
/* 803FB810  80 1D 00 78 */	lwz r0, 0x78(r29)
/* 803FB814  2C 00 00 16 */	cmpwi r0, 0x16
/* 803FB818  41 82 00 0C */	beq lbl_803FB824
/* 803FB81C  2C 03 FF FF */	cmpwi r3, -1
/* 803FB820  40 82 00 14 */	bne lbl_803FB834
lbl_803FB824:
/* 803FB824  80 7D 00 74 */	lwz r3, 0x74(r29)
/* 803FB828  4B FF EA 8D */	bl mCD_TransErrorCode
/* 803FB82C  90 7D 00 78 */	stw r3, 0x78(r29)
/* 803FB830  48 00 00 0C */	b lbl_803FB83C
lbl_803FB834:
/* 803FB834  93 FD 00 78 */	stw r31, 0x78(r29)
/* 803FB838  93 DA 00 00 */	stw r30, 0(r26)
lbl_803FB83C:
/* 803FB83C  3B DE 00 01 */	addi r30, r30, 1
/* 803FB840  3B BD 00 94 */	addi r29, r29, 0x94
/* 803FB844  2C 1E 00 02 */	cmpwi r30, 2
/* 803FB848  41 80 FF A0 */	blt lbl_803FB7E8
lbl_803FB84C:
/* 803FB84C  7F 63 DB 78 */	mr r3, r27
/* 803FB850  39 61 00 20 */	addi r11, r1, 0x20
/* 803FB854  4B C9 F6 C1 */	bl func_8009AF14
/* 803FB858  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FB85C  7C 08 03 A6 */	mtlr r0
/* 803FB860  38 21 00 20 */	addi r1, r1, 0x20
/* 803FB864  4E 80 00 20 */	blr 
