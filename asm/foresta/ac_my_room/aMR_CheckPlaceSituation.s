lbl_8047A8D8:
/* 8047A8D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8047A8DC  7C 08 02 A6 */	mflr r0
/* 8047A8E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8047A8E4  39 61 00 30 */	addi r11, r1, 0x30
/* 8047A8E8  4B C2 05 E5 */	bl func_8009AECC
/* 8047A8EC  7C 7B 1B 78 */	mr r27, r3
/* 8047A8F0  7C 9C 23 78 */	mr r28, r4
/* 8047A8F4  7C DD 33 78 */	mr r29, r6
/* 8047A8F8  7C A3 2B 78 */	mr r3, r5
/* 8047A8FC  4B FF 58 A5 */	bl func_804701A0
/* 8047A900  7C 7F 1B 79 */	or. r31, r3, r3
/* 8047A904  41 82 00 98 */	beq lbl_8047A99C
/* 8047A908  8B DF 00 28 */	lbz r30, 0x28(r31)
/* 8047A90C  28 1E 00 03 */	cmplwi r30, 3
/* 8047A910  40 82 00 14 */	bne lbl_8047A924
/* 8047A914  3C 60 80 69 */	lis r3, rotate_angle_types@ha /* 0x8068A1A8@ha */
/* 8047A918  57 A0 07 BE */	clrlwi r0, r29, 0x1e
/* 8047A91C  38 63 A1 A8 */	addi r3, r3, rotate_angle_types@l /* 0x8068A1A8@l */
/* 8047A920  7F C3 00 AE */	lbzx r30, r3, r0
lbl_8047A924:
/* 8047A924  7F C3 F3 78 */	mr r3, r30
/* 8047A928  7F 84 E3 78 */	mr r4, r28
/* 8047A92C  4B FF DE 3D */	bl aMR_JudgeFurnitureMove
/* 8047A930  2C 03 00 00 */	cmpwi r3, 0
/* 8047A934  41 82 00 68 */	beq lbl_8047A99C
/* 8047A938  A0 1F 00 2E */	lhz r0, 0x2e(r31)
/* 8047A93C  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8047A940  41 82 00 0C */	beq lbl_8047A94C
/* 8047A944  38 60 00 01 */	li r3, 1
/* 8047A948  48 00 00 58 */	b lbl_8047A9A0
lbl_8047A94C:
/* 8047A94C  7F C6 F3 78 */	mr r6, r30
/* 8047A950  38 61 00 08 */	addi r3, r1, 8
/* 8047A954  57 84 07 3E */	clrlwi r4, r28, 0x1c
/* 8047A958  57 85 E7 3E */	rlwinm r5, r28, 0x1c, 0x1c, 0x1f
/* 8047A95C  4B FF CE A1 */	bl func_804777FC
/* 8047A960  2C 03 00 00 */	cmpwi r3, 0
/* 8047A964  40 81 00 30 */	ble lbl_8047A994
/* 8047A968  38 A1 00 08 */	addi r5, r1, 8
/* 8047A96C  38 80 00 00 */	li r4, 0
/* 8047A970  7C 69 03 A6 */	mtctr r3
/* 8047A974  40 81 00 20 */	ble lbl_8047A994
lbl_8047A978:
/* 8047A978  7C 05 20 2E */	lwzx r0, r5, r4
/* 8047A97C  7C 1B 00 00 */	cmpw r27, r0
/* 8047A980  40 82 00 0C */	bne lbl_8047A98C
/* 8047A984  38 60 00 00 */	li r3, 0
/* 8047A988  48 00 00 18 */	b lbl_8047A9A0
lbl_8047A98C:
/* 8047A98C  38 84 00 04 */	addi r4, r4, 4
/* 8047A990  42 00 FF E8 */	bdnz lbl_8047A978
lbl_8047A994:
/* 8047A994  38 60 00 01 */	li r3, 1
/* 8047A998  48 00 00 08 */	b lbl_8047A9A0
lbl_8047A99C:
/* 8047A99C  38 60 00 00 */	li r3, 0
lbl_8047A9A0:
/* 8047A9A0  39 61 00 30 */	addi r11, r1, 0x30
/* 8047A9A4  4B C2 05 75 */	bl func_8009AF18
/* 8047A9A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8047A9AC  7C 08 03 A6 */	mtlr r0
/* 8047A9B0  38 21 00 30 */	addi r1, r1, 0x30
/* 8047A9B4  4E 80 00 20 */	blr 
