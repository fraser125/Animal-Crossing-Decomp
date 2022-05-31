lbl_804CCA78:
/* 804CCA78  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804CCA7C  7C 08 02 A6 */	mflr r0
/* 804CCA80  90 01 00 34 */	stw r0, 0x34(r1)
/* 804CCA84  39 61 00 30 */	addi r11, r1, 0x30
/* 804CCA88  4B BC E4 3D */	bl func_8009AEC4
/* 804CCA8C  83 C5 00 04 */	lwz r30, 4(r5)
/* 804CCA90  7C 79 1B 78 */	mr r25, r3
/* 804CCA94  83 E5 00 08 */	lwz r31, 8(r5)
/* 804CCA98  7C 9A 23 78 */	mr r26, r4
/* 804CCA9C  83 85 00 00 */	lwz r28, 0(r5)
/* 804CCAA0  7C DB 33 78 */	mr r27, r6
/* 804CCAA4  3B A0 00 00 */	li r29, 0
/* 804CCAA8  48 00 00 2C */	b lbl_804CCAD4
lbl_804CCAAC:
/* 804CCAAC  80 BF 00 00 */	lwz r5, 0(r31)
/* 804CCAB0  7F 23 CB 78 */	mr r3, r25
/* 804CCAB4  7F 44 D3 78 */	mr r4, r26
/* 804CCAB8  7F 66 DB 78 */	mr r6, r27
/* 804CCABC  81 85 00 00 */	lwz r12, 0(r5)
/* 804CCAC0  7F 87 E3 78 */	mr r7, r28
/* 804CCAC4  7D 89 03 A6 */	mtctr r12
/* 804CCAC8  4E 80 04 21 */	bctrl 
/* 804CCACC  3B BD 00 01 */	addi r29, r29, 1
/* 804CCAD0  3B FF 00 04 */	addi r31, r31, 4
lbl_804CCAD4:
/* 804CCAD4  7C 1D F0 00 */	cmpw r29, r30
/* 804CCAD8  41 80 FF D4 */	blt lbl_804CCAAC
/* 804CCADC  39 61 00 30 */	addi r11, r1, 0x30
/* 804CCAE0  4B BC E4 31 */	bl func_8009AF10
/* 804CCAE4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804CCAE8  7C 08 03 A6 */	mtlr r0
/* 804CCAEC  38 21 00 30 */	addi r1, r1, 0x30
/* 804CCAF0  4E 80 00 20 */	blr 
