lbl_803A58C8:
/* 803A58C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A58CC  7C 08 02 A6 */	mflr r0
/* 803A58D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A58D4  39 61 00 20 */	addi r11, r1, 0x20
/* 803A58D8  4B CF 55 F5 */	bl func_8009AECC
/* 803A58DC  7C 7B 1B 78 */	mr r27, r3
/* 803A58E0  7C 9C 23 78 */	mr r28, r4
/* 803A58E4  7C BD 2B 78 */	mr r29, r5
/* 803A58E8  7C DE 33 78 */	mr r30, r6
/* 803A58EC  4B FF F4 ED */	bl mFI_GetBlockZMax
/* 803A58F0  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 803A58F4  4B FF F4 9D */	bl mFI_GetBlockXMax
/* 803A58F8  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 803A58FC  7F A3 EB 78 */	mr r3, r29
/* 803A5900  7F C4 F3 78 */	mr r4, r30
/* 803A5904  7F E6 FB 78 */	mr r6, r31
/* 803A5908  4B FF F9 9D */	bl mFI_UtNumCheck
/* 803A590C  2C 03 00 00 */	cmpwi r3, 0
/* 803A5910  41 82 00 18 */	beq lbl_803A5928
/* 803A5914  57 A4 07 3E */	clrlwi r4, r29, 0x1c
/* 803A5918  57 C0 07 3E */	clrlwi r0, r30, 0x1c
/* 803A591C  90 9B 00 00 */	stw r4, 0(r27)
/* 803A5920  90 1C 00 00 */	stw r0, 0(r28)
/* 803A5924  48 00 00 10 */	b lbl_803A5934
lbl_803A5928:
/* 803A5928  38 00 00 00 */	li r0, 0
/* 803A592C  90 1B 00 00 */	stw r0, 0(r27)
/* 803A5930  90 1C 00 00 */	stw r0, 0(r28)
lbl_803A5934:
/* 803A5934  39 61 00 20 */	addi r11, r1, 0x20
/* 803A5938  4B CF 55 E1 */	bl func_8009AF18
/* 803A593C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A5940  7C 08 03 A6 */	mtlr r0
/* 803A5944  38 21 00 20 */	addi r1, r1, 0x20
/* 803A5948  4E 80 00 20 */	blr 
