lbl_8057616C:
/* 8057616C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80576170  7C 08 02 A6 */	mflr r0
/* 80576174  3C A0 80 57 */	lis r5, aSEN_set_norm_talk_info@ha /* 0x80576058@ha */
/* 80576178  7C 64 1B 78 */	mr r4, r3
/* 8057617C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80576180  38 A5 60 58 */	addi r5, r5, aSEN_set_norm_talk_info@l /* 0x80576058@l */
/* 80576184  38 60 00 07 */	li r3, 7
/* 80576188  4B E2 3F D5 */	bl mDemo_Request
/* 8057618C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80576190  7C 08 03 A6 */	mtlr r0
/* 80576194  38 21 00 10 */	addi r1, r1, 0x10
/* 80576198  4E 80 00 20 */	blr 
