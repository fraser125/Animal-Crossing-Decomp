lbl_804C2D04:
/* 804C2D04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804C2D08  7C 08 02 A6 */	mflr r0
/* 804C2D0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C2D10  39 61 00 20 */	addi r11, r1, 0x20
/* 804C2D14  4B BD 81 B9 */	bl func_8009AECC
/* 804C2D18  7C BD 2B 78 */	mr r29, r5
/* 804C2D1C  7C 7B 1B 78 */	mr r27, r3
/* 804C2D20  83 E5 00 00 */	lwz r31, 0(r5)
/* 804C2D24  7C 9C 23 78 */	mr r28, r4
/* 804C2D28  3B C0 00 00 */	li r30, 0
/* 804C2D2C  48 00 00 2C */	b lbl_804C2D58
lbl_804C2D30:
/* 804C2D30  81 9F 00 04 */	lwz r12, 4(r31)
/* 804C2D34  28 0C 00 00 */	cmplwi r12, 0
/* 804C2D38  41 82 00 18 */	beq lbl_804C2D50
/* 804C2D3C  7F 63 DB 78 */	mr r3, r27
/* 804C2D40  7F 84 E3 78 */	mr r4, r28
/* 804C2D44  7F E5 FB 78 */	mr r5, r31
/* 804C2D48  7D 89 03 A6 */	mtctr r12
/* 804C2D4C  4E 80 04 21 */	bctrl 
lbl_804C2D50:
/* 804C2D50  3B DE 00 01 */	addi r30, r30, 1
/* 804C2D54  3B FF 00 A8 */	addi r31, r31, 0xa8
lbl_804C2D58:
/* 804C2D58  A8 1D 00 04 */	lha r0, 4(r29)
/* 804C2D5C  7C 1E 00 00 */	cmpw r30, r0
/* 804C2D60  41 80 FF D0 */	blt lbl_804C2D30
/* 804C2D64  39 61 00 20 */	addi r11, r1, 0x20
/* 804C2D68  4B BD 81 B1 */	bl func_8009AF18
/* 804C2D6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C2D70  7C 08 03 A6 */	mtlr r0
/* 804C2D74  38 21 00 20 */	addi r1, r1, 0x20
/* 804C2D78  4E 80 00 20 */	blr 
