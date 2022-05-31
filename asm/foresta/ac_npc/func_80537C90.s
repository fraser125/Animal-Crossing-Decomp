lbl_80537C90:
/* 80537C90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80537C94  7C 08 02 A6 */	mflr r0
/* 80537C98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80537C9C  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80537CA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80537CA4  7C 7F 1B 78 */	mr r31, r3
/* 80537CA8  98 83 08 31 */	stb r4, 0x831(r3)
/* 80537CAC  88 83 08 30 */	lbz r4, 0x830(r3)
/* 80537CB0  7C 04 00 40 */	cmplw r4, r0
/* 80537CB4  41 82 00 18 */	beq lbl_80537CCC
/* 80537CB8  28 00 00 01 */	cmplwi r0, 1
/* 80537CBC  41 82 00 10 */	beq lbl_80537CCC
/* 80537CC0  4B FF 4B A9 */	bl aNPC_clear_all_morph_counter
/* 80537CC4  38 00 00 00 */	li r0, 0
/* 80537CC8  B0 1F 08 36 */	sth r0, 0x836(r31)
lbl_80537CCC:
/* 80537CCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80537CD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80537CD4  7C 08 03 A6 */	mtlr r0
/* 80537CD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80537CDC  4E 80 00 20 */	blr 
