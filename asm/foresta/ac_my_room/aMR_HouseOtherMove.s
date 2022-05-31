lbl_8047D51C:
/* 8047D51C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047D520  7C 08 02 A6 */	mflr r0
/* 8047D524  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047D528  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8047D52C  7C BF 2B 78 */	mr r31, r5
/* 8047D530  93 C1 00 08 */	stw r30, 8(r1)
/* 8047D534  7C 9E 23 78 */	mr r30, r4
/* 8047D538  7F C3 F3 78 */	mr r3, r30
/* 8047D53C  7F E4 FB 78 */	mr r4, r31
/* 8047D540  4B FF F8 E1 */	bl aMR_FurnitureMoveFunction
/* 8047D544  7F C3 F3 78 */	mr r3, r30
/* 8047D548  7F E4 FB 78 */	mr r4, r31
/* 8047D54C  4B FF FC BD */	bl aMR_PreparePlayerAction
/* 8047D550  7F C3 F3 78 */	mr r3, r30
/* 8047D554  4B FF EA 4D */	bl aMR_CheckControllerNeutral
/* 8047D558  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047D55C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8047D560  83 C1 00 08 */	lwz r30, 8(r1)
/* 8047D564  7C 08 03 A6 */	mtlr r0
/* 8047D568  38 21 00 10 */	addi r1, r1, 0x10
/* 8047D56C  4E 80 00 20 */	blr 
