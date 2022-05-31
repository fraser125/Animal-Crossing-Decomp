lbl_8047D4C8:
/* 8047D4C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047D4CC  7C 08 02 A6 */	mflr r0
/* 8047D4D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047D4D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8047D4D8  7C BF 2B 78 */	mr r31, r5
/* 8047D4DC  93 C1 00 08 */	stw r30, 8(r1)
/* 8047D4E0  7C 9E 23 78 */	mr r30, r4
/* 8047D4E4  7F C3 F3 78 */	mr r3, r30
/* 8047D4E8  7F E4 FB 78 */	mr r4, r31
/* 8047D4EC  4B FF F9 35 */	bl aMR_FurnitureMoveFunction
/* 8047D4F0  7F C3 F3 78 */	mr r3, r30
/* 8047D4F4  7F E4 FB 78 */	mr r4, r31
/* 8047D4F8  4B FF FD 11 */	bl aMR_PreparePlayerAction
/* 8047D4FC  7F C3 F3 78 */	mr r3, r30
/* 8047D500  4B FF EA A1 */	bl aMR_CheckControllerNeutral
/* 8047D504  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047D508  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8047D50C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8047D510  7C 08 03 A6 */	mtlr r0
/* 8047D514  38 21 00 10 */	addi r1, r1, 0x10
/* 8047D518  4E 80 00 20 */	blr 
