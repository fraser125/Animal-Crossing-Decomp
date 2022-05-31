lbl_804DF2AC:
/* 804DF2AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DF2B0  7C 08 02 A6 */	mflr r0
/* 804DF2B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DF2B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804DF2BC  3B E3 00 28 */	addi r31, r3, 0x28
/* 804DF2C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804DF2C4  7C 9E 23 78 */	mr r30, r4
/* 804DF2C8  38 80 00 00 */	li r4, 0
/* 804DF2CC  80 A3 00 28 */	lwz r5, 0x28(r3)
/* 804DF2D0  38 61 00 08 */	addi r3, r1, 8
/* 804DF2D4  80 1F 00 04 */	lwz r0, 4(r31)
/* 804DF2D8  90 A1 00 08 */	stw r5, 8(r1)
/* 804DF2DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 804DF2E0  80 1F 00 08 */	lwz r0, 8(r31)
/* 804DF2E4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804DF2E8  4B EA 9D C5 */	bl mCoBG_Wpos2Attribute
/* 804DF2EC  7C 60 1B 78 */	mr r0, r3
/* 804DF2F0  7F E3 FB 78 */	mr r3, r31
/* 804DF2F4  7C 04 03 78 */	mr r4, r0
/* 804DF2F8  48 14 F4 DD */	bl sAdo_CheckOnPlussBridge
/* 804DF2FC  2C 03 00 00 */	cmpwi r3, 0
/* 804DF300  41 82 00 08 */	beq lbl_804DF308
/* 804DF304  3B C0 42 0A */	li r30, 0x420a
lbl_804DF308:
/* 804DF308  7F C3 F3 78 */	mr r3, r30
/* 804DF30C  7F E4 FB 78 */	mr r4, r31
/* 804DF310  48 14 EA 15 */	bl sAdo_PlyWalkSe
/* 804DF314  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DF318  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804DF31C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804DF320  7C 08 03 A6 */	mtlr r0
/* 804DF324  38 21 00 20 */	addi r1, r1, 0x20
/* 804DF328  4E 80 00 20 */	blr 
