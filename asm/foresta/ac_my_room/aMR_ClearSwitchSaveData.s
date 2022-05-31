lbl_804729F4:
/* 804729F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804729F8  7C 08 02 A6 */	mflr r0
/* 804729FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80472A00  39 61 00 30 */	addi r11, r1, 0x30
/* 80472A04  4B C2 84 C5 */	bl func_8009AEC8
/* 80472A08  3B E0 00 00 */	li r31, 0
/* 80472A0C  7C 7A 1B 78 */	mr r26, r3
/* 80472A10  7F FD FB 78 */	mr r29, r31
/* 80472A14  3B 81 00 08 */	addi r28, r1, 8
/* 80472A18  7F FE FB 78 */	mr r30, r31
/* 80472A1C  3B 60 00 00 */	li r27, 0
lbl_80472A20:
/* 80472A20  7F 63 DB 78 */	mr r3, r27
/* 80472A24  7F 44 D3 78 */	mr r4, r26
/* 80472A28  4B FF D9 F9 */	bl aMR_GetBitSwitchTable
/* 80472A2C  7C 7C F9 2E */	stwx r3, r28, r31
/* 80472A30  7C 7C F8 2E */	lwzx r3, r28, r31
/* 80472A34  28 03 00 00 */	cmplwi r3, 0
/* 80472A38  41 82 00 0C */	beq lbl_80472A44
/* 80472A3C  93 A3 00 04 */	stw r29, 4(r3)
/* 80472A40  93 C3 00 00 */	stw r30, 0(r3)
lbl_80472A44:
/* 80472A44  3B 7B 00 01 */	addi r27, r27, 1
/* 80472A48  3B FF 00 04 */	addi r31, r31, 4
/* 80472A4C  2C 1B 00 02 */	cmpwi r27, 2
/* 80472A50  41 80 FF D0 */	blt lbl_80472A20
/* 80472A54  39 61 00 30 */	addi r11, r1, 0x30
/* 80472A58  4B C2 84 BD */	bl func_8009AF14
/* 80472A5C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80472A60  7C 08 03 A6 */	mtlr r0
/* 80472A64  38 21 00 30 */	addi r1, r1, 0x30
/* 80472A68  4E 80 00 20 */	blr 
