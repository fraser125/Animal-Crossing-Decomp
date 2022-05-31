lbl_803CE884:
/* 803CE884  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CE888  7C 08 02 A6 */	mflr r0
/* 803CE88C  28 03 00 00 */	cmplwi r3, 0
/* 803CE890  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CE894  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803CE898  3B E0 00 00 */	li r31, 0
/* 803CE89C  41 82 00 18 */	beq lbl_803CE8B4
/* 803CE8A0  38 63 00 10 */	addi r3, r3, 0x10
/* 803CE8A4  4B FF FE 99 */	bl mNpc_GetPresentClothMemoryIdx
/* 803CE8A8  2C 03 FF FF */	cmpwi r3, -1
/* 803CE8AC  41 82 00 08 */	beq lbl_803CE8B4
/* 803CE8B0  3B E0 00 01 */	li r31, 1
lbl_803CE8B4:
/* 803CE8B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CE8B8  7F E3 FB 78 */	mr r3, r31
/* 803CE8BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CE8C0  7C 08 03 A6 */	mtlr r0
/* 803CE8C4  38 21 00 10 */	addi r1, r1, 0x10
/* 803CE8C8  4E 80 00 20 */	blr 
