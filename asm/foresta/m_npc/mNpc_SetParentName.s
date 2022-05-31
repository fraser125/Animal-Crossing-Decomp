lbl_803CB578:
/* 803CB578  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CB57C  7C 08 02 A6 */	mflr r0
/* 803CB580  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CB584  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803CB588  7C 9F 23 79 */	or. r31, r4, r4
/* 803CB58C  93 C1 00 08 */	stw r30, 8(r1)
/* 803CB590  7C 7E 1B 78 */	mr r30, r3
/* 803CB594  41 82 00 30 */	beq lbl_803CB5C4
/* 803CB598  7F E3 FB 78 */	mr r3, r31
/* 803CB59C  48 01 4A A9 */	bl mPr_NullCheckPersonalID
/* 803CB5A0  2C 03 00 00 */	cmpwi r3, 0
/* 803CB5A4  40 82 00 20 */	bne lbl_803CB5C4
/* 803CB5A8  38 7E 08 D0 */	addi r3, r30, 0x8d0
/* 803CB5AC  48 01 49 35 */	bl mPr_NullCheckPlayerName
/* 803CB5B0  2C 03 00 01 */	cmpwi r3, 1
/* 803CB5B4  40 82 00 10 */	bne lbl_803CB5C4
/* 803CB5B8  7F E4 FB 78 */	mr r4, r31
/* 803CB5BC  38 7E 08 D0 */	addi r3, r30, 0x8d0
/* 803CB5C0  48 01 48 FD */	bl mPr_CopyPlayerName
lbl_803CB5C4:
/* 803CB5C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CB5C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CB5CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 803CB5D0  7C 08 03 A6 */	mtlr r0
/* 803CB5D4  38 21 00 10 */	addi r1, r1, 0x10
/* 803CB5D8  4E 80 00 20 */	blr 
