lbl_80496FFC:
/* 80496FFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80497000  7C 08 02 A6 */	mflr r0
/* 80497004  90 01 00 24 */	stw r0, 0x24(r1)
/* 80497008  39 61 00 20 */	addi r11, r1, 0x20
/* 8049700C  4B C0 3E C1 */	bl func_8009AECC
/* 80497010  83 A3 01 C4 */	lwz r29, 0x1c4(r3)
/* 80497014  3B C3 01 C8 */	addi r30, r3, 0x1c8
/* 80497018  83 83 01 B8 */	lwz r28, 0x1b8(r3)
/* 8049701C  3B 60 00 00 */	li r27, 0
/* 80497020  3B E0 00 00 */	li r31, 0
lbl_80497024:
/* 80497024  7F A3 EB 78 */	mr r3, r29
/* 80497028  7F 85 E3 78 */	mr r5, r28
/* 8049702C  38 80 00 05 */	li r4, 5
/* 80497030  4B F4 09 49 */	bl mNpcW_GetNpcWalkInfoIdx
/* 80497034  2C 03 FF FF */	cmpwi r3, -1
/* 80497038  41 82 00 14 */	beq lbl_8049704C
/* 8049703C  1C 03 00 1C */	mulli r0, r3, 0x1c
/* 80497040  7C 1D 02 14 */	add r0, r29, r0
/* 80497044  90 1E 00 00 */	stw r0, 0(r30)
/* 80497048  48 00 00 08 */	b lbl_80497050
lbl_8049704C:
/* 8049704C  93 FE 00 00 */	stw r31, 0(r30)
lbl_80497050:
/* 80497050  3B 7B 00 01 */	addi r27, r27, 1
/* 80497054  3B 9C 09 88 */	addi r28, r28, 0x988
/* 80497058  2C 1B 00 0F */	cmpwi r27, 0xf
/* 8049705C  3B DE 00 04 */	addi r30, r30, 4
/* 80497060  41 80 FF C4 */	blt lbl_80497024
/* 80497064  39 61 00 20 */	addi r11, r1, 0x20
/* 80497068  4B C0 3E B1 */	bl func_8009AF18
/* 8049706C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80497070  7C 08 03 A6 */	mtlr r0
/* 80497074  38 21 00 20 */	addi r1, r1, 0x20
/* 80497078  4E 80 00 20 */	blr 
