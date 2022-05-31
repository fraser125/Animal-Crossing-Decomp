lbl_803AD224:
/* 803AD224  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803AD228  7C 08 02 A6 */	mflr r0
/* 803AD22C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803AD230  39 61 00 20 */	addi r11, r1, 0x20
/* 803AD234  4B CE DC 99 */	bl func_8009AECC
/* 803AD238  7C 7B 1B 78 */	mr r27, r3
/* 803AD23C  7C 9C 23 78 */	mr r28, r4
/* 803AD240  3B A0 00 00 */	li r29, 0
/* 803AD244  3B C0 00 00 */	li r30, 0
/* 803AD248  3B E0 00 00 */	li r31, 0
lbl_803AD24C:
/* 803AD24C  7C 7B FA 14 */	add r3, r27, r31
/* 803AD250  38 9C 00 01 */	addi r4, r28, 1
/* 803AD254  4B FF FF 75 */	bl sChk_Haniwa_Item_c_sub
/* 803AD258  3B DE 00 01 */	addi r30, r30, 1
/* 803AD25C  7F BD 1B 78 */	or r29, r29, r3
/* 803AD260  2C 1E 00 04 */	cmpwi r30, 4
/* 803AD264  3B FF 00 08 */	addi r31, r31, 8
/* 803AD268  41 80 FF E4 */	blt lbl_803AD24C
/* 803AD26C  7F A3 EB 78 */	mr r3, r29
/* 803AD270  39 61 00 20 */	addi r11, r1, 0x20
/* 803AD274  4B CE DC A5 */	bl func_8009AF18
/* 803AD278  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803AD27C  7C 08 03 A6 */	mtlr r0
/* 803AD280  38 21 00 20 */	addi r1, r1, 0x20
/* 803AD284  4E 80 00 20 */	blr 
