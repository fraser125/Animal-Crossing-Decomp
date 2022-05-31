lbl_8049E984:
/* 8049E984  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049E988  7C 08 02 A6 */	mflr r0
/* 8049E98C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049E990  39 61 00 20 */	addi r11, r1, 0x20
/* 8049E994  4B BF C5 3D */	bl func_8009AED0
/* 8049E998  7C 7C 1B 78 */	mr r28, r3
/* 8049E99C  38 80 00 01 */	li r4, 1
/* 8049E9A0  4B FF FE 65 */	bl aSI_SetClipProc
/* 8049E9A4  3B A0 00 00 */	li r29, 0
/* 8049E9A8  3B E0 00 00 */	li r31, 0
lbl_8049E9AC:
/* 8049E9AC  7F DC FA 14 */	add r30, r28, r31
/* 8049E9B0  80 7E 01 80 */	lwz r3, 0x180(r30)
/* 8049E9B4  28 03 00 00 */	cmplwi r3, 0
/* 8049E9B8  41 82 00 08 */	beq lbl_8049E9C0
/* 8049E9BC  4B F1 DA F9 */	bl zelda_free
lbl_8049E9C0:
/* 8049E9C0  80 7E 01 88 */	lwz r3, 0x188(r30)
/* 8049E9C4  28 03 00 00 */	cmplwi r3, 0
/* 8049E9C8  41 82 00 08 */	beq lbl_8049E9D0
/* 8049E9CC  4B F1 DA E9 */	bl zelda_free
lbl_8049E9D0:
/* 8049E9D0  3B BD 00 01 */	addi r29, r29, 1
/* 8049E9D4  3B FF 00 04 */	addi r31, r31, 4
/* 8049E9D8  2C 1D 00 02 */	cmpwi r29, 2
/* 8049E9DC  41 80 FF D0 */	blt lbl_8049E9AC
/* 8049E9E0  39 61 00 20 */	addi r11, r1, 0x20
/* 8049E9E4  4B BF C5 39 */	bl func_8009AF1C
/* 8049E9E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049E9EC  7C 08 03 A6 */	mtlr r0
/* 8049E9F0  38 21 00 20 */	addi r1, r1, 0x20
/* 8049E9F4  4E 80 00 20 */	blr 
