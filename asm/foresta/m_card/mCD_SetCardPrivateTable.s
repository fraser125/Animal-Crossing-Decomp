lbl_803FA61C:
/* 803FA61C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FA620  7C 08 02 A6 */	mflr r0
/* 803FA624  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FA628  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803FA62C  7C BF 2B 78 */	mr r31, r5
/* 803FA630  93 C1 00 08 */	stw r30, 8(r1)
/* 803FA634  7C 7E 1B 78 */	mr r30, r3
/* 803FA638  4B FE 5A E9 */	bl mPr_CopyPersonalID
/* 803FA63C  7F E3 FB 78 */	mr r3, r31
/* 803FA640  38 9E 00 14 */	addi r4, r30, 0x14
/* 803FA644  38 A0 00 20 */	li r5, 0x20
/* 803FA648  4B C6 29 D5 */	bl func_8005D01C
/* 803FA64C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FA650  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803FA654  83 C1 00 08 */	lwz r30, 8(r1)
/* 803FA658  7C 08 03 A6 */	mtlr r0
/* 803FA65C  38 21 00 10 */	addi r1, r1, 0x10
/* 803FA660  4E 80 00 20 */	blr 
