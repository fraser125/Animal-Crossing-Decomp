lbl_80472648:
/* 80472648  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047264C  7C 08 02 A6 */	mflr r0
/* 80472650  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80472654  90 01 00 14 */	stw r0, 0x14(r1)
/* 80472658  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8047265C  3B E3 DF E8 */	addi r31, r3, data_811CDFE8@l /* 0x811CDFE8@l */
/* 80472660  80 1F 00 08 */	lwz r0, 8(r31)
/* 80472664  1C 60 08 58 */	mulli r3, r0, 0x858
/* 80472668  4B F4 9D F5 */	bl zelda_malloc
/* 8047266C  3C 80 81 1D */	lis r4, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80472670  90 64 DF E8 */	stw r3, data_811CDFE8@l(r4)  /* 0x811CDFE8@l */
/* 80472674  80 7F 00 08 */	lwz r3, 8(r31)
/* 80472678  4B F4 9D E5 */	bl zelda_malloc
/* 8047267C  3C 80 81 1D */	lis r4, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80472680  84 04 DF E8 */	lwzu r0, data_811CDFE8@l(r4)  /* 0x811CDFE8@l */
/* 80472684  28 00 00 00 */	cmplwi r0, 0
/* 80472688  90 64 00 04 */	stw r3, 4(r4)
/* 8047268C  41 82 00 0C */	beq lbl_80472698
/* 80472690  28 03 00 00 */	cmplwi r3, 0
/* 80472694  40 82 00 0C */	bne lbl_804726A0
lbl_80472698:
/* 80472698  38 00 00 00 */	li r0, 0
/* 8047269C  90 1F 00 08 */	stw r0, 8(r31)
lbl_804726A0:
/* 804726A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804726A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804726A8  7C 08 03 A6 */	mtlr r0
/* 804726AC  38 21 00 10 */	addi r1, r1, 0x10
/* 804726B0  4E 80 00 20 */	blr 
