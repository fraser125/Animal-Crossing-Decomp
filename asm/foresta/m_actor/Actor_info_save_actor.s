lbl_80375B1C:
/* 80375B1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80375B20  7C 08 02 A6 */	mflr r0
/* 80375B24  90 01 00 24 */	stw r0, 0x24(r1)
/* 80375B28  39 61 00 20 */	addi r11, r1, 0x20
/* 80375B2C  4B D2 53 9D */	bl func_8009AEC8
/* 80375B30  7C 7A 1B 78 */	mr r26, r3
/* 80375B34  3B E0 00 00 */	li r31, 0
/* 80375B38  7F FE FB 78 */	mr r30, r31
/* 80375B3C  3B 60 00 00 */	li r27, 0
/* 80375B40  3B BA 1D A8 */	addi r29, r26, 0x1da8
lbl_80375B44:
/* 80375B44  38 1F 00 08 */	addi r0, r31, 8
/* 80375B48  7F 9D 00 2E */	lwzx r28, r29, r0
/* 80375B4C  48 00 00 28 */	b lbl_80375B74
lbl_80375B50:
/* 80375B50  81 9C 01 6C */	lwz r12, 0x16c(r28)
/* 80375B54  28 0C 00 00 */	cmplwi r12, 0
/* 80375B58  41 82 00 18 */	beq lbl_80375B70
/* 80375B5C  7F 83 E3 78 */	mr r3, r28
/* 80375B60  7F 44 D3 78 */	mr r4, r26
/* 80375B64  7D 89 03 A6 */	mtctr r12
/* 80375B68  4E 80 04 21 */	bctrl 
/* 80375B6C  93 DC 01 6C */	stw r30, 0x16c(r28)
lbl_80375B70:
/* 80375B70  83 9C 01 58 */	lwz r28, 0x158(r28)
lbl_80375B74:
/* 80375B74  28 1C 00 00 */	cmplwi r28, 0
/* 80375B78  40 82 FF D8 */	bne lbl_80375B50
/* 80375B7C  3B 7B 00 01 */	addi r27, r27, 1
/* 80375B80  3B FF 00 08 */	addi r31, r31, 8
/* 80375B84  2C 1B 00 08 */	cmpwi r27, 8
/* 80375B88  41 80 FF BC */	blt lbl_80375B44
/* 80375B8C  7F 43 D3 78 */	mr r3, r26
/* 80375B90  4B FF FE CD */	bl restore_fgdata_all
/* 80375B94  39 61 00 20 */	addi r11, r1, 0x20
/* 80375B98  4B D2 53 7D */	bl func_8009AF14
/* 80375B9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80375BA0  7C 08 03 A6 */	mtlr r0
/* 80375BA4  38 21 00 20 */	addi r1, r1, 0x20
/* 80375BA8  4E 80 00 20 */	blr 
