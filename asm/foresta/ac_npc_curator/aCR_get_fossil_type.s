lbl_8054B618:
/* 8054B618  3C A0 80 6A */	lis r5, fossil_ftr_start@ha /* 0x806A4F30@ha */
/* 8054B61C  3C 80 80 6A */	lis r4, fossil_ftr_end@ha /* 0x806A4F4C@ha */
/* 8054B620  38 00 00 07 */	li r0, 7
/* 8054B624  54 67 04 3E */	clrlwi r7, r3, 0x10
/* 8054B628  38 C5 4F 30 */	addi r6, r5, fossil_ftr_start@l /* 0x806A4F30@l */
/* 8054B62C  38 A4 4F 4C */	addi r5, r4, fossil_ftr_end@l /* 0x806A4F4C@l */
/* 8054B630  38 60 FF FF */	li r3, -1
/* 8054B634  39 00 00 00 */	li r8, 0
/* 8054B638  38 80 00 00 */	li r4, 0
/* 8054B63C  7C 09 03 A6 */	mtctr r0
lbl_8054B640:
/* 8054B640  7C 06 20 2E */	lwzx r0, r6, r4
/* 8054B644  7C 07 00 00 */	cmpw r7, r0
/* 8054B648  41 80 00 18 */	blt lbl_8054B660
/* 8054B64C  7C 05 20 2E */	lwzx r0, r5, r4
/* 8054B650  7C 07 00 00 */	cmpw r7, r0
/* 8054B654  41 81 00 0C */	bgt lbl_8054B660
/* 8054B658  7D 03 43 78 */	mr r3, r8
/* 8054B65C  4E 80 00 20 */	blr 
lbl_8054B660:
/* 8054B660  39 08 00 01 */	addi r8, r8, 1
/* 8054B664  38 84 00 04 */	addi r4, r4, 4
/* 8054B668  42 00 FF D8 */	bdnz lbl_8054B640
/* 8054B66C  4E 80 00 20 */	blr 
