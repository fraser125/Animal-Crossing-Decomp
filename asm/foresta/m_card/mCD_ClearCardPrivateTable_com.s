lbl_803FA590:
/* 803FA590  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FA594  7C 08 02 A6 */	mflr r0
/* 803FA598  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FA59C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803FA5A0  7C 9F 23 78 */	mr r31, r4
/* 803FA5A4  93 C1 00 08 */	stw r30, 8(r1)
/* 803FA5A8  7C 7E 1B 78 */	mr r30, r3
/* 803FA5AC  48 00 00 24 */	b lbl_803FA5D0
lbl_803FA5B0:
/* 803FA5B0  7F C3 F3 78 */	mr r3, r30
/* 803FA5B4  4B FE 5A D9 */	bl mPr_ClearPersonalID
/* 803FA5B8  38 7E 00 14 */	addi r3, r30, 0x14
/* 803FA5BC  38 80 00 20 */	li r4, 0x20
/* 803FA5C0  38 A0 00 00 */	li r5, 0
/* 803FA5C4  4B FC 04 85 */	bl mem_clear
/* 803FA5C8  3B DE 00 34 */	addi r30, r30, 0x34
/* 803FA5CC  3B FF FF FF */	addi r31, r31, -1
lbl_803FA5D0:
/* 803FA5D0  2C 1F 00 00 */	cmpwi r31, 0
/* 803FA5D4  40 82 FF DC */	bne lbl_803FA5B0
/* 803FA5D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FA5DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803FA5E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 803FA5E4  7C 08 03 A6 */	mtlr r0
/* 803FA5E8  38 21 00 10 */	addi r1, r1, 0x10
/* 803FA5EC  4E 80 00 20 */	blr 
