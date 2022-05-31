lbl_803A8A0C:
/* 803A8A0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A8A10  7C 08 02 A6 */	mflr r0
/* 803A8A14  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A8A18  39 61 00 20 */	addi r11, r1, 0x20
/* 803A8A1C  4B CF 24 B5 */	bl func_8009AED0
/* 803A8A20  4B FF C3 71 */	bl mFI_GetBlockXMax
/* 803A8A24  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 803A8A28  4B FF C3 B1 */	bl mFI_GetBlockZMax
/* 803A8A2C  54 7E 06 3E */	clrlwi r30, r3, 0x18
/* 803A8A30  3B A0 00 00 */	li r29, 0
/* 803A8A34  48 00 00 3C */	b lbl_803A8A70
lbl_803A8A38:
/* 803A8A38  3B 80 00 00 */	li r28, 0
/* 803A8A3C  48 00 00 28 */	b lbl_803A8A64
lbl_803A8A40:
/* 803A8A40  7F 83 E3 78 */	mr r3, r28
/* 803A8A44  7F A4 EB 78 */	mr r4, r29
/* 803A8A48  4B FF FF 3D */	bl mFI_MoveActorListDma
/* 803A8A4C  7C 65 1B 79 */	or. r5, r3, r3
/* 803A8A50  41 82 00 10 */	beq lbl_803A8A60
/* 803A8A54  7F 83 E3 78 */	mr r3, r28
/* 803A8A58  7F A4 EB 78 */	mr r4, r29
/* 803A8A5C  4B FF FA 8D */	bl mFI_MakeMoveActorBitData
lbl_803A8A60:
/* 803A8A60  3B 9C 00 01 */	addi r28, r28, 1
lbl_803A8A64:
/* 803A8A64  7C 1C F8 00 */	cmpw r28, r31
/* 803A8A68  41 80 FF D8 */	blt lbl_803A8A40
/* 803A8A6C  3B BD 00 01 */	addi r29, r29, 1
lbl_803A8A70:
/* 803A8A70  7C 1D F0 00 */	cmpw r29, r30
/* 803A8A74  41 80 FF C4 */	blt lbl_803A8A38
/* 803A8A78  39 61 00 20 */	addi r11, r1, 0x20
/* 803A8A7C  4B CF 24 A1 */	bl func_8009AF1C
/* 803A8A80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A8A84  7C 08 03 A6 */	mtlr r0
/* 803A8A88  38 21 00 20 */	addi r1, r1, 0x20
/* 803A8A8C  4E 80 00 20 */	blr 
