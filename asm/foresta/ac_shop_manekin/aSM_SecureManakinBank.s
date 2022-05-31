lbl_8049FE8C:
/* 8049FE8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049FE90  7C 08 02 A6 */	mflr r0
/* 8049FE94  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049FE98  39 61 00 20 */	addi r11, r1, 0x20
/* 8049FE9C  4B BF B0 35 */	bl func_8009AED0
/* 8049FEA0  7C 7F 1B 78 */	mr r31, r3
/* 8049FEA4  7C 9C 23 78 */	mr r28, r4
/* 8049FEA8  83 C3 01 74 */	lwz r30, 0x174(r3)
/* 8049FEAC  83 A3 01 78 */	lwz r29, 0x178(r3)
/* 8049FEB0  38 1E 00 01 */	addi r0, r30, 1
/* 8049FEB4  54 03 48 2C */	slwi r3, r0, 9
/* 8049FEB8  4B FF FF B1 */	bl aSM_SucureBank
/* 8049FEBC  28 03 00 00 */	cmplwi r3, 0
/* 8049FEC0  40 82 00 0C */	bne lbl_8049FECC
/* 8049FEC4  38 60 00 00 */	li r3, 0
/* 8049FEC8  48 00 00 98 */	b lbl_8049FF60
lbl_8049FECC:
/* 8049FECC  38 80 00 00 */	li r4, 0
/* 8049FED0  38 A0 00 00 */	li r5, 0
/* 8049FED4  7F C9 03 A6 */	mtctr r30
/* 8049FED8  2C 1E 00 00 */	cmpwi r30, 0
/* 8049FEDC  40 81 00 1C */	ble lbl_8049FEF8
lbl_8049FEE0:
/* 8049FEE0  7C C3 2A 14 */	add r6, r3, r5
/* 8049FEE4  38 04 00 18 */	addi r0, r4, 0x18
/* 8049FEE8  7C DD 01 2E */	stwx r6, r29, r0
/* 8049FEEC  38 84 00 54 */	addi r4, r4, 0x54
/* 8049FEF0  38 A5 02 00 */	addi r5, r5, 0x200
/* 8049FEF4  42 00 FF EC */	bdnz lbl_8049FEE0
lbl_8049FEF8:
/* 8049FEF8  57 C4 48 2C */	slwi r4, r30, 9
/* 8049FEFC  38 1E 00 01 */	addi r0, r30, 1
/* 8049FF00  7C 63 22 14 */	add r3, r3, r4
/* 8049FF04  7F 84 E3 78 */	mr r4, r28
/* 8049FF08  90 7F 01 94 */	stw r3, 0x194(r31)
/* 8049FF0C  54 03 28 34 */	slwi r3, r0, 5
/* 8049FF10  4B FF FF 59 */	bl aSM_SucureBank
/* 8049FF14  7C 66 1B 79 */	or. r6, r3, r3
/* 8049FF18  40 82 00 0C */	bne lbl_8049FF24
/* 8049FF1C  38 60 00 00 */	li r3, 0
/* 8049FF20  48 00 00 40 */	b lbl_8049FF60
lbl_8049FF24:
/* 8049FF24  38 60 00 00 */	li r3, 0
/* 8049FF28  38 80 00 00 */	li r4, 0
/* 8049FF2C  7F C9 03 A6 */	mtctr r30
/* 8049FF30  2C 1E 00 00 */	cmpwi r30, 0
/* 8049FF34  40 81 00 1C */	ble lbl_8049FF50
lbl_8049FF38:
/* 8049FF38  7C A6 22 14 */	add r5, r6, r4
/* 8049FF3C  38 03 00 1C */	addi r0, r3, 0x1c
/* 8049FF40  7C BD 01 2E */	stwx r5, r29, r0
/* 8049FF44  38 63 00 54 */	addi r3, r3, 0x54
/* 8049FF48  38 84 00 20 */	addi r4, r4, 0x20
/* 8049FF4C  42 00 FF EC */	bdnz lbl_8049FF38
lbl_8049FF50:
/* 8049FF50  57 C0 28 34 */	slwi r0, r30, 5
/* 8049FF54  38 60 00 01 */	li r3, 1
/* 8049FF58  7C 06 02 14 */	add r0, r6, r0
/* 8049FF5C  90 1F 01 98 */	stw r0, 0x198(r31)
lbl_8049FF60:
/* 8049FF60  39 61 00 20 */	addi r11, r1, 0x20
/* 8049FF64  4B BF AF B9 */	bl func_8009AF1C
/* 8049FF68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049FF6C  7C 08 03 A6 */	mtlr r0
/* 8049FF70  38 21 00 20 */	addi r1, r1, 0x20
/* 8049FF74  4E 80 00 20 */	blr 
