lbl_80398800:
/* 80398800  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80398804  7C 08 02 A6 */	mflr r0
/* 80398808  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039880C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80398810  7C 7F 1B 78 */	mr r31, r3
/* 80398814  4B FF FB B9 */	bl func_803983CC
/* 80398818  2C 03 00 01 */	cmpwi r3, 1
/* 8039881C  40 82 00 18 */	bne lbl_80398834
/* 80398820  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80398824  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80398828  38 63 1C BC */	addi r3, r3, data_80641CBC@l /* 0x80641CBC@l */
/* 8039882C  80 63 00 00 */	lwz r3, 0(r3)
/* 80398830  90 03 03 14 */	stw r0, 0x314(r3)
lbl_80398834:
/* 80398834  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80398838  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039883C  7C 08 03 A6 */	mtlr r0
/* 80398840  38 21 00 10 */	addi r1, r1, 0x10
/* 80398844  4E 80 00 20 */	blr 