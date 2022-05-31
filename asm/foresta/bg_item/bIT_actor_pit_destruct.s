lbl_804BC648:
/* 804BC648  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804BC64C  7C 08 02 A6 */	mflr r0
/* 804BC650  90 01 00 34 */	stw r0, 0x34(r1)
/* 804BC654  39 61 00 30 */	addi r11, r1, 0x30
/* 804BC658  4B BD E8 7D */	bl func_8009AED4
/* 804BC65C  7C 7D 1B 78 */	mr r29, r3
/* 804BC660  3B C0 00 00 */	li r30, 0
/* 804BC664  3B E0 00 00 */	li r31, 0
lbl_804BC668:
/* 804BC668  A8 1D 00 10 */	lha r0, 0x10(r29)
/* 804BC66C  2C 00 00 00 */	cmpwi r0, 0
/* 804BC670  41 82 00 30 */	beq lbl_804BC6A0
/* 804BC674  80 DD 00 00 */	lwz r6, 0(r29)
/* 804BC678  38 81 00 08 */	addi r4, r1, 8
/* 804BC67C  80 1D 00 04 */	lwz r0, 4(r29)
/* 804BC680  38 60 00 00 */	li r3, 0
/* 804BC684  38 A0 00 00 */	li r5, 0
/* 804BC688  90 C1 00 08 */	stw r6, 8(r1)
/* 804BC68C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804BC690  80 1D 00 08 */	lwz r0, 8(r29)
/* 804BC694  90 01 00 10 */	stw r0, 0x10(r1)
/* 804BC698  4B EE B1 99 */	bl mFI_SetFG_common
/* 804BC69C  B3 FD 00 10 */	sth r31, 0x10(r29)
lbl_804BC6A0:
/* 804BC6A0  3B DE 00 01 */	addi r30, r30, 1
/* 804BC6A4  3B BD 00 1C */	addi r29, r29, 0x1c
/* 804BC6A8  2C 1E 00 0D */	cmpwi r30, 0xd
/* 804BC6AC  41 80 FF BC */	blt lbl_804BC668
/* 804BC6B0  39 61 00 30 */	addi r11, r1, 0x30
/* 804BC6B4  4B BD E8 6D */	bl func_8009AF20
/* 804BC6B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804BC6BC  7C 08 03 A6 */	mtlr r0
/* 804BC6C0  38 21 00 30 */	addi r1, r1, 0x30
/* 804BC6C4  4E 80 00 20 */	blr 
