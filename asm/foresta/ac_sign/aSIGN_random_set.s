lbl_804A2A20:
/* 804A2A20  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804A2A24  7C 08 02 A6 */	mflr r0
/* 804A2A28  90 01 00 44 */	stw r0, 0x44(r1)
/* 804A2A2C  39 61 00 40 */	addi r11, r1, 0x40
/* 804A2A30  4B BF 84 85 */	bl func_8009AEB4
/* 804A2A34  4B F0 23 5D */	bl mFI_GetBlockXMax
/* 804A2A38  54 78 06 3E */	clrlwi r24, r3, 0x18
/* 804A2A3C  4B F0 23 9D */	bl mFI_GetBlockZMax
/* 804A2A40  54 77 06 3E */	clrlwi r23, r3, 0x18
/* 804A2A44  3B 40 00 00 */	li r26, 0
/* 804A2A48  3A C0 00 00 */	li r22, 0
/* 804A2A4C  48 00 00 FC */	b lbl_804A2B48
lbl_804A2A50:
/* 804A2A50  3B 20 00 00 */	li r25, 0
/* 804A2A54  3A A0 00 00 */	li r21, 0
/* 804A2A58  48 00 00 E0 */	b lbl_804A2B38
lbl_804A2A5C:
/* 804A2A5C  7F 23 CB 78 */	mr r3, r25
/* 804A2A60  7F 44 D3 78 */	mr r4, r26
/* 804A2A64  4B F0 46 F1 */	bl mFI_BkNumtoUtFGTop
/* 804A2A68  3B 80 00 00 */	li r28, 0
/* 804A2A6C  7C 7D 1B 78 */	mr r29, r3
lbl_804A2A70:
/* 804A2A70  7F FC B2 14 */	add r31, r28, r22
/* 804A2A74  57 9E 07 FE */	clrlwi r30, r28, 0x1f
/* 804A2A78  3B 60 00 00 */	li r27, 0
lbl_804A2A7C:
/* 804A2A7C  A0 9D 00 00 */	lhz r4, 0(r29)
/* 804A2A80  28 04 08 04 */	cmplwi r4, 0x804
/* 804A2A84  40 82 00 40 */	bne lbl_804A2AC4
/* 804A2A88  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 804A2A8C  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 804A2A90  80 63 00 00 */	lwz r3, 0(r3)
/* 804A2A94  A8 03 16 94 */	lha r0, 0x1694(r3)
/* 804A2A98  2C 00 03 E8 */	cmpwi r0, 0x3e8
/* 804A2A9C  40 82 00 28 */	bne lbl_804A2AC4
/* 804A2AA0  4B BB A2 2D */	bl func_8005CCCC
/* 804A2AA4  54 63 2E FE */	srwi r3, r3, 0x1b
/* 804A2AA8  7F E5 FB 78 */	mr r5, r31
/* 804A2AAC  38 03 09 00 */	addi r0, r3, 0x900
/* 804A2AB0  7C 9B AA 14 */	add r4, r27, r21
/* 804A2AB4  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 804A2AB8  38 C0 00 01 */	li r6, 1
/* 804A2ABC  4B F0 4B 91 */	bl mFI_UtNumtoFGSet_common
/* 804A2AC0  48 00 00 54 */	b lbl_804A2B14
lbl_804A2AC4:
/* 804A2AC4  28 04 00 00 */	cmplwi r4, 0
/* 804A2AC8  40 82 00 4C */	bne lbl_804A2B14
/* 804A2ACC  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 804A2AD0  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 804A2AD4  80 63 00 00 */	lwz r3, 0(r3)
/* 804A2AD8  A8 03 16 94 */	lha r0, 0x1694(r3)
/* 804A2ADC  2C 00 00 64 */	cmpwi r0, 0x64
/* 804A2AE0  40 82 00 34 */	bne lbl_804A2B14
/* 804A2AE4  2C 1E 00 00 */	cmpwi r30, 0
/* 804A2AE8  41 82 00 2C */	beq lbl_804A2B14
/* 804A2AEC  57 60 07 FF */	clrlwi. r0, r27, 0x1f
/* 804A2AF0  41 82 00 24 */	beq lbl_804A2B14
/* 804A2AF4  4B BB A1 D9 */	bl func_8005CCCC
/* 804A2AF8  54 63 2E FE */	srwi r3, r3, 0x1b
/* 804A2AFC  7F E5 FB 78 */	mr r5, r31
/* 804A2B00  38 03 09 00 */	addi r0, r3, 0x900
/* 804A2B04  7C 9B AA 14 */	add r4, r27, r21
/* 804A2B08  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 804A2B0C  38 C0 00 01 */	li r6, 1
/* 804A2B10  4B F0 4B 3D */	bl mFI_UtNumtoFGSet_common
lbl_804A2B14:
/* 804A2B14  3B 7B 00 01 */	addi r27, r27, 1
/* 804A2B18  3B BD 00 02 */	addi r29, r29, 2
/* 804A2B1C  2C 1B 00 10 */	cmpwi r27, 0x10
/* 804A2B20  41 80 FF 5C */	blt lbl_804A2A7C
/* 804A2B24  3B 9C 00 01 */	addi r28, r28, 1
/* 804A2B28  2C 1C 00 10 */	cmpwi r28, 0x10
/* 804A2B2C  41 80 FF 44 */	blt lbl_804A2A70
/* 804A2B30  3B 39 00 01 */	addi r25, r25, 1
/* 804A2B34  3A B5 00 10 */	addi r21, r21, 0x10
lbl_804A2B38:
/* 804A2B38  7C 19 C0 00 */	cmpw r25, r24
/* 804A2B3C  41 80 FF 20 */	blt lbl_804A2A5C
/* 804A2B40  3B 5A 00 01 */	addi r26, r26, 1
/* 804A2B44  3A D6 00 10 */	addi r22, r22, 0x10
lbl_804A2B48:
/* 804A2B48  7C 1A B8 00 */	cmpw r26, r23
/* 804A2B4C  41 80 FF 04 */	blt lbl_804A2A50
/* 804A2B50  39 61 00 40 */	addi r11, r1, 0x40
/* 804A2B54  4B BF 83 AD */	bl func_8009AF00
/* 804A2B58  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804A2B5C  7C 08 03 A6 */	mtlr r0
/* 804A2B60  38 21 00 40 */	addi r1, r1, 0x40
/* 804A2B64  4E 80 00 20 */	blr 
