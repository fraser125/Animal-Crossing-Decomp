lbl_8048994C:
/* 8048994C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80489950  7C 08 02 A6 */	mflr r0
/* 80489954  90 01 00 24 */	stw r0, 0x24(r1)
/* 80489958  39 61 00 20 */	addi r11, r1, 0x20
/* 8048995C  4B C1 15 71 */	bl func_8009AECC
/* 80489960  80 A3 01 78 */	lwz r5, 0x178(r3)
/* 80489964  7C 9B 23 78 */	mr r27, r4
/* 80489968  3B C3 02 14 */	addi r30, r3, 0x214
/* 8048996C  3B A0 FF FF */	li r29, -1
/* 80489970  80 65 00 00 */	lwz r3, 0(r5)
/* 80489974  83 E3 01 7C */	lwz r31, 0x17c(r3)
/* 80489978  28 1F 00 00 */	cmplwi r31, 0
/* 8048997C  41 82 00 50 */	beq lbl_804899CC
/* 80489980  3B 80 00 00 */	li r28, 0
lbl_80489984:
/* 80489984  80 1E 00 08 */	lwz r0, 8(r30)
/* 80489988  28 00 00 00 */	cmplwi r0, 0
/* 8048998C  41 82 00 30 */	beq lbl_804899BC
/* 80489990  2C 1B 00 00 */	cmpwi r27, 0
/* 80489994  40 82 00 0C */	bne lbl_804899A0
/* 80489998  38 9E 00 1E */	addi r4, r30, 0x1e
/* 8048999C  48 00 00 08 */	b lbl_804899A4
lbl_804899A0:
/* 804899A0  38 9E 00 10 */	addi r4, r30, 0x10
lbl_804899A4:
/* 804899A4  7F E3 FB 78 */	mr r3, r31
/* 804899A8  4B F4 1A C9 */	bl mNpc_CheckCmpAnimalPersonalID
/* 804899AC  2C 03 00 01 */	cmpwi r3, 1
/* 804899B0  40 82 00 0C */	bne lbl_804899BC
/* 804899B4  7F 9D E3 78 */	mr r29, r28
/* 804899B8  48 00 00 14 */	b lbl_804899CC
lbl_804899BC:
/* 804899BC  3B 9C 00 01 */	addi r28, r28, 1
/* 804899C0  3B DE 00 34 */	addi r30, r30, 0x34
/* 804899C4  2C 1C 00 23 */	cmpwi r28, 0x23
/* 804899C8  41 80 FF BC */	blt lbl_80489984
lbl_804899CC:
/* 804899CC  7F A3 EB 78 */	mr r3, r29
/* 804899D0  39 61 00 20 */	addi r11, r1, 0x20
/* 804899D4  4B C1 15 45 */	bl func_8009AF18
/* 804899D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804899DC  7C 08 03 A6 */	mtlr r0
/* 804899E0  38 21 00 20 */	addi r1, r1, 0x20
/* 804899E4  4E 80 00 20 */	blr 