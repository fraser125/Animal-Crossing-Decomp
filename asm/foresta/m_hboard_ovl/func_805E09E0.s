lbl_805E09E0:
/* 805E09E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805E09E4  7C 08 02 A6 */	mflr r0
/* 805E09E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805E09EC  39 61 00 20 */	addi r11, r1, 0x20
/* 805E09F0  4B AB A4 E1 */	bl func_8009AED0
/* 805E09F4  7C 7C 1B 78 */	mr r28, r3
/* 805E09F8  7C BD 2B 78 */	mr r29, r5
/* 805E09FC  80 A3 00 00 */	lwz r5, 0(r3)
/* 805E0A00  7C DE 33 78 */	mr r30, r6
/* 805E0A04  3B E0 00 00 */	li r31, 0
/* 805E0A08  7C 05 20 40 */	cmplw r5, r4
/* 805E0A0C  41 80 00 0C */	blt lbl_805E0A18
/* 805E0A10  3B E0 00 03 */	li r31, 3
/* 805E0A14  48 00 00 6C */	b lbl_805E0A80
lbl_805E0A18:
/* 805E0A18  88 65 00 00 */	lbz r3, 0(r5)
/* 805E0A1C  28 03 00 CD */	cmplwi r3, 0xcd
/* 805E0A20  40 82 00 20 */	bne lbl_805E0A40
/* 805E0A24  38 05 00 01 */	addi r0, r5, 1
/* 805E0A28  3B E0 00 01 */	li r31, 1
/* 805E0A2C  90 1C 00 00 */	stw r0, 0(r28)
/* 805E0A30  80 7E 00 00 */	lwz r3, 0(r30)
/* 805E0A34  38 03 00 01 */	addi r0, r3, 1
/* 805E0A38  90 1E 00 00 */	stw r0, 0(r30)
/* 805E0A3C  48 00 00 44 */	b lbl_805E0A80
lbl_805E0A40:
/* 805E0A40  38 80 00 01 */	li r4, 1
/* 805E0A44  4B DC EC 59 */	bl mFont_GetCodeWidth
/* 805E0A48  80 1D 00 00 */	lwz r0, 0(r29)
/* 805E0A4C  7C 00 1A 14 */	add r0, r0, r3
/* 805E0A50  90 1D 00 00 */	stw r0, 0(r29)
/* 805E0A54  80 1D 00 00 */	lwz r0, 0(r29)
/* 805E0A58  2C 00 00 C0 */	cmpwi r0, 0xc0
/* 805E0A5C  40 81 00 0C */	ble lbl_805E0A68
/* 805E0A60  3B E0 00 02 */	li r31, 2
/* 805E0A64  48 00 00 1C */	b lbl_805E0A80
lbl_805E0A68:
/* 805E0A68  80 7C 00 00 */	lwz r3, 0(r28)
/* 805E0A6C  38 03 00 01 */	addi r0, r3, 1
/* 805E0A70  90 1C 00 00 */	stw r0, 0(r28)
/* 805E0A74  80 7E 00 00 */	lwz r3, 0(r30)
/* 805E0A78  38 03 00 01 */	addi r0, r3, 1
/* 805E0A7C  90 1E 00 00 */	stw r0, 0(r30)
lbl_805E0A80:
/* 805E0A80  7F E3 FB 78 */	mr r3, r31
/* 805E0A84  39 61 00 20 */	addi r11, r1, 0x20
/* 805E0A88  4B AB A4 95 */	bl func_8009AF1C
/* 805E0A8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E0A90  7C 08 03 A6 */	mtlr r0
/* 805E0A94  38 21 00 20 */	addi r1, r1, 0x20
/* 805E0A98  4E 80 00 20 */	blr 
