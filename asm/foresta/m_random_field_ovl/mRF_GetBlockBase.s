lbl_80509E30:
/* 80509E30  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80509E34  7C 08 02 A6 */	mflr r0
/* 80509E38  90 01 00 34 */	stw r0, 0x34(r1)
/* 80509E3C  39 61 00 30 */	addi r11, r1, 0x30
/* 80509E40  4B B9 10 85 */	bl func_8009AEC4
/* 80509E44  7C 79 1B 78 */	mr r25, r3
/* 80509E48  7C 9A 23 78 */	mr r26, r4
/* 80509E4C  3B C0 00 00 */	li r30, 0
lbl_80509E50:
/* 80509E50  3B 80 00 00 */	li r28, 0
/* 80509E54  3B A0 00 09 */	li r29, 9
lbl_80509E58:
/* 80509E58  7F C3 F3 78 */	mr r3, r30
/* 80509E5C  7F A4 EB 78 */	mr r4, r29
/* 80509E60  4B FF EF DD */	bl mRF_D2ToD1
/* 80509E64  7F 7A 18 AE */	lbzx r27, r26, r3
/* 80509E68  7F C3 F3 78 */	mr r3, r30
/* 80509E6C  7F A4 EB 78 */	mr r4, r29
/* 80509E70  57 9F 06 3E */	clrlwi r31, r28, 0x18
/* 80509E74  4B FF EF C9 */	bl mRF_D2ToD1
/* 80509E78  7F F9 19 AE */	stbx r31, r25, r3
/* 80509E7C  7F 63 DB 78 */	mr r3, r27
/* 80509E80  4B FF EE F1 */	bl func_80508D70
/* 80509E84  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80509E88  40 82 00 34 */	bne lbl_80509EBC
/* 80509E8C  7F 63 DB 78 */	mr r3, r27
/* 80509E90  4B FF EE E1 */	bl func_80508D70
/* 80509E94  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 80509E98  40 82 00 24 */	bne lbl_80509EBC
/* 80509E9C  7F 63 DB 78 */	mr r3, r27
/* 80509EA0  4B FF EE D1 */	bl func_80508D70
/* 80509EA4  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80509EA8  40 82 00 14 */	bne lbl_80509EBC
/* 80509EAC  28 1B 00 3D */	cmplwi r27, 0x3d
/* 80509EB0  41 82 00 0C */	beq lbl_80509EBC
/* 80509EB4  28 1B 00 3E */	cmplwi r27, 0x3e
/* 80509EB8  40 82 00 08 */	bne lbl_80509EC0
lbl_80509EBC:
/* 80509EBC  3B 9C 00 01 */	addi r28, r28, 1
lbl_80509EC0:
/* 80509EC0  37 BD FF FF */	addic. r29, r29, -1
/* 80509EC4  40 80 FF 94 */	bge lbl_80509E58
/* 80509EC8  3B DE 00 01 */	addi r30, r30, 1
/* 80509ECC  2C 1E 00 07 */	cmpwi r30, 7
/* 80509ED0  41 80 FF 80 */	blt lbl_80509E50
/* 80509ED4  39 61 00 30 */	addi r11, r1, 0x30
/* 80509ED8  4B B9 10 39 */	bl func_8009AF10
/* 80509EDC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80509EE0  7C 08 03 A6 */	mtlr r0
/* 80509EE4  38 21 00 30 */	addi r1, r1, 0x30
/* 80509EE8  4E 80 00 20 */	blr 
