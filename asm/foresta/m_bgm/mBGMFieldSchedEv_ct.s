lbl_8037A510:
/* 8037A510  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037A514  7C 08 02 A6 */	mflr r0
/* 8037A518  38 80 01 20 */	li r4, 0x120
/* 8037A51C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037A520  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037A524  7C 7F 1B 78 */	mr r31, r3
/* 8037A528  4B CE 2B 41 */	bl bzero
/* 8037A52C  38 60 00 00 */	li r3, 0
/* 8037A530  38 00 00 18 */	li r0, 0x18
/* 8037A534  7C 65 1B 78 */	mr r5, r3
/* 8037A538  7C 64 1B 78 */	mr r4, r3
/* 8037A53C  7C 09 03 A6 */	mtctr r0
lbl_8037A540:
/* 8037A540  7C DF 1A 14 */	add r6, r31, r3
/* 8037A544  38 63 00 0C */	addi r3, r3, 0xc
/* 8037A548  90 A6 00 08 */	stw r5, 8(r6)
/* 8037A54C  90 86 00 04 */	stw r4, 4(r6)
/* 8037A550  42 00 FF F0 */	bdnz lbl_8037A540
/* 8037A554  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037A558  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037A55C  7C 08 03 A6 */	mtlr r0
/* 8037A560  38 21 00 10 */	addi r1, r1, 0x10
/* 8037A564  4E 80 00 20 */	blr 
