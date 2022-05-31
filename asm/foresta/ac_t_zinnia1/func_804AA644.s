lbl_804AA644:
/* 804AA644  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AA648  7C 08 02 A6 */	mflr r0
/* 804AA64C  38 80 00 04 */	li r4, 4
/* 804AA650  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AA654  48 00 00 35 */	bl aTZN1_setupAction
/* 804AA658  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AA65C  7C 08 03 A6 */	mtlr r0
/* 804AA660  38 21 00 10 */	addi r1, r1, 0x10
/* 804AA664  4E 80 00 20 */	blr 
