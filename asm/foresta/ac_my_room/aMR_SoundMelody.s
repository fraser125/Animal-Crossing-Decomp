lbl_80477790:
/* 80477790  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80477794  7C 08 02 A6 */	mflr r0
/* 80477798  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047779C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804777A0  7C BF 2B 78 */	mr r31, r5
/* 804777A4  93 C1 00 08 */	stw r30, 8(r1)
/* 804777A8  7C 7E 1B 78 */	mr r30, r3
/* 804777AC  88 03 01 2D */	lbz r0, 0x12d(r3)
/* 804777B0  28 00 00 00 */	cmplwi r0, 0
/* 804777B4  41 82 00 24 */	beq lbl_804777D8
/* 804777B8  7C 83 23 78 */	mr r3, r4
/* 804777BC  4B FF FF B5 */	bl aMR_GetMelodyData
/* 804777C0  7C 60 1B 78 */	mr r0, r3
/* 804777C4  7F C3 F3 78 */	mr r3, r30
/* 804777C8  7C 05 03 78 */	mr r5, r0
/* 804777CC  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 804777D0  38 DE 00 08 */	addi r6, r30, 8
/* 804777D4  48 1B 69 45 */	bl sAdo_FurnitureInst
lbl_804777D8:
/* 804777D8  7F C3 F3 78 */	mr r3, r30
/* 804777DC  38 9E 00 08 */	addi r4, r30, 8
/* 804777E0  48 1B 6F 71 */	bl sAdo_FurnitureInstPos
/* 804777E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804777E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804777EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 804777F0  7C 08 03 A6 */	mtlr r0
/* 804777F4  38 21 00 10 */	addi r1, r1, 0x10
/* 804777F8  4E 80 00 20 */	blr 
