lbl_804A2B68:
/* 804A2B68  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804A2B6C  7C 08 02 A6 */	mflr r0
/* 804A2B70  90 01 00 34 */	stw r0, 0x34(r1)
/* 804A2B74  39 61 00 30 */	addi r11, r1, 0x30
/* 804A2B78  4B BF 83 41 */	bl func_8009AEB8
/* 804A2B7C  4B F0 22 15 */	bl mFI_GetBlockXMax
/* 804A2B80  54 77 06 3E */	clrlwi r23, r3, 0x18
/* 804A2B84  4B F0 22 55 */	bl mFI_GetBlockZMax
/* 804A2B88  54 76 06 3E */	clrlwi r22, r3, 0x18
/* 804A2B8C  3B 20 00 00 */	li r25, 0
/* 804A2B90  3B E0 00 00 */	li r31, 0
/* 804A2B94  48 00 00 88 */	b lbl_804A2C1C
lbl_804A2B98:
/* 804A2B98  3B 00 00 00 */	li r24, 0
/* 804A2B9C  3B C0 00 00 */	li r30, 0
/* 804A2BA0  48 00 00 6C */	b lbl_804A2C0C
lbl_804A2BA4:
/* 804A2BA4  7F 03 C3 78 */	mr r3, r24
/* 804A2BA8  7F 24 CB 78 */	mr r4, r25
/* 804A2BAC  4B F0 45 A9 */	bl mFI_BkNumtoUtFGTop
/* 804A2BB0  3B 60 00 00 */	li r27, 0
/* 804A2BB4  7C 7C 1B 78 */	mr r28, r3
lbl_804A2BB8:
/* 804A2BB8  3B 40 00 00 */	li r26, 0
/* 804A2BBC  7F BB FA 14 */	add r29, r27, r31
lbl_804A2BC0:
/* 804A2BC0  A0 1C 00 00 */	lhz r0, 0(r28)
/* 804A2BC4  28 00 09 00 */	cmplwi r0, 0x900
/* 804A2BC8  41 80 00 20 */	blt lbl_804A2BE8
/* 804A2BCC  28 00 09 21 */	cmplwi r0, 0x921
/* 804A2BD0  40 80 00 18 */	bge lbl_804A2BE8
/* 804A2BD4  7F A5 EB 78 */	mr r5, r29
/* 804A2BD8  7C 9A F2 14 */	add r4, r26, r30
/* 804A2BDC  38 60 00 00 */	li r3, 0
/* 804A2BE0  38 C0 00 01 */	li r6, 1
/* 804A2BE4  4B F0 4A 69 */	bl mFI_UtNumtoFGSet_common
lbl_804A2BE8:
/* 804A2BE8  3B 5A 00 01 */	addi r26, r26, 1
/* 804A2BEC  3B 9C 00 02 */	addi r28, r28, 2
/* 804A2BF0  2C 1A 00 10 */	cmpwi r26, 0x10
/* 804A2BF4  41 80 FF CC */	blt lbl_804A2BC0
/* 804A2BF8  3B 7B 00 01 */	addi r27, r27, 1
/* 804A2BFC  2C 1B 00 10 */	cmpwi r27, 0x10
/* 804A2C00  41 80 FF B8 */	blt lbl_804A2BB8
/* 804A2C04  3B 18 00 01 */	addi r24, r24, 1
/* 804A2C08  3B DE 00 10 */	addi r30, r30, 0x10
lbl_804A2C0C:
/* 804A2C0C  7C 18 B8 00 */	cmpw r24, r23
/* 804A2C10  41 80 FF 94 */	blt lbl_804A2BA4
/* 804A2C14  3B 39 00 01 */	addi r25, r25, 1
/* 804A2C18  3B FF 00 10 */	addi r31, r31, 0x10
lbl_804A2C1C:
/* 804A2C1C  7C 19 B0 00 */	cmpw r25, r22
/* 804A2C20  41 80 FF 78 */	blt lbl_804A2B98
/* 804A2C24  39 61 00 30 */	addi r11, r1, 0x30
/* 804A2C28  4B BF 82 DD */	bl func_8009AF04
/* 804A2C2C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804A2C30  7C 08 03 A6 */	mtlr r0
/* 804A2C34  38 21 00 30 */	addi r1, r1, 0x30
/* 804A2C38  4E 80 00 20 */	blr 
