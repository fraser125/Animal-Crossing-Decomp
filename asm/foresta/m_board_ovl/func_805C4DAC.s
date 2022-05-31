lbl_805C4DAC:
/* 805C4DAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C4DB0  7C 08 02 A6 */	mflr r0
/* 805C4DB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C4DB8  39 61 00 20 */	addi r11, r1, 0x20
/* 805C4DBC  4B AD 61 15 */	bl func_8009AED0
/* 805C4DC0  7C 7C 1B 78 */	mr r28, r3
/* 805C4DC4  7C BD 2B 78 */	mr r29, r5
/* 805C4DC8  80 A3 00 00 */	lwz r5, 0(r3)
/* 805C4DCC  7C DE 33 78 */	mr r30, r6
/* 805C4DD0  3B E0 00 00 */	li r31, 0
/* 805C4DD4  7C 05 20 40 */	cmplw r5, r4
/* 805C4DD8  41 80 00 0C */	blt lbl_805C4DE4
/* 805C4DDC  3B E0 00 03 */	li r31, 3
/* 805C4DE0  48 00 00 6C */	b lbl_805C4E4C
lbl_805C4DE4:
/* 805C4DE4  88 65 00 00 */	lbz r3, 0(r5)
/* 805C4DE8  28 03 00 CD */	cmplwi r3, 0xcd
/* 805C4DEC  40 82 00 20 */	bne lbl_805C4E0C
/* 805C4DF0  38 05 00 01 */	addi r0, r5, 1
/* 805C4DF4  3B E0 00 01 */	li r31, 1
/* 805C4DF8  90 1C 00 00 */	stw r0, 0(r28)
/* 805C4DFC  80 7E 00 00 */	lwz r3, 0(r30)
/* 805C4E00  38 03 00 01 */	addi r0, r3, 1
/* 805C4E04  90 1E 00 00 */	stw r0, 0(r30)
/* 805C4E08  48 00 00 44 */	b lbl_805C4E4C
lbl_805C4E0C:
/* 805C4E0C  38 80 00 01 */	li r4, 1
/* 805C4E10  4B DE A8 8D */	bl mFont_GetCodeWidth
/* 805C4E14  80 1D 00 00 */	lwz r0, 0(r29)
/* 805C4E18  7C 00 1A 14 */	add r0, r0, r3
/* 805C4E1C  90 1D 00 00 */	stw r0, 0(r29)
/* 805C4E20  80 1D 00 00 */	lwz r0, 0(r29)
/* 805C4E24  2C 00 00 C0 */	cmpwi r0, 0xc0
/* 805C4E28  40 81 00 0C */	ble lbl_805C4E34
/* 805C4E2C  3B E0 00 02 */	li r31, 2
/* 805C4E30  48 00 00 1C */	b lbl_805C4E4C
lbl_805C4E34:
/* 805C4E34  80 7C 00 00 */	lwz r3, 0(r28)
/* 805C4E38  38 03 00 01 */	addi r0, r3, 1
/* 805C4E3C  90 1C 00 00 */	stw r0, 0(r28)
/* 805C4E40  80 7E 00 00 */	lwz r3, 0(r30)
/* 805C4E44  38 03 00 01 */	addi r0, r3, 1
/* 805C4E48  90 1E 00 00 */	stw r0, 0(r30)
lbl_805C4E4C:
/* 805C4E4C  7F E3 FB 78 */	mr r3, r31
/* 805C4E50  39 61 00 20 */	addi r11, r1, 0x20
/* 805C4E54  4B AD 60 C9 */	bl func_8009AF1C
/* 805C4E58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C4E5C  7C 08 03 A6 */	mtlr r0
/* 805C4E60  38 21 00 20 */	addi r1, r1, 0x20
/* 805C4E64  4E 80 00 20 */	blr 
