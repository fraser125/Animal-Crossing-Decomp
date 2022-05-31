lbl_8040C298:
/* 8040C298  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040C29C  7C 08 02 A6 */	mflr r0
/* 8040C2A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040C2A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8040C2A8  7C 9F 23 78 */	mr r31, r4
/* 8040C2AC  93 C1 00 08 */	stw r30, 8(r1)
/* 8040C2B0  7C 7E 1B 78 */	mr r30, r3
/* 8040C2B4  4B FF FF D5 */	bl get_Matrix_now
/* 8040C2B8  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8040C2BC  7C 65 1B 78 */	mr r5, r3
/* 8040C2C0  28 00 00 01 */	cmplwi r0, 1
/* 8040C2C4  40 82 00 10 */	bne lbl_8040C2D4
/* 8040C2C8  7F C4 F3 78 */	mr r4, r30
/* 8040C2CC  4B FE 52 59 */	bl Skin_Matrix_MulMatrix
/* 8040C2D0  48 00 00 18 */	b lbl_8040C2E8
lbl_8040C2D4:
/* 8040C2D4  3C 60 81 1C */	lis r3, Matrix_now@ha /* 0x811C77A4@ha */
/* 8040C2D8  7F C4 F3 78 */	mr r4, r30
/* 8040C2DC  38 63 77 A4 */	addi r3, r3, Matrix_now@l /* 0x811C77A4@l */
/* 8040C2E0  80 63 00 00 */	lwz r3, 0(r3)
/* 8040C2E4  48 00 12 99 */	bl Matrix_copy_MtxF
lbl_8040C2E8:
/* 8040C2E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8040C2EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8040C2F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8040C2F4  7C 08 03 A6 */	mtlr r0
/* 8040C2F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8040C2FC  4E 80 00 20 */	blr 
