lbl_804C1078:
/* 804C1078  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804C107C  7C 08 02 A6 */	mflr r0
/* 804C1080  39 20 00 00 */	li r9, 0
/* 804C1084  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C1088  39 01 00 08 */	addi r8, r1, 8
/* 804C108C  4B FF F9 E1 */	bl fruit_set
/* 804C1090  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C1094  7C 08 03 A6 */	mtlr r0
/* 804C1098  38 21 00 20 */	addi r1, r1, 0x20
/* 804C109C  4E 80 00 20 */	blr 
