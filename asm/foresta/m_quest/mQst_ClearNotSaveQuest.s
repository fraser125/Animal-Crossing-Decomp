lbl_803E2A30:
/* 803E2A30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E2A34  7C 08 02 A6 */	mflr r0
/* 803E2A38  38 80 00 08 */	li r4, 8
/* 803E2A3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E2A40  4B C7 A6 29 */	bl bzero
/* 803E2A44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E2A48  7C 08 03 A6 */	mtlr r0
/* 803E2A4C  38 21 00 10 */	addi r1, r1, 0x10
/* 803E2A50  4E 80 00 20 */	blr 
