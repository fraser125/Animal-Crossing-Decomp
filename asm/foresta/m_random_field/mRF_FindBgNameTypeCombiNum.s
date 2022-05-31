lbl_803E4EA0:
/* 803E4EA0  3C A0 80 81 */	lis r5, data_combi_table_number@ha /* 0x8080E520@ha */
/* 803E4EA4  3C E0 80 81 */	lis r7, data_8080DC80@ha /* 0x8080DC80@ha */
/* 803E4EA8  38 C5 E5 20 */	addi r6, r5, data_combi_table_number@l /* 0x8080E520@l */
/* 803E4EAC  54 65 04 3E */	clrlwi r5, r3, 0x10
/* 803E4EB0  81 06 00 00 */	lwz r8, 0(r6)
/* 803E4EB4  38 07 DC 80 */	addi r0, r7, data_8080DC80@l /* 0x8080DC80@l */
/* 803E4EB8  7C 06 03 78 */	mr r6, r0
/* 803E4EBC  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 803E4EC0  38 60 00 00 */	li r3, 0
/* 803E4EC4  7D 09 03 A6 */	mtctr r8
/* 803E4EC8  2C 08 00 00 */	cmpwi r8, 0
/* 803E4ECC  40 81 00 28 */	ble lbl_803E4EF4
lbl_803E4ED0:
/* 803E4ED0  A0 86 00 00 */	lhz r4, 0(r6)
/* 803E4ED4  7C 04 28 40 */	cmplw r4, r5
/* 803E4ED8  40 82 00 10 */	bne lbl_803E4EE8
/* 803E4EDC  88 86 00 04 */	lbz r4, 4(r6)
/* 803E4EE0  7C 04 00 40 */	cmplw r4, r0
/* 803E4EE4  4D 82 00 20 */	beqlr 
lbl_803E4EE8:
/* 803E4EE8  38 C6 00 06 */	addi r6, r6, 6
/* 803E4EEC  38 63 00 01 */	addi r3, r3, 1
/* 803E4EF0  42 00 FF E0 */	bdnz lbl_803E4ED0
lbl_803E4EF4:
/* 803E4EF4  38 60 00 00 */	li r3, 0
/* 803E4EF8  4E 80 00 20 */	blr 
