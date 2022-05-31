lbl_803D4534:
/* 803D4534  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D4538  7C 08 02 A6 */	mflr r0
/* 803D453C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D4540  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D4544  3B E0 00 00 */	li r31, 0
/* 803D4548  4B FF FF 9D */	bl mNpc_GetIslandRoomInfoP
/* 803D454C  28 03 00 00 */	cmplwi r3, 0
/* 803D4550  41 82 00 08 */	beq lbl_803D4558
/* 803D4554  7C 7F 1B 78 */	mr r31, r3
lbl_803D4558:
/* 803D4558  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D455C  7F E3 FB 78 */	mr r3, r31
/* 803D4560  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D4564  7C 08 03 A6 */	mtlr r0
/* 803D4568  38 21 00 10 */	addi r1, r1, 0x10
/* 803D456C  4E 80 00 20 */	blr 
