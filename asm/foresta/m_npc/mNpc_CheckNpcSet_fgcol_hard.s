lbl_803D2D3C:
/* 803D2D3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D2D40  7C 08 02 A6 */	mflr r0
/* 803D2D44  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D2D48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D2D4C  3B E0 00 00 */	li r31, 0
/* 803D2D50  93 C1 00 08 */	stw r30, 8(r1)
/* 803D2D54  7C 9E 23 78 */	mr r30, r4
/* 803D2D58  4B FD 71 F1 */	bl mFI_CheckFGNpcOn
/* 803D2D5C  2C 03 00 00 */	cmpwi r3, 0
/* 803D2D60  41 82 00 28 */	beq lbl_803D2D88
/* 803D2D64  28 1E 00 02 */	cmplwi r30, 2
/* 803D2D68  40 81 00 1C */	ble lbl_803D2D84
/* 803D2D6C  28 1E 00 04 */	cmplwi r30, 4
/* 803D2D70  41 80 00 0C */	blt lbl_803D2D7C
/* 803D2D74  28 1E 00 06 */	cmplwi r30, 6
/* 803D2D78  40 81 00 0C */	ble lbl_803D2D84
lbl_803D2D7C:
/* 803D2D7C  28 1E 00 07 */	cmplwi r30, 7
/* 803D2D80  40 82 00 08 */	bne lbl_803D2D88
lbl_803D2D84:
/* 803D2D84  3B E0 00 01 */	li r31, 1
lbl_803D2D88:
/* 803D2D88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D2D8C  7F E3 FB 78 */	mr r3, r31
/* 803D2D90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D2D94  83 C1 00 08 */	lwz r30, 8(r1)
/* 803D2D98  7C 08 03 A6 */	mtlr r0
/* 803D2D9C  38 21 00 10 */	addi r1, r1, 0x10
/* 803D2DA0  4E 80 00 20 */	blr 
