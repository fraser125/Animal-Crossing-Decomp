lbl_805EFD08:
/* 805EFD08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805EFD0C  7C 08 02 A6 */	mflr r0
/* 805EFD10  90 01 00 24 */	stw r0, 0x24(r1)
/* 805EFD14  39 61 00 20 */	addi r11, r1, 0x20
/* 805EFD18  4B AA B1 B5 */	bl func_8009AECC
/* 805EFD1C  7C 7B 1B 79 */	or. r27, r3, r3
/* 805EFD20  7C 9C 23 78 */	mr r28, r4
/* 805EFD24  3B C0 00 00 */	li r30, 0
/* 805EFD28  41 82 00 50 */	beq lbl_805EFD78
/* 805EFD2C  3B A0 00 00 */	li r29, 0
/* 805EFD30  3B E0 00 00 */	li r31, 0
/* 805EFD34  48 00 00 3C */	b lbl_805EFD70
lbl_805EFD38:
/* 805EFD38  7C 7B F8 2E */	lwzx r3, r27, r31
/* 805EFD3C  38 80 00 10 */	li r4, 0x10
/* 805EFD40  38 A0 00 20 */	li r5, 0x20
/* 805EFD44  4B DC C8 E1 */	bl func_803BC624
/* 805EFD48  7C 60 1B 78 */	mr r0, r3
/* 805EFD4C  7C 7B F8 2E */	lwzx r3, r27, r31
/* 805EFD50  7C 04 03 78 */	mr r4, r0
/* 805EFD54  38 A0 00 01 */	li r5, 1
/* 805EFD58  4B DB F9 79 */	bl mFont_GetStringWidth
/* 805EFD5C  7C 03 F0 00 */	cmpw r3, r30
/* 805EFD60  40 81 00 08 */	ble lbl_805EFD68
/* 805EFD64  7C 7E 1B 78 */	mr r30, r3
lbl_805EFD68:
/* 805EFD68  3B BD 00 01 */	addi r29, r29, 1
/* 805EFD6C  3B FF 00 04 */	addi r31, r31, 4
lbl_805EFD70:
/* 805EFD70  7C 1D E0 00 */	cmpw r29, r28
/* 805EFD74  41 80 FF C4 */	blt lbl_805EFD38
lbl_805EFD78:
/* 805EFD78  7F C3 F3 78 */	mr r3, r30
/* 805EFD7C  39 61 00 20 */	addi r11, r1, 0x20
/* 805EFD80  4B AA B1 99 */	bl func_8009AF18
/* 805EFD84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805EFD88  7C 08 03 A6 */	mtlr r0
/* 805EFD8C  38 21 00 20 */	addi r1, r1, 0x20
/* 805EFD90  4E 80 00 20 */	blr 
