lbl_804BFC4C:
/* 804BFC4C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804BFC50  7C 08 02 A6 */	mflr r0
/* 804BFC54  90 01 00 34 */	stw r0, 0x34(r1)
/* 804BFC58  39 61 00 30 */	addi r11, r1, 0x30
/* 804BFC5C  4B BD B2 79 */	bl func_8009AED4
/* 804BFC60  7C 7D 1B 78 */	mr r29, r3
/* 804BFC64  3B C0 00 00 */	li r30, 0
/* 804BFC68  3B E0 00 00 */	li r31, 0
lbl_804BFC6C:
/* 804BFC6C  A8 1D 00 4C */	lha r0, 0x4c(r29)
/* 804BFC70  2C 00 00 00 */	cmpwi r0, 0
/* 804BFC74  41 82 00 38 */	beq lbl_804BFCAC
/* 804BFC78  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 804BFC7C  38 81 00 08 */	addi r4, r1, 8
/* 804BFC80  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 804BFC84  38 A0 00 01 */	li r5, 1
/* 804BFC88  90 61 00 08 */	stw r3, 8(r1)
/* 804BFC8C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804BFC90  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 804BFC94  90 01 00 10 */	stw r0, 0x10(r1)
/* 804BFC98  A0 7D 00 42 */	lhz r3, 0x42(r29)
/* 804BFC9C  38 03 FF F9 */	addi r0, r3, -7
/* 804BFCA0  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 804BFCA4  4B EE 7B 8D */	bl mFI_SetFG_common
/* 804BFCA8  B3 FD 00 4C */	sth r31, 0x4c(r29)
lbl_804BFCAC:
/* 804BFCAC  3B DE 00 01 */	addi r30, r30, 1
/* 804BFCB0  3B BD 00 58 */	addi r29, r29, 0x58
/* 804BFCB4  2C 1E 00 05 */	cmpwi r30, 5
/* 804BFCB8  41 80 FF B4 */	blt lbl_804BFC6C
/* 804BFCBC  39 61 00 30 */	addi r11, r1, 0x30
/* 804BFCC0  4B BD B2 61 */	bl func_8009AF20
/* 804BFCC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804BFCC8  7C 08 03 A6 */	mtlr r0
/* 804BFCCC  38 21 00 30 */	addi r1, r1, 0x30
/* 804BFCD0  4E 80 00 20 */	blr 
